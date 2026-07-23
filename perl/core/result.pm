# BluefinTecsMerchantServices SDK result

use strict;
use warnings;

use File::Basename ();
use Cwd ();
use Scalar::Util ();

my $__dir;
BEGIN { $__dir = File::Basename::dirname(Cwd::abs_path(__FILE__)) }
require(Cwd::abs_path("$__dir/../lib/Voxgig/Struct.pm"));
require(Cwd::abs_path("$__dir/helpers.pm"));

package BluefinTecsMerchantServicesResult;

sub new {
  my ($class, $resmap) = @_;
  $resmap = {} unless defined $resmap;

  my $s = BluefinTecsMerchantServicesHelpers::gp($resmap, 'status');
  my $status = (defined $s && !ref $s && Scalar::Util::looks_like_number($s)) ? int($s) : -1;

  my $st = BluefinTecsMerchantServicesHelpers::gp($resmap, 'statusText');
  my $status_text = (defined $st && !ref $st) ? "$st" : '';

  my $h = BluefinTecsMerchantServicesHelpers::gp($resmap, 'headers');
  my $rm = BluefinTecsMerchantServicesHelpers::gp($resmap, 'resmatch');

  return bless {
    ok          => BluefinTecsMerchantServicesHelpers::is_true(BluefinTecsMerchantServicesHelpers::gp($resmap, 'ok')) ? 1 : 0,
    status      => $status,
    status_text => $status_text,
    headers     => (Voxgig::Struct::ismap($h) ? $h : {}),
    body        => BluefinTecsMerchantServicesHelpers::gp($resmap, 'body'),
    err         => BluefinTecsMerchantServicesHelpers::gp($resmap, 'err'),
    resdata     => BluefinTecsMerchantServicesHelpers::gp($resmap, 'resdata'),
    resmatch    => (Voxgig::Struct::ismap($rm) ? $rm : undef),
    paging      => undef,
    streaming   => undef,
    stream      => undef,
  }, $class;
}

1;
