# BluefinTecsMerchantServices SDK feature factory

use strict;
use warnings;

use File::Basename ();
use Cwd ();

my $__dir;
BEGIN { $__dir = File::Basename::dirname(Cwd::abs_path(__FILE__)) }
require(Cwd::abs_path("$__dir/feature/base_feature.pm"));
require(Cwd::abs_path("$__dir/feature/audit_feature.pm"));
require(Cwd::abs_path("$__dir/feature/clienttrack_feature.pm"));
require(Cwd::abs_path("$__dir/feature/idempotency_feature.pm"));
require(Cwd::abs_path("$__dir/feature/log_feature.pm"));
require(Cwd::abs_path("$__dir/feature/metrics_feature.pm"));
require(Cwd::abs_path("$__dir/feature/paging_feature.pm"));
require(Cwd::abs_path("$__dir/feature/ratelimit_feature.pm"));
require(Cwd::abs_path("$__dir/feature/retry_feature.pm"));
require(Cwd::abs_path("$__dir/feature/telemetry_feature.pm"));
require(Cwd::abs_path("$__dir/feature/test_feature.pm"));
require(Cwd::abs_path("$__dir/feature/timeout_feature.pm"));

package BluefinTecsMerchantServicesFeatures;

sub make_feature {
  my ($name) = @_;
  $name = '' unless defined $name;
  return BluefinTecsMerchantServicesBaseFeature->new if 'base' eq $name;
  return BluefinTecsMerchantServicesAuditFeature->new if 'audit' eq $name;
  return BluefinTecsMerchantServicesClienttrackFeature->new if 'clienttrack' eq $name;
  return BluefinTecsMerchantServicesIdempotencyFeature->new if 'idempotency' eq $name;
  return BluefinTecsMerchantServicesLogFeature->new if 'log' eq $name;
  return BluefinTecsMerchantServicesMetricsFeature->new if 'metrics' eq $name;
  return BluefinTecsMerchantServicesPagingFeature->new if 'paging' eq $name;
  return BluefinTecsMerchantServicesRatelimitFeature->new if 'ratelimit' eq $name;
  return BluefinTecsMerchantServicesRetryFeature->new if 'retry' eq $name;
  return BluefinTecsMerchantServicesTelemetryFeature->new if 'telemetry' eq $name;
  return BluefinTecsMerchantServicesTestFeature->new if 'test' eq $name;
  return BluefinTecsMerchantServicesTimeoutFeature->new if 'timeout' eq $name;
  return BluefinTecsMerchantServicesBaseFeature->new;
}

1;
