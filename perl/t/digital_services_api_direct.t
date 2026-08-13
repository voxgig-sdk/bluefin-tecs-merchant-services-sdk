#!perl
# DigitalServicesApi direct test

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Cwd ();

use BluefinTecsMerchantServicesSDK;
require(Cwd::abs_path("$FindBin::Bin/runner.pm"));

DIRECT_LOAD: {
  my $setup = digital_services_api_direct_setup({ 'id' => 'direct01' });
  my ($_should_skip, $_reason) = BluefinTecsMerchantServicesTestRunner::is_control_skipped(
    'direct', 'direct-load-digital_services_api', $setup->{live} ? 'live' : 'unit');
  if ($_should_skip) {
    note($_reason || 'skipped via sdk-test-control.json');
    pass('direct-load-digital_services_api: skipped via sdk-test-control.json');
    last DIRECT_LOAD;
  }
  my $client = $setup->{client};


  my $result = $client->direct({
    'path' => 'public/digitalservices/mandatorClearingExportDownload/status',
    'method' => 'GET',
    'params' => {},
  });
  if ($setup->{live}) {
    # Live mode is lenient: synthetic IDs frequently 4xx. Skip rather
    # than fail when the load endpoint isn't reachable with the IDs
    # we can construct from setup idmap.
    if (defined $result->{err}) {
      note("load call failed (likely synthetic IDs against live API): $result->{err}");
      pass('direct-load-digital_services_api: skipped (live)');
      last DIRECT_LOAD;
    }
    unless ($result->{ok}) {
      note('load call not ok (likely synthetic IDs against live API)');
      pass('direct-load-digital_services_api: skipped (live)');
      last DIRECT_LOAD;
    }
    my $status = BluefinTecsMerchantServicesHelpers::to_int($result->{status});
    if ($status < 200 || $status >= 300) {
      note("expected 2xx status, got $status");
      pass('direct-load-digital_services_api: skipped (live)');
      last DIRECT_LOAD;
    }
    pass('direct-load-digital_services_api: live ok');
  }
  else {
    ok(!defined $result->{err}, 'direct-load-digital_services_api: no error');
    ok($result->{ok}, 'direct-load-digital_services_api: ok');
    is(BluefinTecsMerchantServicesHelpers::to_int($result->{status}), 200, 'direct-load-digital_services_api: status');
    ok(defined $result->{data}, 'direct-load-digital_services_api: data');
    if (Voxgig::Struct::ismap($result->{data})) {
      is($result->{data}{id}, 'direct01', 'direct-load-digital_services_api: id');
    }
    is(scalar @{ $setup->{calls} }, 1, 'direct-load-digital_services_api: 1 call');
  }
}


sub digital_services_api_direct_setup {
  my ($mockres) = @_;
  BluefinTecsMerchantServicesTestRunner::load_env_local();

  my $calls = [];

  my $env = BluefinTecsMerchantServicesTestRunner::env_override({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID' => {},
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE' => 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY' => 'NONE',
  });

  my $live = ((($env->{'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'}) || '') eq 'TRUE') ? 1 : 0;

  if ($live) {
    my $client = BluefinTecsMerchantServicesSDK->new({
      'apikey' => $env->{'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY'},
    });
    return {
      'client' => $client,
      'calls' => $calls,
      'live' => 1,
      'idmap' => {},
    };
  }

  my $mock_fetch = sub {
    my ($url, $init) = @_;
    push @$calls, { 'url' => $url, 'init' => $init };
    return ({
      'status' => 200,
      'statusText' => 'OK',
      'headers' => {},
      'json' => sub {
        return defined $mockres ? $mockres : { 'id' => 'direct01' };
      },
      'body' => 'mock',
    }, undef);
  };

  my $client = BluefinTecsMerchantServicesSDK->new({
    'base' => 'http://localhost:8080',
    'system' => {
      'fetch' => $mock_fetch,
    },
  });

  return {
    'client' => $client,
    'calls' => $calls,
    'live' => 0,
    'idmap' => {},
  };
}

done_testing();
