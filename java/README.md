# BluefinTecsMerchantServices Java SDK



The Java SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Java conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.cancelTransaction(null)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Maven Central. Install it from the GitHub
release tag (`java/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout — build the library with Maven:

```bash
cd java && mvn install
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```java
import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK;

Map<String, Object> options = new java.util.LinkedHashMap<>();
options.put("apikey", System.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"));
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

### 4. Create, update, and remove

```java
// Create — returns the ENTITY (call data() for the record)
Object created = client.cancelTransaction(null).create(Map.of("clientId", 1L, "currency", "example_currency", "receiptNumber", "example_receiptNumber", "terminalId", 1L), null);

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

```java
Map<String, Object> result = client.direct(Map.of(
    "path", "/api/resource/{id}",
    "method", "GET",
    "params", Map.of("id", "example")));

if (Boolean.TRUE.equals(result.get("ok"))) {
    System.out.println(result.get("status"));  // 200
    System.out.println(result.get("data"));    // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both — an absent key simply reads as null.
    System.out.println(result.get("status") + " " + result.get("err"));
}
```

### Prepare a request without sending it

```java
// prepare() returns the fetch definition and raises on error.
Map<String, Object> fetchdef = client.prepare(Map.of(
    "path", "/api/resource/{id}",
    "method", "DELETE",
    "params", Map.of("id", "example")));

System.out.println(fetchdef.get("url"));
System.out.println(fetchdef.get("method"));
System.out.println(fetchdef.get("headers"));
```

### Use test mode

Create a mock client for unit testing — no server required:

```java
BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(null, null);

// Entity ops return the ENTITY and raises on error;
// call data() for the record.
Object digitalServicesApi = client.digitalServicesApi(null).load(null, null);
// digitalServicesApi holds the mock response record
System.out.println(digitalServicesApi);
```

### Use a custom fetch function

Replace the HTTP transport with your own `BiFunction`:

```java
java.util.function.BiFunction<String, Map<String, Object>, Object> mockFetch =
    (url, init) -> {
        Map<String, Object> res = new java.util.LinkedHashMap<>();
        res.put("status", 200);
        res.put("statusText", "OK");
        res.put("headers", new java.util.LinkedHashMap<String, Object>());
        res.put("json", (java.util.function.Supplier<Object>) () ->
            Map.of("id", "mock01"));
        return res;
    };

Map<String, Object> options = new java.util.LinkedHashMap<>();
options.put("base", "http://localhost:8080");
options.put("system", Map.of("fetch", mockFetch));
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd java && mvn test
```


## Reference

### BluefinTecsMerchantServicesSDK

```java
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

Creates a new SDK client. `options` is a `Map<String, Object>`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `Map` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Map` | System overrides (e.g. custom `fetch` function). |

### testSDK

```java
BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> Map` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> Map` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> Map` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `cancelTransaction` | `(entopts) -> SdkEntity` | Create a CancelTransaction entity instance. |
| `checkCardBlackListed` | `(entopts) -> SdkEntity` | Create a CheckCardBlackListed entity instance. |
| `createProduct` | `(entopts) -> SdkEntity` | Create a CreateProduct entity instance. |
| `deactivateTerminal` | `(entopts) -> SdkEntity` | Create a DeactivateTerminal entity instance. |
| `digitalServicesApi` | `(entopts) -> SdkEntity` | Create a DigitalServicesApi entity instance. |
| `ecDataEcom` | `(entopts) -> SdkEntity` | Create an EcDataEcom entity instance. |
| `ecomParameter` | `(entopts) -> SdkEntity` | Create an EcomParameter entity instance. |
| `ecrData` | `(entopts) -> SdkEntity` | Create an EcrData entity instance. |
| `emvData` | `(entopts) -> SdkEntity` | Create an EmvData entity instance. |
| `enableAcquiring` | `(entopts) -> SdkEntity` | Create an EnableAcquiring entity instance. |
| `getMerchantContractNumber` | `(entopts) -> SdkEntity` | Create a GetMerchantContractNumber entity instance. |
| `getTemplateXml` | `(entopts) -> SdkEntity` | Create a GetTemplateXml entity instance. |
| `introduceMandator` | `(entopts) -> SdkEntity` | Create an IntroduceMandator entity instance. |
| `introducePackage` | `(entopts) -> SdkEntity` | Create an IntroducePackage entity instance. |
| `keepAlive` | `(entopts) -> SdkEntity` | Create a KeepAlive entity instance. |
| `listTerminal` | `(entopts) -> SdkEntity` | Create a ListTerminal entity instance. |
| `mandatorClearingExport` | `(entopts) -> SdkEntity` | Create a MandatorClearingExport entity instance. |
| `mandatorClearingExportDownload` | `(entopts) -> SdkEntity` | Create a MandatorClearingExportDownload entity instance. |
| `mandatorClearingExportSummary` | `(entopts) -> SdkEntity` | Create a MandatorClearingExportSummary entity instance. |
| `merchantPortalServicesApi` | `(entopts) -> SdkEntity` | Create a MerchantPortalServicesApi entity instance. |
| `moveTid` | `(entopts) -> SdkEntity` | Create a MoveTid entity instance. |
| `paymentManual` | `(entopts) -> SdkEntity` | Create a PaymentManual entity instance. |
| `paymentSred` | `(entopts) -> SdkEntity` | Create a PaymentSred entity instance. |
| `preAuthTransactionCompletion` | `(entopts) -> SdkEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivateTerminal` | `(entopts) -> SdkEntity` | Create a ReactivateTerminal entity instance. |
| `refundTransaction` | `(entopts) -> SdkEntity` | Create a RefundTransaction entity instance. |
| `registerTecsCompany` | `(entopts) -> SdkEntity` | Create a RegisterTecsCompany entity instance. |
| `registerTerminal` | `(entopts) -> SdkEntity` | Create a RegisterTerminal entity instance. |
| `reportData` | `(entopts) -> SdkEntity` | Create a ReportData entity instance. |
| `statusTransaction` | `(entopts) -> SdkEntity` | Create a StatusTransaction entity instance. |
| `storeTerminalParameter` | `(entopts) -> SdkEntity` | Create a StoreTerminalParameter entity instance. |
| `terminalId` | `(entopts) -> SdkEntity` | Create a TerminalId entity instance. |
| `transactionHistory` | `(entopts) -> SdkEntity` | Create a TransactionHistory entity instance. |
| `transactionsCount` | `(entopts) -> SdkEntity` | Create a TransactionsCount entity instance. |
| `transactionsCountCardBrand` | `(entopts) -> SdkEntity` | Create a TransactionsCountCardBrand entity instance. |
| `transactionsTurnover` | `(entopts) -> SdkEntity` | Create a TransactionsTurnover entity instance. |
| `updateMerchant` | `(entopts) -> SdkEntity` | Create an UpdateMerchant entity instance. |
| `updateTemplateXml` | `(entopts) -> SdkEntity` | Create an UpdateTemplateXml entity instance. |
| `version` | `(entopts) -> SdkEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> Object` | Load a single entity by match criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> Object` | Create a new entity. Raises on error. |
| `data` | `(newdata...) -> Object` | Get or set entity data. |
| `match` | `(newmatch...) -> Object` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data() for the record) (a `Map` for single-entity
ops, an aggregate `List` for `list`) as `Object` and raise on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct()` escape hatch never raises — it returns a result
`Map<String, Object>` you branch on via `result.get("ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Boolean` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `Object` | Parsed JSON response body. |

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

Operations: create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `cardNo` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create, load.

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

Operations: create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecomPass` |  |
| `ecomSkey` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchantContractNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalTemplateDescription` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create, load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuids` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `targetPackageorderuuid` |  |
| `targetProductorderuuid` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `deviceSerialNumber` |  |
| `duplicateTerminalIds` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateXml` |  |

Operations: create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
| `version` |  |

Operations: load.

API path: `/public/version`



## Entities


### CancelTransaction

Create an instance: `SdkEntity cancelTransaction = client.cancelTransaction(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Long` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Long` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Long` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Long` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Long` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Long` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```java
Object cancelTransaction = client.cancelTransaction(null).create(Map.of(
    "clientId", 1L,  // Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L  // Long
), null);
```


### CheckCardBlackListed

Create an instance: `SdkEntity checkCardBlackListed = client.checkCardBlackListed(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```java
Object checkCardBlackListed = client.checkCardBlackListed(null).create(Map.of(
), null);
```


### CreateProduct

Create an instance: `SdkEntity createProduct = client.createProduct(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `Long` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateType` | `String` |  |
| `templateXml` | `String` |  |
| `terminalType` | `String` |  |

#### Example: Create

```java
Object createProduct = client.createProduct(null).create(Map.of(
    "templateName", "example_templateName",  // String
    "templateType", "example_templateType",  // String
    "templateXml", "example_templateXml",  // String
    "terminalType", "example_terminalType"  // String
), null);
```


### DeactivateTerminal

Create an instance: `SdkEntity deactivateTerminal = client.deactivateTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `deactivationReason` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Long` |  |

#### Example: Create

```java
Object deactivateTerminal = client.deactivateTerminal(null).create(Map.of(
    "deactivationReason", "example_deactivationReason",  // String
    "terminalId", 1L  // Long
), null);
```


### DigitalServicesApi

Create an instance: `SdkEntity digitalServicesApi = client.digitalServicesApi(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `txCount` | `Long` |  |
| `txIdEnd` | `String` |  |
| `txIdStart` | `String` |  |
| `txSeqNoEnd` | `Long` |  |
| `txSeqNoStart` | `Long` |  |
| `txTotal` | `Long` |  |

#### Example: Load

```java
Object digitalServicesApi = client.digitalServicesApi(null).load(null, null);
```

#### Example: Create

```java
Object digitalServicesApi = client.digitalServicesApi(null).create(Map.of(
    "file_id", "example_file_id",  // String
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null);
```


### EcDataEcom

Create an instance: `SdkEntity ecDataEcom = client.ecDataEcom(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Long` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```java
Object ecDataEcom = client.ecDataEcom(null).create(Map.of(
    "terminalId", 1L,  // Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null);
```


### EcomParameter

Create an instance: `SdkEntity ecomParameter = client.ecomParameter(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `String` |  |
| `ecomSkey` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Long` |  |

#### Example: Create

```java
Object ecomParameter = client.ecomParameter(null).create(Map.of(
    "terminalId", 1L  // Long
), null);
```


### EcrData

Create an instance: `SdkEntity ecrData = client.ecrData(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Long` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```java
Object ecrData = client.ecrData(null).create(Map.of(
    "terminalId", 1L,  // Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null);
```


### EmvData

Create an instance: `SdkEntity emvData = client.emvData(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Long` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```java
Object emvData = client.emvData(null).create(Map.of(
    "terminalId", 1L,  // Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null);
```


### EnableAcquiring

Create an instance: `SdkEntity enableAcquiring = client.enableAcquiring(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `Long` |  |
| `additionalData` | `Map<String, Object>` |  |
| `corporateUuid` | `String` |  |
| `currency` | `String` |  |
| `merchantCategoryCode` | `Long` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `sortingCode` | `Long` |  |
| `templateName` | `String` |  |
| `terminalIdAcq` | `String` |  |
| `terminalIds` | `List<Object>` |  |
| `vuNummer` | `String` |  |

#### Example: Create

```java
Object enableAcquiring = client.enableAcquiring(null).create(Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "currency", "example_currency",  // String
    "merchantCategoryCode", 1L,  // Long
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName"  // String
), null);
```


### GetMerchantContractNumber

Create an instance: `SdkEntity getMerchantContractNumber = client.getMerchantContractNumber(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```java
Object getMerchantContractNumber = client.getMerchantContractNumber(null).create(Map.of(
    "merchantContractNumber", "example_merchantContractNumber"  // String
), null);
```


### GetTemplateXml

Create an instance: `SdkEntity getTemplateXml = client.getTemplateXml(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```java
Object getTemplateXml = client.getTemplateXml(null).create(Map.of(
    "templateName", "example_templateName"  // String
), null);
```


### IntroduceMandator

Create an instance: `SdkEntity introduceMandator = client.introduceMandator(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```java
Object introduceMandator = client.introduceMandator(null).create(Map.of(
    "mandatorName", "example_mandatorName"  // String
), null);
```


### IntroducePackage

Create an instance: `SdkEntity introducePackage = client.introducePackage(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalTemplateDescription` | `String` |  |

#### Example: Create

```java
Object introducePackage = client.introducePackage(null).create(Map.of(
    "terminalTemplateDescription", "example_terminalTemplateDescription"  // String
), null);
```


### KeepAlive

Create an instance: `SdkEntity keepAlive = client.keepAlive(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `kaDateTimeFrom` | `String` |  |
| `kaDateTimeTo` | `String` |  |
| `keepAliveData` | `List<Object>` |  |
| `pagination` | `Map<String, Object>` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalDateTimeFrom` | `String` |  |
| `terminalDateTimeTo` | `String` |  |
| `terminalId` | `Long` |  |

#### Example: Create

```java
Object keepAlive = client.keepAlive(null).create(Map.of(
), null);
```


### ListTerminal

Create an instance: `SdkEntity listTerminal = client.listTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `List<Object>` |  |
| `filter` | `Map<String, Object>` |  |
| `pagination` | `Map<String, Object>` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminals` | `List<Object>` |  |

#### Example: Create

```java
Object listTerminal = client.listTerminal(null).create(Map.of(
), null);
```


### MandatorClearingExport

Create an instance: `SdkEntity mandatorClearingExport = client.mandatorClearingExport(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Map<String, Object>` |  |
| `records` | `List<Object>` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```java
Object mandatorClearingExport = client.mandatorClearingExport(null).create(Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null);
```


### MandatorClearingExportDownload

Create an instance: `SdkEntity mandatorClearingExportDownload = client.mandatorClearingExportDownload(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | End date for clearing export (inclusive) |
| `fileId` | `String` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | Optional filename template for the export file |
| `id` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `status` | `String` | Processing status of the export request |

#### Example: Load

```java
Object mandatorClearingExportDownload = client.mandatorClearingExportDownload(null).load(Map.of("id", "mandator_clearing_export_download_id"), null);
```

#### Example: Create

```java
Object mandatorClearingExportDownload = client.mandatorClearingExportDownload(null).create(Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null);
```


### MandatorClearingExportSummary

Create an instance: `SdkEntity mandatorClearingExportSummary = client.mandatorClearingExportSummary(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `List<Object>` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```java
Object mandatorClearingExportSummary = client.mandatorClearingExportSummary(null).create(Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null);
```


### MerchantPortalServicesApi

Create an instance: `SdkEntity merchantPortalServicesApi = client.merchantPortalServicesApi(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

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
| `pagination` | `Map<String, Object>` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `Long` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `Long` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

#### Example: Create

```java
Object merchantPortalServicesApi = client.merchantPortalServicesApi(null).create(Map.of(
), null);
```


### MoveTid

Create an instance: `SdkEntity moveTid = client.moveTid(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `List<Object>` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `targetPackageorderuuid` | `String` |  |
| `targetProductorderuuid` | `String` |  |

#### Example: Create

```java
Object moveTid = client.moveTid(null).create(Map.of(
    "productorderuuids", List.of()  // List<Object>
), null);
```


### PaymentManual

Create an instance: `SdkEntity paymentManual = client.paymentManual(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` | Acquirer name parsed from KKG field |
| `amount` | `Long` | Transaction amount in minor units (cents) |
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

```java
Object paymentManual = client.paymentManual(null).create(Map.of(
    "amount", 1L,  // Long
    "cardNumber", "example_cardNumber",  // String
    "currency", "example_currency",  // String
    "expDate", "example_expDate",  // String
    "txtype", "example_txtype"  // String
), null);
```


### PaymentSred

Create an instance: `SdkEntity paymentSred = client.paymentSred(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `Long` | Transaction amount in minor units (cents) |
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

```java
Object paymentSred = client.paymentSred(null).create(Map.of(
    "amount", 1L,  // Long
    "currency", "example_currency",  // String
    "devicePayload", "example_devicePayload",  // String
    "terminalId", "example_terminalId",  // String
    "txtype", "example_txtype"  // String
), null);
```


### PreAuthTransactionCompletion

Create an instance: `SdkEntity preAuthTransactionCompletion = client.preAuthTransactionCompletion(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Long` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `cardNumberReference` | `String` |  |
| `clientId` | `Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Long` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Long` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Long` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Long` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Long` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```java
Object preAuthTransactionCompletion = client.preAuthTransactionCompletion(null).create(Map.of(
    "cardNumberReference", "example_cardNumberReference",  // String
    "clientId", 1L,  // Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L,  // Long
    "transactionType", "example_transactionType"  // String
), null);
```


### ReactivateTerminal

Create an instance: `SdkEntity reactivateTerminal = client.reactivateTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `reactivationReason` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Long` |  |

#### Example: Create

```java
Object reactivateTerminal = client.reactivateTerminal(null).create(Map.of(
    "reactivationReason", "example_reactivationReason",  // String
    "terminalId", 1L  // Long
), null);
```


### RefundTransaction

Create an instance: `SdkEntity refundTransaction = client.refundTransaction(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Long` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Long` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Long` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Long` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Long` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Long` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```java
Object refundTransaction = client.refundTransaction(null).create(Map.of(
    "clientId", 1L,  // Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L  // Long
), null);
```


### RegisterTecsCompany

Create an instance: `SdkEntity registerTecsCompany = client.registerTecsCompany(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `partnerId` | `Long` |  |
| `partnerName` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```java
Object registerTecsCompany = client.registerTecsCompany(null).create(Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName"  // String
), null);
```


### RegisterTerminal

Create an instance: `SdkEntity registerTerminal = client.registerTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `Map<String, Object>` |  |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `tecsWebSecretKey` | `String` |  |
| `templateName` | `String` |  |
| `terminalCountryCode` | `String` |  |
| `terminalId` | `Long` |  |
| `terminalIdAcq` | `String` |  |
| `terminalLanguageCode` | `String` |  |
| `terminalLocation` | `String` |  |
| `terminalSerialNumber` | `String` |  |
| `tokenIOAlias` | `String` |  |
| `tokenIOIban` | `String` |  |
| `tokenIOMemberId` | `String` |  |
| `webShopUrl` | `String` |  |

#### Example: Create

```java
Object registerTerminal = client.registerTerminal(null).create(Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName",  // String
    "terminalCountryCode", "example_terminalCountryCode",  // String
    "terminalLanguageCode", "example_terminalLanguageCode",  // String
    "terminalLocation", "example_terminalLocation"  // String
), null);
```


### ReportData

Create an instance: `SdkEntity reportData = client.reportData(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `List<Object>` |  |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` |  |
| `currency` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `sumOverCreditTx` | `Map<String, Object>` |  |
| `sumOverDebitTx` | `Map<String, Object>` |  |
| `terminalId` | `Long` |  |

#### Example: Create

```java
Object reportData = client.reportData(null).create(Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo",  // String
    "corporateId", "example_corporateId",  // String
    "currency", "example_currency"  // String
), null);
```


### StatusTransaction

Create an instance: `SdkEntity statusTransaction = client.statusTransaction(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` |  |
| `acquirerTerminalId` | `String` |  |
| `amount` | `Long` |  |
| `applicationCryptogram` | `String` |  |
| `authorizationCode` | `Object` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` |  |
| `cardBrand` | `String` |  |
| `cardEntry` | `String` |  |
| `cardExpiration` | `String` |  |
| `cardNumber` | `String` |  |
| `clearingAmount` | `Long` |  |
| `clearingBatchId` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingDate` | `String` |  |
| `clearingProcessedDate` | `String` |  |
| `clearingStatus` | `String` |  |
| `clientId` | `Long` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecrData` | `String` |  |
| `emvApplicationId` | `String` |  |
| `emvApplicationLabel` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `originalClientId` | `String` |  |
| `originalTerminalId` | `Long` |  |
| `originalTransactionId` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Long` |  |
| `responseCodeFromAS` | `String` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `serviceCode` | `String` |  |
| `settlementStatus` | `String` |  |
| `sourceId` | `Long` |  |
| `tecsengineResponseCode` | `Long` |  |
| `tecsengineResponseText` | `String` |  |
| `terminalEndOfDayDate` | `String` |  |
| `terminalId` | `Long` |  |
| `terminalLocation` | `String` |  |
| `tipAmount` | `Long` |  |
| `traceNumber` | `Long` |  |
| `transactionClearingDate` | `String` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionSeqNumber` | `Long` |  |
| `transactionServerDate` | `String` |  |
| `transactionSource` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```java
Object statusTransaction = client.statusTransaction(null).create(Map.of(
), null);
```


### StoreTerminalParameter

Create an instance: `SdkEntity storeTerminalParameter = client.storeTerminalParameter(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `Map<String, Object>` |  |
| `configVersion` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `tidSent` | `String` |  |

#### Example: Create

```java
Object storeTerminalParameter = client.storeTerminalParameter(null).create(Map.of(
    "serialNumber", "example_serialNumber"  // String
), null);
```


### TerminalId

Create an instance: `SdkEntity terminalId = client.terminalId(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `List<Object>` |  |
| `duplicateTerminalIds` | `List<Object>` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `terminals` | `List<Object>` |  |

#### Example: Create

```java
Object terminalId = client.terminalId(null).create(Map.of(
    "deviceSerialNumber", List.of()  // List<Object>
), null);
```


### TransactionHistory

Create an instance: `SdkEntity transactionHistory = client.transactionHistory(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

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
| `pagination` | `Map<String, Object>` |  |
| `paymentTokenPublicId` | `String` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `Long` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `Long` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionHistories` | `List<Object>` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

#### Example: Create

```java
Object transactionHistory = client.transactionHistory(null).create(Map.of(
), null);
```


### TransactionsCount

Create an instance: `SdkEntity transactionsCount = client.transactionsCount(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `List<Object>` |  |

#### Example: Create

```java
Object transactionsCount = client.transactionsCount(null).create(Map.of(
), null);
```


### TransactionsCountCardBrand

Create an instance: `SdkEntity transactionsCountCardBrand = client.transactionsCountCardBrand(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `List<Object>` |  |

#### Example: Create

```java
Object transactionsCountCardBrand = client.transactionsCountCardBrand(null).create(Map.of(
), null);
```


### TransactionsTurnover

Create an instance: `SdkEntity transactionsTurnover = client.transactionsTurnover(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `turnovers` | `List<Object>` |  |

#### Example: Create

```java
Object transactionsTurnover = client.transactionsTurnover(null).create(Map.of(
), null);
```


### UpdateMerchant

Create an instance: `SdkEntity updateMerchant = client.updateMerchant(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporateUuid` | `String` |  |
| `country` | `String` |  |
| `merchantCategoryCode` | `String` |  |
| `name` | `String` |  |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vuNummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```java
Object updateMerchant = client.updateMerchant(null).create(Map.of(
    "corporateUuid", "example_corporateUuid"  // String
), null);
```


### UpdateTemplateXml

Create an instance: `SdkEntity updateTemplateXml = client.updateTemplateXml(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateXml` | `String` |  |

#### Example: Create

```java
Object updateTemplateXml = client.updateTemplateXml(null).create(Map.of(
    "templateName", "example_templateName",  // String
    "templateXml", "example_templateXml"  // String
), null);
```


### Version

Create an instance: `SdkEntity version = client.version(null);`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```java
Object version = client.version(null).load(null, null);
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as maps

The Java SDK uses a loose object model — `Map<String, Object>` throughout —
rather than a bespoke typed class per endpoint. This mirrors the dynamic
nature of the API and keeps the SDK flexible: no regeneration is needed when
the API schema changes.

Use `Helpers.toMapAny(value)` to safely coerce a value to a
`Map<String, Object>`. A `BluefinTecsMerchantServicesTypes.java` module of reference
`record` types is also generated for editor documentation.

### Project structure

```
java/
├── pom.xml                     -- Maven project (compiles core/, utility/, feature/, entity/)
├── core/                       -- Main SDK client, config, entity base, error type
├── entity/                     -- Entity implementations
├── feature/                    -- Built-in features (Base, Test, Log, ...)
├── utility/                    -- Utility functions and the vendored struct library
└── test/                       -- JUnit test suites
```

The main client class (`BluefinTecsMerchantServicesSDK`, package `voxgig.bluefintecsmerchantservicessdk.core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed.

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
