# BluefinTecsMerchantServices SDK utility: make_context
require_relative '../core/context'
module BluefinTecsMerchantServicesUtilities
  MakeContext = ->(ctxmap, basectx) {
    BluefinTecsMerchantServicesContext.new(ctxmap, basectx)
  }
end
