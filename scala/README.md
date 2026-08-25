# BluefinTecsMerchantServices Scala SDK



The Scala SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Scala conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.cancelTransaction(null)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Maven Central. The generated SDK is a
plain-source scala-cli project (no build tool, no third-party runtime
dependencies). Install it from the GitHub release tag
(`scala/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or from a source
checkout — compile it with scala-cli:

```bash
cd scala && scala-cli compile .
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```scala
import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK

val options = new java.util.LinkedHashMap[String, Object]()
options.put("apikey", System.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"))
val client = new BluefinTecsMerchantServicesSDK(options)
```

### 4. Create, update, and remove

```scala
// Create — returns the ENTITY (call data() for the record)
val created = client.cancelTransaction(null).create(java.util.Map.of("clientId", 1L, "currency", "example_currency", "receiptNumber", "example_receiptNumber", "terminalId", 1L), null)

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

```scala
val result = client.direct(java.util.Map.of(
    "path", "/api/resource/{id}",
    "method", "GET",
    "params", java.util.Map.of("id", "example")))

if (java.lang.Boolean.TRUE == result.get("ok")) {
    println(result.get("status"))  // 200
    println(result.get("data"))    // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both — an absent key simply reads as null.
    println("status=" + result.get("status") + " err=" + result.get("err"))
}
```

### Prepare a request without sending it

```scala
// prepare() returns the fetch definition and raises on error.
val fetchdef = client.prepare(java.util.Map.of(
    "path", "/api/resource/{id}",
    "method", "DELETE",
    "params", java.util.Map.of("id", "example")))

println(fetchdef.get("url"))
println(fetchdef.get("method"))
println(fetchdef.get("headers"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```scala
val client = BluefinTecsMerchantServicesSDK.testSDK(null, null)

// Entity ops return the ENTITY and raises on error;
// call data() for the record.
val digitalServicesApi = client.digitalServicesApi(null).load(null, null)
// digitalServicesApi holds the mock response record
println(digitalServicesApi)
```

### Use a custom fetch function

Replace the HTTP transport with your own `BiFunction`:

```scala
val mockFetch: java.util.function.BiFunction[String, java.util.Map[String, Object], Object] =
    (url, init) => {
        val res = new java.util.LinkedHashMap[String, Object]()
        res.put("status", java.lang.Integer.valueOf(200))
        res.put("statusText", "OK")
        res.put("headers", new java.util.LinkedHashMap[String, Object]())
        res.put("json", (() => java.util.Map.of("id", "mock01")): java.util.function.Supplier[Object])
        res
    }

val options = new java.util.LinkedHashMap[String, Object]()
options.put("base", "http://localhost:8080")
options.put("system", java.util.Map.of("fetch", mockFetch))
val client = new BluefinTecsMerchantServicesSDK(options)
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd scala && make test
```


## Reference

### BluefinTecsMerchantServicesSDK

```scala
val client = new BluefinTecsMerchantServicesSDK(options)
```

Creates a new SDK client. `options` is a `java.util.Map[String, Object]`.

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

```scala
val client = BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts)
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
| `data` | `(newdata*) -> Object` | Get or set entity data. |
| `matchArgs` | `(newmatch*) -> Object` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data() for the record) (a `Map` for single-entity
ops, an aggregate `List` for `list`) as `Object` and raise on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct()` escape hatch never raises — it returns a result
`java.util.Map[String, Object]` you branch on via `result.get("ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Boolean` | `true` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
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

Create an instance: `val cancelTransaction = client.cancelTransaction(null)`

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
| `amount` | `java.lang.Long` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `java.lang.Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `java.lang.Long` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `java.lang.Long` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `java.lang.Long` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `java.lang.Long` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```scala
val cancelTransaction = client.cancelTransaction(null).create(java.util.Map.of(
    "clientId", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```


### CheckCardBlackListed

Create an instance: `val checkCardBlackListed = client.checkCardBlackListed(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```scala
val checkCardBlackListed = client.checkCardBlackListed(null).create(java.util.Map.of(
), null)
```


### CreateProduct

Create an instance: `val createProduct = client.createProduct(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `java.lang.Long` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateType` | `String` |  |
| `templateXml` | `String` |  |
| `terminalType` | `String` |  |

#### Example: Create

```scala
val createProduct = client.createProduct(null).create(java.util.Map.of(
    "templateName", "example_templateName",  // String
    "templateType", "example_templateType",  // String
    "templateXml", "example_templateXml",  // String
    "terminalType", "example_terminalType"  // String
), null)
```


### DeactivateTerminal

Create an instance: `val deactivateTerminal = client.deactivateTerminal(null)`

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
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `java.lang.Long` |  |

#### Example: Create

```scala
val deactivateTerminal = client.deactivateTerminal(null).create(java.util.Map.of(
    "deactivationReason", "example_deactivationReason",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```


### DigitalServicesApi

Create an instance: `val digitalServicesApi = client.digitalServicesApi(null)`

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
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `txCount` | `java.lang.Long` |  |
| `txIdEnd` | `String` |  |
| `txIdStart` | `String` |  |
| `txSeqNoEnd` | `java.lang.Long` |  |
| `txSeqNoStart` | `java.lang.Long` |  |
| `txTotal` | `java.lang.Long` |  |

#### Example: Load

```scala
val digitalServicesApi = client.digitalServicesApi(null).load(null, null)
```

#### Example: Create

```scala
val digitalServicesApi = client.digitalServicesApi(null).create(java.util.Map.of(
    "file_id", "example_file_id",  // String
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```


### EcDataEcom

Create an instance: `val ecDataEcom = client.ecDataEcom(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```scala
val ecDataEcom = client.ecDataEcom(null).create(java.util.Map.of(
    "terminalId", 1L,  // java.lang.Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null)
```


### EcomParameter

Create an instance: `val ecomParameter = client.ecomParameter(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `String` |  |
| `ecomSkey` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `java.lang.Long` |  |

#### Example: Create

```scala
val ecomParameter = client.ecomParameter(null).create(java.util.Map.of(
    "terminalId", 1L  // java.lang.Long
), null)
```


### EcrData

Create an instance: `val ecrData = client.ecrData(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```scala
val ecrData = client.ecrData(null).create(java.util.Map.of(
    "terminalId", 1L,  // java.lang.Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null)
```


### EmvData

Create an instance: `val emvData = client.emvData(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```scala
val emvData = client.emvData(null).create(java.util.Map.of(
    "terminalId", 1L,  // java.lang.Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null)
```


### EnableAcquiring

Create an instance: `val enableAcquiring = client.enableAcquiring(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `java.lang.Long` |  |
| `additionalData` | `java.util.Map[String, Object]` |  |
| `corporateUuid` | `String` |  |
| `currency` | `String` |  |
| `merchantCategoryCode` | `java.lang.Long` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `sortingCode` | `java.lang.Long` |  |
| `templateName` | `String` |  |
| `terminalIdAcq` | `String` |  |
| `terminalIds` | `java.util.List[Object]` |  |
| `vuNummer` | `String` |  |

#### Example: Create

```scala
val enableAcquiring = client.enableAcquiring(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "currency", "example_currency",  // String
    "merchantCategoryCode", 1L,  // java.lang.Long
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName"  // String
), null)
```


### GetMerchantContractNumber

Create an instance: `val getMerchantContractNumber = client.getMerchantContractNumber(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```scala
val getMerchantContractNumber = client.getMerchantContractNumber(null).create(java.util.Map.of(
    "merchantContractNumber", "example_merchantContractNumber"  // String
), null)
```


### GetTemplateXml

Create an instance: `val getTemplateXml = client.getTemplateXml(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```scala
val getTemplateXml = client.getTemplateXml(null).create(java.util.Map.of(
    "templateName", "example_templateName"  // String
), null)
```


### IntroduceMandator

Create an instance: `val introduceMandator = client.introduceMandator(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```scala
val introduceMandator = client.introduceMandator(null).create(java.util.Map.of(
    "mandatorName", "example_mandatorName"  // String
), null)
```


### IntroducePackage

Create an instance: `val introducePackage = client.introducePackage(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalTemplateDescription` | `String` |  |

#### Example: Create

```scala
val introducePackage = client.introducePackage(null).create(java.util.Map.of(
    "terminalTemplateDescription", "example_terminalTemplateDescription"  // String
), null)
```


### KeepAlive

Create an instance: `val keepAlive = client.keepAlive(null)`

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
| `keepAliveData` | `java.util.List[Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalDateTimeFrom` | `String` |  |
| `terminalDateTimeTo` | `String` |  |
| `terminalId` | `java.lang.Long` |  |

#### Example: Create

```scala
val keepAlive = client.keepAlive(null).create(java.util.Map.of(
), null)
```


### ListTerminal

Create an instance: `val listTerminal = client.listTerminal(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `java.util.List[Object]` |  |
| `filter` | `java.util.Map[String, Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminals` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val listTerminal = client.listTerminal(null).create(java.util.Map.of(
), null)
```


### MandatorClearingExport

Create an instance: `val mandatorClearingExport = client.mandatorClearingExport(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `java.util.Map[String, Object]` |  |
| `records` | `java.util.List[Object]` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```scala
val mandatorClearingExport = client.mandatorClearingExport(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```


### MandatorClearingExportDownload

Create an instance: `val mandatorClearingExportDownload = client.mandatorClearingExportDownload(null)`

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
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `status` | `String` | Processing status of the export request |

#### Example: Load

```scala
val mandatorClearingExportDownload = client.mandatorClearingExportDownload(null).load(java.util.Map.of("id", "mandator_clearing_export_download_id"), null)
```

#### Example: Create

```scala
val mandatorClearingExportDownload = client.mandatorClearingExportDownload(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```


### MandatorClearingExportSummary

Create an instance: `val mandatorClearingExportSummary = client.mandatorClearingExportSummary(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `java.util.List[Object]` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```scala
val mandatorClearingExportSummary = client.mandatorClearingExportSummary(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```


### MerchantPortalServicesApi

Create an instance: `val merchantPortalServicesApi = client.merchantPortalServicesApi(null)`

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
| `pagination` | `java.util.Map[String, Object]` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `java.lang.Long` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

#### Example: Create

```scala
val merchantPortalServicesApi = client.merchantPortalServicesApi(null).create(java.util.Map.of(
), null)
```


### MoveTid

Create an instance: `val moveTid = client.moveTid(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `java.util.List[Object]` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `targetPackageorderuuid` | `String` |  |
| `targetProductorderuuid` | `String` |  |

#### Example: Create

```scala
val moveTid = client.moveTid(null).create(java.util.Map.of(
    "productorderuuids", java.util.List.of()  // java.util.List[Object]
), null)
```


### PaymentManual

Create an instance: `val paymentManual = client.paymentManual(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` | Acquirer name parsed from KKG field |
| `amount` | `java.lang.Long` | Transaction amount in minor units (cents) |
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

```scala
val paymentManual = client.paymentManual(null).create(java.util.Map.of(
    "amount", 1L,  // java.lang.Long
    "cardNumber", "example_cardNumber",  // String
    "currency", "example_currency",  // String
    "expDate", "example_expDate",  // String
    "txtype", "example_txtype"  // String
), null)
```


### PaymentSred

Create an instance: `val paymentSred = client.paymentSred(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `java.lang.Long` | Transaction amount in minor units (cents) |
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

```scala
val paymentSred = client.paymentSred(null).create(java.util.Map.of(
    "amount", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "devicePayload", "example_devicePayload",  // String
    "terminalId", "example_terminalId",  // String
    "txtype", "example_txtype"  // String
), null)
```


### PreAuthTransactionCompletion

Create an instance: `val preAuthTransactionCompletion = client.preAuthTransactionCompletion(null)`

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
| `amount` | `java.lang.Long` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `cardNumberReference` | `String` |  |
| `clientId` | `java.lang.Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `java.lang.Long` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `java.lang.Long` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `java.lang.Long` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `java.lang.Long` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```scala
val preAuthTransactionCompletion = client.preAuthTransactionCompletion(null).create(java.util.Map.of(
    "cardNumberReference", "example_cardNumberReference",  // String
    "clientId", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L,  // java.lang.Long
    "transactionType", "example_transactionType"  // String
), null)
```


### ReactivateTerminal

Create an instance: `val reactivateTerminal = client.reactivateTerminal(null)`

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
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `java.lang.Long` |  |

#### Example: Create

```scala
val reactivateTerminal = client.reactivateTerminal(null).create(java.util.Map.of(
    "reactivationReason", "example_reactivationReason",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```


### RefundTransaction

Create an instance: `val refundTransaction = client.refundTransaction(null)`

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
| `amount` | `java.lang.Long` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `java.lang.Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `java.lang.Long` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `java.lang.Long` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `java.lang.Long` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `java.lang.Long` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```scala
val refundTransaction = client.refundTransaction(null).create(java.util.Map.of(
    "clientId", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```


### RegisterTecsCompany

Create an instance: `val registerTecsCompany = client.registerTecsCompany(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `partnerId` | `java.lang.Long` |  |
| `partnerName` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```scala
val registerTecsCompany = client.registerTecsCompany(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName"  // String
), null)
```


### RegisterTerminal

Create an instance: `val registerTerminal = client.registerTerminal(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `java.util.Map[String, Object]` |  |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `tecsWebSecretKey` | `String` |  |
| `templateName` | `String` |  |
| `terminalCountryCode` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `terminalIdAcq` | `String` |  |
| `terminalLanguageCode` | `String` |  |
| `terminalLocation` | `String` |  |
| `terminalSerialNumber` | `String` |  |
| `tokenIOAlias` | `String` |  |
| `tokenIOIban` | `String` |  |
| `tokenIOMemberId` | `String` |  |
| `webShopUrl` | `String` |  |

#### Example: Create

```scala
val registerTerminal = client.registerTerminal(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName",  // String
    "terminalCountryCode", "example_terminalCountryCode",  // String
    "terminalLanguageCode", "example_terminalLanguageCode",  // String
    "terminalLocation", "example_terminalLocation"  // String
), null)
```


### ReportData

Create an instance: `val reportData = client.reportData(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `java.util.List[Object]` |  |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` |  |
| `currency` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `sumOverCreditTx` | `java.util.Map[String, Object]` |  |
| `sumOverDebitTx` | `java.util.Map[String, Object]` |  |
| `terminalId` | `java.lang.Long` |  |

#### Example: Create

```scala
val reportData = client.reportData(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo",  // String
    "corporateId", "example_corporateId",  // String
    "currency", "example_currency"  // String
), null)
```


### StatusTransaction

Create an instance: `val statusTransaction = client.statusTransaction(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` |  |
| `acquirerTerminalId` | `String` |  |
| `amount` | `java.lang.Long` |  |
| `applicationCryptogram` | `String` |  |
| `authorizationCode` | `Object` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` |  |
| `cardBrand` | `String` |  |
| `cardEntry` | `String` |  |
| `cardExpiration` | `String` |  |
| `cardNumber` | `String` |  |
| `clearingAmount` | `java.lang.Long` |  |
| `clearingBatchId` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingDate` | `String` |  |
| `clearingProcessedDate` | `String` |  |
| `clearingStatus` | `String` |  |
| `clientId` | `java.lang.Long` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecrData` | `String` |  |
| `emvApplicationId` | `String` |  |
| `emvApplicationLabel` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `originalClientId` | `String` |  |
| `originalTerminalId` | `java.lang.Long` |  |
| `originalTransactionId` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseCodeFromAS` | `String` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `serviceCode` | `String` |  |
| `settlementStatus` | `String` |  |
| `sourceId` | `java.lang.Long` |  |
| `tecsengineResponseCode` | `java.lang.Long` |  |
| `tecsengineResponseText` | `String` |  |
| `terminalEndOfDayDate` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `terminalLocation` | `String` |  |
| `tipAmount` | `java.lang.Long` |  |
| `traceNumber` | `java.lang.Long` |  |
| `transactionClearingDate` | `String` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionSeqNumber` | `java.lang.Long` |  |
| `transactionServerDate` | `String` |  |
| `transactionSource` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```scala
val statusTransaction = client.statusTransaction(null).create(java.util.Map.of(
), null)
```


### StoreTerminalParameter

Create an instance: `val storeTerminalParameter = client.storeTerminalParameter(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `java.util.Map[String, Object]` |  |
| `configVersion` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `tidSent` | `String` |  |

#### Example: Create

```scala
val storeTerminalParameter = client.storeTerminalParameter(null).create(java.util.Map.of(
    "serialNumber", "example_serialNumber"  // String
), null)
```


### TerminalId

Create an instance: `val terminalId = client.terminalId(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `java.util.List[Object]` |  |
| `duplicateTerminalIds` | `java.util.List[Object]` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `terminals` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val terminalId = client.terminalId(null).create(java.util.Map.of(
    "deviceSerialNumber", java.util.List.of()  // java.util.List[Object]
), null)
```


### TransactionHistory

Create an instance: `val transactionHistory = client.transactionHistory(null)`

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
| `pagination` | `java.util.Map[String, Object]` |  |
| `paymentTokenPublicId` | `String` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `java.lang.Long` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `java.lang.Long` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionHistories` | `java.util.List[Object]` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

#### Example: Create

```scala
val transactionHistory = client.transactionHistory(null).create(java.util.Map.of(
), null)
```


### TransactionsCount

Create an instance: `val transactionsCount = client.transactionsCount(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val transactionsCount = client.transactionsCount(null).create(java.util.Map.of(
), null)
```


### TransactionsCountCardBrand

Create an instance: `val transactionsCountCardBrand = client.transactionsCountCardBrand(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val transactionsCountCardBrand = client.transactionsCountCardBrand(null).create(java.util.Map.of(
), null)
```


### TransactionsTurnover

Create an instance: `val transactionsTurnover = client.transactionsTurnover(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `turnovers` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val transactionsTurnover = client.transactionsTurnover(null).create(java.util.Map.of(
), null)
```


### UpdateMerchant

Create an instance: `val updateMerchant = client.updateMerchant(null)`

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
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vuNummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```scala
val updateMerchant = client.updateMerchant(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid"  // String
), null)
```


### UpdateTemplateXml

Create an instance: `val updateTemplateXml = client.updateTemplateXml(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `java.lang.Long` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateXml` | `String` |  |

#### Example: Create

```scala
val updateTemplateXml = client.updateTemplateXml(null).create(java.util.Map.of(
    "templateName", "example_templateName",  // String
    "templateXml", "example_templateXml"  // String
), null)
```


### Version

Create an instance: `val version = client.version(null)`

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

```scala
val version = client.version(null).load(null, null)
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

### Data as maps

The Scala SDK uses a loose object model — `java.util.Map[String, Object]`
throughout — rather than a bespoke typed class per endpoint. This mirrors the
dynamic nature of the API and keeps the SDK flexible: no regeneration is
needed when the API schema changes.

Use `Helpers.toMapAny(value)` to safely coerce a value to a
`java.util.Map[String, Object]`. A `BluefinTecsMerchantServicesTypes.scala` module of
reference `case class` types is also generated for editor documentation.

### Project structure

```
scala/
├── project.scala               -- scala-cli project config (Scala 3, no deps)
├── core/                        -- Main SDK client, config, entity base, error type
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (Base, Test, Log, ...)
├── utility/                     -- Utility functions and the vendored struct library
└── sdktest/                     -- Generated per-entity tests (scala-cli mains)
```

The main client class (`BluefinTecsMerchantServicesSDK`, package `voxgig.bluefintecsmerchantservicessdk.core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed. The SDK is a dependency-free scala-cli project: JSON parsing is
the vendored `utility/Json.java`, HTTP transport is the JDK
`java.net.http.HttpClient`, and the struct library is inlined under
`utility/struct`.

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
