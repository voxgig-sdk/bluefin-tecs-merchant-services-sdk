# BluefinTecsMerchantServices SDK feature factory

defmodule BluefinTecsMerchantServices.Features do
  def make_feature(name) do
    case name do
      "audit" -> BluefinTecsMerchantServices.Feature.Audit.new()
      "clienttrack" -> BluefinTecsMerchantServices.Feature.Clienttrack.new()
      "idempotency" -> BluefinTecsMerchantServices.Feature.Idempotency.new()
      "log" -> BluefinTecsMerchantServices.Feature.Log.new()
      "metrics" -> BluefinTecsMerchantServices.Feature.Metrics.new()
      "paging" -> BluefinTecsMerchantServices.Feature.Paging.new()
      "ratelimit" -> BluefinTecsMerchantServices.Feature.Ratelimit.new()
      "retry" -> BluefinTecsMerchantServices.Feature.Retry.new()
      "telemetry" -> BluefinTecsMerchantServices.Feature.Telemetry.new()
      "test" -> BluefinTecsMerchantServices.Feature.Test.new()
      "timeout" -> BluefinTecsMerchantServices.Feature.Timeout.new()
      _ -> BluefinTecsMerchantServices.Feature.new()
    end
  end
end
