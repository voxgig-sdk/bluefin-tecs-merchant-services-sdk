#!perl
# MandatorClearingExportDownload direct test

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Cwd ();

use BluefinTecsMerchantServicesSDK;
require(Cwd::abs_path("$FindBin::Bin/runner.pm"));

DIRECT_LOAD: {
  my $setup = mandator_clearing_export_download_direct_setup({ 'id' => 'direct01' });
  my ($_should_skip, $_reason) = BluefinTecsMerchantServicesTestRunner::is_control_skipped(
    'direct', 'direct-load-mandator_clearing_export_download', $setup->{live} ? 'live' : 'unit');
  if ($_should_skip) {
    note($_reason || 'skipped via sdk-test-control.json');
    pass('direct-load-mandator_clearing_export_download: skipped via sdk-test-control.json');
    last DIRECT_LOAD;
  }
  if ($setup->{live}) {
    note('live direct-load needs real ID - set *_ENTID env var with real IDs to run');
    pass('direct-load-mandator_clearing_export_download: skipped (live)');
    last DIRECT_LOAD;
  }
  my $client = $setup->{client};

  my $params = {};
  my $query = {};
  unless ($setup->{live}) {
    $params->{'id'} = 'direct01';
  }

  my $result = $client->direct({
    'path' => 'public/digitalservices/mandatorClearingExportDownload/{id}',
    'method' => 'GET',
    'params' => $params,
    'query' => $query,
  });
  if ($setup->{live}) {
    # Live mode is lenient: synthetic IDs frequently 4xx. Skip rather
    # than fail when the load endpoint isn't reachable with the IDs
    # we can construct from setup idmap.
    if (defined $result->{err}) {
      note("load call failed (likely synthetic IDs against live API): $result->{err}");
      pass('direct-load-mandator_clearing_export_download: skipped (live)');
      last DIRECT_LOAD;
    }
    unless ($result->{ok}) {
      note('load call not ok (likely synthetic IDs against live API)');
      pass('direct-load-mandator_clearing_export_download: skipped (live)');
      last DIRECT_LOAD;
    }
    my $status = BluefinTecsMerchantServicesHelpers::to_int($result->{status});
    if ($status < 200 || $status >= 300) {
      note("expected 2xx status, got $status");
      pass('direct-load-mandator_clearing_export_download: skipped (live)');
      last DIRECT_LOAD;
    }
    pass('direct-load-mandator_clearing_export_download: live ok');
  }
  else {
    ok(!defined $result->{err}, 'direct-load-mandator_clearing_export_download: no error');
    ok($result->{ok}, 'direct-load-mandator_clearing_export_download: ok');
    is(BluefinTecsMerchantServicesHelpers::to_int($result->{status}), 200, 'direct-load-mandator_clearing_export_download: status');
    ok(defined $result->{data}, 'direct-load-mandator_clearing_export_download: data');
    if (Voxgig::Struct::ismap($result->{data})) {
      is($result->{data}{id}, 'direct01', 'direct-load-mandator_clearing_export_download: id');
    }
    is(scalar @{ $setup->{calls} }, 1, 'direct-load-mandator_clearing_export_download: 1 call');
  }
}


sub mandator_clearing_export_download_direct_setup {
  my ($mockres) = @_;
  BluefinTecsMerchantServicesTestRunner::load_env_local();

  my $calls = [];

  my $env = BluefinTecsMerchantServicesTestRunner::env_override({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID' => {},
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
