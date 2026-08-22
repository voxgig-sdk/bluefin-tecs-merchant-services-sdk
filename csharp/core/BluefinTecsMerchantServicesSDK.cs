// BluefinTecsMerchantServices SDK client.

using Voxgig.Struct;

using BluefinTecsMerchantServicesSdk.Feature;

namespace BluefinTecsMerchantServicesSdk;

public class BluefinTecsMerchantServicesSDK
{
    // NOTE: type references in EXPRESSION position are `global::`-qualified
    // throughout this class. Entity accessors are PascalCase methods declared
    // on it (see MainEntity_csharp), so an entity named `utility` declares
    // `Utility(...)` here and C# then resolves the simple name `Utility` in an
    // expression to the METHOD, not the type: "'X.Utility(...)' is a method,
    // which is not valid in the given context". Qualifying makes the class
    // immune to that whatever the API names its entities. Type POSITIONS
    // (field and return types) are unaffected and stay unqualified.

    public string Mode = "live";
    private Dictionary<string, object?> _options;
    private readonly Utility _utility;
    public List<BaseFeature> Features = new();
    private readonly Context _rootctx;

    public BluefinTecsMerchantServicesSDK(Dictionary<string, object?>? options = null)
    {
        _utility = new Utility();

        // The process-wide config (sdkgen rung L2): read-only on the request
        // path, so every client shares one rather than rebuilding it.
        var config = global::BluefinTecsMerchantServicesSdk.SdkConfig.SharedConfig();

        _rootctx = _utility.MakeContext(new Dictionary<string, object?>
        {
            ["client"] = this,
            ["utility"] = _utility,
            ["config"] = config,
            ["options"] = options,
            ["shared"] = new Dictionary<string, object?>(),
        }, null);

        _options = _utility.MakeOptions(_rootctx);

        if (Equals(global::Voxgig.Struct.StructUtils.GetPath(_options,
            global::Voxgig.Struct.StructUtils.Jt("feature", "test", "active")), true))
        {
            Mode = "test";
        }

        _rootctx.Options = _options;

        // Add features in the resolved order (MakeOptions puts an explicit
        // list order first, else defaults to test-first). Ordering matters:
        // the `test` feature installs the base mock transport and the transport
        // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is
        // current, so `test` must be added before them to sit at the base of
        // the chain.
        var featureOpts = global::BluefinTecsMerchantServicesSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(_options, "feature"))
            ?? new Dictionary<string, object?>();
        var featureOrder = global::Voxgig.Struct.StructUtils.GetPath(_options,
            global::Voxgig.Struct.StructUtils.Jt("__derived__", "featureorder")) as List<object?>
            ?? new List<object?>();
        foreach (var fnameObj in featureOrder)
        {
            var fname = fnameObj as string ?? "";
            var fopts = global::BluefinTecsMerchantServicesSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(featureOpts, fname));
            if (fopts != null &&
                fopts.TryGetValue("active", out var active) &&
                active is bool ab && ab)
            {
                _utility.FeatureAdd(_rootctx, global::BluefinTecsMerchantServicesSdk.SdkConfig.MakeFeature(fname));
            }
        }

        // Add extension features.
        if (global::Voxgig.Struct.StructUtils.GetProp(_options, "extend") is List<object?> extList)
        {
            foreach (var f in extList)
            {
                if (f is BaseFeature feat)
                {
                    _utility.FeatureAdd(_rootctx, feat);
                }
            }
        }

        // Initialize features.
        foreach (var f in Features.ToList())
        {
            _utility.FeatureInit(_rootctx, f);
        }

        _utility.FeatureHook(_rootctx, "PostConstruct");
    }

    public Dictionary<string, object?> OptionsMap()
    {
        return global::Voxgig.Struct.StructUtils.Clone(_options) as Dictionary<string, object?>
            ?? new Dictionary<string, object?>();
    }

    public Utility GetUtility()
    {
        return global::BluefinTecsMerchantServicesSdk.Utility.Copy(_utility);
    }

    public Context GetRootCtx()
    {
        return _rootctx;
    }

    public Dictionary<string, object?> Prepare(Dictionary<string, object?>? fetchargs)
    {
        var utility = _utility;

        fetchargs ??= new Dictionary<string, object?>();

        var ctrl = global::BluefinTecsMerchantServicesSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "ctrl"))
            ?? new Dictionary<string, object?>();

        var ctx = utility.MakeContext(new Dictionary<string, object?>
        {
            ["opname"] = "prepare",
            ["ctrl"] = ctrl,
        }, _rootctx);

        var options = _options;

        var path = global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "path") as string ?? "";
        var method = global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "method") as string ?? "";
        if (method == "")
        {
            method = "GET";
        }

        var pathParams = global::BluefinTecsMerchantServicesSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "params"))
            ?? new Dictionary<string, object?>();
        var query = global::BluefinTecsMerchantServicesSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "query"))
            ?? new Dictionary<string, object?>();

        var headers = utility.PrepareHeaders(ctx);

        var basev = global::Voxgig.Struct.StructUtils.GetProp(options, "base") as string ?? "";
        var prefix = global::Voxgig.Struct.StructUtils.GetProp(options, "prefix") as string ?? "";
        var suffix = global::Voxgig.Struct.StructUtils.GetProp(options, "suffix") as string ?? "";

        ctx.Spec = new Spec(new Dictionary<string, object?>
        {
            ["base"] = basev,
            ["prefix"] = prefix,
            ["suffix"] = suffix,
            ["path"] = path,
            ["method"] = method,
            ["params"] = pathParams,
            ["query"] = query,
            ["headers"] = headers,
            ["body"] = global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "body"),
            ["step"] = "start",
        });

        // Merge user-provided headers.
        if (global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "headers") is Dictionary<string, object?> uhm)
        {
            foreach (var kv in uhm)
            {
                ctx.Spec.Headers[kv.Key] = kv.Value;
            }
        }

        utility.PrepareAuth(ctx);

        return utility.MakeFetchDef(ctx);
    }

    // Raw endpoint access is operator-controllable, like every entity op.
    // Blocking it means denying BOTH the 'direct' and 'graphql' tokens,
    // since either one reaches the same endpoint.
    public Dictionary<string, object?> Direct(Dictionary<string, object?>? fetchargs)
    {
        if (!OpAllowed("direct"))
        {
            return OpDenied("direct");
        }

        return RawRequest(fetchargs);
    }

    // Is this raw-access op permitted by the SDK's allow.op option?
    private bool OpAllowed(string op)
    {
        return global::Voxgig.Struct.StructUtils.GetPath(_options, global::Voxgig.Struct.StructUtils.Jt("allow", "op"))
            is string allow && allow.Contains(op);
    }

    private Dictionary<string, object?> OpDenied(string op)
    {
        var allow = global::Voxgig.Struct.StructUtils.GetPath(_options, global::Voxgig.Struct.StructUtils.Jt("allow", "op"))
            as string ?? "";
        return new Dictionary<string, object?>
        {
            ["ok"] = false,
            ["err"] = new Exception("BluefinTecsMerchantServicesSDK: " + op +
                ": operation not allowed by SDK option allow.op value: \"" +
                allow + "\""),
        };
    }

    // Ungated request path shared by Direct and Graphql, each of which
    // checks its own allow.op token first. Private, rather than a flag on
    // fetchargs: a caller-supplied marker would let anyone opt straight back
    // out of the gate by passing it.
    private Dictionary<string, object?> RawRequest(Dictionary<string, object?>? fetchargs)
    {
        var utility = _utility;

        Dictionary<string, object?> fetchdef;
        try
        {
            fetchdef = Prepare(fetchargs);
        }
        catch (Exception err)
        {
            return new Dictionary<string, object?>
            {
                ["ok"] = false,
                ["err"] = err,
            };
        }

        fetchargs ??= new Dictionary<string, object?>();

        var ctrl = global::BluefinTecsMerchantServicesSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "ctrl"))
            ?? new Dictionary<string, object?>();

        var ctx = utility.MakeContext(new Dictionary<string, object?>
        {
            ["opname"] = "direct",
            ["ctrl"] = ctrl,
        }, _rootctx);

        var url = fetchdef.TryGetValue("url", out var u) ? u as string ?? "" : "";

        object? fetched;
        try
        {
            fetched = utility.Fetcher(ctx, url, fetchdef);
        }
        catch (Exception fetchErr)
        {
            return new Dictionary<string, object?>
            {
                ["ok"] = false,
                ["err"] = fetchErr,
            };
        }

        if (fetched == null)
        {
            return new Dictionary<string, object?>
            {
                ["ok"] = false,
                ["err"] = ctx.MakeError("direct_no_response", "response: undefined"),
            };
        }

        if (fetched is Dictionary<string, object?> fm)
        {
            var status = global::BluefinTecsMerchantServicesSdk.Helpers.ToInt(global::Voxgig.Struct.StructUtils.GetProp(fm, "status"));
            var headers = global::Voxgig.Struct.StructUtils.GetProp(fm, "headers");

            // No-body responses (204, 304) and explicit zero content-length
            // must skip JSON parsing - calling json() on an empty body errors.
            var contentLength = "";
            if (headers is Dictionary<string, object?> hm &&
                hm.TryGetValue("content-length", out var cl) && cl != null)
            {
                contentLength = global::Voxgig.Struct.StructUtils.Stringify(cl);
            }
            var noBody = status == 204 || status == 304 || contentLength == "0";

            object? jsonData = null;
            if (!noBody && global::Voxgig.Struct.StructUtils.GetProp(fm, "json") is Func<object?> jf)
            {
                // jf() returns null on parse error in our fetcher.
                jsonData = jf();
            }

            return new Dictionary<string, object?>
            {
                ["ok"] = status >= 200 && status < 300,
                ["status"] = status,
                ["headers"] = headers,
                ["data"] = jsonData,
            };
        }

        return new Dictionary<string, object?>
        {
            ["ok"] = false,
            ["err"] = ctx.MakeError("direct_invalid", "invalid response type"),
        };
    }

    // Raw GraphQL access: the pressure valve that makes the generated
    // surface's deliberate omissions (per-call selection sets, typed filter
    // builders, batching, subscriptions) livable — the whole schema stays
    // reachable.
    //
    // Thin wrapper over the same prepare/fetch path Direct uses, with the
    // one thing raw Direct cannot do for GraphQL: a GraphQL failure rides
    // HTTP 200 as a top-level `errors` array, so status alone would report a
    // failed query as ok.
    //
    // NOTE: like Direct, this bypasses the feature pipeline — no retry,
    // ratelimit or paging features apply.
    public Dictionary<string, object?> Graphql(string query,
        Dictionary<string, object?>? variables = null,
        Dictionary<string, object?>? ctrl = null)
    {
        if (!OpAllowed("graphql"))
        {
            return OpDenied("graphql");
        }

        var res = RawRequest(new Dictionary<string, object?>
        {
            ["method"] = "POST",
            ["headers"] = new Dictionary<string, object?>
            {
                ["content-type"] = "application/json",
            },
            ["body"] = new Dictionary<string, object?>
            {
                ["query"] = query,
                ["variables"] = variables ?? new Dictionary<string, object?>(),
            },
            ["ctrl"] = ctrl ?? new Dictionary<string, object?>(),
        });

        // Errors are read BEFORE any status check: a GraphQL parse or
        // validation failure comes back as HTTP 400 carrying the standard
        // { errors: [...] } body, and the raw path represents a non-2xx as
        // ok:false with no err — so returning early on status would discard
        // the server's own diagnostics, which are the only useful part of
        // that response.
        var errors = global::Voxgig.Struct.StructUtils.GetPath(res, global::Voxgig.Struct.StructUtils.Jt("data", "errors"))
            as List<object?>;

        if (null != errors && 0 < errors.Count)
        {
            var msg = global::Voxgig.Struct.StructUtils.GetProp(errors[0], "message") as string;
            if (string.IsNullOrEmpty(msg))
            {
                msg = "graphql error";
            }
            res["ok"] = false;
            res["err"] = new Exception("BluefinTecsMerchantServicesSDK: graphql: " + msg);
            res["graphql"] = errors;
        }

        return res;
    }


    // CancelTransaction returns a CancelTransaction entity bound to this client.
    // Idiomatic usage: client.CancelTransaction().List(null) or
    // client.CancelTransaction().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase CancelTransaction(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.CancelTransactionEntity(this, entopts);
    }

    // CheckCardBlackListed returns a CheckCardBlackListed entity bound to this client.
    // Idiomatic usage: client.CheckCardBlackListed().List(null) or
    // client.CheckCardBlackListed().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase CheckCardBlackListed(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.CheckCardBlackListedEntity(this, entopts);
    }

    // CreateProduct returns a CreateProduct entity bound to this client.
    // Idiomatic usage: client.CreateProduct().List(null) or
    // client.CreateProduct().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase CreateProduct(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.CreateProductEntity(this, entopts);
    }

    // DeactivateTerminal returns a DeactivateTerminal entity bound to this client.
    // Idiomatic usage: client.DeactivateTerminal().List(null) or
    // client.DeactivateTerminal().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase DeactivateTerminal(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.DeactivateTerminalEntity(this, entopts);
    }

    // DigitalServicesApi returns a DigitalServicesApi entity bound to this client.
    // Idiomatic usage: client.DigitalServicesApi().List(null) or
    // client.DigitalServicesApi().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase DigitalServicesApi(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.DigitalServicesApiEntity(this, entopts);
    }

    // EcDataEcom returns a EcDataEcom entity bound to this client.
    // Idiomatic usage: client.EcDataEcom().List(null) or
    // client.EcDataEcom().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase EcDataEcom(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.EcDataEcomEntity(this, entopts);
    }

    // EcomParameter returns a EcomParameter entity bound to this client.
    // Idiomatic usage: client.EcomParameter().List(null) or
    // client.EcomParameter().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase EcomParameter(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.EcomParameterEntity(this, entopts);
    }

    // EcrData returns a EcrData entity bound to this client.
    // Idiomatic usage: client.EcrData().List(null) or
    // client.EcrData().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase EcrData(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.EcrDataEntity(this, entopts);
    }

    // EmvData returns a EmvData entity bound to this client.
    // Idiomatic usage: client.EmvData().List(null) or
    // client.EmvData().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase EmvData(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.EmvDataEntity(this, entopts);
    }

    // EnableAcquiring returns a EnableAcquiring entity bound to this client.
    // Idiomatic usage: client.EnableAcquiring().List(null) or
    // client.EnableAcquiring().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase EnableAcquiring(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.EnableAcquiringEntity(this, entopts);
    }

    // GetMerchantContractNumber returns a GetMerchantContractNumber entity bound to this client.
    // Idiomatic usage: client.GetMerchantContractNumber().List(null) or
    // client.GetMerchantContractNumber().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase GetMerchantContractNumber(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.GetMerchantContractNumberEntity(this, entopts);
    }

    // GetTemplateXml returns a GetTemplateXml entity bound to this client.
    // Idiomatic usage: client.GetTemplateXml().List(null) or
    // client.GetTemplateXml().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase GetTemplateXml(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.GetTemplateXmlEntity(this, entopts);
    }

    // IntroduceMandator returns a IntroduceMandator entity bound to this client.
    // Idiomatic usage: client.IntroduceMandator().List(null) or
    // client.IntroduceMandator().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase IntroduceMandator(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.IntroduceMandatorEntity(this, entopts);
    }

    // IntroducePackage returns a IntroducePackage entity bound to this client.
    // Idiomatic usage: client.IntroducePackage().List(null) or
    // client.IntroducePackage().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase IntroducePackage(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.IntroducePackageEntity(this, entopts);
    }

    // KeepAlive returns a KeepAlive entity bound to this client.
    // Idiomatic usage: client.KeepAlive().List(null) or
    // client.KeepAlive().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase KeepAlive(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.KeepAliveEntity(this, entopts);
    }

    // ListTerminal returns a ListTerminal entity bound to this client.
    // Idiomatic usage: client.ListTerminal().List(null) or
    // client.ListTerminal().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase ListTerminal(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.ListTerminalEntity(this, entopts);
    }

    // MandatorClearingExport returns a MandatorClearingExport entity bound to this client.
    // Idiomatic usage: client.MandatorClearingExport().List(null) or
    // client.MandatorClearingExport().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase MandatorClearingExport(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.MandatorClearingExportEntity(this, entopts);
    }

    // MandatorClearingExportDownload returns a MandatorClearingExportDownload entity bound to this client.
    // Idiomatic usage: client.MandatorClearingExportDownload().List(null) or
    // client.MandatorClearingExportDownload().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase MandatorClearingExportDownload(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.MandatorClearingExportDownloadEntity(this, entopts);
    }

    // MandatorClearingExportSummary returns a MandatorClearingExportSummary entity bound to this client.
    // Idiomatic usage: client.MandatorClearingExportSummary().List(null) or
    // client.MandatorClearingExportSummary().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase MandatorClearingExportSummary(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.MandatorClearingExportSummaryEntity(this, entopts);
    }

    // MerchantPortalServicesApi returns a MerchantPortalServicesApi entity bound to this client.
    // Idiomatic usage: client.MerchantPortalServicesApi().List(null) or
    // client.MerchantPortalServicesApi().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase MerchantPortalServicesApi(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.MerchantPortalServicesApiEntity(this, entopts);
    }

    // MoveTid returns a MoveTid entity bound to this client.
    // Idiomatic usage: client.MoveTid().List(null) or
    // client.MoveTid().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase MoveTid(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.MoveTidEntity(this, entopts);
    }

    // PaymentManual returns a PaymentManual entity bound to this client.
    // Idiomatic usage: client.PaymentManual().List(null) or
    // client.PaymentManual().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase PaymentManual(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.PaymentManualEntity(this, entopts);
    }

    // PaymentSred returns a PaymentSred entity bound to this client.
    // Idiomatic usage: client.PaymentSred().List(null) or
    // client.PaymentSred().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase PaymentSred(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.PaymentSredEntity(this, entopts);
    }

    // PreAuthTransactionCompletion returns a PreAuthTransactionCompletion entity bound to this client.
    // Idiomatic usage: client.PreAuthTransactionCompletion().List(null) or
    // client.PreAuthTransactionCompletion().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase PreAuthTransactionCompletion(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.PreAuthTransactionCompletionEntity(this, entopts);
    }

    // ReactivateTerminal returns a ReactivateTerminal entity bound to this client.
    // Idiomatic usage: client.ReactivateTerminal().List(null) or
    // client.ReactivateTerminal().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase ReactivateTerminal(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.ReactivateTerminalEntity(this, entopts);
    }

    // RefundTransaction returns a RefundTransaction entity bound to this client.
    // Idiomatic usage: client.RefundTransaction().List(null) or
    // client.RefundTransaction().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase RefundTransaction(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.RefundTransactionEntity(this, entopts);
    }

    // RegisterTecsCompany returns a RegisterTecsCompany entity bound to this client.
    // Idiomatic usage: client.RegisterTecsCompany().List(null) or
    // client.RegisterTecsCompany().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase RegisterTecsCompany(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.RegisterTecsCompanyEntity(this, entopts);
    }

    // RegisterTerminal returns a RegisterTerminal entity bound to this client.
    // Idiomatic usage: client.RegisterTerminal().List(null) or
    // client.RegisterTerminal().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase RegisterTerminal(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.RegisterTerminalEntity(this, entopts);
    }

    // ReportData returns a ReportData entity bound to this client.
    // Idiomatic usage: client.ReportData().List(null) or
    // client.ReportData().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase ReportData(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.ReportDataEntity(this, entopts);
    }

    // StatusTransaction returns a StatusTransaction entity bound to this client.
    // Idiomatic usage: client.StatusTransaction().List(null) or
    // client.StatusTransaction().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase StatusTransaction(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.StatusTransactionEntity(this, entopts);
    }

    // StoreTerminalParameter returns a StoreTerminalParameter entity bound to this client.
    // Idiomatic usage: client.StoreTerminalParameter().List(null) or
    // client.StoreTerminalParameter().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase StoreTerminalParameter(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.StoreTerminalParameterEntity(this, entopts);
    }

    // TerminalId returns a TerminalId entity bound to this client.
    // Idiomatic usage: client.TerminalId().List(null) or
    // client.TerminalId().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase TerminalId(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.TerminalIdEntity(this, entopts);
    }

    // TransactionHistory returns a TransactionHistory entity bound to this client.
    // Idiomatic usage: client.TransactionHistory().List(null) or
    // client.TransactionHistory().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase TransactionHistory(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.TransactionHistoryEntity(this, entopts);
    }

    // TransactionsCount returns a TransactionsCount entity bound to this client.
    // Idiomatic usage: client.TransactionsCount().List(null) or
    // client.TransactionsCount().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase TransactionsCount(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.TransactionsCountEntity(this, entopts);
    }

    // TransactionsCountCardBrand returns a TransactionsCountCardBrand entity bound to this client.
    // Idiomatic usage: client.TransactionsCountCardBrand().List(null) or
    // client.TransactionsCountCardBrand().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase TransactionsCountCardBrand(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.TransactionsCountCardBrandEntity(this, entopts);
    }

    // TransactionsTurnover returns a TransactionsTurnover entity bound to this client.
    // Idiomatic usage: client.TransactionsTurnover().List(null) or
    // client.TransactionsTurnover().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase TransactionsTurnover(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.TransactionsTurnoverEntity(this, entopts);
    }

    // UpdateMerchant returns a UpdateMerchant entity bound to this client.
    // Idiomatic usage: client.UpdateMerchant().List(null) or
    // client.UpdateMerchant().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase UpdateMerchant(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.UpdateMerchantEntity(this, entopts);
    }

    // UpdateTemplateXml returns a UpdateTemplateXml entity bound to this client.
    // Idiomatic usage: client.UpdateTemplateXml().List(null) or
    // client.UpdateTemplateXml().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase UpdateTemplateXml(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.UpdateTemplateXmlEntity(this, entopts);
    }

    // Version returns a Version entity bound to this client.
    // Idiomatic usage: client.Version().List(null) or
    // client.Version().Load(new() { ["id"] = ... }).
    public BluefinTecsMerchantServicesEntityBase Version(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsMerchantServicesSdk.Entity.VersionEntity(this, entopts);
    }


    public static BluefinTecsMerchantServicesSDK TestSDK(Dictionary<string, object?>? testopts,
        Dictionary<string, object?>? sdkopts)
    {
        sdkopts = global::Voxgig.Struct.StructUtils.Clone(sdkopts ?? new Dictionary<string, object?>())
            as Dictionary<string, object?> ?? new Dictionary<string, object?>();

        testopts = global::Voxgig.Struct.StructUtils.Clone(testopts ?? new Dictionary<string, object?>())
            as Dictionary<string, object?> ?? new Dictionary<string, object?>();
        testopts["active"] = true;

        global::Voxgig.Struct.StructUtils.SetPath(sdkopts, global::Voxgig.Struct.StructUtils.Jt("feature", "test"), testopts);

        var sdk = new BluefinTecsMerchantServicesSDK(sdkopts)
        {
            Mode = "test",
        };

        return sdk;
    }
}
