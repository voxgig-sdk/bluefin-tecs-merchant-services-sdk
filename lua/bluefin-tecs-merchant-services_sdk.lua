-- BluefinTecsMerchantServices SDK

local vs = require("utility.struct.struct")
local Utility = require("core.utility_type")
local Spec = require("core.spec")
local helpers = require("core.helpers")

-- Load utility registration (populates Utility._registrar)
require("utility.register")

-- Typed-model annotations (LuaLS ---@class); empty at runtime.
require("bluefin-tecs-merchant-services_types")

-- Load features
local BaseFeature = require("feature.base_feature")
local features_factory = require("features")


local BluefinTecsMerchantServicesSDK = {}
BluefinTecsMerchantServicesSDK.__index = BluefinTecsMerchantServicesSDK


local function _make_feature(name)
  local factory = features_factory[name]
  if factory ~= nil then
    return factory()
  end
  return features_factory.base()
end

BluefinTecsMerchantServicesSDK._make_feature = _make_feature


function BluefinTecsMerchantServicesSDK.new(options)
  local self = setmetatable({}, BluefinTecsMerchantServicesSDK)
  self.mode = "live"
  self.features = {}
  self.options = nil

  local utility = Utility.new()
  self._utility = utility

  local config = require("config_shared")()

  self._rootctx = utility.make_context({
    client = self,
    utility = utility,
    config = config,
    options = options or {},
    shared = {},
  }, nil)

  self.options = utility.make_options(self._rootctx)

  if vs.getpath(self.options, "feature.test.active") == true then
    self.mode = "test"
  end

  self._rootctx.options = self.options

  -- Add features in the resolved order (make_options puts an explicit list
  -- order first, else defaults to test-first). Ordering matters: the `test`
  -- feature installs the base mock transport and the transport features
  -- (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
  -- must be added before them to sit at the base of the chain.
  local feature_opts = helpers.to_map(vs.getprop(self.options, "feature"))
  if feature_opts ~= nil then
    local featureorder = vs.getpath(self.options, "__derived__.featureorder")
    if type(featureorder) == "table" then
      for _, fname in ipairs(featureorder) do
        local fopts = helpers.to_map(feature_opts[fname])
        if fopts ~= nil and fopts["active"] == true then
          utility.feature_add(self._rootctx, _make_feature(fname))
        end
      end
    end
  end

  -- Add extension features.
  local extend = vs.getprop(self.options, "extend")
  if type(extend) == "table" then
    for _, f in ipairs(extend) do
      if type(f) == "table" and type(f.get_name) == "function" then
        utility.feature_add(self._rootctx, f)
      end
    end
  end

  -- Initialize features.
  for _, f in ipairs(self.features) do
    utility.feature_init(self._rootctx, f)
  end

  utility.feature_hook(self._rootctx, "PostConstruct")

    -- feature: test


  return self
end


function BluefinTecsMerchantServicesSDK:options_map()
  local out = vs.clone(self.options)
  if type(out) == "table" then
    return out
  end
  return {}
end


function BluefinTecsMerchantServicesSDK:get_utility()
  return Utility.copy(self._utility)
end


function BluefinTecsMerchantServicesSDK:get_root_ctx()
  return self._rootctx
end


function BluefinTecsMerchantServicesSDK:prepare(fetchargs)
  local utility = self._utility

  fetchargs = fetchargs or {}

  local ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl")) or {}

  local ctx = utility.make_context({
    opname = "prepare",
    ctrl = ctrl,
  }, self._rootctx)

  local options = self.options

  local path = vs.getprop(fetchargs, "path") or ""
  if type(path) ~= "string" then path = "" end

  local method = vs.getprop(fetchargs, "method") or "GET"
  if type(method) ~= "string" then method = "GET" end

  local params = helpers.to_map(vs.getprop(fetchargs, "params")) or {}
  local query = helpers.to_map(vs.getprop(fetchargs, "query")) or {}

  local headers = utility.prepare_headers(ctx)

  local base = vs.getprop(options, "base") or ""
  if type(base) ~= "string" then base = "" end
  local prefix = vs.getprop(options, "prefix") or ""
  if type(prefix) ~= "string" then prefix = "" end
  local suffix = vs.getprop(options, "suffix") or ""
  if type(suffix) ~= "string" then suffix = "" end

  ctx.spec = Spec.new({
    base = base,
    prefix = prefix,
    suffix = suffix,
    path = path,
    method = method,
    params = params,
    query = query,
    headers = headers,
    body = vs.getprop(fetchargs, "body"),
    step = "start",
  })

  -- Merge user-provided headers.
  local uh = vs.getprop(fetchargs, "headers")
  if type(uh) == "table" then
    for k, v in pairs(uh) do
      ctx.spec.headers[k] = v
    end
  end

  local _, err = utility.prepare_auth(ctx)
  if err ~= nil then
    return nil, err
  end

  return utility.make_fetch_def(ctx)
end


-- Raw endpoint access is operator-controllable, like every entity op.
-- Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
-- either one reaches the same endpoint.
function BluefinTecsMerchantServicesSDK:direct(fetchargs)
  if not self:_op_allowed("direct") then
    return self:_op_denied("direct"), nil
  end

  return self:_raw_request(fetchargs)
end


-- Is this raw-access op permitted by the SDK's allow.op option?
function BluefinTecsMerchantServicesSDK:_op_allowed(op)
  local allow = vs.getpath(self.options, "allow.op")
  return type(allow) == "string" and allow:find(op, 1, true) ~= nil
end


function BluefinTecsMerchantServicesSDK:_op_denied(op)
  local allow = vs.getpath(self.options, "allow.op")
  if type(allow) ~= "string" then allow = "" end
  return {
    ok = false,
    err = "BluefinTecsMerchantServicesSDK: " .. op .. ": operation not allowed by" ..
      " SDK option allow.op value: \"" .. allow .. "\"",
  }
end


-- Ungated request path shared by direct and graphql, each of which checks its
-- own allow.op token first. Private, rather than a flag on fetchargs: a
-- caller-supplied marker would let anyone opt straight back out of the gate
-- by passing it.
function BluefinTecsMerchantServicesSDK:_raw_request(fetchargs)
  local utility = self._utility

  local fetchdef, err = self:prepare(fetchargs)
  if err ~= nil then
    return { ok = false, err = err }, nil
  end

  fetchargs = fetchargs or {}
  local ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl")) or {}

  local ctx = utility.make_context({
    opname = "direct",
    ctrl = ctrl,
  }, self._rootctx)

  local url = fetchdef["url"] or ""
  local fetched, fetch_err = utility.fetcher(ctx, url, fetchdef)

  if fetch_err ~= nil then
    return { ok = false, err = fetch_err }, nil
  end

  if fetched == nil then
    return {
      ok = false,
      err = ctx:make_error("direct_no_response", "response: undefined"),
    }, nil
  end

  if type(fetched) == "table" then
    local status = helpers.to_int(vs.getprop(fetched, "status"))
    local headers = vs.getprop(fetched, "headers") or {}

    -- No-body responses (204, 304) and explicit zero content-length
    -- must skip JSON parsing — calling json() on an empty body errors.
    local content_length = nil
    if type(headers) == "table" then
      content_length = headers["content-length"]
    end
    local no_body = status == 204 or status == 304 or tostring(content_length) == "0"

    local json_data = nil
    if not no_body then
      local jf = vs.getprop(fetched, "json")
      if type(jf) == "function" then
        local ok, result = pcall(jf)
        if ok then
          json_data = result
        end
        -- Non-JSON body: json_data stays nil, status/headers preserved.
      end
    end

    return {
      ok = status >= 200 and status < 300,
      status = status,
      headers = headers,
      data = json_data,
    }, nil
  end

  return {
    ok = false,
    err = ctx:make_error("direct_invalid", "invalid response type"),
  }, nil
end


-- Raw GraphQL access: the pressure valve that makes the generated surface's
-- deliberate omissions (per-call selection sets, typed filter builders,
-- batching, subscriptions) livable — the whole schema stays reachable.
--
-- Thin wrapper over the same prepare/fetch path direct uses, with the one
-- thing raw direct cannot do for GraphQL: a GraphQL failure rides HTTP 200 as
-- a top-level `errors` array, so status alone would report a failed query as
-- ok.
--
-- NOTE: like direct, this bypasses the feature pipeline — no retry, ratelimit
-- or paging features apply.
function BluefinTecsMerchantServicesSDK:graphql(query, variables, ctrl)
  if not self:_op_allowed("graphql") then
    return self:_op_denied("graphql"), nil
  end

  local res, err = self:_raw_request({
    method = "POST",
    headers = { ["content-type"] = "application/json" },
    body = {
      query = query,
      variables = type(variables) == "table" and variables or {},
    },
    ctrl = type(ctrl) == "table" and ctrl or {},
  })

  if err ~= nil or type(res) ~= "table" then
    return res, err
  end

  -- Errors are read BEFORE any status check: a GraphQL parse or validation
  -- failure comes back as HTTP 400 carrying the standard { errors = {...} }
  -- body, and the raw path represents a non-2xx as ok=false with no err — so
  -- returning early on status would discard the server's own diagnostics,
  -- which are the only useful part of that response.
  local errors = vs.getpath(res, "data.errors")

  if type(errors) == "table" and 0 < #errors then
    local msg = vs.getprop(errors[1], "message")
    if type(msg) ~= "string" or msg == "" then
      msg = "graphql error"
    end
    res.ok = false
    res.err = "BluefinTecsMerchantServicesSDK: graphql: " .. msg
    res.graphql = errors
  end

  return res, nil
end



-- Idiomatic facade: client:CancelTransaction():list() / client:CancelTransaction():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:CancelTransaction(data)
  local EntityMod = require("entity.cancel_transaction_entity")
  if data == nil then
    if self._cancel_transaction == nil then
      self._cancel_transaction = EntityMod.new(self, nil)
    end
    return self._cancel_transaction
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:CheckCardBlackListed():list() / client:CheckCardBlackListed():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:CheckCardBlackListed(data)
  local EntityMod = require("entity.check_card_black_listed_entity")
  if data == nil then
    if self._check_card_black_listed == nil then
      self._check_card_black_listed = EntityMod.new(self, nil)
    end
    return self._check_card_black_listed
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:CreateProduct():list() / client:CreateProduct():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:CreateProduct(data)
  local EntityMod = require("entity.create_product_entity")
  if data == nil then
    if self._create_product == nil then
      self._create_product = EntityMod.new(self, nil)
    end
    return self._create_product
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:DeactivateTerminal():list() / client:DeactivateTerminal():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:DeactivateTerminal(data)
  local EntityMod = require("entity.deactivate_terminal_entity")
  if data == nil then
    if self._deactivate_terminal == nil then
      self._deactivate_terminal = EntityMod.new(self, nil)
    end
    return self._deactivate_terminal
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:DigitalServicesApi():list() / client:DigitalServicesApi():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:DigitalServicesApi(data)
  local EntityMod = require("entity.digital_services_api_entity")
  if data == nil then
    if self._digital_services_api == nil then
      self._digital_services_api = EntityMod.new(self, nil)
    end
    return self._digital_services_api
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:EcDataEcom():list() / client:EcDataEcom():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:EcDataEcom(data)
  local EntityMod = require("entity.ec_data_ecom_entity")
  if data == nil then
    if self._ec_data_ecom == nil then
      self._ec_data_ecom = EntityMod.new(self, nil)
    end
    return self._ec_data_ecom
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:EcomParameter():list() / client:EcomParameter():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:EcomParameter(data)
  local EntityMod = require("entity.ecom_parameter_entity")
  if data == nil then
    if self._ecom_parameter == nil then
      self._ecom_parameter = EntityMod.new(self, nil)
    end
    return self._ecom_parameter
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:EcrData():list() / client:EcrData():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:EcrData(data)
  local EntityMod = require("entity.ecr_data_entity")
  if data == nil then
    if self._ecr_data == nil then
      self._ecr_data = EntityMod.new(self, nil)
    end
    return self._ecr_data
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:EmvData():list() / client:EmvData():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:EmvData(data)
  local EntityMod = require("entity.emv_data_entity")
  if data == nil then
    if self._emv_data == nil then
      self._emv_data = EntityMod.new(self, nil)
    end
    return self._emv_data
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:EnableAcquiring():list() / client:EnableAcquiring():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:EnableAcquiring(data)
  local EntityMod = require("entity.enable_acquiring_entity")
  if data == nil then
    if self._enable_acquiring == nil then
      self._enable_acquiring = EntityMod.new(self, nil)
    end
    return self._enable_acquiring
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:GetMerchantContractNumber():list() / client:GetMerchantContractNumber():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:GetMerchantContractNumber(data)
  local EntityMod = require("entity.get_merchant_contract_number_entity")
  if data == nil then
    if self._get_merchant_contract_number == nil then
      self._get_merchant_contract_number = EntityMod.new(self, nil)
    end
    return self._get_merchant_contract_number
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:GetTemplateXml():list() / client:GetTemplateXml():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:GetTemplateXml(data)
  local EntityMod = require("entity.get_template_xml_entity")
  if data == nil then
    if self._get_template_xml == nil then
      self._get_template_xml = EntityMod.new(self, nil)
    end
    return self._get_template_xml
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:IntroduceMandator():list() / client:IntroduceMandator():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:IntroduceMandator(data)
  local EntityMod = require("entity.introduce_mandator_entity")
  if data == nil then
    if self._introduce_mandator == nil then
      self._introduce_mandator = EntityMod.new(self, nil)
    end
    return self._introduce_mandator
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:IntroducePackage():list() / client:IntroducePackage():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:IntroducePackage(data)
  local EntityMod = require("entity.introduce_package_entity")
  if data == nil then
    if self._introduce_package == nil then
      self._introduce_package = EntityMod.new(self, nil)
    end
    return self._introduce_package
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:KeepAlive():list() / client:KeepAlive():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:KeepAlive(data)
  local EntityMod = require("entity.keep_alive_entity")
  if data == nil then
    if self._keep_alive == nil then
      self._keep_alive = EntityMod.new(self, nil)
    end
    return self._keep_alive
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:ListTerminal():list() / client:ListTerminal():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:ListTerminal(data)
  local EntityMod = require("entity.list_terminal_entity")
  if data == nil then
    if self._list_terminal == nil then
      self._list_terminal = EntityMod.new(self, nil)
    end
    return self._list_terminal
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:MandatorClearingExport():list() / client:MandatorClearingExport():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:MandatorClearingExport(data)
  local EntityMod = require("entity.mandator_clearing_export_entity")
  if data == nil then
    if self._mandator_clearing_export == nil then
      self._mandator_clearing_export = EntityMod.new(self, nil)
    end
    return self._mandator_clearing_export
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:MandatorClearingExportDownload():list() / client:MandatorClearingExportDownload():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:MandatorClearingExportDownload(data)
  local EntityMod = require("entity.mandator_clearing_export_download_entity")
  if data == nil then
    if self._mandator_clearing_export_download == nil then
      self._mandator_clearing_export_download = EntityMod.new(self, nil)
    end
    return self._mandator_clearing_export_download
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:MandatorClearingExportSummary():list() / client:MandatorClearingExportSummary():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:MandatorClearingExportSummary(data)
  local EntityMod = require("entity.mandator_clearing_export_summary_entity")
  if data == nil then
    if self._mandator_clearing_export_summary == nil then
      self._mandator_clearing_export_summary = EntityMod.new(self, nil)
    end
    return self._mandator_clearing_export_summary
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:MerchantPortalServicesApi():list() / client:MerchantPortalServicesApi():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:MerchantPortalServicesApi(data)
  local EntityMod = require("entity.merchant_portal_services_api_entity")
  if data == nil then
    if self._merchant_portal_services_api == nil then
      self._merchant_portal_services_api = EntityMod.new(self, nil)
    end
    return self._merchant_portal_services_api
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:MoveTid():list() / client:MoveTid():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:MoveTid(data)
  local EntityMod = require("entity.move_tid_entity")
  if data == nil then
    if self._move_tid == nil then
      self._move_tid = EntityMod.new(self, nil)
    end
    return self._move_tid
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:PaymentManual():list() / client:PaymentManual():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:PaymentManual(data)
  local EntityMod = require("entity.payment_manual_entity")
  if data == nil then
    if self._payment_manual == nil then
      self._payment_manual = EntityMod.new(self, nil)
    end
    return self._payment_manual
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:PaymentSred():list() / client:PaymentSred():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:PaymentSred(data)
  local EntityMod = require("entity.payment_sred_entity")
  if data == nil then
    if self._payment_sred == nil then
      self._payment_sred = EntityMod.new(self, nil)
    end
    return self._payment_sred
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:PreAuthTransactionCompletion():list() / client:PreAuthTransactionCompletion():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:PreAuthTransactionCompletion(data)
  local EntityMod = require("entity.pre_auth_transaction_completion_entity")
  if data == nil then
    if self._pre_auth_transaction_completion == nil then
      self._pre_auth_transaction_completion = EntityMod.new(self, nil)
    end
    return self._pre_auth_transaction_completion
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:ReactivateTerminal():list() / client:ReactivateTerminal():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:ReactivateTerminal(data)
  local EntityMod = require("entity.reactivate_terminal_entity")
  if data == nil then
    if self._reactivate_terminal == nil then
      self._reactivate_terminal = EntityMod.new(self, nil)
    end
    return self._reactivate_terminal
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:RefundTransaction():list() / client:RefundTransaction():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:RefundTransaction(data)
  local EntityMod = require("entity.refund_transaction_entity")
  if data == nil then
    if self._refund_transaction == nil then
      self._refund_transaction = EntityMod.new(self, nil)
    end
    return self._refund_transaction
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:RegisterTecsCompany():list() / client:RegisterTecsCompany():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:RegisterTecsCompany(data)
  local EntityMod = require("entity.register_tecs_company_entity")
  if data == nil then
    if self._register_tecs_company == nil then
      self._register_tecs_company = EntityMod.new(self, nil)
    end
    return self._register_tecs_company
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:RegisterTerminal():list() / client:RegisterTerminal():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:RegisterTerminal(data)
  local EntityMod = require("entity.register_terminal_entity")
  if data == nil then
    if self._register_terminal == nil then
      self._register_terminal = EntityMod.new(self, nil)
    end
    return self._register_terminal
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:ReportData():list() / client:ReportData():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:ReportData(data)
  local EntityMod = require("entity.report_data_entity")
  if data == nil then
    if self._report_data == nil then
      self._report_data = EntityMod.new(self, nil)
    end
    return self._report_data
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:StatusTransaction():list() / client:StatusTransaction():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:StatusTransaction(data)
  local EntityMod = require("entity.status_transaction_entity")
  if data == nil then
    if self._status_transaction == nil then
      self._status_transaction = EntityMod.new(self, nil)
    end
    return self._status_transaction
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:StoreTerminalParameter():list() / client:StoreTerminalParameter():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:StoreTerminalParameter(data)
  local EntityMod = require("entity.store_terminal_parameter_entity")
  if data == nil then
    if self._store_terminal_parameter == nil then
      self._store_terminal_parameter = EntityMod.new(self, nil)
    end
    return self._store_terminal_parameter
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:TerminalId():list() / client:TerminalId():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:TerminalId(data)
  local EntityMod = require("entity.terminal_id_entity")
  if data == nil then
    if self._terminal_id == nil then
      self._terminal_id = EntityMod.new(self, nil)
    end
    return self._terminal_id
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:TransactionHistory():list() / client:TransactionHistory():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:TransactionHistory(data)
  local EntityMod = require("entity.transaction_history_entity")
  if data == nil then
    if self._transaction_history == nil then
      self._transaction_history = EntityMod.new(self, nil)
    end
    return self._transaction_history
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:TransactionsCount():list() / client:TransactionsCount():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:TransactionsCount(data)
  local EntityMod = require("entity.transactions_count_entity")
  if data == nil then
    if self._transactions_count == nil then
      self._transactions_count = EntityMod.new(self, nil)
    end
    return self._transactions_count
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:TransactionsCountCardBrand():list() / client:TransactionsCountCardBrand():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:TransactionsCountCardBrand(data)
  local EntityMod = require("entity.transactions_count_card_brand_entity")
  if data == nil then
    if self._transactions_count_card_brand == nil then
      self._transactions_count_card_brand = EntityMod.new(self, nil)
    end
    return self._transactions_count_card_brand
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:TransactionsTurnover():list() / client:TransactionsTurnover():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:TransactionsTurnover(data)
  local EntityMod = require("entity.transactions_turnover_entity")
  if data == nil then
    if self._transactions_turnover == nil then
      self._transactions_turnover = EntityMod.new(self, nil)
    end
    return self._transactions_turnover
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:UpdateMerchant():list() / client:UpdateMerchant():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:UpdateMerchant(data)
  local EntityMod = require("entity.update_merchant_entity")
  if data == nil then
    if self._update_merchant == nil then
      self._update_merchant = EntityMod.new(self, nil)
    end
    return self._update_merchant
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:UpdateTemplateXml():list() / client:UpdateTemplateXml():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:UpdateTemplateXml(data)
  local EntityMod = require("entity.update_template_xml_entity")
  if data == nil then
    if self._update_template_xml == nil then
      self._update_template_xml = EntityMod.new(self, nil)
    end
    return self._update_template_xml
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:Version():list() / client:Version():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsMerchantServicesSDK:Version(data)
  local EntityMod = require("entity.version_entity")
  if data == nil then
    if self._version == nil then
      self._version = EntityMod.new(self, nil)
    end
    return self._version
  end
  return EntityMod.new(self, data)
end




function BluefinTecsMerchantServicesSDK.test(testopts, sdkopts)
  sdkopts = sdkopts or {}
  sdkopts = vs.clone(sdkopts)
  if type(sdkopts) ~= "table" then
    sdkopts = {}
  end

  testopts = testopts or {}
  testopts = vs.clone(testopts)
  if type(testopts) ~= "table" then
    testopts = {}
  end
  testopts["active"] = true

  vs.setpath(sdkopts, "feature.test", testopts)

  local sdk = BluefinTecsMerchantServicesSDK.new(sdkopts)
  sdk.mode = "test"

  return sdk
end


return BluefinTecsMerchantServicesSDK
