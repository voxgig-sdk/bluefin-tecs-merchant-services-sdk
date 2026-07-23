# BluefinTecsMerchantServices SDK utility: transform_request

use strict;
use warnings;

use File::Basename ();
use Cwd ();

my $__dir;
BEGIN { $__dir = File::Basename::dirname(Cwd::abs_path(__FILE__)) }
require(Cwd::abs_path("$__dir/../lib/Voxgig/Struct.pm"));
require(Cwd::abs_path("$__dir/../core/helpers.pm"));

package BluefinTecsMerchantServicesUtilities;

our %REGISTRY;

$REGISTRY{transform_request} = sub {
  my ($ctx) = @_;
  my $spec = $ctx->{spec};
  my $point = $ctx->{point};
  $spec->{step} = 'reqform' if $spec;
  my $transform = BluefinTecsMerchantServicesHelpers::to_map(BluefinTecsMerchantServicesHelpers::gp($point, 'transform'));
  return $ctx->{reqdata} unless $transform;
  my $reqform = BluefinTecsMerchantServicesHelpers::gp($transform, 'req');
  return $ctx->{reqdata} unless BluefinTecsMerchantServicesHelpers::rb_truthy($reqform);
  return Voxgig::Struct::transform({ 'reqdata' => $ctx->{reqdata} }, $reqform);
};

1;
