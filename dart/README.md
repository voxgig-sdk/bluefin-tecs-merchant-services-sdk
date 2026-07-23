# BluefinTecsMerchantServices Dart SDK



The Dart SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Dart conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.CancelTransaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to pub.dev. Add it as a git
dependency (pinned to a release tag `dart/vX.Y.Z`, see
[Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) in your `pubspec.yaml`:

```yaml
dependencies:
  bluefin_tecs_merchant_services_sdk:
    git:
      url: https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk
      path: dart
      ref: dart/v0.0.1
```

Or depend on a local source checkout:

```yaml
dependencies:
  bluefin_tecs_merchant_services_sdk:
    path: ../dart
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```dart
import 'dart:io';
import 'package:bluefin_tecs_merchant_services_sdk/BluefinTecsMerchantServicesSDK.dart';

final client = BluefinTecsMerchantServicesSDK({
  'apikey': Platform.environment['BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY'],
});
```

### 4. Create, update, and remove

```dart
// Create — returns the bare created record (a Map)
final created = await client.CancelTransaction().create({'client_id': 1, 'currency': 'example_currency', 'receipt_number': 'example_receipt_number', 'terminal_id': 1});

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

```dart
final result = await client.direct({
  'path': '/api/resource/{id}',
  'method': 'GET',
  'params': {'id': 'example'},
});

if (true == result['ok']) {
  print(result['status']);  // 200
  print(result['data']);    // response body
} else {
  // A non-2xx response carries status + data (the error body); a
  // transport-level failure carries err instead. direct() never throws —
  // branch on result['ok'].
  print(result['status']);
  print(result['err']);
}
```

### Prepare a request without sending it

```dart
// prepare() returns the fetch definition (or an error value on failure).
final fetchdef = await client.prepare({
  'path': '/api/resource/{id}',
  'method': 'DELETE',
  'params': {'id': 'example'},
});

print(fetchdef['url']);
print(fetchdef['method']);
print(fetchdef['headers']);
```

### Use test mode

Create a mock client for unit testing — no server required:

```dart
final client = BluefinTecsMerchantServicesSDK.test();

// Entity ops return the bare record and throw on error.
final digitalservicesapi = await client.DigitalServicesApi().load();
// digitalservicesapi contains the mock response record
print(digitalservicesapi);
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```dart
Future<dynamic> mockFetch(dynamic url, dynamic init) async {
  return {
    'status': 200,
    'statusText': 'OK',
    'headers': <String, dynamic>{},
    'json': () => {'id': 'mock01'},
  };
}

final client = BluefinTecsMerchantServicesSDK({
  'base': 'http://localhost:8080',
  'system': {
    'fetch': mockFetch,
  },
});
```

### Run live tests

Set the live-mode environment variables:

```bash
export BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
export BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd dart && dart run test/main.dart
```


## Reference

### BluefinTecsMerchantServicesSDK

```dart
import 'package:bluefin_tecs_merchant_services_sdk/BluefinTecsMerchantServicesSDK.dart';

final client = BluefinTecsMerchantServicesSDK(options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `Map` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Map` | System overrides (e.g. custom `fetch` function). |

### test

```dart
final client = BluefinTecsMerchantServicesSDK.test(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options` | `() -> Map` | Deep copy of current SDK options. |
| `utility` | `() -> Utility` | The SDK utility object. |
| `prepare` | `([fetchargs]) -> Future` | Build an HTTP request definition without sending. Returns an error value on failure. |
| `direct` | `([fetchargs]) -> Future<Map>` | Build and send an HTTP request. Returns a result map (branch on `ok`); never throws. |
| `CancelTransaction` | `([entopts]) -> CancelTransactionEntity` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `([entopts]) -> CheckCardBlackListedEntity` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `([entopts]) -> CreateProductEntity` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `([entopts]) -> DeactivateTerminalEntity` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `([entopts]) -> DigitalServicesApiEntity` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `([entopts]) -> EcDataEcomEntity` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `([entopts]) -> EcomParameterEntity` | Create an EcomParameter entity instance. |
| `EcrData` | `([entopts]) -> EcrDataEntity` | Create an EcrData entity instance. |
| `EmvData` | `([entopts]) -> EmvDataEntity` | Create an EmvData entity instance. |
| `EnableAcquiring` | `([entopts]) -> EnableAcquiringEntity` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `([entopts]) -> GetMerchantContractNumberEntity` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `([entopts]) -> GetTemplateXmlEntity` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `([entopts]) -> IntroduceMandatorEntity` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `([entopts]) -> IntroducePackageEntity` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `([entopts]) -> KeepAliveEntity` | Create a KeepAlive entity instance. |
| `ListTerminal` | `([entopts]) -> ListTerminalEntity` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `([entopts]) -> MandatorClearingExportEntity` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `([entopts]) -> MandatorClearingExportDownloadEntity` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `([entopts]) -> MandatorClearingExportSummaryEntity` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `([entopts]) -> MerchantPortalServicesApiEntity` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `([entopts]) -> MoveTidEntity` | Create a MoveTid entity instance. |
| `PaymentManual` | `([entopts]) -> PaymentManualEntity` | Create a PaymentManual entity instance. |
| `PaymentSred` | `([entopts]) -> PaymentSredEntity` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `([entopts]) -> PreAuthTransactionCompletionEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `([entopts]) -> ReactivateTerminalEntity` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `([entopts]) -> RefundTransactionEntity` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `([entopts]) -> RegisterTecsCompanyEntity` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `([entopts]) -> RegisterTerminalEntity` | Create a RegisterTerminal entity instance. |
| `ReportData` | `([entopts]) -> ReportDataEntity` | Create a ReportData entity instance. |
| `StatusTransaction` | `([entopts]) -> StatusTransactionEntity` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `([entopts]) -> StoreTerminalParameterEntity` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `([entopts]) -> TerminalIdEntity` | Create a TerminalId entity instance. |
| `TransactionHistory` | `([entopts]) -> TransactionHistoryEntity` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `([entopts]) -> TransactionsCountEntity` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `([entopts]) -> TransactionsCountCardBrandEntity` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `([entopts]) -> TransactionsTurnoverEntity` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `([entopts]) -> UpdateMerchantEntity` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `([entopts]) -> UpdateTemplateXmlEntity` | Create an UpdateTemplateXml entity instance. |
| `Version` | `([entopts]) -> VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, [ctrl]) -> Future<dynamic>` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, [ctrl]) -> Future<dynamic>` | Create a new entity. Throws on error. |
| `data` | `([d]) -> Map` | Get (or, with an argument, set) entity data. |
| `match` | `([m]) -> Map` | Get (or, with an argument, set) entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `entopts` | `() -> Map` | Return the entity options. |
| `Name` | `String` | The entity name (a public field). |

### Result shape

Entity operations return the bare result data (a `Map` for single-entity
ops, a `List` of entity instances for `list`) and throw on error. Wrap calls
in `try`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `Map` you
branch on via `result['ok']`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `dynamic` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

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

Create an instance: `final cancel_transaction = client.CancelTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```dart
final cancel_transaction = await client.CancelTransaction().create({
  'client_id': 1,  // int
  'currency': 'example_currency',  // String
  'receipt_number': 'example_receipt_number',  // String
  'terminal_id': 1,  // int
});
```


### CheckCardBlackListed

Create an instance: `final check_card_black_listed = client.CheckCardBlackListed();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |

#### Example: Create

```dart
final check_card_black_listed = await client.CheckCardBlackListed().create({
});
```


### CreateProduct

Create an instance: `final create_product = client.CreateProduct();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `int` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_type` | `String` |  |
| `template_xml` | `String` |  |
| `terminal_type` | `String` |  |

#### Example: Create

```dart
final create_product = await client.CreateProduct().create({
  'template_name': 'example_template_name',  // String
  'template_type': 'example_template_type',  // String
  'template_xml': 'example_template_xml',  // String
  'terminal_type': 'example_terminal_type',  // String
});
```


### DeactivateTerminal

Create an instance: `final deactivate_terminal = client.DeactivateTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `deactivation_reason` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```dart
final deactivate_terminal = await client.DeactivateTerminal().create({
  'deactivation_reason': 'example_deactivation_reason',  // String
  'terminal_id': 1,  // int
});
```


### DigitalServicesApi

Create an instance: `final digital_services_api = client.DigitalServicesApi();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `tx_count` | `int` |  |
| `tx_id_end` | `String` |  |
| `tx_id_start` | `String` |  |
| `tx_seq_no_end` | `int` |  |
| `tx_seq_no_start` | `int` |  |
| `tx_total` | `int` |  |

#### Example: Load

```dart
final digital_services_api = await client.DigitalServicesApi().load();
```

#### Example: Create

```dart
final digital_services_api = await client.DigitalServicesApi().create({
});
```


### EcDataEcom

Create an instance: `final ec_data_ecom = client.EcDataEcom();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```dart
final ec_data_ecom = await client.EcDataEcom().create({
  'terminal_id': 1,  // int
  'transaction_id': 'example_transaction_id',  // String
  'transaction_type': 'example_transaction_type',  // String
});
```


### EcomParameter

Create an instance: `final ecom_parameter = client.EcomParameter();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `String` |  |
| `ecom_skey` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```dart
final ecom_parameter = await client.EcomParameter().create({
  'terminal_id': 1,  // int
});
```


### EcrData

Create an instance: `final ecr_data = client.EcrData();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```dart
final ecr_data = await client.EcrData().create({
  'terminal_id': 1,  // int
  'transaction_id': 'example_transaction_id',  // String
  'transaction_type': 'example_transaction_type',  // String
});
```


### EmvData

Create an instance: `final emv_data = client.EmvData();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```dart
final emv_data = await client.EmvData().create({
  'terminal_id': 1,  // int
  'transaction_id': 'example_transaction_id',  // String
  'transaction_type': 'example_transaction_type',  // String
});
```


### EnableAcquiring

Create an instance: `final enable_acquiring = client.EnableAcquiring();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `int` |  |
| `additional_data` | `Map<String, dynamic>` |  |
| `corporate_uuid` | `String` |  |
| `currency` | `String` |  |
| `merchant_category_code` | `int` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `sorting_code` | `int` |  |
| `template_name` | `String` |  |
| `terminal_id` | `List<dynamic>` |  |
| `terminal_id_acq` | `String` |  |
| `vu_nummer` | `String` |  |

#### Example: Create

```dart
final enable_acquiring = await client.EnableAcquiring().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
  'currency': 'example_currency',  // String
  'merchant_category_code': 1,  // int
  'package_order_uuid': 'example_package_order_uuid',  // String
  'product_order_uuid': 'example_product_order_uuid',  // String
  'template_name': 'example_template_name',  // String
});
```


### GetMerchantContractNumber

Create an instance: `final get_merchant_contract_number = client.GetMerchantContractNumber();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |

#### Example: Create

```dart
final get_merchant_contract_number = await client.GetMerchantContractNumber().create({
  'merchant_contract_number': 'example_merchant_contract_number',  // String
});
```


### GetTemplateXml

Create an instance: `final get_template_xml = client.GetTemplateXml();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```dart
final get_template_xml = await client.GetTemplateXml().create({
  'template_name': 'example_template_name',  // String
});
```


### IntroduceMandator

Create an instance: `final introduce_mandator = client.IntroduceMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |

#### Example: Create

```dart
final introduce_mandator = await client.IntroduceMandator().create({
  'mandator_name': 'example_mandator_name',  // String
});
```


### IntroducePackage

Create an instance: `final introduce_package = client.IntroducePackage();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_template_description` | `String` |  |

#### Example: Create

```dart
final introduce_package = await client.IntroducePackage().create({
  'terminal_template_description': 'example_terminal_template_description',  // String
});
```


### KeepAlive

Create an instance: `final keep_alive = client.KeepAlive();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `ka_date_time_from` | `String` |  |
| `ka_date_time_to` | `String` |  |
| `keep_alive_data` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_date_time_from` | `String` |  |
| `terminal_date_time_to` | `String` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```dart
final keep_alive = await client.KeepAlive().create({
});
```


### ListTerminal

Create an instance: `final list_terminal = client.ListTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `List<dynamic>` |  |
| `filter` | `Map<String, dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal` | `List<dynamic>` |  |

#### Example: Create

```dart
final list_terminal = await client.ListTerminal().create({
});
```


### MandatorClearingExport

Create an instance: `final mandator_clearing_export = client.MandatorClearingExport();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `record` | `List<dynamic>` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |

#### Example: Create

```dart
final mandator_clearing_export = await client.MandatorClearingExport().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
});
```


### MandatorClearingExportDownload

Create an instance: `final mandator_clearing_export_download = client.MandatorClearingExportDownload();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `file_id` | `String` |  |
| `filename_template` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `status` | `String` |  |

#### Example: Load

```dart
final mandator_clearing_export_download = await client.MandatorClearingExportDownload().load({'id': 'mandator_clearing_export_download_id'});
```

#### Example: Create

```dart
final mandator_clearing_export_download = await client.MandatorClearingExportDownload().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
});
```


### MandatorClearingExportSummary

Create an instance: `final mandator_clearing_export_summary = client.MandatorClearingExportSummary();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `record` | `List<dynamic>` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |

#### Example: Create

```dart
final mandator_clearing_export_summary = await client.MandatorClearingExportSummary().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
});
```


### MerchantPortalServicesApi

Create an instance: `final merchant_portal_services_api = client.MerchantPortalServicesApi();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `String` |  |
| `authorization_code` | `String` |  |
| `card_brand` | `String` |  |
| `clearing_amount_from` | `String` |  |
| `clearing_amount_to` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_status` | `String` |  |
| `corporate_uuid` | `String` |  |
| `order_by_transaction_date` | `String` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `int` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```dart
final merchant_portal_services_api = await client.MerchantPortalServicesApi().create({
});
```


### MoveTid

Create an instance: `final move_tid = client.MoveTid();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `List<dynamic>` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `target_packageorderuuid` | `String` |  |
| `target_productorderuuid` | `String` |  |

#### Example: Create

```dart
final move_tid = await client.MoveTid().create({
  'productorderuuid': <dynamic>[],  // List<dynamic>
});
```


### PaymentManual

Create an instance: `final payment_manual = client.PaymentManual();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `int` |  |
| `authorization_number` | `String` |  |
| `card_number` | `String` |  |
| `card_type` | `String` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `date_time_tx` | `String` |  |
| `exp_date` | `String` |  |
| `merchant_id` | `String` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `response_code` | `String` |  |
| `response_message` | `String` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```dart
final payment_manual = await client.PaymentManual().create({
  'amount': 1,  // int
  'card_number': 'example_card_number',  // String
  'currency': 'example_currency',  // String
  'exp_date': 'example_exp_date',  // String
  'txtype': 'example_txtype',  // String
});
```


### PaymentSred

Create an instance: `final payment_sred = client.PaymentSred();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `int` |  |
| `authorization_number` | `String` |  |
| `card_type` | `String` |  |
| `currency` | `String` |  |
| `date_time_tx` | `String` |  |
| `device_payload` | `String` |  |
| `merchant_id` | `String` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `response_code` | `String` |  |
| `response_message` | `String` |  |
| `sred` | `Map<String, dynamic>` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```dart
final payment_sred = await client.PaymentSred().create({
  'amount': 1,  // int
  'currency': 'example_currency',  // String
  'device_payload': 'example_device_payload',  // String
  'txtype': 'example_txtype',  // String
});
```


### PreAuthTransactionCompletion

Create an instance: `final pre_auth_transaction_completion = client.PreAuthTransactionCompletion();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `card_number_reference` | `String` |  |
| `client_id` | `int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```dart
final pre_auth_transaction_completion = await client.PreAuthTransactionCompletion().create({
  'card_number_reference': 'example_card_number_reference',  // String
  'client_id': 1,  // int
  'currency': 'example_currency',  // String
  'receipt_number': 'example_receipt_number',  // String
  'terminal_id': 1,  // int
  'transaction_type': 'example_transaction_type',  // String
});
```


### ReactivateTerminal

Create an instance: `final reactivate_terminal = client.ReactivateTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `reactivation_reason` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```dart
final reactivate_terminal = await client.ReactivateTerminal().create({
  'reactivation_reason': 'example_reactivation_reason',  // String
  'terminal_id': 1,  // int
});
```


### RefundTransaction

Create an instance: `final refund_transaction = client.RefundTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```dart
final refund_transaction = await client.RefundTransaction().create({
  'client_id': 1,  // int
  'currency': 'example_currency',  // String
  'receipt_number': 'example_receipt_number',  // String
  'terminal_id': 1,  // int
});
```


### RegisterTecsCompany

Create an instance: `final register_tecs_company = client.RegisterTecsCompany();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `partner_id` | `int` |  |
| `partner_name` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```dart
final register_tecs_company = await client.RegisterTecsCompany().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
  'package_order_uuid': 'example_package_order_uuid',  // String
  'product_order_uuid': 'example_product_order_uuid',  // String
  'template_name': 'example_template_name',  // String
});
```


### RegisterTerminal

Create an instance: `final register_terminal = client.RegisterTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `Map<String, dynamic>` |  |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `tecs_web_secret_key` | `String` |  |
| `template_name` | `String` |  |
| `terminal_country_code` | `String` |  |
| `terminal_id` | `int` |  |
| `terminal_id_acq` | `String` |  |
| `terminal_language_code` | `String` |  |
| `terminal_location` | `String` |  |
| `terminal_serial_number` | `String` |  |
| `token_io_alia` | `String` |  |
| `token_io_iban` | `String` |  |
| `token_io_member_id` | `String` |  |
| `web_shop_url` | `String` |  |

#### Example: Create

```dart
final register_terminal = await client.RegisterTerminal().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
  'package_order_uuid': 'example_package_order_uuid',  // String
  'product_order_uuid': 'example_product_order_uuid',  // String
  'template_name': 'example_template_name',  // String
  'terminal_country_code': 'example_terminal_country_code',  // String
  'terminal_language_code': 'example_terminal_language_code',  // String
  'terminal_location': 'example_terminal_location',  // String
});
```


### ReportData

Create an instance: `final report_data = client.ReportData();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `List<dynamic>` |  |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `corporate_id` | `String` |  |
| `currency` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `sum_over_credit_tx` | `Map<String, dynamic>` |  |
| `sum_over_debit_tx` | `Map<String, dynamic>` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```dart
final report_data = await client.ReportData().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
  'corporate_id': 'example_corporate_id',  // String
  'currency': 'example_currency',  // String
});
```


### StatusTransaction

Create an instance: `final status_transaction = client.StatusTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `acquirer_terminal_id` | `String` |  |
| `amount` | `int` |  |
| `application_cryptogram` | `String` |  |
| `authorization_code` | `dynamic` |  |
| `authorization_date` | `String` |  |
| `card_brand` | `String` |  |
| `card_entry` | `String` |  |
| `card_expiration` | `String` |  |
| `card_number` | `String` |  |
| `clearing_amount` | `int` |  |
| `clearing_batch_id` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_date` | `String` |  |
| `clearing_processed_date` | `String` |  |
| `clearing_status` | `String` |  |
| `client_id` | `int` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_application_id` | `String` |  |
| `emv_application_label` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `original_client_id` | `String` |  |
| `original_terminal_id` | `int` |  |
| `original_transaction_id` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_number` | `String` |  |
| `response_code` | `int` |  |
| `response_code_from_a` | `String` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `service_code` | `String` |  |
| `settlement_status` | `String` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code` | `int` |  |
| `tecsengine_response_text` | `String` |  |
| `terminal_end_of_day_date` | `String` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `String` |  |
| `tip_amount` | `int` |  |
| `trace_number` | `int` |  |
| `transaction_clearing_date` | `String` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_seq_number` | `int` |  |
| `transaction_server_date` | `String` |  |
| `transaction_source` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```dart
final status_transaction = await client.StatusTransaction().create({
});
```


### StoreTerminalParameter

Create an instance: `final store_terminal_parameter = client.StoreTerminalParameter();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `Map<String, dynamic>` |  |
| `config_version` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `tid_sent` | `String` |  |

#### Example: Create

```dart
final store_terminal_parameter = await client.StoreTerminalParameter().create({
  'serial_number': 'example_serial_number',  // String
});
```


### TerminalId

Create an instance: `final terminal_id = client.TerminalId();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `List<dynamic>` |  |
| `duplicate_terminal_id` | `List<dynamic>` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `terminal` | `List<dynamic>` |  |

#### Example: Create

```dart
final terminal_id = await client.TerminalId().create({
  'device_serial_number': <dynamic>[],  // List<dynamic>
});
```


### TransactionHistory

Create an instance: `final transaction_history = client.TransactionHistory();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `String` |  |
| `authorization_code` | `String` |  |
| `card_brand` | `String` |  |
| `clearing_amount_from` | `String` |  |
| `clearing_amount_to` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_status` | `String` |  |
| `corporate_uuid` | `String` |  |
| `order_by_transaction_date` | `String` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `payment_token_public_id` | `String` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `int` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_history` | `List<dynamic>` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```dart
final transaction_history = await client.TransactionHistory().create({
});
```


### TransactionsCount

Create an instance: `final transactions_count = client.TransactionsCount();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `List<dynamic>` |  |

#### Example: Create

```dart
final transactions_count = await client.TransactionsCount().create({
});
```


### TransactionsCountCardBrand

Create an instance: `final transactions_count_card_brand = client.TransactionsCountCardBrand();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `List<dynamic>` |  |

#### Example: Create

```dart
final transactions_count_card_brand = await client.TransactionsCountCardBrand().create({
});
```


### TransactionsTurnover

Create an instance: `final transactions_turnover = client.TransactionsTurnover();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `turnover` | `List<dynamic>` |  |

#### Example: Create

```dart
final transactions_turnover = await client.TransactionsTurnover().create({
});
```


### UpdateMerchant

Create an instance: `final update_merchant = client.UpdateMerchant();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporate_uuid` | `String` |  |
| `country` | `String` |  |
| `merchant_category_code` | `String` |  |
| `name` | `String` |  |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vu_nummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```dart
final update_merchant = await client.UpdateMerchant().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
});
```


### UpdateTemplateXml

Create an instance: `final update_template_xml = client.UpdateTemplateXml();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_xml` | `String` |  |

#### Example: Create

```dart
final update_template_xml = await client.UpdateTemplateXml().create({
  'template_name': 'example_template_name',  // String
  'template_xml': 'example_template_xml',  // String
});
```


### Version

Create an instance: `final version = client.Version();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```dart
final version = await client.Version().load();
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

### Maps in, typed models alongside

The Dart SDK passes plain `Map<String, dynamic>` values through the
operation pipeline rather than requiring typed objects at every call. This
mirrors the dynamic nature of the API and keeps calls terse — a create is
just `create({'name': 'example'})`.

For a typed, documented view of each entity and operation, the generated
`BluefinTecsMerchantServicesTypes.dart` provides a class per entity plus per-op request/match
classes (e.g. `BluefinTecsMerchantServices.fromMap(entity.data())` and `model.toMap()`), so you
can convert to and from those maps wherever you want compile-time structure.

### Package structure

```
dart/
├── lib/
│   ├── BluefinTecsMerchantServicesSDK.dart          -- Main SDK library (exported entry point)
│   ├── BluefinTecsMerchantServicesTypes.dart        -- Typed entity + request/match models
│   ├── BluefinTecsMerchantServicesEntityBase.dart   -- Base class for entities
│   ├── BluefinTecsMerchantServicesError.dart        -- SDK error type
│   ├── Config.dart              -- Configuration
│   ├── entity/                  -- Entity implementations
│   ├── feature/                 -- Built-in features (base, test, log, ...)
│   └── utility/                 -- Utility functions and vendored struct library
└── test/                        -- Test suites (dart run test/main.dart)
```

The main library (`BluefinTecsMerchantServicesSDK.dart`) re-exports the SDK class, the typed
models, and every entity class, so a single
`import 'package:bluefin_tecs_merchant_services_sdk/BluefinTecsMerchantServicesSDK.dart';`
brings in everything you need.

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
