# BluefinTecsMerchantServices SDK feature factory

defmodule BluefinTecsMerchantServices.Features do
  def make_feature(name) do
    case name do
      "test" -> BluefinTecsMerchantServices.Feature.Test.new()
      _ -> BluefinTecsMerchantServices.Feature.new()
    end
  end
end
