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
      ref: dart/v0.1.1
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
// Create — returns the ENTITY (call data() for the record)
final created = await client.CancelTransaction().create({'clientId': 1, 'currency': 'example_currency', 'receiptNumber': 'example_receiptNumber', 'terminalId': 1});

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

// Entity ops return the ENTITY and throws on error;
// call data() for the record.
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

Entity operations return the ENTITY (call data() for the record) (a `Map` for single-entity
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
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `cardNo` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateType` |  |
| `templateXml` |  |
| `terminalType` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `deactivationReason` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` |  |
| `responseMessage` |  |
| `txCount` |  |
| `txIdEnd` |  |
| `txIdStart` |  |
| `txSeqNoEnd` |  |
| `txSeqNoStart` |  |
| `txTotal` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `ecomData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecomPass` |  |
| `ecomSkey` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `ecrData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `emvData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `accountNo` |  |
| `additionalData` |  |
| `corporateUuid` |  |
| `currency` |  |
| `merchantCategoryCode` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sortingCode` |  |
| `templateName` |  |
| `terminalIdAcq` |  |
| `terminalIds` |  |
| `vuNummer` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchantContractNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalTemplateDescription` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `hwserialno` |  |
| `kaDateTimeFrom` |  |
| `kaDateTimeTo` |  |
| `keepAliveData` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalDateTimeFrom` |  |
| `terminalDateTimeTo` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `filter` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` |  |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Start date for clearing export (inclusive) |
| `clearingDateTo` | End date for clearing export (inclusive) |
| `fileId` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | Optional filename template for the export file |
| `id` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `status` | Processing status of the export request |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `3DSecure` |  |
| `authorizationCode` |  |
| `cardBrand` |  |
| `clearingAmountFrom` |  |
| `clearingAmountTo` |  |
| `clearingCurrency` |  |
| `clearingStatus` |  |
| `corporateUUID` |  |
| `orderByTransactionDate` |  |
| `pagination` |  |
| `receiptNumber` |  |
| `referencedTransactionId` |  |
| `retrievalReferenceNumber` |  |
| `sourceId` |  |
| `tecsengineResponseCodeFrom` |  |
| `tecsengineResponseCodeTo` |  |
| `terminalId` |  |
| `traceNumber` |  |
| `transactionAmountFrom` |  |
| `transactionAmountTo` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionId` |  |
| `transactionType` |  |
| `wallet` | Filter by wallet type. |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuids` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `targetPackageorderuuid` |  |
| `targetProductorderuuid` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `acquirerName` | Acquirer name parsed from KKG field |
| `amount` | Transaction amount in minor units (cents) |
| `authorizationNumber` | Authorization number from the gateway |
| `cardNumber` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | Card type parsed from KKG field |
| `currency` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | Date and time of the transaction |
| `expDate` | Card expiry date in MMYY format |
| `merchantId` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | Original transaction ID from gateway |
| `password` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | Response code - 00 for success, otherwise error code |
| `responseMessage` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | Terminal ID used for the transaction |
| `transactionId` | Transaction ID generated by the backend |
| `txtype` | Transaction type |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `amount` | Transaction amount in minor units (cents) |
| `currency` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | Device type that provided the SRED payload |
| `devicePayload` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | Card expiry date in MMYY format |
| `mode` | Decryption mode |
| `panMasked` | Masked PAN (first 6 and last 4 digits) |
| `password` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | Device serial number |
| `serviceCode` | Service code from the card |
| `terminalId` | Terminal ID - 8 digits |
| `txtype` | Transaction type |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `cardNumberReference` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `transactionType` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `reactivationReason` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `partnerId` |  |
| `partnerName` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `additionalData` |  |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `tecsWebSecretKey` |  |
| `templateName` |  |
| `terminalCountryCode` |  |
| `terminalId` |  |
| `terminalIdAcq` |  |
| `terminalLanguageCode` |  |
| `terminalLocation` |  |
| `terminalSerialNumber` |  |
| `tokenIOAlias` |  |
| `tokenIOIban` |  |
| `tokenIOMemberId` |  |
| `webShopUrl` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `cardBrandReportData` |  |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` |  |
| `currency` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sumOverCreditTx` |  |
| `sumOverDebitTx` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `acquirerName` |  |
| `acquirerTerminalId` |  |
| `amount` |  |
| `applicationCryptogram` |  |
| `authorizationCode` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` |  |
| `cardBrand` |  |
| `cardEntry` |  |
| `cardExpiration` |  |
| `cardNumber` |  |
| `clearingAmount` |  |
| `clearingBatchId` |  |
| `clearingCurrency` |  |
| `clearingDate` |  |
| `clearingProcessedDate` |  |
| `clearingStatus` |  |
| `clientId` |  |
| `currency` |  |
| `cvm` |  |
| `ecrData` |  |
| `emvApplicationId` |  |
| `emvApplicationLabel` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `originalClientId` |  |
| `originalTerminalId` |  |
| `originalTransactionId` |  |
| `paymentReason` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseCodeFromAS` |  |
| `responseMessage` |  |
| `retrievalReferenceNumber` |  |
| `serviceCode` |  |
| `settlementStatus` |  |
| `sourceId` |  |
| `tecsengineResponseCode` |  |
| `tecsengineResponseText` |  |
| `terminalEndOfDayDate` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `tipAmount` |  |
| `traceNumber` |  |
| `transactionClearingDate` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `transactionSeqNumber` |  |
| `transactionServerDate` |  |
| `transactionSource` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `acqTabNexo` |  |
| `configVersion` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `tidSent` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `deviceSerialNumber` |  |
| `duplicateTerminalIds` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `3DSecure` |  |
| `authorizationCode` |  |
| `cardBrand` |  |
| `clearingAmountFrom` |  |
| `clearingAmountTo` |  |
| `clearingCurrency` |  |
| `clearingStatus` |  |
| `corporateUUID` |  |
| `orderByTransactionDate` |  |
| `pagination` |  |
| `paymentTokenPublicId` |  |
| `receiptNumber` |  |
| `referencedTransactionId` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `retrievalReferenceNumber` |  |
| `sourceId` |  |
| `tecsengineResponseCodeFrom` |  |
| `tecsengineResponseCodeTo` |  |
| `terminalId` |  |
| `traceNumber` |  |
| `transactionAmountFrom` |  |
| `transactionAmountTo` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionHistories` |  |
| `transactionId` |  |
| `transactionType` |  |
| `wallet` | Filter by wallet type. |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionsCount` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionsCount` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `turnovers` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `city` |  |
| `corporateUuid` |  |
| `country` |  |
| `merchantCategoryCode` |  |
| `name` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `state` |  |
| `street` |  |
| `vuNummer` |  |
| `zipcode` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateXml` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
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
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```dart
final cancel_transaction = await client.CancelTransaction().create({
  'clientId': 1,  // int
  'currency': 'example_currency',  // String
  'receiptNumber': 'example_receiptNumber',  // String
  'terminalId': 1,  // int
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
| `cardNo` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

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
| `acquirerId` | `int` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateType` | `String` |  |
| `templateXml` | `String` |  |
| `terminalType` | `String` |  |

#### Example: Create

```dart
final create_product = await client.CreateProduct().create({
  'templateName': 'example_templateName',  // String
  'templateType': 'example_templateType',  // String
  'templateXml': 'example_templateXml',  // String
  'terminalType': 'example_terminalType',  // String
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
| `corporateUuid` | `String` |  |
| `deactivationReason` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `int` |  |

#### Example: Create

```dart
final deactivate_terminal = await client.DeactivateTerminal().create({
  'deactivationReason': 'example_deactivationReason',  // String
  'terminalId': 1,  // int
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
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `txCount` | `int` |  |
| `txIdEnd` | `String` |  |
| `txIdStart` | `String` |  |
| `txSeqNoEnd` | `int` |  |
| `txSeqNoStart` | `int` |  |
| `txTotal` | `int` |  |

#### Example: Load

```dart
final digital_services_api = await client.DigitalServicesApi().load();
```

#### Example: Create

```dart
final digital_services_api = await client.DigitalServicesApi().create({
  'file_id': 'example_file_id',  // String
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `ecomData` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```dart
final ec_data_ecom = await client.EcDataEcom().create({
  'terminalId': 1,  // int
  'transactionId': 'example_transactionId',  // String
  'transactionType': 'example_transactionType',  // String
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
| `ecomPass` | `String` |  |
| `ecomSkey` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `int` |  |

#### Example: Create

```dart
final ecom_parameter = await client.EcomParameter().create({
  'terminalId': 1,  // int
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
| `ecrData` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```dart
final ecr_data = await client.EcrData().create({
  'terminalId': 1,  // int
  'transactionId': 'example_transactionId',  // String
  'transactionType': 'example_transactionType',  // String
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
| `emvData` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```dart
final emv_data = await client.EmvData().create({
  'terminalId': 1,  // int
  'transactionId': 'example_transactionId',  // String
  'transactionType': 'example_transactionType',  // String
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
| `accountNo` | `int` |  |
| `additionalData` | `Map<String, dynamic>` |  |
| `corporateUuid` | `String` |  |
| `currency` | `String` |  |
| `merchantCategoryCode` | `int` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `sortingCode` | `int` |  |
| `templateName` | `String` |  |
| `terminalIdAcq` | `String` |  |
| `terminalIds` | `List<dynamic>` |  |
| `vuNummer` | `String` |  |

#### Example: Create

```dart
final enable_acquiring = await client.EnableAcquiring().create({
  'corporateUuid': 'example_corporateUuid',  // String
  'currency': 'example_currency',  // String
  'merchantCategoryCode': 1,  // int
  'packageOrderUuid': 'example_packageOrderUuid',  // String
  'productOrderUuid': 'example_productOrderUuid',  // String
  'templateName': 'example_templateName',  // String
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
| `merchantContractNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final get_merchant_contract_number = await client.GetMerchantContractNumber().create({
  'merchantContractNumber': 'example_merchantContractNumber',  // String
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
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```dart
final get_template_xml = await client.GetTemplateXml().create({
  'templateName': 'example_templateName',  // String
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
| `mandatorName` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final introduce_mandator = await client.IntroduceMandator().create({
  'mandatorName': 'example_mandatorName',  // String
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
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalTemplateDescription` | `String` |  |

#### Example: Create

```dart
final introduce_package = await client.IntroducePackage().create({
  'terminalTemplateDescription': 'example_terminalTemplateDescription',  // String
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
| `kaDateTimeFrom` | `String` |  |
| `kaDateTimeTo` | `String` |  |
| `keepAliveData` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalDateTimeFrom` | `String` |  |
| `terminalDateTimeTo` | `String` |  |
| `terminalId` | `int` |  |

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
| `corporateUuid` | `List<dynamic>` |  |
| `filter` | `Map<String, dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminals` | `List<dynamic>` |  |

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
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Map<String, dynamic>` |  |
| `records` | `List<dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final mandator_clearing_export = await client.MandatorClearingExport().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `clearingDateFrom` | `String` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | End date for clearing export (inclusive) |
| `fileId` | `String` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | Optional filename template for the export file |
| `id` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `status` | `String` | Processing status of the export request |

#### Example: Load

```dart
final mandator_clearing_export_download = await client.MandatorClearingExportDownload().load({'id': 'mandator_clearing_export_download_id'});
```

#### Example: Create

```dart
final mandator_clearing_export_download = await client.MandatorClearingExportDownload().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `List<dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final mandator_clearing_export_summary = await client.MandatorClearingExportSummary().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `3DSecure` | `String` |  |
| `authorizationCode` | `String` |  |
| `cardBrand` | `String` |  |
| `clearingAmountFrom` | `String` |  |
| `clearingAmountTo` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingStatus` | `String` |  |
| `corporateUUID` | `String` |  |
| `orderByTransactionDate` | `String` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `int` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

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
| `productorderuuids` | `List<dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `targetPackageorderuuid` | `String` |  |
| `targetProductorderuuid` | `String` |  |

#### Example: Create

```dart
final move_tid = await client.MoveTid().create({
  'productorderuuids': <dynamic>[],  // List<dynamic>
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
| `acquirerName` | `String` | Acquirer name parsed from KKG field |
| `amount` | `int` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `String` | Authorization number from the gateway |
| `cardNumber` | `String` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `String` | Card type parsed from KKG field |
| `currency` | `String` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `String` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `String` | Date and time of the transaction |
| `expDate` | `String` | Card expiry date in MMYY format |
| `merchantId` | `String` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `String` | Original transaction ID from gateway |
| `password` | `String` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `String` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `String` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `String` | Terminal ID used for the transaction |
| `transactionId` | `String` | Transaction ID generated by the backend |
| `txtype` | `String` | Transaction type |

#### Example: Create

```dart
final payment_manual = await client.PaymentManual().create({
  'amount': 1,  // int
  'cardNumber': 'example_cardNumber',  // String
  'currency': 'example_currency',  // String
  'expDate': 'example_expDate',  // String
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
| `amount` | `int` | Transaction amount in minor units (cents) |
| `currency` | `String` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `String` | Device type that provided the SRED payload |
| `devicePayload` | `String` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `String` | Card expiry date in MMYY format |
| `mode` | `String` | Decryption mode |
| `panMasked` | `String` | Masked PAN (first 6 and last 4 digits) |
| `password` | `String` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `String` | Device serial number |
| `serviceCode` | `String` | Service code from the card |
| `terminalId` | `String` | Terminal ID - 8 digits |
| `txtype` | `String` | Transaction type |

#### Example: Create

```dart
final payment_sred = await client.PaymentSred().create({
  'amount': 1,  // int
  'currency': 'example_currency',  // String
  'devicePayload': 'example_devicePayload',  // String
  'terminalId': 'example_terminalId',  // String
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
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `cardNumberReference` | `String` |  |
| `clientId` | `int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```dart
final pre_auth_transaction_completion = await client.PreAuthTransactionCompletion().create({
  'cardNumberReference': 'example_cardNumberReference',  // String
  'clientId': 1,  // int
  'currency': 'example_currency',  // String
  'receiptNumber': 'example_receiptNumber',  // String
  'terminalId': 1,  // int
  'transactionType': 'example_transactionType',  // String
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
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `reactivationReason` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `int` |  |

#### Example: Create

```dart
final reactivate_terminal = await client.ReactivateTerminal().create({
  'reactivationReason': 'example_reactivationReason',  // String
  'terminalId': 1,  // int
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
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```dart
final refund_transaction = await client.RefundTransaction().create({
  'clientId': 1,  // int
  'currency': 'example_currency',  // String
  'receiptNumber': 'example_receiptNumber',  // String
  'terminalId': 1,  // int
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
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `partnerId` | `int` |  |
| `partnerName` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```dart
final register_tecs_company = await client.RegisterTecsCompany().create({
  'corporateUuid': 'example_corporateUuid',  // String
  'packageOrderUuid': 'example_packageOrderUuid',  // String
  'productOrderUuid': 'example_productOrderUuid',  // String
  'templateName': 'example_templateName',  // String
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
| `additionalData` | `Map<String, dynamic>` |  |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `tecsWebSecretKey` | `String` |  |
| `templateName` | `String` |  |
| `terminalCountryCode` | `String` |  |
| `terminalId` | `int` |  |
| `terminalIdAcq` | `String` |  |
| `terminalLanguageCode` | `String` |  |
| `terminalLocation` | `String` |  |
| `terminalSerialNumber` | `String` |  |
| `tokenIOAlias` | `String` |  |
| `tokenIOIban` | `String` |  |
| `tokenIOMemberId` | `String` |  |
| `webShopUrl` | `String` |  |

#### Example: Create

```dart
final register_terminal = await client.RegisterTerminal().create({
  'corporateUuid': 'example_corporateUuid',  // String
  'packageOrderUuid': 'example_packageOrderUuid',  // String
  'productOrderUuid': 'example_productOrderUuid',  // String
  'templateName': 'example_templateName',  // String
  'terminalCountryCode': 'example_terminalCountryCode',  // String
  'terminalLanguageCode': 'example_terminalLanguageCode',  // String
  'terminalLocation': 'example_terminalLocation',  // String
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
| `cardBrandReportData` | `List<dynamic>` |  |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` |  |
| `currency` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `sumOverCreditTx` | `Map<String, dynamic>` |  |
| `sumOverDebitTx` | `Map<String, dynamic>` |  |
| `terminalId` | `int` |  |

#### Example: Create

```dart
final report_data = await client.ReportData().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
  'corporateId': 'example_corporateId',  // String
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
| `acquirerName` | `String` |  |
| `acquirerTerminalId` | `String` |  |
| `amount` | `int` |  |
| `applicationCryptogram` | `String` |  |
| `authorizationCode` | `dynamic` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` |  |
| `cardBrand` | `String` |  |
| `cardEntry` | `String` |  |
| `cardExpiration` | `String` |  |
| `cardNumber` | `String` |  |
| `clearingAmount` | `int` |  |
| `clearingBatchId` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingDate` | `String` |  |
| `clearingProcessedDate` | `String` |  |
| `clearingStatus` | `String` |  |
| `clientId` | `int` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecrData` | `String` |  |
| `emvApplicationId` | `String` |  |
| `emvApplicationLabel` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `originalClientId` | `String` |  |
| `originalTerminalId` | `int` |  |
| `originalTransactionId` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseCodeFromAS` | `String` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `serviceCode` | `String` |  |
| `settlementStatus` | `String` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCode` | `int` |  |
| `tecsengineResponseText` | `String` |  |
| `terminalEndOfDayDate` | `String` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `String` |  |
| `tipAmount` | `int` |  |
| `traceNumber` | `int` |  |
| `transactionClearingDate` | `String` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionSeqNumber` | `int` |  |
| `transactionServerDate` | `String` |  |
| `transactionSource` | `String` |  |
| `transactionType` | `String` |  |

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
| `acqTabNexo` | `Map<String, dynamic>` |  |
| `configVersion` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `tidSent` | `String` |  |

#### Example: Create

```dart
final store_terminal_parameter = await client.StoreTerminalParameter().create({
  'serialNumber': 'example_serialNumber',  // String
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
| `deviceSerialNumber` | `List<dynamic>` |  |
| `duplicateTerminalIds` | `List<dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `terminals` | `List<dynamic>` |  |

#### Example: Create

```dart
final terminal_id = await client.TerminalId().create({
  'deviceSerialNumber': <dynamic>[],  // List<dynamic>
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
| `3DSecure` | `String` |  |
| `authorizationCode` | `String` |  |
| `cardBrand` | `String` |  |
| `clearingAmountFrom` | `String` |  |
| `clearingAmountTo` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingStatus` | `String` |  |
| `corporateUUID` | `String` |  |
| `orderByTransactionDate` | `String` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `paymentTokenPublicId` | `String` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `int` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionHistories` | `List<dynamic>` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

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
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `List<dynamic>` |  |

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
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `List<dynamic>` |  |

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
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `turnovers` | `List<dynamic>` |  |

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
| `corporateUuid` | `String` |  |
| `country` | `String` |  |
| `merchantCategoryCode` | `String` |  |
| `name` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vuNummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```dart
final update_merchant = await client.UpdateMerchant().create({
  'corporateUuid': 'example_corporateUuid',  // String
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
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateXml` | `String` |  |

#### Example: Create

```dart
final update_template_xml = await client.UpdateTemplateXml().create({
  'templateName': 'example_templateName',  // String
  'templateXml': 'example_templateXml',  // String
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
| `appName` | `String` |  |
| `buildDate` | `String` |  |
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
