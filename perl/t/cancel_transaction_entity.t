#!perl
# CancelTransaction entity test

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
  my $ent = $testsdk->CancelTransaction(undef);
  ok(defined $ent, 'cancel_transaction: create instance');
}

BASIC_FLOW: {
  my $setup = cancel_transaction_basic_setup(undef);
  my $_live = $setup->{live} ? 1 : 0;
  # Per-op sdk-test-control.json skip.
  for my $_op ('create') {
    my ($_should_skip, $_reason) = BluefinTecsMerchantServicesTestRunner::is_control_skipped(
      'entityOp', "cancel_transaction." . $_op, $_live ? 'live' : 'unit');
    if ($_should_skip) {
      note($_reason || 'skipped via sdk-test-control.json');
      pass('cancel_transaction: basic flow skipped via sdk-test-control.json');
      last BASIC_FLOW;
    }
  }
  # The basic flow consumes synthetic IDs from the fixture. In live mode
  # without an *_ENTID env override, those IDs hit the live API and 4xx.
  if ($setup->{synthetic_only}) {
    note('live entity test uses synthetic IDs from fixture - set BLUEFINTECSMERCHANTSERVICES_TEST_CANCEL_TRANSACTION_ENTID JSON to run live');
    pass('cancel_transaction: basic flow skipped (synthetic IDs only)');
    last BASIC_FLOW;
  }
  my $client = $setup->{client};
  my %V;

  # CREATE
  $V{cancel_transaction_ref01_ent} = $client->CancelTransaction(undef);
  $V{cancel_transaction_ref01_data} = BluefinTecsMerchantServicesHelpers::to_map(BluefinTecsMerchantServicesHelpers::gp(
    BluefinTecsMerchantServicesHelpers::gpath($setup->{data}, 'new.cancel_transaction'), 'cancel_transaction_ref01'));

  $V{cancel_transaction_ref01_data_result} = $V{cancel_transaction_ref01_ent}->create($V{cancel_transaction_ref01_data}, undef);
  $V{cancel_transaction_ref01_data} = BluefinTecsMerchantServicesHelpers::to_map($V{cancel_transaction_ref01_data_result});
  ok(defined $V{cancel_transaction_ref01_data}, 'cancel_transaction create: data');

}

sub cancel_transaction_basic_setup {
  my ($extra) = @_;
  BluefinTecsMerchantServicesTestRunner::load_env_local();

  my $entity_data_file = Cwd::abs_path(
    "$FindBin::Bin/../../.sdk/test/entity/cancel_transaction/CancelTransactionTestData.json");
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
    ['cancel_transaction01', 'cancel_transaction02', 'cancel_transaction03'],
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
  my $entid_env_raw = $ENV{'BLUEFINTECSMERCHANTSERVICES_TEST_CANCEL_TRANSACTION_ENTID'};
  my $idmap_overridden = (defined $entid_env_raw && $entid_env_raw =~ /^\s*\{/) ? 1 : 0;

  my $env = BluefinTecsMerchantServicesTestRunner::env_override({
    'BLUEFINTECSMERCHANTSERVICES_TEST_CANCEL_TRANSACTION_ENTID' => $idmap,
    'BLUEFINTECSMERCHANTSERVICES_TEST_LIVE' => 'FALSE',
    'BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN' => 'FALSE',
    'BLUEFINTECSMERCHANTSERVICES_APIKEY' => 'NONE',
  });

  my $idmap_resolved = BluefinTecsMerchantServicesHelpers::to_map($env->{'BLUEFINTECSMERCHANTSERVICES_TEST_CANCEL_TRANSACTION_ENTID'});
  if (!defined $idmap_resolved) {
    $idmap_resolved = BluefinTecsMerchantServicesHelpers::to_map($idmap);
  }

  if ((($env->{'BLUEFINTECSMERCHANTSERVICES_TEST_LIVE'}) || '') eq 'TRUE') {
    my $merged_opts = Voxgig::Struct::merge([
      {
        'apikey' => $env->{'BLUEFINTECSMERCHANTSERVICES_APIKEY'},
      },
      (Voxgig::Struct::ismap($extra) ? $extra : {}),
    ]);
    $client = BluefinTecsMerchantServicesSDK->new(BluefinTecsMerchantServicesHelpers::to_map($merged_opts));
  }

  my $live = ((($env->{'BLUEFINTECSMERCHANTSERVICES_TEST_LIVE'}) || '') eq 'TRUE') ? 1 : 0;
  return {
    'client' => $client,
    'data' => $entity_data,
    'idmap' => $idmap_resolved,
    'env' => $env,
    'explain' => ((($env->{'BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN'}) || '') eq 'TRUE') ? 1 : 0,
    'live' => $live,
    'synthetic_only' => ($live && !$idmap_overridden) ? 1 : 0,
    'now' => BluefinTecsMerchantServicesHelpers::now_ms(),
  };
}

done_testing();
