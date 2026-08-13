#!perl
# KeepAlive entity test

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Cwd ();

use BluefinTecsMerchantServicesSDK;
require(Cwd::abs_path("$FindBin::Bin/runner.pm"));

{
  my $testsdk = BluefinTecsMerchantServicesSDK->test(undef, undef);
  my $ent = $testsdk->KeepAlive(undef);
  ok(defined $ent, 'keep_alive: create instance');
}

BASIC_FLOW: {
  my $setup = keep_alive_basic_setup(undef);
  my $_live = $setup->{live} ? 1 : 0;
  # Per-op sdk-test-control.json skip.
  for my $_op ('create') {
    my ($_should_skip, $_reason) = BluefinTecsMerchantServicesTestRunner::is_control_skipped(
      'entityOp', "keep_alive." . $_op, $_live ? 'live' : 'unit');
    if ($_should_skip) {
      note($_reason || 'skipped via sdk-test-control.json');
      pass('keep_alive: basic flow skipped via sdk-test-control.json');
      last BASIC_FLOW;
    }
  }
  # The basic flow consumes synthetic IDs from the fixture. In live mode
  # without an *_ENTID env override, those IDs hit the live API and 4xx.
  if ($setup->{synthetic_only}) {
    note('live entity test uses synthetic IDs from fixture - set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID JSON to run live');
    pass('keep_alive: basic flow skipped (synthetic IDs only)');
    last BASIC_FLOW;
  }
  my $client = $setup->{client};
  my %V;

  # CREATE
  $V{keep_alive_ref01_ent} = $client->KeepAlive(undef);
  $V{keep_alive_ref01_data} = BluefinTecsMerchantServicesHelpers::to_map(BluefinTecsMerchantServicesHelpers::gp(
    BluefinTecsMerchantServicesHelpers::gpath($setup->{data}, 'new.keep_alive'), 'keep_alive_ref01'));

  $V{keep_alive_ref01_data_result} = $V{keep_alive_ref01_ent}->create($V{keep_alive_ref01_data}, undef);
  $V{keep_alive_ref01_data} = BluefinTecsMerchantServicesHelpers::to_map(ref($V{keep_alive_ref01_data_result}) && $V{keep_alive_ref01_data_result}->can('data_get') ? $V{keep_alive_ref01_data_result}->data_get : $V{keep_alive_ref01_data_result});
  ok(defined $V{keep_alive_ref01_data}, 'keep_alive create: data');

}

sub keep_alive_basic_setup {
  my ($extra) = @_;
  BluefinTecsMerchantServicesTestRunner::load_env_local();

  my $entity_data_file = Cwd::abs_path(
    "$FindBin::Bin/../../.sdk/test/entity/keep_alive/KeepAliveTestData.json");
  my $entity_data = do {
    open my $fh, '<:raw', $entity_data_file or die "Cannot open $entity_data_file: $!";
    local $/;
    Voxgig::Struct::parse_json(<$fh>);
  };

  my $options = {};
  $options->{entity} = $entity_data->{existing};

  my $client = BluefinTecsMerchantServicesSDK->test($options, $extra);

  # Generate idmap via transform.
  my $idmap = Voxgig::Struct::transform(
    ['keep_alive01', 'keep_alive02', 'keep_alive03'],
    {
      '`$PACK`' => ['', {
        '`$KEY`' => '`$COPY`',
        '`$VAL`' => ['`$FORMAT`', 'upper', '`$COPY`'],
      }],
    }
  );

  # Detect ENTID env override before env_override consumes it. When live
  # mode is on without a real override, the basic test runs against
  # synthetic IDs from the fixture and 4xx's. Surface this so the test can
  # skip.
  my $entid_env_raw = $ENV{'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID'};
  my $idmap_overridden = (defined $entid_env_raw && $entid_env_raw =~ /^\s*\{/) ? 1 : 0;

  my $env = BluefinTecsMerchantServicesTestRunner::env_override({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID' => $idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE' => 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN' => 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY' => 'NONE',
  });

  my $idmap_resolved = BluefinTecsMerchantServicesHelpers::to_map($env->{'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID'});
  if (!defined $idmap_resolved) {
    $idmap_resolved = BluefinTecsMerchantServicesHelpers::to_map($idmap);
  }

  if ((($env->{'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'}) || '') eq 'TRUE') {
    my $merged_opts = Voxgig::Struct::merge([
      {
        'apikey' => $env->{'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY'},
      },
      (Voxgig::Struct::ismap($extra) ? $extra : {}),
    ]);
    $client = BluefinTecsMerchantServicesSDK->new(BluefinTecsMerchantServicesHelpers::to_map($merged_opts));
  }

  my $live = ((($env->{'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'}) || '') eq 'TRUE') ? 1 : 0;
  return {
    'client' => $client,
    'data' => $entity_data,
    'idmap' => $idmap_resolved,
    'env' => $env,
    'explain' => ((($env->{'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN'}) || '') eq 'TRUE') ? 1 : 0,
    'live' => $live,
    'synthetic_only' => ($live && !$idmap_overridden) ? 1 : 0,
    'now' => BluefinTecsMerchantServicesHelpers::now_ms(),
  };
}

done_testing();
