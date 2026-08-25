# BluefinTecsMerchantServices Swift SDK



The Swift SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Swift conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.CancelTransaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to a SwiftPM registry. The generated SDK
is a dependency-free SwiftPM package (Foundation only, plus the vendored
Voxgig Struct port). Depend on it from the GitHub release tag
(`swift/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) by adding it to
your `Package.swift`:

```swift
dependencies: [
    // From the git release tag:
    .package(url: "<repo-url>", exact: "0.1.1"),
],
```

Or build from a source checkout with SwiftPM:

```bash
cd swift && swift build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```swift
import BluefinTecsMerchantServicesSdk

let options = VMap()
options.entries["apikey"] = .string(
    ProcessInfo.processInfo.environment["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] ?? "")
let client = BluefinTecsMerchantServicesSDK(options)
```

### 4. Create, update, and remove

```swift
// Create — returns the ENTITY (call data() for the record)
let created = try client.CancelTransaction().create(VMap([("clientId", .int(1)), ("currency", .string("example_currency")), ("receiptNumber", .string("example_receiptNumber")), ("terminalId", .int(1))]), nil)

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

```swift
let result = client.direct(VMap([
    ("path", .string("/api/resource/{id}")),
    ("method", .string("GET")),
    ("params", .map([("id", .string("example"))])),
]))

if result.entries["ok"] == .bool(true) {
    print(result.entries["status"] ?? .noval)  // 200
    print(result.entries["data"] ?? .noval)     // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // an absent key simply reads as .noval.
    print(result.entries["status"] ?? .noval, result.entries["err"] ?? .noval)
}
```

### Prepare a request without sending it

```swift
// prepare() returns the fetch definition and throws on error.
let fetchdef = try client.prepare(VMap([
    ("path", .string("/api/resource/{id}")),
    ("method", .string("DELETE")),
    ("params", .map([("id", .string("example"))])),
]))

print(fetchdef.entries["url"] ?? .noval)
print(fetchdef.entries["method"] ?? .noval)
print(fetchdef.entries["headers"] ?? .noval)
```

### Use test mode

Create a mock client for unit testing — no server required:

```swift
let client = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)

// Entity ops return the ENTITY and throws on error;
// call data() for the record.
let digitalServicesApi = try client.DigitalServicesApi().load(nil, nil)
// digitalServicesApi holds the mock response record
print(digitalServicesApi)
```

### Use a custom fetch function

Replace the HTTP transport with your own `SystemFetch` closure:

```swift
let fetch: SystemFetch = { url, _ in
    let m = VMap()
    m.entries["status"] = .int(200)
    m.entries["statusText"] = .string("OK")
    m.entries["headers"] = .map(VMap())
    m.entries["json"] = .nat({ () -> Value in .map(VMap([("id", .string("mock01"))])) } as NativeCall0)
    return .map(m)
}

let system = VMap()
system.entries["fetch"] = .nat(fetch)
let options = VMap()
options.entries["base"] = .string("http://localhost:8080")
options.entries["system"] = .map(system)
let client = BluefinTecsMerchantServicesSDK(options)
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd swift && make test
```


## Reference

### BluefinTecsMerchantServicesSDK

```swift
let client = BluefinTecsMerchantServicesSDK(options)
```

Creates a new SDK client. `options` is a `VMap` of `Value`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `VMap` | Feature activation flags. |
| `extend` | `VList` | Additional Feature instances to load. |
| `system` | `VMap` | System overrides (e.g. custom `fetch` function). |

### testSDK

```swift
let client = BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> VMap` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) throws -> VMap` | Build an HTTP request definition without sending. Throws on error. |
| `direct` | `(fetchargs) -> VMap` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `CancelTransaction` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EcomParameter entity instance. |
| `EcrData` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EcrData entity instance. |
| `EmvData` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EmvData entity instance. |
| `EnableAcquiring` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a KeepAlive entity instance. |
| `ListTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MoveTid entity instance. |
| `PaymentManual` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a PaymentManual entity instance. |
| `PaymentSred` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a RegisterTerminal entity instance. |
| `ReportData` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a ReportData entity instance. |
| `StatusTransaction` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TerminalId entity instance. |
| `TransactionHistory` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an UpdateTemplateXml entity instance. |
| `Version` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) throws -> Value` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, ctrl) throws -> Value` | Create a new entity. Throws on error. |
| `data` | `(newdata?) -> Value` | Get or set entity data. |
| `matchv` | `(newmatch?) -> Value` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data() for the record) (a `Value` map for
single-entity ops, a `Value` list for `list`) and throw on error. Wrap
calls in `do`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `VMap` you
branch on via `result.entries["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `true` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `VMap` | Response headers. |
| `data` | `Value` | Parsed JSON response body. |

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

Create an instance: `let cancelTransaction = client.CancelTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```swift
let cancelTransaction = try client.CancelTransaction().create(VMap([
    ("clientId", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receiptNumber", .string("example_receiptNumber")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```


### CheckCardBlackListed

Create an instance: `let checkCardBlackListed = client.CheckCardBlackListed()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let checkCardBlackListed = try client.CheckCardBlackListed().create(VMap([
]), nil)
```


### CreateProduct

Create an instance: `let createProduct = client.CreateProduct()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `Int` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateType` | `String` |  |
| `templateXml` | `String` |  |
| `terminalType` | `String` |  |

#### Example: Create

```swift
let createProduct = try client.CreateProduct().create(VMap([
    ("templateName", .string("example_templateName")),  // String
    ("templateType", .string("example_templateType")),  // String
    ("templateXml", .string("example_templateXml")),  // String
    ("terminalType", .string("example_terminalType"))  // String
]), nil)
```


### DeactivateTerminal

Create an instance: `let deactivateTerminal = client.DeactivateTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `deactivationReason` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```swift
let deactivateTerminal = try client.DeactivateTerminal().create(VMap([
    ("deactivationReason", .string("example_deactivationReason")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```


### DigitalServicesApi

Create an instance: `let digitalServicesApi = client.DigitalServicesApi()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `txCount` | `Int` |  |
| `txIdEnd` | `String` |  |
| `txIdStart` | `String` |  |
| `txSeqNoEnd` | `Int` |  |
| `txSeqNoStart` | `Int` |  |
| `txTotal` | `Int` |  |

#### Example: Load

```swift
let digitalServicesApi = try client.DigitalServicesApi().load(nil, nil)
```

#### Example: Create

```swift
let digitalServicesApi = try client.DigitalServicesApi().create(VMap([
    ("file_id", .string("example_file_id")),  // String
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```


### EcDataEcom

Create an instance: `let ecDataEcom = client.EcDataEcom()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```swift
let ecDataEcom = try client.EcDataEcom().create(VMap([
    ("terminalId", .int(1)),  // Int
    ("transactionId", .string("example_transactionId")),  // String
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```


### EcomParameter

Create an instance: `let ecomParameter = client.EcomParameter()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `String` |  |
| `ecomSkey` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```swift
let ecomParameter = try client.EcomParameter().create(VMap([
    ("terminalId", .int(1))  // Int
]), nil)
```


### EcrData

Create an instance: `let ecrData = client.EcrData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```swift
let ecrData = try client.EcrData().create(VMap([
    ("terminalId", .int(1)),  // Int
    ("transactionId", .string("example_transactionId")),  // String
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```


### EmvData

Create an instance: `let emvData = client.EmvData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```swift
let emvData = try client.EmvData().create(VMap([
    ("terminalId", .int(1)),  // Int
    ("transactionId", .string("example_transactionId")),  // String
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```


### EnableAcquiring

Create an instance: `let enableAcquiring = client.EnableAcquiring()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `Int` |  |
| `additionalData` | `VMap` |  |
| `corporateUuid` | `String` |  |
| `currency` | `String` |  |
| `merchantCategoryCode` | `Int` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sortingCode` | `Int` |  |
| `templateName` | `String` |  |
| `terminalIdAcq` | `String` |  |
| `terminalIds` | `[Value]` |  |
| `vuNummer` | `String` |  |

#### Example: Create

```swift
let enableAcquiring = try client.EnableAcquiring().create(VMap([
    ("corporateUuid", .string("example_corporateUuid")),  // String
    ("currency", .string("example_currency")),  // String
    ("merchantCategoryCode", .int(1)),  // Int
    ("packageOrderUuid", .string("example_packageOrderUuid")),  // String
    ("productOrderUuid", .string("example_productOrderUuid")),  // String
    ("templateName", .string("example_templateName"))  // String
]), nil)
```


### GetMerchantContractNumber

Create an instance: `let getMerchantContractNumber = client.GetMerchantContractNumber()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let getMerchantContractNumber = try client.GetMerchantContractNumber().create(VMap([
    ("merchantContractNumber", .string("example_merchantContractNumber"))  // String
]), nil)
```


### GetTemplateXml

Create an instance: `let getTemplateXml = client.GetTemplateXml()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```swift
let getTemplateXml = try client.GetTemplateXml().create(VMap([
    ("templateName", .string("example_templateName"))  // String
]), nil)
```


### IntroduceMandator

Create an instance: `let introduceMandator = client.IntroduceMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let introduceMandator = try client.IntroduceMandator().create(VMap([
    ("mandatorName", .string("example_mandatorName"))  // String
]), nil)
```


### IntroducePackage

Create an instance: `let introducePackage = client.IntroducePackage()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalTemplateDescription` | `String` |  |

#### Example: Create

```swift
let introducePackage = try client.IntroducePackage().create(VMap([
    ("terminalTemplateDescription", .string("example_terminalTemplateDescription"))  // String
]), nil)
```


### KeepAlive

Create an instance: `let keepAlive = client.KeepAlive()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `kaDateTimeFrom` | `String` |  |
| `kaDateTimeTo` | `String` |  |
| `keepAliveData` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalDateTimeFrom` | `String` |  |
| `terminalDateTimeTo` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```swift
let keepAlive = try client.KeepAlive().create(VMap([
]), nil)
```


### ListTerminal

Create an instance: `let listTerminal = client.ListTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `[Value]` |  |
| `filter` | `VMap` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminals` | `[Value]` |  |

#### Example: Create

```swift
let listTerminal = try client.ListTerminal().create(VMap([
]), nil)
```


### MandatorClearingExport

Create an instance: `let mandatorClearingExport = client.MandatorClearingExport()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `VMap` |  |
| `records` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let mandatorClearingExport = try client.MandatorClearingExport().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```


### MandatorClearingExportDownload

Create an instance: `let mandatorClearingExportDownload = client.MandatorClearingExportDownload()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | End date for clearing export (inclusive) |
| `fileId` | `String` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | Optional filename template for the export file |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `status` | `String` | Processing status of the export request |

#### Example: Load

```swift
let mandatorClearingExportDownload = try client.MandatorClearingExportDownload().load(VMap([("id", .string("mandator_clearing_export_download_id"))]), nil)
```

#### Example: Create

```swift
let mandatorClearingExportDownload = try client.MandatorClearingExportDownload().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```


### MandatorClearingExportSummary

Create an instance: `let mandatorClearingExportSummary = client.MandatorClearingExportSummary()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let mandatorClearingExportSummary = try client.MandatorClearingExportSummary().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```


### MerchantPortalServicesApi

Create an instance: `let merchantPortalServicesApi = client.MerchantPortalServicesApi()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

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
| `pagination` | `VMap` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `Int` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `Int` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

#### Example: Create

```swift
let merchantPortalServicesApi = try client.MerchantPortalServicesApi().create(VMap([
]), nil)
```


### MoveTid

Create an instance: `let moveTid = client.MoveTid()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `targetPackageorderuuid` | `String` |  |
| `targetProductorderuuid` | `String` |  |

#### Example: Create

```swift
let moveTid = try client.MoveTid().create(VMap([
    ("productorderuuids", .list([]))  // [Value]
]), nil)
```


### PaymentManual

Create an instance: `let paymentManual = client.PaymentManual()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` | Acquirer name parsed from KKG field |
| `amount` | `Int` | Transaction amount in minor units (cents) |
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

```swift
let paymentManual = try client.PaymentManual().create(VMap([
    ("amount", .int(1)),  // Int
    ("cardNumber", .string("example_cardNumber")),  // String
    ("currency", .string("example_currency")),  // String
    ("expDate", .string("example_expDate")),  // String
    ("txtype", .string("example_txtype"))  // String
]), nil)
```


### PaymentSred

Create an instance: `let paymentSred = client.PaymentSred()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `Int` | Transaction amount in minor units (cents) |
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

```swift
let paymentSred = try client.PaymentSred().create(VMap([
    ("amount", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("devicePayload", .string("example_devicePayload")),  // String
    ("terminalId", .string("example_terminalId")),  // String
    ("txtype", .string("example_txtype"))  // String
]), nil)
```


### PreAuthTransactionCompletion

Create an instance: `let preAuthTransactionCompletion = client.PreAuthTransactionCompletion()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `cardNumberReference` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```swift
let preAuthTransactionCompletion = try client.PreAuthTransactionCompletion().create(VMap([
    ("cardNumberReference", .string("example_cardNumberReference")),  // String
    ("clientId", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receiptNumber", .string("example_receiptNumber")),  // String
    ("terminalId", .int(1)),  // Int
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```


### ReactivateTerminal

Create an instance: `let reactivateTerminal = client.ReactivateTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `reactivationReason` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```swift
let reactivateTerminal = try client.ReactivateTerminal().create(VMap([
    ("reactivationReason", .string("example_reactivationReason")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```


### RefundTransaction

Create an instance: `let refundTransaction = client.RefundTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```swift
let refundTransaction = try client.RefundTransaction().create(VMap([
    ("clientId", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receiptNumber", .string("example_receiptNumber")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```


### RegisterTecsCompany

Create an instance: `let registerTecsCompany = client.RegisterTecsCompany()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `partnerId` | `Int` |  |
| `partnerName` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```swift
let registerTecsCompany = try client.RegisterTecsCompany().create(VMap([
    ("corporateUuid", .string("example_corporateUuid")),  // String
    ("packageOrderUuid", .string("example_packageOrderUuid")),  // String
    ("productOrderUuid", .string("example_productOrderUuid")),  // String
    ("templateName", .string("example_templateName"))  // String
]), nil)
```


### RegisterTerminal

Create an instance: `let registerTerminal = client.RegisterTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `VMap` |  |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `tecsWebSecretKey` | `String` |  |
| `templateName` | `String` |  |
| `terminalCountryCode` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalIdAcq` | `String` |  |
| `terminalLanguageCode` | `String` |  |
| `terminalLocation` | `String` |  |
| `terminalSerialNumber` | `String` |  |
| `tokenIOAlias` | `String` |  |
| `tokenIOIban` | `String` |  |
| `tokenIOMemberId` | `String` |  |
| `webShopUrl` | `String` |  |

#### Example: Create

```swift
let registerTerminal = try client.RegisterTerminal().create(VMap([
    ("corporateUuid", .string("example_corporateUuid")),  // String
    ("packageOrderUuid", .string("example_packageOrderUuid")),  // String
    ("productOrderUuid", .string("example_productOrderUuid")),  // String
    ("templateName", .string("example_templateName")),  // String
    ("terminalCountryCode", .string("example_terminalCountryCode")),  // String
    ("terminalLanguageCode", .string("example_terminalLanguageCode")),  // String
    ("terminalLocation", .string("example_terminalLocation"))  // String
]), nil)
```


### ReportData

Create an instance: `let reportData = client.ReportData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `[Value]` |  |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` |  |
| `currency` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sumOverCreditTx` | `VMap` |  |
| `sumOverDebitTx` | `VMap` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```swift
let reportData = try client.ReportData().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo")),  // String
    ("corporateId", .string("example_corporateId")),  // String
    ("currency", .string("example_currency"))  // String
]), nil)
```


### StatusTransaction

Create an instance: `let statusTransaction = client.StatusTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` |  |
| `acquirerTerminalId` | `String` |  |
| `amount` | `Int` |  |
| `applicationCryptogram` | `String` |  |
| `authorizationCode` | `Value` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` |  |
| `cardBrand` | `String` |  |
| `cardEntry` | `String` |  |
| `cardExpiration` | `String` |  |
| `cardNumber` | `String` |  |
| `clearingAmount` | `Int` |  |
| `clearingBatchId` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingDate` | `String` |  |
| `clearingProcessedDate` | `String` |  |
| `clearingStatus` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecrData` | `String` |  |
| `emvApplicationId` | `String` |  |
| `emvApplicationLabel` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `originalClientId` | `String` |  |
| `originalTerminalId` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseCodeFromAS` | `String` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `serviceCode` | `String` |  |
| `settlementStatus` | `String` |  |
| `sourceId` | `Int` |  |
| `tecsengineResponseCode` | `Int` |  |
| `tecsengineResponseText` | `String` |  |
| `terminalEndOfDayDate` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `tipAmount` | `Int` |  |
| `traceNumber` | `Int` |  |
| `transactionClearingDate` | `String` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionSeqNumber` | `Int` |  |
| `transactionServerDate` | `String` |  |
| `transactionSource` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```swift
let statusTransaction = try client.StatusTransaction().create(VMap([
]), nil)
```


### StoreTerminalParameter

Create an instance: `let storeTerminalParameter = client.StoreTerminalParameter()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `VMap` |  |
| `configVersion` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `tidSent` | `String` |  |

#### Example: Create

```swift
let storeTerminalParameter = try client.StoreTerminalParameter().create(VMap([
    ("serialNumber", .string("example_serialNumber"))  // String
]), nil)
```


### TerminalId

Create an instance: `let terminalId = client.TerminalId()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `[Value]` |  |
| `duplicateTerminalIds` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminals` | `[Value]` |  |

#### Example: Create

```swift
let terminalId = try client.TerminalId().create(VMap([
    ("deviceSerialNumber", .list([]))  // [Value]
]), nil)
```


### TransactionHistory

Create an instance: `let transactionHistory = client.TransactionHistory()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

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
| `pagination` | `VMap` |  |
| `paymentTokenPublicId` | `String` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `Int` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `Int` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionHistories` | `[Value]` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

#### Example: Create

```swift
let transactionHistory = try client.TransactionHistory().create(VMap([
]), nil)
```


### TransactionsCount

Create an instance: `let transactionsCount = client.TransactionsCount()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `[Value]` |  |

#### Example: Create

```swift
let transactionsCount = try client.TransactionsCount().create(VMap([
]), nil)
```


### TransactionsCountCardBrand

Create an instance: `let transactionsCountCardBrand = client.TransactionsCountCardBrand()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `[Value]` |  |

#### Example: Create

```swift
let transactionsCountCardBrand = try client.TransactionsCountCardBrand().create(VMap([
]), nil)
```


### TransactionsTurnover

Create an instance: `let transactionsTurnover = client.TransactionsTurnover()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `turnovers` | `[Value]` |  |

#### Example: Create

```swift
let transactionsTurnover = try client.TransactionsTurnover().create(VMap([
]), nil)
```


### UpdateMerchant

Create an instance: `let updateMerchant = client.UpdateMerchant()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporateUuid` | `String` |  |
| `country` | `String` |  |
| `merchantCategoryCode` | `String` |  |
| `name` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vuNummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```swift
let updateMerchant = try client.UpdateMerchant().create(VMap([
    ("corporateUuid", .string("example_corporateUuid"))  // String
]), nil)
```


### UpdateTemplateXml

Create an instance: `let updateTemplateXml = client.UpdateTemplateXml()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateXml` | `String` |  |

#### Example: Create

```swift
let updateTemplateXml = try client.UpdateTemplateXml().create(VMap([
    ("templateName", .string("example_templateName")),  // String
    ("templateXml", .string("example_templateXml"))  // String
]), nil)
```


### Version

Create an instance: `let version = client.Version()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```swift
let version = try client.Version().load(nil, nil)
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

### Data as loose values

The Swift SDK uses a loose object model — the vendored `Value` enum
(with `VMap` / `VList` wrappers) throughout — rather than a bespoke typed
struct per endpoint. This mirrors the dynamic nature of the API and keeps the
SDK flexible: no regeneration is needed when the API schema changes.

Use the `.asMap` / `.asList` / `.asString` accessors to safely coerce a
`Value` to a concrete Swift type (each returns `nil` on a type mismatch).
A `BluefinTecsMerchantServicesTypes.swift` file of reference `struct` types is also
generated for editor documentation.

### Project structure

```
swift/
├── Package.swift                     -- SwiftPM manifest (zero runtime deps)
├── Sources/BluefinTecsMerchantServicesSdk/
│   ├── core/                         -- Main client, config, entity base, error type
│   ├── entity/                       -- Generated entity clients
│   ├── feature/                      -- Built-in features (Base, Test, Log, ...)
│   ├── utility/                      -- Utility functions
│   └── Struct/                       -- Vendored Voxgig Struct port
└── Tests/BluefinTecsMerchantServicesSdkTests/    -- Test suites (XCTest)
```

The main client class (`BluefinTecsMerchantServicesSDK`, under `Sources/BluefinTecsMerchantServicesSdk/core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed. The SDK is dependency-free: JSON parsing is the vendored
`Struct/JSON.swift`, HTTP transport is Foundation's `URLSession`, and the
struct library is inlined under `Struct/`.

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
