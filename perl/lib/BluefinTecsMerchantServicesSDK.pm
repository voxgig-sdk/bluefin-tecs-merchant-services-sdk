# BluefinTecsMerchantServices SDK

use strict;
use warnings;

use File::Basename ();
use Cwd ();
use Scalar::Util ();

package BluefinTecsMerchantServicesSDK;

our $VERSION = '0.0.1';

our $DIR;
BEGIN { $DIR = File::Basename::dirname(Cwd::abs_path(__FILE__)) }

require(Cwd::abs_path("$DIR/Voxgig/Struct.pm"));
require(Cwd::abs_path("$DIR/../core/helpers.pm"));
require(Cwd::abs_path("$DIR/../core/utility_type.pm"));
require(Cwd::abs_path("$DIR/../core/spec.pm"));
require(Cwd::abs_path("$DIR/../core/error.pm"));

# Load utility registration
require(Cwd::abs_path("$DIR/../utility/register.pm"));

# Load config and features
require(Cwd::abs_path("$DIR/../config.pm"));
require(Cwd::abs_path("$DIR/../feature/base_feature.pm"));
require(Cwd::abs_path("$DIR/../features.pm"));

sub new {
  my ($class, $options) = @_;
  $options = {} unless defined $options;

  my $self = bless {
    mode => 'live',
    features => [],
    options => undef,
  }, $class;

  my $utility = BluefinTecsMerchantServicesUtility->new;
  $self->{_utility} = $utility;

  my $config = BluefinTecsMerchantServicesConfig::make_config();

  $self->{_rootctx} = $utility->{make_context}->({
    'client' => $self,
    'utility' => $utility,
    'config' => $config,
    'options' => $options,
    'shared' => {},
  }, undef);

  $self->{options} = $utility->{make_options}->($self->{_rootctx});

  if (BluefinTecsMerchantServicesHelpers::is_true(
    BluefinTecsMerchantServicesHelpers::gpath($self->{options}, 'feature.test.active'))) {
    $self->{mode} = 'test';
  }

  $self->{_rootctx}{options} = $self->{options};

  # Add features in the resolved order (make_options records an explicit
  # array order, else defaults to test-first). Ordering matters: the `test`
  # feature installs the base mock transport and the transport features
  # (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
  # must be added before them to sit at the base of the wrapper chain.
  my $feature_opts = BluefinTecsMerchantServicesHelpers::to_map(
    BluefinTecsMerchantServicesHelpers::gp($self->{options}, 'feature')) || {};
  my $featureorder = BluefinTecsMerchantServicesHelpers::gpath(
    $self->{options}, '__derived__.featureorder');
  $featureorder = [] unless Voxgig::Struct::islist($featureorder);
  for my $fname (@$featureorder) {
    my $fopts = BluefinTecsMerchantServicesHelpers::to_map($feature_opts->{$fname});
    if ($fopts && BluefinTecsMerchantServicesHelpers::is_true($fopts->{active})) {
      $utility->{feature_add}->($self->{_rootctx},
        BluefinTecsMerchantServicesFeatures::make_feature($fname));
    }
  }

  # Add extension features.
  my $extend = BluefinTecsMerchantServicesHelpers::gp($self->{options}, 'extend');
  if (Voxgig::Struct::islist($extend)) {
    for my $f (@$extend) {
      if (Scalar::Util::blessed($f) && $f->can('get_name')) {
        $utility->{feature_add}->($self->{_rootctx}, $f);
      }
    }
  }

  # Initialize features.
  for my $f (@{ $self->{features} }) {
    $utility->{feature_init}->($self->{_rootctx}, $f);
  }

  $utility->{feature_hook}->($self->{_rootctx}, 'PostConstruct');

  return $self;
}

sub options_map {
  my ($self) = @_;
  my $out = Voxgig::Struct::clone($self->{options});
  return Voxgig::Struct::ismap($out) ? $out : {};
}

sub get_utility {
  my ($self) = @_;
  return BluefinTecsMerchantServicesUtility->copy($self->{_utility});
}

sub get_root_ctx {
  my ($self) = @_;
  return $self->{_rootctx};
}

sub prepare {
  my ($self, $fetchargs) = @_;
  my $utility = $self->{_utility};
  $fetchargs = {} unless defined $fetchargs;

  my $ctrl = BluefinTecsMerchantServicesHelpers::to_map(
    BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'ctrl')) || {};

  my $ctx = $utility->{make_context}->({
    'opname' => 'prepare',
    'ctrl' => $ctrl,
  }, $self->{_rootctx});

  my $opts = $self->{options};
  my $path = BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'path');
  $path = '' unless defined $path && !ref $path;
  my $method_val = BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'method');
  $method_val = 'GET' unless defined $method_val && !ref $method_val;
  my $params = BluefinTecsMerchantServicesHelpers::to_map(
    BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'params')) || {};
  my $query = BluefinTecsMerchantServicesHelpers::to_map(
    BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'query')) || {};
  my $headers = $utility->{prepare_headers}->($ctx);

  my $base = BluefinTecsMerchantServicesHelpers::gp($opts, 'base');
  $base = '' unless defined $base && !ref $base;
  my $prefix = BluefinTecsMerchantServicesHelpers::gp($opts, 'prefix');
  $prefix = '' unless defined $prefix && !ref $prefix;
  my $suffix = BluefinTecsMerchantServicesHelpers::gp($opts, 'suffix');
  $suffix = '' unless defined $suffix && !ref $suffix;

  $ctx->{spec} = BluefinTecsMerchantServicesSpec->new({
    'base' => $base, 'prefix' => $prefix, 'suffix' => $suffix,
    'path' => $path, 'method' => $method_val,
    'params' => $params, 'query' => $query, 'headers' => $headers,
    'body' => BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'body'),
    'step' => 'start',
  });

  # Merge user-provided headers.
  my $uh = BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'headers');
  if (Voxgig::Struct::ismap($uh)) {
    $ctx->{spec}{headers}{$_} = $uh->{$_} for keys %$uh;
  }

  my (undef, $err) = $utility->{prepare_auth}->($ctx);
  die $err if $err;

  # make_fetch_def returns a (fetchdef, err) tuple; destructure it and
  # return just the fetchdef hashref (dying on error) so callers -
  # including direct(), which indexes fetchdef->{url} - receive a hashref,
  # mirroring the ts/py/rb prepare().
  my ($fetchdef, $fd_err) = $utility->{make_fetch_def}->($ctx);
  die $fd_err if $fd_err;

  return $fetchdef;
}

# Raw endpoint access is operator-controllable, like every entity op.
# Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
# either one reaches the same endpoint.
sub direct {
  my ($self, $fetchargs) = @_;

  return $self->_op_denied('direct') unless $self->_op_allowed('direct');

  return $self->_raw_request($fetchargs);
}

# Is this raw-access op permitted by the SDK's allow.op option?
sub _op_allowed {
  my ($self, $op) = @_;
  my $allow = BluefinTecsMerchantServicesHelpers::gpath($self->{options}, 'allow.op');
  return (defined $allow && !ref $allow && index($allow, $op) >= 0) ? 1 : 0;
}

sub _op_denied {
  my ($self, $op) = @_;
  my $allow = BluefinTecsMerchantServicesHelpers::gpath($self->{options}, 'allow.op');
  $allow = '' unless defined $allow && !ref $allow;
  return {
    'ok' => 0,
    'err' => "BluefinTecsMerchantServicesSDK: $op: operation not allowed by" .
      " SDK option allow.op value: \"$allow\"",
  };
}

# Ungated request path shared by direct and graphql, each of which checks its
# own allow.op token first. Private, rather than a flag on fetchargs: a
# caller-supplied marker would let anyone opt straight back out of the gate
# by passing it.
sub _raw_request {
  my ($self, $fetchargs) = @_;
  my $utility = $self->{_utility};

  # direct() is the raw-HTTP escape hatch: it always returns a result hash
  # ({ ok => ..., ... }) and never dies. prepare() dies on error, so trap
  # that and surface it in the hash.
  my $fetchdef = eval { $self->prepare($fetchargs) };
  if (my $prep_err = $@) {
    return { 'ok' => 0, 'err' => $prep_err };
  }

  $fetchargs = {} unless defined $fetchargs;
  my $ctrl = BluefinTecsMerchantServicesHelpers::to_map(
    BluefinTecsMerchantServicesHelpers::gp($fetchargs, 'ctrl')) || {};

  my $ctx = $utility->{make_context}->({
    'opname' => 'direct',
    'ctrl' => $ctrl,
  }, $self->{_rootctx});

  my $url = defined $fetchdef->{url} ? $fetchdef->{url} : '';
  my ($fetched, $fetch_err) = $utility->{fetcher}->($ctx, $url, $fetchdef);

  return { 'ok' => 0, 'err' => $fetch_err } if $fetch_err;

  if (!defined $fetched) {
    return {
      'ok' => 0,
      'err' => $ctx->make_error('direct_no_response', 'response: undefined'),
    };
  }

  if (Voxgig::Struct::ismap($fetched)) {
    my $status = BluefinTecsMerchantServicesHelpers::to_int(
      BluefinTecsMerchantServicesHelpers::gp($fetched, 'status'));
    my $headers = BluefinTecsMerchantServicesHelpers::gp($fetched, 'headers') || {};

    # No-body responses (204, 304) and explicit zero content-length must
    # skip JSON parsing - calling json() on an empty body errors.
    my $content_length = Voxgig::Struct::ismap($headers)
      ? $headers->{'content-length'} : undef;
    my $no_body = (204 == $status || 304 == $status
      || (defined $content_length && '0' eq "$content_length")) ? 1 : 0;

    my $json_data;
    unless ($no_body) {
      my $jf = BluefinTecsMerchantServicesHelpers::gp($fetched, 'json');
      if (ref $jf eq 'CODE') {
        # Non-JSON body - leave data undef, keep status/headers.
        $json_data = eval { $jf->() };
      }
    }

    return {
      'ok' => ($status >= 200 && $status < 300) ? 1 : 0,
      'status' => $status,
      'headers' => $headers,
      'data' => $json_data,
    };
  }

  return {
    'ok' => 0,
    'err' => $ctx->make_error('direct_invalid', 'invalid response type'),
  };
}

# Raw GraphQL access: the pressure valve that makes the generated surface's
# deliberate omissions (per-call selection sets, typed filter builders,
# batching, subscriptions) livable — the whole schema stays reachable.
#
# Thin wrapper over the same prepare/fetch path direct uses, with the one
# thing raw direct cannot do for GraphQL: a GraphQL failure rides HTTP 200 as
# a top-level `errors` array, so status alone would report a failed query as
# ok.
#
# NOTE: like direct, this bypasses the feature pipeline — no retry, ratelimit
# or paging features apply.
sub graphql {
  my ($self, $query, $variables, $ctrl) = @_;

  return $self->_op_denied('graphql') unless $self->_op_allowed('graphql');

  my $res = $self->_raw_request({
    'method' => 'POST',
    'headers' => { 'content-type' => 'application/json' },
    'body' => {
      'query' => defined $query ? $query : '',
      'variables' => (ref $variables eq 'HASH') ? $variables : {},
    },
    'ctrl' => (ref $ctrl eq 'HASH') ? $ctrl : {},
  });

  return $res unless ref $res eq 'HASH';

  # Errors are read BEFORE any status check: a GraphQL parse or validation
  # failure comes back as HTTP 400 carrying the standard { errors: [...] }
  # body, and the raw path represents a non-2xx as ok:0 with no err — so
  # returning early on status would discard the server's own diagnostics,
  # which are the only useful part of that response.
  my $errors = BluefinTecsMerchantServicesHelpers::gpath($res, 'data.errors');

  if (ref $errors eq 'ARRAY' && 0 < scalar @$errors) {
    my $first = $errors->[0];
    my $msg = (ref $first eq 'HASH') ? $first->{'message'} : undef;
    $msg = 'graphql error' unless defined $msg && $msg ne '';
    $res->{'ok'} = 0;
    $res->{'err'} = "BluefinTecsMerchantServicesSDK: graphql: $msg";
    $res->{'graphql'} = $errors;
  }

  return $res;
}


# Canonical facade: $client->CancelTransaction->list / ->load({ 'id' => ... })
sub CancelTransaction {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/cancel_transaction_entity.pm"));
  return CancelTransactionEntity->new($self, $data);
}


# Canonical facade: $client->CheckCardBlackListed->list / ->load({ 'id' => ... })
sub CheckCardBlackListed {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/check_card_black_listed_entity.pm"));
  return CheckCardBlackListedEntity->new($self, $data);
}


# Canonical facade: $client->CreateProduct->list / ->load({ 'id' => ... })
sub CreateProduct {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/create_product_entity.pm"));
  return CreateProductEntity->new($self, $data);
}


# Canonical facade: $client->DeactivateTerminal->list / ->load({ 'id' => ... })
sub DeactivateTerminal {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/deactivate_terminal_entity.pm"));
  return DeactivateTerminalEntity->new($self, $data);
}


# Canonical facade: $client->DigitalServicesApi->list / ->load({ 'id' => ... })
sub DigitalServicesApi {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/digital_services_api_entity.pm"));
  return DigitalServicesApiEntity->new($self, $data);
}


# Canonical facade: $client->EcDataEcom->list / ->load({ 'id' => ... })
sub EcDataEcom {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/ec_data_ecom_entity.pm"));
  return EcDataEcomEntity->new($self, $data);
}


# Canonical facade: $client->EcomParameter->list / ->load({ 'id' => ... })
sub EcomParameter {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/ecom_parameter_entity.pm"));
  return EcomParameterEntity->new($self, $data);
}


# Canonical facade: $client->EcrData->list / ->load({ 'id' => ... })
sub EcrData {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/ecr_data_entity.pm"));
  return EcrDataEntity->new($self, $data);
}


# Canonical facade: $client->EmvData->list / ->load({ 'id' => ... })
sub EmvData {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/emv_data_entity.pm"));
  return EmvDataEntity->new($self, $data);
}


# Canonical facade: $client->EnableAcquiring->list / ->load({ 'id' => ... })
sub EnableAcquiring {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/enable_acquiring_entity.pm"));
  return EnableAcquiringEntity->new($self, $data);
}


# Canonical facade: $client->GetMerchantContractNumber->list / ->load({ 'id' => ... })
sub GetMerchantContractNumber {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/get_merchant_contract_number_entity.pm"));
  return GetMerchantContractNumberEntity->new($self, $data);
}


# Canonical facade: $client->GetTemplateXml->list / ->load({ 'id' => ... })
sub GetTemplateXml {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/get_template_xml_entity.pm"));
  return GetTemplateXmlEntity->new($self, $data);
}


# Canonical facade: $client->IntroduceMandator->list / ->load({ 'id' => ... })
sub IntroduceMandator {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/introduce_mandator_entity.pm"));
  return IntroduceMandatorEntity->new($self, $data);
}


# Canonical facade: $client->IntroducePackage->list / ->load({ 'id' => ... })
sub IntroducePackage {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/introduce_package_entity.pm"));
  return IntroducePackageEntity->new($self, $data);
}


# Canonical facade: $client->KeepAlive->list / ->load({ 'id' => ... })
sub KeepAlive {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/keep_alive_entity.pm"));
  return KeepAliveEntity->new($self, $data);
}


# Canonical facade: $client->ListTerminal->list / ->load({ 'id' => ... })
sub ListTerminal {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/list_terminal_entity.pm"));
  return ListTerminalEntity->new($self, $data);
}


# Canonical facade: $client->MandatorClearingExport->list / ->load({ 'id' => ... })
sub MandatorClearingExport {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/mandator_clearing_export_entity.pm"));
  return MandatorClearingExportEntity->new($self, $data);
}


# Canonical facade: $client->MandatorClearingExportDownload->list / ->load({ 'id' => ... })
sub MandatorClearingExportDownload {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/mandator_clearing_export_download_entity.pm"));
  return MandatorClearingExportDownloadEntity->new($self, $data);
}


# Canonical facade: $client->MandatorClearingExportSummary->list / ->load({ 'id' => ... })
sub MandatorClearingExportSummary {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/mandator_clearing_export_summary_entity.pm"));
  return MandatorClearingExportSummaryEntity->new($self, $data);
}


# Canonical facade: $client->MerchantPortalServicesApi->list / ->load({ 'id' => ... })
sub MerchantPortalServicesApi {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/merchant_portal_services_api_entity.pm"));
  return MerchantPortalServicesApiEntity->new($self, $data);
}


# Canonical facade: $client->MoveTid->list / ->load({ 'id' => ... })
sub MoveTid {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/move_tid_entity.pm"));
  return MoveTidEntity->new($self, $data);
}


# Canonical facade: $client->PaymentManual->list / ->load({ 'id' => ... })
sub PaymentManual {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/payment_manual_entity.pm"));
  return PaymentManualEntity->new($self, $data);
}


# Canonical facade: $client->PaymentSred->list / ->load({ 'id' => ... })
sub PaymentSred {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/payment_sred_entity.pm"));
  return PaymentSredEntity->new($self, $data);
}


# Canonical facade: $client->PreAuthTransactionCompletion->list / ->load({ 'id' => ... })
sub PreAuthTransactionCompletion {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/pre_auth_transaction_completion_entity.pm"));
  return PreAuthTransactionCompletionEntity->new($self, $data);
}


# Canonical facade: $client->ReactivateTerminal->list / ->load({ 'id' => ... })
sub ReactivateTerminal {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/reactivate_terminal_entity.pm"));
  return ReactivateTerminalEntity->new($self, $data);
}


# Canonical facade: $client->RefundTransaction->list / ->load({ 'id' => ... })
sub RefundTransaction {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/refund_transaction_entity.pm"));
  return RefundTransactionEntity->new($self, $data);
}


# Canonical facade: $client->RegisterTecsCompany->list / ->load({ 'id' => ... })
sub RegisterTecsCompany {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/register_tecs_company_entity.pm"));
  return RegisterTecsCompanyEntity->new($self, $data);
}


# Canonical facade: $client->RegisterTerminal->list / ->load({ 'id' => ... })
sub RegisterTerminal {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/register_terminal_entity.pm"));
  return RegisterTerminalEntity->new($self, $data);
}


# Canonical facade: $client->ReportData->list / ->load({ 'id' => ... })
sub ReportData {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/report_data_entity.pm"));
  return ReportDataEntity->new($self, $data);
}


# Canonical facade: $client->StatusTransaction->list / ->load({ 'id' => ... })
sub StatusTransaction {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/status_transaction_entity.pm"));
  return StatusTransactionEntity->new($self, $data);
}


# Canonical facade: $client->StoreTerminalParameter->list / ->load({ 'id' => ... })
sub StoreTerminalParameter {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/store_terminal_parameter_entity.pm"));
  return StoreTerminalParameterEntity->new($self, $data);
}


# Canonical facade: $client->TerminalId->list / ->load({ 'id' => ... })
sub TerminalId {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/terminal_id_entity.pm"));
  return TerminalIdEntity->new($self, $data);
}


# Canonical facade: $client->TransactionHistory->list / ->load({ 'id' => ... })
sub TransactionHistory {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/transaction_history_entity.pm"));
  return TransactionHistoryEntity->new($self, $data);
}


# Canonical facade: $client->TransactionsCount->list / ->load({ 'id' => ... })
sub TransactionsCount {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/transactions_count_entity.pm"));
  return TransactionsCountEntity->new($self, $data);
}


# Canonical facade: $client->TransactionsCountCardBrand->list / ->load({ 'id' => ... })
sub TransactionsCountCardBrand {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/transactions_count_card_brand_entity.pm"));
  return TransactionsCountCardBrandEntity->new($self, $data);
}


# Canonical facade: $client->TransactionsTurnover->list / ->load({ 'id' => ... })
sub TransactionsTurnover {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/transactions_turnover_entity.pm"));
  return TransactionsTurnoverEntity->new($self, $data);
}


# Canonical facade: $client->UpdateMerchant->list / ->load({ 'id' => ... })
sub UpdateMerchant {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/update_merchant_entity.pm"));
  return UpdateMerchantEntity->new($self, $data);
}


# Canonical facade: $client->UpdateTemplateXml->list / ->load({ 'id' => ... })
sub UpdateTemplateXml {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/update_template_xml_entity.pm"));
  return UpdateTemplateXmlEntity->new($self, $data);
}


# Canonical facade: $client->Version->list / ->load({ 'id' => ... })
sub Version {
  my ($self, $data) = @_;
  require(Cwd::abs_path("$DIR/../entity/version_entity.pm"));
  return VersionEntity->new($self, $data);
}



sub test {
  my ($class, $testopts, $sdkopts) = @_;
  $sdkopts = {} unless defined $sdkopts;
  $sdkopts = Voxgig::Struct::clone($sdkopts);
  $sdkopts = {} unless Voxgig::Struct::ismap($sdkopts);

  $testopts = {} unless defined $testopts;
  $testopts = Voxgig::Struct::clone($testopts);
  $testopts = {} unless Voxgig::Struct::ismap($testopts);
  $testopts->{active} = Voxgig::Struct::JTRUE();

  Voxgig::Struct::setpath($sdkopts, 'feature.test', $testopts);

  my $sdk = $class->new($sdkopts);
  $sdk->{mode} = 'test';
  return $sdk;
}

1;
