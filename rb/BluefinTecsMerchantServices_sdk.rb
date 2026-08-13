# BluefinTecsMerchantServices SDK

require_relative 'utility/struct/voxgig_struct'
require_relative 'core/utility_type'
require_relative 'core/spec'
require_relative 'core/helpers'

# Load utility registration
require_relative 'utility/register'

# Load config and features
require_relative 'config'
require_relative 'feature/base_feature'
require_relative 'features'

# Load typed models (Struct value objects).
require_relative 'BluefinTecsMerchantServices_types'


class BluefinTecsMerchantServicesSDK
  attr_accessor :mode, :features, :options

  def initialize(options = {})
    @mode = "live"
    @features = []
    @options = nil

    utility = BluefinTecsMerchantServicesUtility.new
    @_utility = utility

    config = BluefinTecsMerchantServicesConfig.make_config

    @_rootctx = utility.make_context.call({
      "client" => self,
      "utility" => utility,
      "config" => config,
      "options" => options || {},
      "shared" => {},
    }, nil)

    @options = utility.make_options.call(@_rootctx)

    if VoxgigStruct.getpath(@options, "feature.test.active") == true
      @mode = "test"
    end

    @_rootctx.options = @options

    # Add features in the resolved order (make_options puts an explicit array
    # order first, else defaults to test-first). Ordering matters: the `test`
    # feature installs the base mock transport and the transport features
    # (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
    # must be added before them to sit at the base of the chain.
    feature_opts = BluefinTecsMerchantServicesHelpers.to_map(VoxgigStruct.getprop(@options, "feature"))
    if feature_opts
      featureorder = VoxgigStruct.getpath(@options, "__derived__.featureorder")
      if featureorder.is_a?(Array)
        featureorder.each do |fname|
          fopts = BluefinTecsMerchantServicesHelpers.to_map(feature_opts[fname])
          if fopts && fopts["active"] == true
            utility.feature_add.call(@_rootctx, BluefinTecsMerchantServicesFeatures.make_feature(fname))
          end
        end
      end
    end

    # Add extension features.
    extend_val = VoxgigStruct.getprop(@options, "extend")
    if extend_val.is_a?(Array)
      extend_val.each do |f|
        if f.respond_to?(:get_name)
          utility.feature_add.call(@_rootctx, f)
        end
      end
    end

    # Initialize features.
    @features.each do |f|
      utility.feature_init.call(@_rootctx, f)
    end

    utility.feature_hook.call(@_rootctx, "PostConstruct")
  end

  def options_map
    out = VoxgigStruct.clone(@options)
    out.is_a?(Hash) ? out : {}
  end

  def get_utility
    BluefinTecsMerchantServicesUtility.copy(@_utility)
  end

  def get_root_ctx
    @_rootctx
  end

  def prepare(fetchargs = {})
    utility = @_utility
    fetchargs ||= {}

    ctrl = BluefinTecsMerchantServicesHelpers.to_map(VoxgigStruct.getprop(fetchargs, "ctrl")) || {}

    ctx = utility.make_context.call({
      "opname" => "prepare",
      "ctrl" => ctrl,
    }, @_rootctx)

    opts = @options
    path = VoxgigStruct.getprop(fetchargs, "path") || ""
    path = "" unless path.is_a?(String)
    method_val = VoxgigStruct.getprop(fetchargs, "method") || "GET"
    method_val = "GET" unless method_val.is_a?(String)
    params = BluefinTecsMerchantServicesHelpers.to_map(VoxgigStruct.getprop(fetchargs, "params")) || {}
    query = BluefinTecsMerchantServicesHelpers.to_map(VoxgigStruct.getprop(fetchargs, "query")) || {}
    headers = utility.prepare_headers.call(ctx)

    base = VoxgigStruct.getprop(opts, "base") || ""
    base = "" unless base.is_a?(String)
    prefix = VoxgigStruct.getprop(opts, "prefix") || ""
    prefix = "" unless prefix.is_a?(String)
    suffix = VoxgigStruct.getprop(opts, "suffix") || ""
    suffix = "" unless suffix.is_a?(String)

    ctx.spec = BluefinTecsMerchantServicesSpec.new({
      "base" => base, "prefix" => prefix, "suffix" => suffix,
      "path" => path, "method" => method_val,
      "params" => params, "query" => query, "headers" => headers,
      "body" => VoxgigStruct.getprop(fetchargs, "body"),
      "step" => "start",
    })

    # Merge user-provided headers.
    uh = VoxgigStruct.getprop(fetchargs, "headers")
    if uh.is_a?(Hash)
      uh.each { |k, v| ctx.spec.headers[k] = v }
    end

    _, err = utility.prepare_auth.call(ctx)
    raise err if err

    # make_fetch_def returns a (fetchdef, err) tuple; destructure it and
    # return just the fetchdef Hash (raising on error) so callers — including
    # direct(), which indexes fetchdef["url"] — receive a Hash, mirroring the
    # ts/py prepare().
    fetchdef, fd_err = utility.make_fetch_def.call(ctx)
    raise fd_err if fd_err

    fetchdef
  end

  # Raw endpoint access is operator-controllable, like every entity op.
  # Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
  # either one reaches the same endpoint.
  def direct(fetchargs = {})
    return op_denied("direct") unless op_allowed?("direct")

    raw_request(fetchargs)
  end

  # Is this raw-access op permitted by the SDK's allow.op option?
  def op_allowed?(op)
    allow_op = VoxgigStruct.getpath(@options, "allow.op")
    allow_op.is_a?(String) && allow_op.include?(op)
  end

  def op_denied(op)
    allow_op = VoxgigStruct.getpath(@options, "allow.op")
    {
      "ok" => false,
      "err" => BluefinTecsMerchantServicesError.new(
        "#{op}_allow",
        "BluefinTecsMerchantServicesSDK: #{op}: operation not allowed by" \
        " SDK option allow.op value: \"#{allow_op}\""),
    }
  end

  # Ungated request path shared by direct and graphql, each of which checks
  # its own allow.op token first. Separate, rather than a flag on fetchargs:
  # a caller-supplied marker would let anyone opt straight back out of the
  # gate by passing it.
  def raw_request(fetchargs = {})
    utility = @_utility

    # direct() is the raw-HTTP escape hatch: it always returns a result hash
    # ({ "ok" => ..., ... }) and never raises. prepare() raises on error, so
    # trap that and surface it in the hash.
    begin
      fetchdef = prepare(fetchargs)
    rescue BluefinTecsMerchantServicesError => err
      return { "ok" => false, "err" => err }
    end

    fetchargs ||= {}
    ctrl = BluefinTecsMerchantServicesHelpers.to_map(VoxgigStruct.getprop(fetchargs, "ctrl")) || {}

    ctx = utility.make_context.call({
      "opname" => "direct",
      "ctrl" => ctrl,
    }, @_rootctx)

    url = fetchdef["url"] || ""
    fetched, fetch_err = utility.fetcher.call(ctx, url, fetchdef)

    return { "ok" => false, "err" => fetch_err } if fetch_err

    if fetched.nil?
      return {
        "ok" => false,
        "err" => ctx.make_error("direct_no_response", "response: undefined"),
      }
    end

    if fetched.is_a?(Hash)
      status = BluefinTecsMerchantServicesHelpers.to_int(VoxgigStruct.getprop(fetched, "status"))
      headers = VoxgigStruct.getprop(fetched, "headers") || {}

      # No-body responses (204, 304) and explicit zero content-length must
      # skip JSON parsing — calling json() on an empty body errors.
      content_length = headers.is_a?(Hash) ? headers["content-length"] : nil
      no_body = status == 204 || status == 304 || content_length.to_s == "0"

      json_data = nil
      unless no_body
        jf = VoxgigStruct.getprop(fetched, "json")
        if jf.is_a?(Proc)
          begin
            json_data = jf.call
          rescue StandardError
            # Non-JSON body — leave data nil, keep status/headers.
            json_data = nil
          end
        end
      end

      return {
        "ok" => status >= 200 && status < 300,
        "status" => status,
        "headers" => headers,
        "data" => json_data,
      }
    end

    return {
      "ok" => false,
      "err" => ctx.make_error("direct_invalid", "invalid response type"),
    }
  end

  # Raw GraphQL access: the pressure valve that makes the generated surface's
  # deliberate omissions (per-call selection sets, typed filter builders,
  # batching, subscriptions) livable — the whole schema stays reachable.
  #
  # Thin wrapper over the same prepare/fetch path direct uses, with the one
  # thing raw direct cannot do for GraphQL: a GraphQL failure rides HTTP 200
  # as a top-level `errors` array, so status alone would report a failed
  # query as ok.
  #
  # NOTE: like direct, this bypasses the feature pipeline — no retry,
  # ratelimit or paging features apply.
  def graphql(query, variables = nil, ctrl = nil)
    return op_denied("graphql") unless op_allowed?("graphql")

    res = raw_request({
      "method" => "POST",
      "headers" => { "content-type" => "application/json" },
      "body" => { "query" => query, "variables" => variables || {} },
      "ctrl" => ctrl || {},
    })

    # Errors are read BEFORE any status check: a GraphQL parse or validation
    # failure comes back as HTTP 400 carrying the standard { errors: [...] }
    # body, and the raw path represents a non-2xx as ok:false with no err —
    # so returning early on status would discard the server's own
    # diagnostics, which are the only useful part of that response.
    errors = VoxgigStruct.getpath(res, "data.errors")

    if errors.is_a?(Array) && !errors.empty?
      first = errors[0].is_a?(Hash) ? errors[0] : {}
      msg = first["message"]
      msg = "graphql error" if msg.nil? || msg.to_s.empty?
      res["ok"] = false
      res["err"] = BluefinTecsMerchantServicesError.new(
        "graphql_error", "BluefinTecsMerchantServicesSDK: graphql: #{msg}")
      res["graphql"] = errors
    end

    res
  end


  # Canonical facade: client.CancelTransaction.list / client.CancelTransaction.load({ "id" => ... })
  def CancelTransaction(data = nil)
    require_relative 'entity/cancel_transaction_entity'
    CancelTransactionEntity.new(self, data)
  end


  # Canonical facade: client.CheckCardBlackListed.list / client.CheckCardBlackListed.load({ "id" => ... })
  def CheckCardBlackListed(data = nil)
    require_relative 'entity/check_card_black_listed_entity'
    CheckCardBlackListedEntity.new(self, data)
  end


  # Canonical facade: client.CreateProduct.list / client.CreateProduct.load({ "id" => ... })
  def CreateProduct(data = nil)
    require_relative 'entity/create_product_entity'
    CreateProductEntity.new(self, data)
  end


  # Canonical facade: client.DeactivateTerminal.list / client.DeactivateTerminal.load({ "id" => ... })
  def DeactivateTerminal(data = nil)
    require_relative 'entity/deactivate_terminal_entity'
    DeactivateTerminalEntity.new(self, data)
  end


  # Canonical facade: client.DigitalServicesApi.list / client.DigitalServicesApi.load({ "id" => ... })
  def DigitalServicesApi(data = nil)
    require_relative 'entity/digital_services_api_entity'
    DigitalServicesApiEntity.new(self, data)
  end


  # Canonical facade: client.EcDataEcom.list / client.EcDataEcom.load({ "id" => ... })
  def EcDataEcom(data = nil)
    require_relative 'entity/ec_data_ecom_entity'
    EcDataEcomEntity.new(self, data)
  end


  # Canonical facade: client.EcomParameter.list / client.EcomParameter.load({ "id" => ... })
  def EcomParameter(data = nil)
    require_relative 'entity/ecom_parameter_entity'
    EcomParameterEntity.new(self, data)
  end


  # Canonical facade: client.EcrData.list / client.EcrData.load({ "id" => ... })
  def EcrData(data = nil)
    require_relative 'entity/ecr_data_entity'
    EcrDataEntity.new(self, data)
  end


  # Canonical facade: client.EmvData.list / client.EmvData.load({ "id" => ... })
  def EmvData(data = nil)
    require_relative 'entity/emv_data_entity'
    EmvDataEntity.new(self, data)
  end


  # Canonical facade: client.EnableAcquiring.list / client.EnableAcquiring.load({ "id" => ... })
  def EnableAcquiring(data = nil)
    require_relative 'entity/enable_acquiring_entity'
    EnableAcquiringEntity.new(self, data)
  end


  # Canonical facade: client.GetMerchantContractNumber.list / client.GetMerchantContractNumber.load({ "id" => ... })
  def GetMerchantContractNumber(data = nil)
    require_relative 'entity/get_merchant_contract_number_entity'
    GetMerchantContractNumberEntity.new(self, data)
  end


  # Canonical facade: client.GetTemplateXml.list / client.GetTemplateXml.load({ "id" => ... })
  def GetTemplateXml(data = nil)
    require_relative 'entity/get_template_xml_entity'
    GetTemplateXmlEntity.new(self, data)
  end


  # Canonical facade: client.IntroduceMandator.list / client.IntroduceMandator.load({ "id" => ... })
  def IntroduceMandator(data = nil)
    require_relative 'entity/introduce_mandator_entity'
    IntroduceMandatorEntity.new(self, data)
  end


  # Canonical facade: client.IntroducePackage.list / client.IntroducePackage.load({ "id" => ... })
  def IntroducePackage(data = nil)
    require_relative 'entity/introduce_package_entity'
    IntroducePackageEntity.new(self, data)
  end


  # Canonical facade: client.KeepAlive.list / client.KeepAlive.load({ "id" => ... })
  def KeepAlive(data = nil)
    require_relative 'entity/keep_alive_entity'
    KeepAliveEntity.new(self, data)
  end


  # Canonical facade: client.ListTerminal.list / client.ListTerminal.load({ "id" => ... })
  def ListTerminal(data = nil)
    require_relative 'entity/list_terminal_entity'
    ListTerminalEntity.new(self, data)
  end


  # Canonical facade: client.MandatorClearingExport.list / client.MandatorClearingExport.load({ "id" => ... })
  def MandatorClearingExport(data = nil)
    require_relative 'entity/mandator_clearing_export_entity'
    MandatorClearingExportEntity.new(self, data)
  end


  # Canonical facade: client.MandatorClearingExportDownload.list / client.MandatorClearingExportDownload.load({ "id" => ... })
  def MandatorClearingExportDownload(data = nil)
    require_relative 'entity/mandator_clearing_export_download_entity'
    MandatorClearingExportDownloadEntity.new(self, data)
  end


  # Canonical facade: client.MandatorClearingExportSummary.list / client.MandatorClearingExportSummary.load({ "id" => ... })
  def MandatorClearingExportSummary(data = nil)
    require_relative 'entity/mandator_clearing_export_summary_entity'
    MandatorClearingExportSummaryEntity.new(self, data)
  end


  # Canonical facade: client.MerchantPortalServicesApi.list / client.MerchantPortalServicesApi.load({ "id" => ... })
  def MerchantPortalServicesApi(data = nil)
    require_relative 'entity/merchant_portal_services_api_entity'
    MerchantPortalServicesApiEntity.new(self, data)
  end


  # Canonical facade: client.MoveTid.list / client.MoveTid.load({ "id" => ... })
  def MoveTid(data = nil)
    require_relative 'entity/move_tid_entity'
    MoveTidEntity.new(self, data)
  end


  # Canonical facade: client.PaymentManual.list / client.PaymentManual.load({ "id" => ... })
  def PaymentManual(data = nil)
    require_relative 'entity/payment_manual_entity'
    PaymentManualEntity.new(self, data)
  end


  # Canonical facade: client.PaymentSred.list / client.PaymentSred.load({ "id" => ... })
  def PaymentSred(data = nil)
    require_relative 'entity/payment_sred_entity'
    PaymentSredEntity.new(self, data)
  end


  # Canonical facade: client.PreAuthTransactionCompletion.list / client.PreAuthTransactionCompletion.load({ "id" => ... })
  def PreAuthTransactionCompletion(data = nil)
    require_relative 'entity/pre_auth_transaction_completion_entity'
    PreAuthTransactionCompletionEntity.new(self, data)
  end


  # Canonical facade: client.ReactivateTerminal.list / client.ReactivateTerminal.load({ "id" => ... })
  def ReactivateTerminal(data = nil)
    require_relative 'entity/reactivate_terminal_entity'
    ReactivateTerminalEntity.new(self, data)
  end


  # Canonical facade: client.RefundTransaction.list / client.RefundTransaction.load({ "id" => ... })
  def RefundTransaction(data = nil)
    require_relative 'entity/refund_transaction_entity'
    RefundTransactionEntity.new(self, data)
  end


  # Canonical facade: client.RegisterTecsCompany.list / client.RegisterTecsCompany.load({ "id" => ... })
  def RegisterTecsCompany(data = nil)
    require_relative 'entity/register_tecs_company_entity'
    RegisterTecsCompanyEntity.new(self, data)
  end


  # Canonical facade: client.RegisterTerminal.list / client.RegisterTerminal.load({ "id" => ... })
  def RegisterTerminal(data = nil)
    require_relative 'entity/register_terminal_entity'
    RegisterTerminalEntity.new(self, data)
  end


  # Canonical facade: client.ReportData.list / client.ReportData.load({ "id" => ... })
  def ReportData(data = nil)
    require_relative 'entity/report_data_entity'
    ReportDataEntity.new(self, data)
  end


  # Canonical facade: client.StatusTransaction.list / client.StatusTransaction.load({ "id" => ... })
  def StatusTransaction(data = nil)
    require_relative 'entity/status_transaction_entity'
    StatusTransactionEntity.new(self, data)
  end


  # Canonical facade: client.StoreTerminalParameter.list / client.StoreTerminalParameter.load({ "id" => ... })
  def StoreTerminalParameter(data = nil)
    require_relative 'entity/store_terminal_parameter_entity'
    StoreTerminalParameterEntity.new(self, data)
  end


  # Canonical facade: client.TerminalId.list / client.TerminalId.load({ "id" => ... })
  def TerminalId(data = nil)
    require_relative 'entity/terminal_id_entity'
    TerminalIdEntity.new(self, data)
  end


  # Canonical facade: client.TransactionHistory.list / client.TransactionHistory.load({ "id" => ... })
  def TransactionHistory(data = nil)
    require_relative 'entity/transaction_history_entity'
    TransactionHistoryEntity.new(self, data)
  end


  # Canonical facade: client.TransactionsCount.list / client.TransactionsCount.load({ "id" => ... })
  def TransactionsCount(data = nil)
    require_relative 'entity/transactions_count_entity'
    TransactionsCountEntity.new(self, data)
  end


  # Canonical facade: client.TransactionsCountCardBrand.list / client.TransactionsCountCardBrand.load({ "id" => ... })
  def TransactionsCountCardBrand(data = nil)
    require_relative 'entity/transactions_count_card_brand_entity'
    TransactionsCountCardBrandEntity.new(self, data)
  end


  # Canonical facade: client.TransactionsTurnover.list / client.TransactionsTurnover.load({ "id" => ... })
  def TransactionsTurnover(data = nil)
    require_relative 'entity/transactions_turnover_entity'
    TransactionsTurnoverEntity.new(self, data)
  end


  # Canonical facade: client.UpdateMerchant.list / client.UpdateMerchant.load({ "id" => ... })
  def UpdateMerchant(data = nil)
    require_relative 'entity/update_merchant_entity'
    UpdateMerchantEntity.new(self, data)
  end


  # Canonical facade: client.UpdateTemplateXml.list / client.UpdateTemplateXml.load({ "id" => ... })
  def UpdateTemplateXml(data = nil)
    require_relative 'entity/update_template_xml_entity'
    UpdateTemplateXmlEntity.new(self, data)
  end


  # Canonical facade: client.Version.list / client.Version.load({ "id" => ... })
  def Version(data = nil)
    require_relative 'entity/version_entity'
    VersionEntity.new(self, data)
  end



  def self.test(testopts = nil, sdkopts = nil)
    sdkopts = sdkopts || {}
    sdkopts = VoxgigStruct.clone(sdkopts)
    sdkopts = {} unless sdkopts.is_a?(Hash)

    testopts = testopts || {}
    testopts = VoxgigStruct.clone(testopts)
    testopts = {} unless testopts.is_a?(Hash)
    testopts["active"] = true

    VoxgigStruct.setpath(sdkopts, "feature.test", testopts)

    sdk = BluefinTecsMerchantServicesSDK.new(sdkopts)
    sdk.mode = "test"
    sdk
  end
end
