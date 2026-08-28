# BluefinTecsMerchantServices SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/audit_feature'
require_relative 'feature/clienttrack_feature'
require_relative 'feature/idempotency_feature'
require_relative 'feature/log_feature'
require_relative 'feature/metrics_feature'
require_relative 'feature/paging_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/telemetry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module BluefinTecsMerchantServicesFeatures
  def self.make_feature(name)
    case name
    when "base"
      BluefinTecsMerchantServicesBaseFeature.new
    when "audit"
      BluefinTecsMerchantServicesAuditFeature.new
    when "clienttrack"
      BluefinTecsMerchantServicesClienttrackFeature.new
    when "idempotency"
      BluefinTecsMerchantServicesIdempotencyFeature.new
    when "log"
      BluefinTecsMerchantServicesLogFeature.new
    when "metrics"
      BluefinTecsMerchantServicesMetricsFeature.new
    when "paging"
      BluefinTecsMerchantServicesPagingFeature.new
    when "ratelimit"
      BluefinTecsMerchantServicesRatelimitFeature.new
    when "retry"
      BluefinTecsMerchantServicesRetryFeature.new
    when "telemetry"
      BluefinTecsMerchantServicesTelemetryFeature.new
    when "test"
      BluefinTecsMerchantServicesTestFeature.new
    when "timeout"
      BluefinTecsMerchantServicesTimeoutFeature.new
    else
      BluefinTecsMerchantServicesBaseFeature.new
    end
  end
end
