// BluefinTecsMerchantServices SDK client.

import Foundation

public final class BluefinTecsMerchantServicesSDK {
  public var mode = "live"
  private var options: VMap = VMap()
  private let utility: Utility
  public var features: [BaseFeature] = []
  private var rootctx: Context!

  public init(_ optionsIn: VMap? = nil) {
    utility = Utility()

    // The process-wide config (sdkgen rung L2): read-only on the request path,
    // so every client shares one rather than rebuilding it.
    let config = SdkConfig.sharedConfig()

    var ctxmap: [String: Any?] = [
      "client": self,
      "utility": utility,
      "config": config,
      "shared": VMap(),
    ]
    if let o = optionsIn { ctxmap["options"] = o }

    rootctx = utility.makeContext(ctxmap, nil)

    options = utility.makeOptions(rootctx)

    if gpath(options, "feature", "test", "active") == .bool(true) {
      mode = "test"
    }

    rootctx.options = options

    // Add features in the resolved order (makeOptions puts an explicit list
    // order first, else defaults to test-first). Ordering matters: the `test`
    // feature installs the base mock transport and the transport features
    // (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
    // must be added before them to sit at the base of the chain.
    let featureOpts = gp(options, "feature").asMap ?? VMap()
    if let featureOrder = gpath(options, "__derived__", "featureorder").asList {
      for fnameVal in featureOrder.items {
        let fname = fnameVal.asString ?? ""
        if fname != "", let fopts = gp(featureOpts, fname).asMap,
          fopts.entries["active"]?.asBool == true {
          utility.featureAdd(rootctx, SdkConfig.makeFeature(fname))
        }
      }
    }

    // Add extension features.
    if let extList = gp(options, "extend").asList {
      for f in extList.items {
        if let feat = f.asNative as? BaseFeature {
          utility.featureAdd(rootctx, feat)
        }
      }
    }

    // Initialize features.
    for f in features {
      utility.featureInit(rootctx, f)
    }

    utility.featureHook(rootctx, "PostConstruct")
  }

  public func optionsMap() -> VMap {
    return clone(.map(options)).asMap ?? VMap()
  }

  public func getUtility() -> Utility {
    return Utility.copy(utility)
  }

  public func getRootCtx() -> Context {
    return rootctx
  }

  public func prepare(_ fetchargsIn: VMap?) throws -> VMap {
    let utility = self.utility

    let fetchargs = fetchargsIn ?? VMap()

    let ctrl = gp(fetchargs, "ctrl").asMap ?? VMap()

    let ctx = utility.makeContext(["opname": "prepare", "ctrl": ctrl], rootctx)

    let options = self.options

    let path = gp(fetchargs, "path").asString ?? ""
    var method = gp(fetchargs, "method").asString ?? ""
    if method == "" { method = "GET" }

    let pathParams = gp(fetchargs, "params").asMap ?? VMap()
    let query = gp(fetchargs, "query").asMap ?? VMap()

    let headers = utility.prepareHeaders(ctx)

    let basev = gp(options, "base").asString ?? ""
    let prefix = gp(options, "prefix").asString ?? ""
    let suffix = gp(options, "suffix").asString ?? ""

    let specmap = VMap()
    specmap.entries["base"] = .string(basev)
    specmap.entries["prefix"] = .string(prefix)
    specmap.entries["suffix"] = .string(suffix)
    specmap.entries["path"] = .string(path)
    specmap.entries["method"] = .string(method)
    specmap.entries["params"] = .map(pathParams)
    specmap.entries["query"] = .map(query)
    specmap.entries["headers"] = .map(headers)
    specmap.entries["body"] = gp(fetchargs, "body")
    specmap.entries["step"] = .string("start")
    ctx.spec = Spec(specmap)

    // Merge user-provided headers.
    if let uhm = gp(fetchargs, "headers").asMap {
      for (k, v) in uhm.entries {
        ctx.spec!.headers.entries[k] = v
      }
    }

    _ = try utility.prepareAuth(ctx)

    return try utility.makeFetchDef(ctx)
  }

  // Raw endpoint access is operator-controllable, like every entity op.
  // Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
  // either one reaches the same endpoint.
  public func direct(_ fetchargsIn: VMap?) -> VMap {
    if !opAllowed("direct") {
      return opDenied("direct")
    }

    return rawRequest(fetchargsIn)
  }

  // Is this raw-access op permitted by the SDK's allow.op option?
  private func opAllowed(_ op: String) -> Bool {
    guard let allow = gpath(options, "allow", "op").asString else { return false }
    return allow.contains(op)
  }

  private func opDenied(_ op: String) -> VMap {
    let allow = gpath(options, "allow", "op").asString ?? ""
    let r = VMap()
    r.entries["ok"] = .bool(false)
    r.entries["err"] = .nat(BluefinTecsMerchantServicesError(
      op + "_allow",
      "BluefinTecsMerchantServicesSDK: \(op): operation not allowed by SDK option "
        + "allow.op value: \"\(allow)\"", nil))
    return r
  }

  // Ungated request path shared by direct and graphql, each of which checks
  // its own allow.op token first. Private, rather than a flag on fetchargs:
  // a caller-supplied marker would let anyone opt straight back out of the
  // gate by passing it.
  private func rawRequest(_ fetchargsIn: VMap?) -> VMap {
    let utility = self.utility

    let fetchdef: VMap
    do {
      fetchdef = try prepare(fetchargsIn)
    } catch {
      let r = VMap()
      r.entries["ok"] = .bool(false)
      r.entries["err"] = .nat(error)
      return r
    }

    let fetchargs = fetchargsIn ?? VMap()
    let ctrl = gp(fetchargs, "ctrl").asMap ?? VMap()

    let ctx = utility.makeContext(["opname": "direct", "ctrl": ctrl], rootctx)

    let url = gp(fetchdef, "url").asString ?? ""

    let fetched: Value
    do {
      fetched = try utility.fetcher(ctx, url, fetchdef)
    } catch {
      let r = VMap()
      r.entries["ok"] = .bool(false)
      r.entries["err"] = .nat(error)
      return r
    }

    if isNil(fetched) {
      let r = VMap()
      r.entries["ok"] = .bool(false)
      r.entries["err"] = .nat(ctx.makeError("direct_no_response", "response: undefined"))
      return r
    }

    if let fm = fetched.asMap {
      let status = toInt(gp(fm, "status"))
      let headers = gp(fm, "headers")

      // No-body responses (204, 304) and explicit zero content-length must
      // skip JSON parsing.
      var contentLength = ""
      if let hm = headers.asMap, let cl = hm.entries["content-length"], !isNil(cl) {
        contentLength = stringify(cl)
      }
      let noBody = status == 204 || status == 304 || contentLength == "0"

      var jsonData: Value = .noval
      if !noBody, let jf = gp(fm, "json").asNative as? NativeCall0 {
        jsonData = jf()
      }

      let r = VMap()
      r.entries["ok"] = .bool(status >= 200 && status < 300)
      r.entries["status"] = .int(Int64(status))
      r.entries["headers"] = headers
      r.entries["data"] = jsonData
      return r
    }

    let r = VMap()
    r.entries["ok"] = .bool(false)
    r.entries["err"] = .nat(ctx.makeError("direct_invalid", "invalid response type"))
    return r
  }

  // Raw GraphQL access: the pressure valve that makes the generated surface's
  // deliberate omissions (per-call selection sets, typed filter builders,
  // batching, subscriptions) livable — the whole schema stays reachable.
  //
  // Thin wrapper over the same prepare/fetch path direct uses, with the one
  // thing raw direct cannot do for GraphQL: a GraphQL failure rides HTTP 200
  // as a top-level `errors` array, so status alone would report a failed
  // query as ok.
  //
  // NOTE: like direct, this bypasses the feature pipeline — no retry,
  // ratelimit or paging features apply.
  public func graphql(
    _ query: String, _ variables: VMap? = nil, _ ctrl: VMap? = nil
  ) -> VMap {
    if !opAllowed("graphql") {
      return opDenied("graphql")
    }

    let headers = VMap()
    headers.entries["content-type"] = .string("application/json")

    let body = VMap()
    body.entries["query"] = .string(query)
    body.entries["variables"] = .map(variables ?? VMap())

    let fetchargs = VMap()
    fetchargs.entries["method"] = .string("POST")
    fetchargs.entries["headers"] = .map(headers)
    fetchargs.entries["body"] = .map(body)
    fetchargs.entries["ctrl"] = .map(ctrl ?? VMap())

    let res = rawRequest(fetchargs)

    // Errors are read BEFORE any status check: a GraphQL parse or validation
    // failure comes back as HTTP 400 carrying the standard { errors: [...] }
    // body, and the raw path represents a non-2xx as ok:false with no err —
    // so returning early on status would discard the server's own
    // diagnostics, which are the only useful part of that response.
    guard let errors = gp(gp(.map(res), "data"), "errors").asList,
          !errors.items.isEmpty else {
      return res
    }

    var msg = gp(errors.items[0], "message").asString ?? ""
    if msg.isEmpty { msg = "graphql error" }

    res.entries["ok"] = .bool(false)
    res.entries["err"] = .nat(BluefinTecsMerchantServicesError(
      "graphql_error", "BluefinTecsMerchantServicesSDK: graphql: " + msg, nil))
    res.entries["graphql"] = .list(errors)

    return res
  }


  // CancelTransaction returns a CancelTransaction entity bound to this client.
  // Idiomatic usage: try client.CancelTransaction().list(nil) or
  // try client.CancelTransaction().load(vm(("id", .string("..."))), nil).
  public func CancelTransaction(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return CancelTransactionEntity(self, entopts)
  }

  // CheckCardBlackListed returns a CheckCardBlackListed entity bound to this client.
  // Idiomatic usage: try client.CheckCardBlackListed().list(nil) or
  // try client.CheckCardBlackListed().load(vm(("id", .string("..."))), nil).
  public func CheckCardBlackListed(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return CheckCardBlackListedEntity(self, entopts)
  }

  // CreateProduct returns a CreateProduct entity bound to this client.
  // Idiomatic usage: try client.CreateProduct().list(nil) or
  // try client.CreateProduct().load(vm(("id", .string("..."))), nil).
  public func CreateProduct(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return CreateProductEntity(self, entopts)
  }

  // DeactivateTerminal returns a DeactivateTerminal entity bound to this client.
  // Idiomatic usage: try client.DeactivateTerminal().list(nil) or
  // try client.DeactivateTerminal().load(vm(("id", .string("..."))), nil).
  public func DeactivateTerminal(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return DeactivateTerminalEntity(self, entopts)
  }

  // DigitalServicesApi returns a DigitalServicesApi entity bound to this client.
  // Idiomatic usage: try client.DigitalServicesApi().list(nil) or
  // try client.DigitalServicesApi().load(vm(("id", .string("..."))), nil).
  public func DigitalServicesApi(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return DigitalServicesApiEntity(self, entopts)
  }

  // EcDataEcom returns a EcDataEcom entity bound to this client.
  // Idiomatic usage: try client.EcDataEcom().list(nil) or
  // try client.EcDataEcom().load(vm(("id", .string("..."))), nil).
  public func EcDataEcom(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return EcDataEcomEntity(self, entopts)
  }

  // EcomParameter returns a EcomParameter entity bound to this client.
  // Idiomatic usage: try client.EcomParameter().list(nil) or
  // try client.EcomParameter().load(vm(("id", .string("..."))), nil).
  public func EcomParameter(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return EcomParameterEntity(self, entopts)
  }

  // EcrData returns a EcrData entity bound to this client.
  // Idiomatic usage: try client.EcrData().list(nil) or
  // try client.EcrData().load(vm(("id", .string("..."))), nil).
  public func EcrData(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return EcrDataEntity(self, entopts)
  }

  // EmvData returns a EmvData entity bound to this client.
  // Idiomatic usage: try client.EmvData().list(nil) or
  // try client.EmvData().load(vm(("id", .string("..."))), nil).
  public func EmvData(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return EmvDataEntity(self, entopts)
  }

  // EnableAcquiring returns a EnableAcquiring entity bound to this client.
  // Idiomatic usage: try client.EnableAcquiring().list(nil) or
  // try client.EnableAcquiring().load(vm(("id", .string("..."))), nil).
  public func EnableAcquiring(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return EnableAcquiringEntity(self, entopts)
  }

  // GetMerchantContractNumber returns a GetMerchantContractNumber entity bound to this client.
  // Idiomatic usage: try client.GetMerchantContractNumber().list(nil) or
  // try client.GetMerchantContractNumber().load(vm(("id", .string("..."))), nil).
  public func GetMerchantContractNumber(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return GetMerchantContractNumberEntity(self, entopts)
  }

  // GetTemplateXml returns a GetTemplateXml entity bound to this client.
  // Idiomatic usage: try client.GetTemplateXml().list(nil) or
  // try client.GetTemplateXml().load(vm(("id", .string("..."))), nil).
  public func GetTemplateXml(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return GetTemplateXmlEntity(self, entopts)
  }

  // IntroduceMandator returns a IntroduceMandator entity bound to this client.
  // Idiomatic usage: try client.IntroduceMandator().list(nil) or
  // try client.IntroduceMandator().load(vm(("id", .string("..."))), nil).
  public func IntroduceMandator(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return IntroduceMandatorEntity(self, entopts)
  }

  // IntroducePackage returns a IntroducePackage entity bound to this client.
  // Idiomatic usage: try client.IntroducePackage().list(nil) or
  // try client.IntroducePackage().load(vm(("id", .string("..."))), nil).
  public func IntroducePackage(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return IntroducePackageEntity(self, entopts)
  }

  // KeepAlive returns a KeepAlive entity bound to this client.
  // Idiomatic usage: try client.KeepAlive().list(nil) or
  // try client.KeepAlive().load(vm(("id", .string("..."))), nil).
  public func KeepAlive(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return KeepAliveEntity(self, entopts)
  }

  // ListTerminal returns a ListTerminal entity bound to this client.
  // Idiomatic usage: try client.ListTerminal().list(nil) or
  // try client.ListTerminal().load(vm(("id", .string("..."))), nil).
  public func ListTerminal(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return ListTerminalEntity(self, entopts)
  }

  // MandatorClearingExport returns a MandatorClearingExport entity bound to this client.
  // Idiomatic usage: try client.MandatorClearingExport().list(nil) or
  // try client.MandatorClearingExport().load(vm(("id", .string("..."))), nil).
  public func MandatorClearingExport(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return MandatorClearingExportEntity(self, entopts)
  }

  // MandatorClearingExportDownload returns a MandatorClearingExportDownload entity bound to this client.
  // Idiomatic usage: try client.MandatorClearingExportDownload().list(nil) or
  // try client.MandatorClearingExportDownload().load(vm(("id", .string("..."))), nil).
  public func MandatorClearingExportDownload(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return MandatorClearingExportDownloadEntity(self, entopts)
  }

  // MandatorClearingExportSummary returns a MandatorClearingExportSummary entity bound to this client.
  // Idiomatic usage: try client.MandatorClearingExportSummary().list(nil) or
  // try client.MandatorClearingExportSummary().load(vm(("id", .string("..."))), nil).
  public func MandatorClearingExportSummary(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return MandatorClearingExportSummaryEntity(self, entopts)
  }

  // MerchantPortalServicesApi returns a MerchantPortalServicesApi entity bound to this client.
  // Idiomatic usage: try client.MerchantPortalServicesApi().list(nil) or
  // try client.MerchantPortalServicesApi().load(vm(("id", .string("..."))), nil).
  public func MerchantPortalServicesApi(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return MerchantPortalServicesApiEntity(self, entopts)
  }

  // MoveTid returns a MoveTid entity bound to this client.
  // Idiomatic usage: try client.MoveTid().list(nil) or
  // try client.MoveTid().load(vm(("id", .string("..."))), nil).
  public func MoveTid(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return MoveTidEntity(self, entopts)
  }

  // PaymentManual returns a PaymentManual entity bound to this client.
  // Idiomatic usage: try client.PaymentManual().list(nil) or
  // try client.PaymentManual().load(vm(("id", .string("..."))), nil).
  public func PaymentManual(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return PaymentManualEntity(self, entopts)
  }

  // PaymentSred returns a PaymentSred entity bound to this client.
  // Idiomatic usage: try client.PaymentSred().list(nil) or
  // try client.PaymentSred().load(vm(("id", .string("..."))), nil).
  public func PaymentSred(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return PaymentSredEntity(self, entopts)
  }

  // PreAuthTransactionCompletion returns a PreAuthTransactionCompletion entity bound to this client.
  // Idiomatic usage: try client.PreAuthTransactionCompletion().list(nil) or
  // try client.PreAuthTransactionCompletion().load(vm(("id", .string("..."))), nil).
  public func PreAuthTransactionCompletion(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return PreAuthTransactionCompletionEntity(self, entopts)
  }

  // ReactivateTerminal returns a ReactivateTerminal entity bound to this client.
  // Idiomatic usage: try client.ReactivateTerminal().list(nil) or
  // try client.ReactivateTerminal().load(vm(("id", .string("..."))), nil).
  public func ReactivateTerminal(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return ReactivateTerminalEntity(self, entopts)
  }

  // RefundTransaction returns a RefundTransaction entity bound to this client.
  // Idiomatic usage: try client.RefundTransaction().list(nil) or
  // try client.RefundTransaction().load(vm(("id", .string("..."))), nil).
  public func RefundTransaction(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return RefundTransactionEntity(self, entopts)
  }

  // RegisterTecsCompany returns a RegisterTecsCompany entity bound to this client.
  // Idiomatic usage: try client.RegisterTecsCompany().list(nil) or
  // try client.RegisterTecsCompany().load(vm(("id", .string("..."))), nil).
  public func RegisterTecsCompany(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return RegisterTecsCompanyEntity(self, entopts)
  }

  // RegisterTerminal returns a RegisterTerminal entity bound to this client.
  // Idiomatic usage: try client.RegisterTerminal().list(nil) or
  // try client.RegisterTerminal().load(vm(("id", .string("..."))), nil).
  public func RegisterTerminal(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return RegisterTerminalEntity(self, entopts)
  }

  // ReportData returns a ReportData entity bound to this client.
  // Idiomatic usage: try client.ReportData().list(nil) or
  // try client.ReportData().load(vm(("id", .string("..."))), nil).
  public func ReportData(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return ReportDataEntity(self, entopts)
  }

  // StatusTransaction returns a StatusTransaction entity bound to this client.
  // Idiomatic usage: try client.StatusTransaction().list(nil) or
  // try client.StatusTransaction().load(vm(("id", .string("..."))), nil).
  public func StatusTransaction(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return StatusTransactionEntity(self, entopts)
  }

  // StoreTerminalParameter returns a StoreTerminalParameter entity bound to this client.
  // Idiomatic usage: try client.StoreTerminalParameter().list(nil) or
  // try client.StoreTerminalParameter().load(vm(("id", .string("..."))), nil).
  public func StoreTerminalParameter(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return StoreTerminalParameterEntity(self, entopts)
  }

  // TerminalId returns a TerminalId entity bound to this client.
  // Idiomatic usage: try client.TerminalId().list(nil) or
  // try client.TerminalId().load(vm(("id", .string("..."))), nil).
  public func TerminalId(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return TerminalIdEntity(self, entopts)
  }

  // TransactionHistory returns a TransactionHistory entity bound to this client.
  // Idiomatic usage: try client.TransactionHistory().list(nil) or
  // try client.TransactionHistory().load(vm(("id", .string("..."))), nil).
  public func TransactionHistory(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return TransactionHistoryEntity(self, entopts)
  }

  // TransactionsCount returns a TransactionsCount entity bound to this client.
  // Idiomatic usage: try client.TransactionsCount().list(nil) or
  // try client.TransactionsCount().load(vm(("id", .string("..."))), nil).
  public func TransactionsCount(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return TransactionsCountEntity(self, entopts)
  }

  // TransactionsCountCardBrand returns a TransactionsCountCardBrand entity bound to this client.
  // Idiomatic usage: try client.TransactionsCountCardBrand().list(nil) or
  // try client.TransactionsCountCardBrand().load(vm(("id", .string("..."))), nil).
  public func TransactionsCountCardBrand(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return TransactionsCountCardBrandEntity(self, entopts)
  }

  // TransactionsTurnover returns a TransactionsTurnover entity bound to this client.
  // Idiomatic usage: try client.TransactionsTurnover().list(nil) or
  // try client.TransactionsTurnover().load(vm(("id", .string("..."))), nil).
  public func TransactionsTurnover(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return TransactionsTurnoverEntity(self, entopts)
  }

  // UpdateMerchant returns a UpdateMerchant entity bound to this client.
  // Idiomatic usage: try client.UpdateMerchant().list(nil) or
  // try client.UpdateMerchant().load(vm(("id", .string("..."))), nil).
  public func UpdateMerchant(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return UpdateMerchantEntity(self, entopts)
  }

  // UpdateTemplateXml returns a UpdateTemplateXml entity bound to this client.
  // Idiomatic usage: try client.UpdateTemplateXml().list(nil) or
  // try client.UpdateTemplateXml().load(vm(("id", .string("..."))), nil).
  public func UpdateTemplateXml(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return UpdateTemplateXmlEntity(self, entopts)
  }

  // Version returns a Version entity bound to this client.
  // Idiomatic usage: try client.Version().list(nil) or
  // try client.Version().load(vm(("id", .string("..."))), nil).
  public func Version(_ entopts: VMap? = nil) -> BluefinTecsMerchantServicesEntityBase {
    return VersionEntity(self, entopts)
  }


  public static func testSDK(_ testoptsIn: VMap?, _ sdkoptsIn: VMap?) -> BluefinTecsMerchantServicesSDK {
    let sdkopts = clone(.map(sdkoptsIn ?? VMap())).asMap ?? VMap()

    let testopts = clone(.map(testoptsIn ?? VMap())).asMap ?? VMap()
    testopts.entries["active"] = .bool(true)

    _ = setpath(.map(sdkopts), jtp("feature", "test"), .map(testopts))

    let sdk = BluefinTecsMerchantServicesSDK(sdkopts)
    sdk.mode = "test"
    return sdk
  }
}
