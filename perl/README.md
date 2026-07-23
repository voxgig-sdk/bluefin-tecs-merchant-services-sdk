# BluefinTecsMerchantServices Perl SDK



The Perl SDK for the BluefinTecsMerchantServices API — an entity-oriented client
following idiomatic Perl conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `$client->CancelTransaction` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to CPAN. Install it from the GitHub
release tag (`perl/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout.

The SDK is pure Perl with zero non-core runtime dependencies, so no build
step is required — just put its `lib` directory on `@INC`:

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;

my $client = BluefinTecsMerchantServicesSDK->new({
    'apikey' => $ENV{'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY'},
});
```

### 4. Create, update, and remove

```perl
# Create — returns the bare created record (a hashref)
my $created = $client->CancelTransaction->create({ 'client_id' => 1, 'currency' => 'example_currency', 'receipt_number' => 'example_receipt_number', 'terminal_id' => 1 });

```


## Error handling

Entity operations reject on failure, so wrap them in `try` / `catch`:

```ts
try {
  const digitalservicesapi = await client.DigitalServicesApi().load()
  console.log(digitalservicesapi)
} catch (err) {
  console.error('load failed:', err)
}
```

The low-level `direct()` method does **not** throw — it returns the
value or an `Error`, so check the result before using it:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example_id' },
})

if (result instanceof Error) {
  throw result
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```perl
my $result = $client->direct({
    'path' => '/api/resource/{id}',
    'method' => 'GET',
    'params' => { 'id' => 'example' },
});

if ($result->{ok}) {
    print $result->{status}, "\n";  # 200
    print $result->{data}, "\n";    # response body
}
else {
    # A non-2xx response carries status + data (the error body); a
    # transport-level failure carries err instead. Only one is present, so
    # read whichever is defined.
    print $result->{status}, ' ', ($result->{err} // ''), "\n";
}
```

### Prepare a request without sending it

```perl
# prepare() returns the fetch definition and dies on error.
my $fetchdef = $client->prepare({
    'path' => '/api/resource/{id}',
    'method' => 'DELETE',
    'params' => { 'id' => 'example' },
});

print $fetchdef->{url}, "\n";
print $fetchdef->{method}, "\n";
print $fetchdef->{headers}, "\n";
```

### Use test mode

Create a mock client for unit testing — no server required:

```perl
my $client = BluefinTecsMerchantServicesSDK->test(undef, undef);

# Entity ops return the bare record and die on error.
my $digitalservicesapi = $client->DigitalServicesApi->load();
# $digitalservicesapi contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own coderef:

```perl
my $mock_fetch = sub {
    my ($url, $init) = @_;
    return ({
        'status' => 200,
        'statusText' => 'OK',
        'headers' => {},
        'json' => sub { { 'id' => 'mock01' } },
    }, undef);
};

my $client = BluefinTecsMerchantServicesSDK->new({
    'base' => 'http://localhost:8080',
    'system' => { 'fetch' => $mock_fetch },
});
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd perl && prove -Ilib t/
```


## Reference

### BluefinTecsMerchantServicesSDK

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;

my $client = BluefinTecsMerchantServicesSDK->new($options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `hashref` | Feature activation flags. |
| `extend` | `arrayref` | Additional feature instances to load. |
| `system` | `hashref` | System overrides (e.g. custom `fetch` coderef). |

### test

```perl
my $client = BluefinTecsMerchantServicesSDK->test($testopts, $sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `undef`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> hashref` | Deep copy of current SDK options. |
| `get_utility` | `() -> utility` | Copy of the SDK utility object. |
| `prepare` | `($fetchargs) -> hashref` | Build an HTTP request definition without sending. Dies on error. |
| `direct` | `($fetchargs) -> hashref` | Build and send an HTTP request. Returns a result hashref (branch on `ok`). |
| `CancelTransaction` | `($data) -> CancelTransaction entity` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `($data) -> CheckCardBlackListed entity` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `($data) -> CreateProduct entity` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `($data) -> DeactivateTerminal entity` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `($data) -> DigitalServicesApi entity` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `($data) -> EcDataEcom entity` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `($data) -> EcomParameter entity` | Create an EcomParameter entity instance. |
| `EcrData` | `($data) -> EcrData entity` | Create an EcrData entity instance. |
| `EmvData` | `($data) -> EmvData entity` | Create an EmvData entity instance. |
| `EnableAcquiring` | `($data) -> EnableAcquiring entity` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `($data) -> GetMerchantContractNumber entity` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `($data) -> GetTemplateXml entity` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `($data) -> IntroduceMandator entity` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `($data) -> IntroducePackage entity` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `($data) -> KeepAlive entity` | Create a KeepAlive entity instance. |
| `ListTerminal` | `($data) -> ListTerminal entity` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `($data) -> MandatorClearingExport entity` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `($data) -> MandatorClearingExportDownload entity` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `($data) -> MandatorClearingExportSummary entity` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `($data) -> MerchantPortalServicesApi entity` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `($data) -> MoveTid entity` | Create a MoveTid entity instance. |
| `PaymentManual` | `($data) -> PaymentManual entity` | Create a PaymentManual entity instance. |
| `PaymentSred` | `($data) -> PaymentSred entity` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `($data) -> PreAuthTransactionCompletion entity` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `($data) -> ReactivateTerminal entity` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `($data) -> RefundTransaction entity` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `($data) -> RegisterTecsCompany entity` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `($data) -> RegisterTerminal entity` | Create a RegisterTerminal entity instance. |
| `ReportData` | `($data) -> ReportData entity` | Create a ReportData entity instance. |
| `StatusTransaction` | `($data) -> StatusTransaction entity` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `($data) -> StoreTerminalParameter entity` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `($data) -> TerminalId entity` | Create a TerminalId entity instance. |
| `TransactionHistory` | `($data) -> TransactionHistory entity` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `($data) -> TransactionsCount entity` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `($data) -> TransactionsCountCardBrand entity` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `($data) -> TransactionsTurnover entity` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `($data) -> UpdateMerchant entity` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `($data) -> UpdateTemplateXml entity` | Create an UpdateTemplateXml entity instance. |
| `Version` | `($data) -> Version entity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `($reqmatch, $ctrl) -> hashref` | Load a single entity by match criteria. Dies on error. |
| `create` | `($reqdata, $ctrl) -> hashref` | Create a new entity. Dies on error. |
| `data_get` | `() -> hashref` | Get entity data. |
| `data_set` | `($data)` | Set entity data. |
| `match_get` | `() -> hashref` | Get entity match criteria. |
| `match_set` | `($match)` | Set entity match criteria. |
| `make` | `() -> entity` | Create a new instance with the same options. |
| `get_name` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `hashref` for single-entity
ops, an `arrayref` for `list`) and die on error. Wrap calls in
`eval { ... }` and inspect `$@` to handle failures.

The `direct()` escape hatch never dies — it returns a result `hashref`
you branch on via `$result->{ok}`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean` | True if the HTTP status is 2xx. |
| `status` | `integer` | HTTP status code. |
| `headers` | `hashref` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is false and `err` contains the error value.

### Entities

#### CancelTransaction

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `card_no` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_type` |  |
| `template_xml` |  |
| `terminal_type` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `deactivation_reason` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `response_code` |  |
| `response_message` |  |
| `tx_count` |  |
| `tx_id_end` |  |
| `tx_id_start` |  |
| `tx_seq_no_end` |  |
| `tx_seq_no_start` |  |
| `tx_total` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `ecom_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecom_pass` |  |
| `ecom_skey` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `ecr_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `emv_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `account_no` |  |
| `additional_data` |  |
| `corporate_uuid` |  |
| `currency` |  |
| `merchant_category_code` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting_code` |  |
| `template_name` |  |
| `terminal_id` |  |
| `terminal_id_acq` |  |
| `vu_nummer` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchant_contract_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `terminal_template_description` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `hwserialno` |  |
| `ka_date_time_from` |  |
| `ka_date_time_to` |  |
| `keep_alive_data` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_date_time_from` |  |
| `terminal_date_time_to` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `filter` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `pagination` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `file_id` |  |
| `filename_template` |  |
| `response_code` |  |
| `response_message` |  |
| `status` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `3_d_secure` |  |
| `authorization_code` |  |
| `card_brand` |  |
| `clearing_amount_from` |  |
| `clearing_amount_to` |  |
| `clearing_currency` |  |
| `clearing_status` |  |
| `corporate_uuid` |  |
| `order_by_transaction_date` |  |
| `pagination` |  |
| `receipt_number` |  |
| `referenced_transaction_id` |  |
| `retrieval_reference_number` |  |
| `source_id` |  |
| `tecsengine_response_code_from` |  |
| `tecsengine_response_code_to` |  |
| `terminal_id` |  |
| `trace_number` |  |
| `transaction_amount_from` |  |
| `transaction_amount_to` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuid` |  |
| `response_code` |  |
| `response_message` |  |
| `target_packageorderuuid` |  |
| `target_productorderuuid` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `amount` |  |
| `authorization_number` |  |
| `card_number` |  |
| `card_type` |  |
| `currency` |  |
| `cvc` |  |
| `date_time_tx` |  |
| `exp_date` |  |
| `merchant_id` |  |
| `original_transaction_id` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `amount` |  |
| `authorization_number` |  |
| `card_type` |  |
| `currency` |  |
| `date_time_tx` |  |
| `device_payload` |  |
| `merchant_id` |  |
| `original_transaction_id` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `sred` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `card_number_reference` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `reactivation_reason` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `partner_id` |  |
| `partner_name` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `additional_data` |  |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `tecs_web_secret_key` |  |
| `template_name` |  |
| `terminal_country_code` |  |
| `terminal_id` |  |
| `terminal_id_acq` |  |
| `terminal_language_code` |  |
| `terminal_location` |  |
| `terminal_serial_number` |  |
| `token_io_alia` |  |
| `token_io_iban` |  |
| `token_io_member_id` |  |
| `web_shop_url` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `card_brand_report_data` |  |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `corporate_id` |  |
| `currency` |  |
| `response_code` |  |
| `response_message` |  |
| `sum_over_credit_tx` |  |
| `sum_over_debit_tx` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `acquirer_terminal_id` |  |
| `amount` |  |
| `application_cryptogram` |  |
| `authorization_code` |  |
| `authorization_date` |  |
| `card_brand` |  |
| `card_entry` |  |
| `card_expiration` |  |
| `card_number` |  |
| `clearing_amount` |  |
| `clearing_batch_id` |  |
| `clearing_currency` |  |
| `clearing_date` |  |
| `clearing_processed_date` |  |
| `clearing_status` |  |
| `client_id` |  |
| `currency` |  |
| `cvm` |  |
| `ecr_data` |  |
| `emv_application_id` |  |
| `emv_application_label` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `original_client_id` |  |
| `original_terminal_id` |  |
| `original_transaction_id` |  |
| `payment_reason` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_code_from_a` |  |
| `response_message` |  |
| `retrieval_reference_number` |  |
| `service_code` |  |
| `settlement_status` |  |
| `source_id` |  |
| `tecsengine_response_code` |  |
| `tecsengine_response_text` |  |
| `terminal_end_of_day_date` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `tip_amount` |  |
| `trace_number` |  |
| `transaction_clearing_date` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `transaction_seq_number` |  |
| `transaction_server_date` |  |
| `transaction_source` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `acq_tab_nexo` |  |
| `config_version` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `tid_sent` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `device_serial_number` |  |
| `duplicate_terminal_id` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `3_d_secure` |  |
| `authorization_code` |  |
| `card_brand` |  |
| `clearing_amount_from` |  |
| `clearing_amount_to` |  |
| `clearing_currency` |  |
| `clearing_status` |  |
| `corporate_uuid` |  |
| `order_by_transaction_date` |  |
| `pagination` |  |
| `payment_token_public_id` |  |
| `receipt_number` |  |
| `referenced_transaction_id` |  |
| `response_code` |  |
| `response_message` |  |
| `retrieval_reference_number` |  |
| `source_id` |  |
| `tecsengine_response_code_from` |  |
| `tecsengine_response_code_to` |  |
| `terminal_id` |  |
| `trace_number` |  |
| `transaction_amount_from` |  |
| `transaction_amount_to` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transaction_history` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transactions_count` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transactions_count` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `turnover` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `city` |  |
| `corporate_uuid` |  |
| `country` |  |
| `merchant_category_code` |  |
| `name` |  |
| `response_code` |  |
| `response_message` |  |
| `state` |  |
| `street` |  |
| `vu_nummer` |  |
| `zipcode` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_xml` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: Load.

API path: `/public/version`



## Entities


### CancelTransaction

Create an instance: `my $cancel_transaction = $client->CancelTransaction;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `integer` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `integer` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `integer` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `integer` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `integer` |  |
| `receipt_number` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `integer` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `integer` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```perl
my $cancel_transaction = $client->CancelTransaction->create({
    'client_id' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receipt_number' => 'example_receipt_number',  # string
    'terminal_id' => 1,  # integer
});
```


### CheckCardBlackListed

Create an instance: `my $check_card_black_listed = $client->CheckCardBlackListed;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |

#### Example: Create

```perl
my $check_card_black_listed = $client->CheckCardBlackListed->create({
});
```


### CreateProduct

Create an instance: `my $create_product = $client->CreateProduct;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `integer` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_type` | `string` |  |
| `template_xml` | `string` |  |
| `terminal_type` | `string` |  |

#### Example: Create

```perl
my $create_product = $client->CreateProduct->create({
    'template_name' => 'example_template_name',  # string
    'template_type' => 'example_template_type',  # string
    'template_xml' => 'example_template_xml',  # string
    'terminal_type' => 'example_terminal_type',  # string
});
```


### DeactivateTerminal

Create an instance: `my $deactivate_terminal = $client->DeactivateTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `deactivation_reason` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_id` | `integer` |  |

#### Example: Create

```perl
my $deactivate_terminal = $client->DeactivateTerminal->create({
    'deactivation_reason' => 'example_deactivation_reason',  # string
    'terminal_id' => 1,  # integer
});
```


### DigitalServicesApi

Create an instance: `my $digital_services_api = $client->DigitalServicesApi;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `tx_count` | `integer` |  |
| `tx_id_end` | `string` |  |
| `tx_id_start` | `string` |  |
| `tx_seq_no_end` | `integer` |  |
| `tx_seq_no_start` | `integer` |  |
| `tx_total` | `integer` |  |

#### Example: Load

```perl
my $digital_services_api = $client->DigitalServicesApi->load();
```

#### Example: Create

```perl
my $digital_services_api = $client->DigitalServicesApi->create({
});
```


### EcDataEcom

Create an instance: `my $ec_data_ecom = $client->EcDataEcom;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_id` | `integer` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```perl
my $ec_data_ecom = $client->EcDataEcom->create({
    'terminal_id' => 1,  # integer
    'transaction_id' => 'example_transaction_id',  # string
    'transaction_type' => 'example_transaction_type',  # string
});
```


### EcomParameter

Create an instance: `my $ecom_parameter = $client->EcomParameter;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `string` |  |
| `ecom_skey` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_id` | `integer` |  |

#### Example: Create

```perl
my $ecom_parameter = $client->EcomParameter->create({
    'terminal_id' => 1,  # integer
});
```


### EcrData

Create an instance: `my $ecr_data = $client->EcrData;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_id` | `integer` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```perl
my $ecr_data = $client->EcrData->create({
    'terminal_id' => 1,  # integer
    'transaction_id' => 'example_transaction_id',  # string
    'transaction_type' => 'example_transaction_type',  # string
});
```


### EmvData

Create an instance: `my $emv_data = $client->EmvData;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_id` | `integer` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```perl
my $emv_data = $client->EmvData->create({
    'terminal_id' => 1,  # integer
    'transaction_id' => 'example_transaction_id',  # string
    'transaction_type' => 'example_transaction_type',  # string
});
```


### EnableAcquiring

Create an instance: `my $enable_acquiring = $client->EnableAcquiring;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `integer` |  |
| `additional_data` | `hashref` |  |
| `corporate_uuid` | `string` |  |
| `currency` | `string` |  |
| `merchant_category_code` | `integer` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `sorting_code` | `integer` |  |
| `template_name` | `string` |  |
| `terminal_id` | `arrayref` |  |
| `terminal_id_acq` | `string` |  |
| `vu_nummer` | `string` |  |

#### Example: Create

```perl
my $enable_acquiring = $client->EnableAcquiring->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
    'currency' => 'example_currency',  # string
    'merchant_category_code' => 1,  # integer
    'package_order_uuid' => 'example_package_order_uuid',  # string
    'product_order_uuid' => 'example_product_order_uuid',  # string
    'template_name' => 'example_template_name',  # string
});
```


### GetMerchantContractNumber

Create an instance: `my $get_merchant_contract_number = $client->GetMerchantContractNumber;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |

#### Example: Create

```perl
my $get_merchant_contract_number = $client->GetMerchantContractNumber->create({
    'merchant_contract_number' => 'example_merchant_contract_number',  # string
});
```


### GetTemplateXml

Create an instance: `my $get_template_xml = $client->GetTemplateXml;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```perl
my $get_template_xml = $client->GetTemplateXml->create({
    'template_name' => 'example_template_name',  # string
});
```


### IntroduceMandator

Create an instance: `my $introduce_mandator = $client->IntroduceMandator;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |

#### Example: Create

```perl
my $introduce_mandator = $client->IntroduceMandator->create({
    'mandator_name' => 'example_mandator_name',  # string
});
```


### IntroducePackage

Create an instance: `my $introduce_package = $client->IntroducePackage;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_template_description` | `string` |  |

#### Example: Create

```perl
my $introduce_package = $client->IntroducePackage->create({
    'terminal_template_description' => 'example_terminal_template_description',  # string
});
```


### KeepAlive

Create an instance: `my $keep_alive = $client->KeepAlive;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `ka_date_time_from` | `string` |  |
| `ka_date_time_to` | `string` |  |
| `keep_alive_data` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_date_time_from` | `string` |  |
| `terminal_date_time_to` | `string` |  |
| `terminal_id` | `integer` |  |

#### Example: Create

```perl
my $keep_alive = $client->KeepAlive->create({
});
```


### ListTerminal

Create an instance: `my $list_terminal = $client->ListTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `arrayref` |  |
| `filter` | `hashref` |  |
| `pagination` | `hashref` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal` | `arrayref` |  |

#### Example: Create

```perl
my $list_terminal = $client->ListTerminal->create({
});
```


### MandatorClearingExport

Create an instance: `my $mandator_clearing_export = $client->MandatorClearingExport;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `pagination` | `hashref` |  |
| `record` | `arrayref` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |

#### Example: Create

```perl
my $mandator_clearing_export = $client->MandatorClearingExport->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
});
```


### MandatorClearingExportDownload

Create an instance: `my $mandator_clearing_export_download = $client->MandatorClearingExportDownload;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `file_id` | `string` |  |
| `filename_template` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `status` | `string` |  |

#### Example: Load

```perl
my $mandator_clearing_export_download = $client->MandatorClearingExportDownload->load({ 'id' => 'mandator_clearing_export_download_id' });
```

#### Example: Create

```perl
my $mandator_clearing_export_download = $client->MandatorClearingExportDownload->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
});
```


### MandatorClearingExportSummary

Create an instance: `my $mandator_clearing_export_summary = $client->MandatorClearingExportSummary;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `record` | `arrayref` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |

#### Example: Create

```perl
my $mandator_clearing_export_summary = $client->MandatorClearingExportSummary->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
});
```


### MerchantPortalServicesApi

Create an instance: `my $merchant_portal_services_api = $client->MerchantPortalServicesApi;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `string` |  |
| `authorization_code` | `string` |  |
| `card_brand` | `string` |  |
| `clearing_amount_from` | `string` |  |
| `clearing_amount_to` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_status` | `string` |  |
| `corporate_uuid` | `string` |  |
| `order_by_transaction_date` | `string` |  |
| `pagination` | `hashref` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `integer` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `integer` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```perl
my $merchant_portal_services_api = $client->MerchantPortalServicesApi->create({
});
```


### MoveTid

Create an instance: `my $move_tid = $client->MoveTid;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `arrayref` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `target_packageorderuuid` | `string` |  |
| `target_productorderuuid` | `string` |  |

#### Example: Create

```perl
my $move_tid = $client->MoveTid->create({
    'productorderuuid' => [],  # arrayref
});
```


### PaymentManual

Create an instance: `my $payment_manual = $client->PaymentManual;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `integer` |  |
| `authorization_number` | `string` |  |
| `card_number` | `string` |  |
| `card_type` | `string` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `date_time_tx` | `string` |  |
| `exp_date` | `string` |  |
| `merchant_id` | `string` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `response_code` | `string` |  |
| `response_message` | `string` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```perl
my $payment_manual = $client->PaymentManual->create({
    'amount' => 1,  # integer
    'card_number' => 'example_card_number',  # string
    'currency' => 'example_currency',  # string
    'exp_date' => 'example_exp_date',  # string
    'txtype' => 'example_txtype',  # string
});
```


### PaymentSred

Create an instance: `my $payment_sred = $client->PaymentSred;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `integer` |  |
| `authorization_number` | `string` |  |
| `card_type` | `string` |  |
| `currency` | `string` |  |
| `date_time_tx` | `string` |  |
| `device_payload` | `string` |  |
| `merchant_id` | `string` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `response_code` | `string` |  |
| `response_message` | `string` |  |
| `sred` | `hashref` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```perl
my $payment_sred = $client->PaymentSred->create({
    'amount' => 1,  # integer
    'currency' => 'example_currency',  # string
    'device_payload' => 'example_device_payload',  # string
    'txtype' => 'example_txtype',  # string
});
```


### PreAuthTransactionCompletion

Create an instance: `my $pre_auth_transaction_completion = $client->PreAuthTransactionCompletion;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `integer` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `card_number_reference` | `string` |  |
| `client_id` | `integer` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `integer` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `integer` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `integer` |  |
| `receipt_number` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `integer` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `integer` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```perl
my $pre_auth_transaction_completion = $client->PreAuthTransactionCompletion->create({
    'card_number_reference' => 'example_card_number_reference',  # string
    'client_id' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receipt_number' => 'example_receipt_number',  # string
    'terminal_id' => 1,  # integer
    'transaction_type' => 'example_transaction_type',  # string
});
```


### ReactivateTerminal

Create an instance: `my $reactivate_terminal = $client->ReactivateTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `reactivation_reason` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal_id` | `integer` |  |

#### Example: Create

```perl
my $reactivate_terminal = $client->ReactivateTerminal->create({
    'reactivation_reason' => 'example_reactivation_reason',  # string
    'terminal_id' => 1,  # integer
});
```


### RefundTransaction

Create an instance: `my $refund_transaction = $client->RefundTransaction;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `integer` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `integer` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `integer` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `integer` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `integer` |  |
| `receipt_number` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `integer` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `integer` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```perl
my $refund_transaction = $client->RefundTransaction->create({
    'client_id' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receipt_number' => 'example_receipt_number',  # string
    'terminal_id' => 1,  # integer
});
```


### RegisterTecsCompany

Create an instance: `my $register_tecs_company = $client->RegisterTecsCompany;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `partner_id` | `integer` |  |
| `partner_name` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```perl
my $register_tecs_company = $client->RegisterTecsCompany->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
    'package_order_uuid' => 'example_package_order_uuid',  # string
    'product_order_uuid' => 'example_product_order_uuid',  # string
    'template_name' => 'example_template_name',  # string
});
```


### RegisterTerminal

Create an instance: `my $register_terminal = $client->RegisterTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `hashref` |  |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `tecs_web_secret_key` | `string` |  |
| `template_name` | `string` |  |
| `terminal_country_code` | `string` |  |
| `terminal_id` | `integer` |  |
| `terminal_id_acq` | `string` |  |
| `terminal_language_code` | `string` |  |
| `terminal_location` | `string` |  |
| `terminal_serial_number` | `string` |  |
| `token_io_alia` | `string` |  |
| `token_io_iban` | `string` |  |
| `token_io_member_id` | `string` |  |
| `web_shop_url` | `string` |  |

#### Example: Create

```perl
my $register_terminal = $client->RegisterTerminal->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
    'package_order_uuid' => 'example_package_order_uuid',  # string
    'product_order_uuid' => 'example_product_order_uuid',  # string
    'template_name' => 'example_template_name',  # string
    'terminal_country_code' => 'example_terminal_country_code',  # string
    'terminal_language_code' => 'example_terminal_language_code',  # string
    'terminal_location' => 'example_terminal_location',  # string
});
```


### ReportData

Create an instance: `my $report_data = $client->ReportData;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `arrayref` |  |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `corporate_id` | `string` |  |
| `currency` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `sum_over_credit_tx` | `hashref` |  |
| `sum_over_debit_tx` | `hashref` |  |
| `terminal_id` | `integer` |  |

#### Example: Create

```perl
my $report_data = $client->ReportData->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
    'corporate_id' => 'example_corporate_id',  # string
    'currency' => 'example_currency',  # string
});
```


### StatusTransaction

Create an instance: `my $status_transaction = $client->StatusTransaction;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `acquirer_terminal_id` | `string` |  |
| `amount` | `integer` |  |
| `application_cryptogram` | `string` |  |
| `authorization_code` | `scalar` |  |
| `authorization_date` | `string` |  |
| `card_brand` | `string` |  |
| `card_entry` | `string` |  |
| `card_expiration` | `string` |  |
| `card_number` | `string` |  |
| `clearing_amount` | `integer` |  |
| `clearing_batch_id` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_date` | `string` |  |
| `clearing_processed_date` | `string` |  |
| `clearing_status` | `string` |  |
| `client_id` | `integer` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_application_id` | `string` |  |
| `emv_application_label` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `original_client_id` | `string` |  |
| `original_terminal_id` | `integer` |  |
| `original_transaction_id` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_number` | `string` |  |
| `response_code` | `integer` |  |
| `response_code_from_a` | `string` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `service_code` | `string` |  |
| `settlement_status` | `string` |  |
| `source_id` | `integer` |  |
| `tecsengine_response_code` | `integer` |  |
| `tecsengine_response_text` | `string` |  |
| `terminal_end_of_day_date` | `string` |  |
| `terminal_id` | `integer` |  |
| `terminal_location` | `string` |  |
| `tip_amount` | `integer` |  |
| `trace_number` | `integer` |  |
| `transaction_clearing_date` | `string` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_seq_number` | `integer` |  |
| `transaction_server_date` | `string` |  |
| `transaction_source` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```perl
my $status_transaction = $client->StatusTransaction->create({
});
```


### StoreTerminalParameter

Create an instance: `my $store_terminal_parameter = $client->StoreTerminalParameter;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `hashref` |  |
| `config_version` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `tid_sent` | `string` |  |

#### Example: Create

```perl
my $store_terminal_parameter = $client->StoreTerminalParameter->create({
    'serial_number' => 'example_serial_number',  # string
});
```


### TerminalId

Create an instance: `my $terminal_id = $client->TerminalId;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `arrayref` |  |
| `duplicate_terminal_id` | `arrayref` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `terminal` | `arrayref` |  |

#### Example: Create

```perl
my $terminal_id = $client->TerminalId->create({
    'device_serial_number' => [],  # arrayref
});
```


### TransactionHistory

Create an instance: `my $transaction_history = $client->TransactionHistory;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `string` |  |
| `authorization_code` | `string` |  |
| `card_brand` | `string` |  |
| `clearing_amount_from` | `string` |  |
| `clearing_amount_to` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_status` | `string` |  |
| `corporate_uuid` | `string` |  |
| `order_by_transaction_date` | `string` |  |
| `pagination` | `hashref` |  |
| `payment_token_public_id` | `string` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `integer` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `integer` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_history` | `arrayref` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```perl
my $transaction_history = $client->TransactionHistory->create({
});
```


### TransactionsCount

Create an instance: `my $transactions_count = $client->TransactionsCount;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `arrayref` |  |

#### Example: Create

```perl
my $transactions_count = $client->TransactionsCount->create({
});
```


### TransactionsCountCardBrand

Create an instance: `my $transactions_count_card_brand = $client->TransactionsCountCardBrand;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `arrayref` |  |

#### Example: Create

```perl
my $transactions_count_card_brand = $client->TransactionsCountCardBrand->create({
});
```


### TransactionsTurnover

Create an instance: `my $transactions_turnover = $client->TransactionsTurnover;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `turnover` | `arrayref` |  |

#### Example: Create

```perl
my $transactions_turnover = $client->TransactionsTurnover->create({
});
```


### UpdateMerchant

Create an instance: `my $update_merchant = $client->UpdateMerchant;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporate_uuid` | `string` |  |
| `country` | `string` |  |
| `merchant_category_code` | `string` |  |
| `name` | `string` |  |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vu_nummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```perl
my $update_merchant = $client->UpdateMerchant->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
});
```


### UpdateTemplateXml

Create an instance: `my $update_template_xml = $client->UpdateTemplateXml;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `integer` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_xml` | `string` |  |

#### Example: Create

```perl
my $update_template_xml = $client->UpdateTemplateXml->create({
    'template_name' => 'example_template_name',  # string
    'template_xml' => 'example_template_xml',  # string
});
```


### Version

Create an instance: `my $version = $client->Version;`

#### Operations

| Method | Description |
| --- | --- |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```perl
my $version = $client->Version->load();
```


## Advanced

> The sections above cover everyday use. The material below explains the
> SDK's internals — useful when extending it with custom features, but not
> needed for normal use.

### The operation pipeline

Every entity operation follows a six-stage pipeline. Each stage fires a
feature hook before executing:

```
PrePoint → PreSpec → PreRequest → PreResponse → PreResult → PreDone
```

- **PrePoint**: Resolves which API endpoint to call based on the
  operation name and entity configuration.
- **PreSpec**: Builds the HTTP spec — URL, method, headers, body —
  from the resolved point and the caller's parameters.
- **PreRequest**: Sends the HTTP request. Features can intercept here
  to replace the transport (as TestFeature does with mocks).
- **PreResponse**: Parses the raw HTTP response.
- **PreResult**: Extracts the business data from the parsed response.
- **PreDone**: Final stage before returning to the caller. Entity
  state (match, data) is updated here.

If any stage errors, the pipeline short-circuits and the error surfaces
to the caller — see [Error handling](#error-handling) for how that looks
in this language.

### Features and hooks

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as hashrefs

The Perl SDK uses plain hashrefs and arrayrefs throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Use `BluefinTecsMerchantServicesHelpers::to_map()` to safely validate that a value
is a hashref.

### Module structure

```
perl/
├── lib/BluefinTecsMerchantServicesSDK.pm    -- Main SDK module (package BluefinTecsMerchantServicesSDK)
├── config.pm                    -- Configuration
├── features.pm                  -- Feature factory
├── core/                        -- Core types and context
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (base, test, log)
├── utility/                     -- Utility functions
├── lib/Voxgig/Struct.pm         -- Vendored struct library
└── t/                           -- Test suites
```

Load the main module with `use lib 'lib'; use BluefinTecsMerchantServicesSDK;` — it
pulls in the config, features, and core modules for you. Require entity or
utility modules directly only when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const digitalservicesapi = client.DigitalServicesApi()
await digitalservicesapi.load()

// digitalservicesapi.data() now returns the digitalservicesapi data from the last `load`
// digitalservicesapi.match() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
