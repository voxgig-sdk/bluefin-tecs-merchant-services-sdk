# BluefinTecsMerchantServices SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module BluefinTecsMerchantServicesFeatures
  def self.make_feature(name)
    case name
    when "base"
      BluefinTecsMerchantServicesBaseFeature.new
    when "test"
      BluefinTecsMerchantServicesTestFeature.new
    else
      BluefinTecsMerchantServicesBaseFeature.new
    end
  end
end
