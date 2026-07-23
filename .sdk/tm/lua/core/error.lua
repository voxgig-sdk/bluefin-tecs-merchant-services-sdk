-- BluefinTecsMerchantServices SDK error

local BluefinTecsMerchantServicesError = {}
BluefinTecsMerchantServicesError.__index = BluefinTecsMerchantServicesError


function BluefinTecsMerchantServicesError.new(code, msg, ctx)
  local self = setmetatable({}, BluefinTecsMerchantServicesError)
  self.is_sdk_error = true
  self.sdk = "BluefinTecsMerchantServices"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function BluefinTecsMerchantServicesError:error()
  return self.msg
end


function BluefinTecsMerchantServicesError:__tostring()
  return self.msg
end


return BluefinTecsMerchantServicesError
