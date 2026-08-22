# BluefinTecsMerchantServices C# SDK



The C# SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic C# conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.CancelTransaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to NuGet. Install it from the GitHub
release tag (`csharp/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout — build the library and add a project reference:

```bash
cd csharp && dotnet build BluefinTecsMerchantServicesSDK.csproj
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```csharp
using BluefinTecsMerchantServicesSdk;

var client = new BluefinTecsMerchantServicesSDK(new Dictionary<string, object?>
{
    ["apikey"] = Environment.GetEnvironmentVariable("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"),
});
```

### 4. Create, update, and remove

```csharp
// Create — returns the bare created record (as object?)
var created = client.CancelTransaction().Create(new Dictionary<string, object?> { ["clientId"] = 1L, ["currency"] = "example_currency", ["receiptNumber"] = "example_receiptNumber", ["terminalId"] = 1L });

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

```csharp
var result = client.Direct(new Dictionary<string, object?>
{
    ["path"] = "/api/resource/{id}",
    ["method"] = "GET",
    ["params"] = new Dictionary<string, object?> { ["id"] = "example" },
});

if (Equals(result["ok"], true))
{
    Console.WriteLine(result["status"]);  // 200
    Console.WriteLine(result["data"]);    // response body
}
else
{
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both with TryGetValue rather than indexing a key that may be absent.
    result.TryGetValue("status", out var status);
    result.TryGetValue("err", out var err);
    Console.WriteLine($"{status} {err}");
}
```

### Prepare a request without sending it

```csharp
// Prepare() returns the fetch definition and raises on error.
var fetchdef = client.Prepare(new Dictionary<string, object?>
{
    ["path"] = "/api/resource/{id}",
    ["method"] = "DELETE",
    ["params"] = new Dictionary<string, object?> { ["id"] = "example" },
});

Console.WriteLine(fetchdef["url"]);
Console.WriteLine(fetchdef["method"]);
Console.WriteLine(fetchdef["headers"]);
```

### Use test mode

Create a mock client for unit testing — no server required:

```csharp
var client = BluefinTecsMerchantServicesSDK.TestSDK(null, null);

// Entity ops return the bare record and raise on error.
var digitalServicesApi = client.DigitalServicesApi().Load(null);
// digitalServicesApi holds the mock response record
Console.WriteLine(digitalServicesApi);
```

### Use a custom fetch function

Replace the HTTP transport with your own delegate:

```csharp
Func<string, Dictionary<string, object?>, Dictionary<string, object?>> mockFetch =
    (url, init) => new Dictionary<string, object?>
    {
        ["status"] = 200,
        ["statusText"] = "OK",
        ["headers"] = new Dictionary<string, object?>(),
        ["json"] = (Func<object?>)(() => new Dictionary<string, object?> { ["id"] = "mock01" }),
    };

var client = new BluefinTecsMerchantServicesSDK(new Dictionary<string, object?>
{
    ["base"] = "http://localhost:8080",
    ["system"] = new Dictionary<string, object?>
    {
        ["fetch"] = mockFetch,
    },
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
cd csharp && dotnet test
```


## Reference

### BluefinTecsMerchantServicesSDK

```csharp
using BluefinTecsMerchantServicesSdk;

var client = new BluefinTecsMerchantServicesSDK(options);
```

Creates a new SDK client. `options` is a `Dictionary<string, object?>`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `Dictionary` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Dictionary` | System overrides (e.g. custom `fetch` delegate). |

### TestSDK

```csharp
var client = BluefinTecsMerchantServicesSDK.TestSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `OptionsMap` | `() -> Dictionary` | Deep copy of current SDK options. |
| `GetUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `Prepare` | `(fetchargs) -> Dictionary` | Build an HTTP request definition without sending. Raises on error. |
| `Direct` | `(fetchargs) -> Dictionary` | Build and send an HTTP request. Returns a result dictionary (branch on `ok`). |
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
| `Load` | `(reqmatch, ctrl) -> object?` | Load a single entity by match criteria. Raises on error. |
| `Create` | `(reqdata, ctrl) -> object?` | Create a new entity. Raises on error. |
| `Data` | `(newdata) -> object?` | Get or set entity data. |
| `Match` | `(newmatch) -> object?` | Get or set entity match criteria. |
| `Make` | `() -> IEntity` | Create a new instance with the same options. |
| `GetName` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `Dictionary` for
single-entity ops, an aggregate list for `List`) as `object?` and raise on
error. Wrap calls in `try`/`catch` to handle failures.

The `Direct()` escape hatch never raises — it returns a result
`Dictionary<string, object?>` you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Dictionary` | Response headers. |
| `data` | `object?` | Parsed JSON response body. |

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

Create an instance: `var cancelTransaction = client.CancelTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `long` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `long` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `long` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `long` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `long` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```csharp
var cancelTransaction = client.CancelTransaction().Create(new Dictionary<string, object?>
{
    ["clientId"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receiptNumber"] = "example_receiptNumber",  // string
    ["terminalId"] = 1L,  // long
});
```


### CheckCardBlackListed

Create an instance: `var checkCardBlackListed = client.CheckCardBlackListed();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var checkCardBlackListed = client.CheckCardBlackListed().Create(new Dictionary<string, object?>
{
});
```


### CreateProduct

Create an instance: `var createProduct = client.CreateProduct();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `long` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateType` | `string` |  |
| `templateXml` | `string` |  |
| `terminalType` | `string` |  |

#### Example: Create

```csharp
var createProduct = client.CreateProduct().Create(new Dictionary<string, object?>
{
    ["templateName"] = "example_templateName",  // string
    ["templateType"] = "example_templateType",  // string
    ["templateXml"] = "example_templateXml",  // string
    ["terminalType"] = "example_terminalType",  // string
});
```


### DeactivateTerminal

Create an instance: `var deactivateTerminal = client.DeactivateTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `deactivationReason` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```csharp
var deactivateTerminal = client.DeactivateTerminal().Create(new Dictionary<string, object?>
{
    ["deactivationReason"] = "example_deactivationReason",  // string
    ["terminalId"] = 1L,  // long
});
```


### DigitalServicesApi

Create an instance: `var digitalServicesApi = client.DigitalServicesApi();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `txCount` | `long` |  |
| `txIdEnd` | `string` |  |
| `txIdStart` | `string` |  |
| `txSeqNoEnd` | `long` |  |
| `txSeqNoStart` | `long` |  |
| `txTotal` | `long` |  |

#### Example: Load

```csharp
var digitalServicesApi = client.DigitalServicesApi().Load(null);
```

#### Example: Create

```csharp
var digitalServicesApi = client.DigitalServicesApi().Create(new Dictionary<string, object?>
{
    ["file_id"] = "example_file_id",  // string
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```


### EcDataEcom

Create an instance: `var ecDataEcom = client.EcDataEcom();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```csharp
var ecDataEcom = client.EcDataEcom().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
    ["transactionId"] = "example_transactionId",  // string
    ["transactionType"] = "example_transactionType",  // string
});
```


### EcomParameter

Create an instance: `var ecomParameter = client.EcomParameter();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `string` |  |
| `ecomSkey` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```csharp
var ecomParameter = client.EcomParameter().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
});
```


### EcrData

Create an instance: `var ecrData = client.EcrData();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```csharp
var ecrData = client.EcrData().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
    ["transactionId"] = "example_transactionId",  // string
    ["transactionType"] = "example_transactionType",  // string
});
```


### EmvData

Create an instance: `var emvData = client.EmvData();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```csharp
var emvData = client.EmvData().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
    ["transactionId"] = "example_transactionId",  // string
    ["transactionType"] = "example_transactionType",  // string
});
```


### EnableAcquiring

Create an instance: `var enableAcquiring = client.EnableAcquiring();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `long` |  |
| `additionalData` | `Dictionary<string, object?>` |  |
| `corporateUuid` | `string` |  |
| `currency` | `string` |  |
| `merchantCategoryCode` | `long` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `sortingCode` | `long` |  |
| `templateName` | `string` |  |
| `terminalIdAcq` | `string` |  |
| `terminalIds` | `List<object?>` |  |
| `vuNummer` | `string` |  |

#### Example: Create

```csharp
var enableAcquiring = client.EnableAcquiring().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
    ["currency"] = "example_currency",  // string
    ["merchantCategoryCode"] = 1L,  // long
    ["packageOrderUuid"] = "example_packageOrderUuid",  // string
    ["productOrderUuid"] = "example_productOrderUuid",  // string
    ["templateName"] = "example_templateName",  // string
});
```


### GetMerchantContractNumber

Create an instance: `var getMerchantContractNumber = client.GetMerchantContractNumber();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var getMerchantContractNumber = client.GetMerchantContractNumber().Create(new Dictionary<string, object?>
{
    ["merchantContractNumber"] = "example_merchantContractNumber",  // string
});
```


### GetTemplateXml

Create an instance: `var getTemplateXml = client.GetTemplateXml();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```csharp
var getTemplateXml = client.GetTemplateXml().Create(new Dictionary<string, object?>
{
    ["templateName"] = "example_templateName",  // string
});
```


### IntroduceMandator

Create an instance: `var introduceMandator = client.IntroduceMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var introduceMandator = client.IntroduceMandator().Create(new Dictionary<string, object?>
{
    ["mandatorName"] = "example_mandatorName",  // string
});
```


### IntroducePackage

Create an instance: `var introducePackage = client.IntroducePackage();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalTemplateDescription` | `string` |  |

#### Example: Create

```csharp
var introducePackage = client.IntroducePackage().Create(new Dictionary<string, object?>
{
    ["terminalTemplateDescription"] = "example_terminalTemplateDescription",  // string
});
```


### KeepAlive

Create an instance: `var keepAlive = client.KeepAlive();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `kaDateTimeFrom` | `string` |  |
| `kaDateTimeTo` | `string` |  |
| `keepAliveData` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalDateTimeFrom` | `string` |  |
| `terminalDateTimeTo` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```csharp
var keepAlive = client.KeepAlive().Create(new Dictionary<string, object?>
{
});
```


### ListTerminal

Create an instance: `var listTerminal = client.ListTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `List<object?>` |  |
| `filter` | `Dictionary<string, object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminals` | `List<object?>` |  |

#### Example: Create

```csharp
var listTerminal = client.ListTerminal().Create(new Dictionary<string, object?>
{
});
```


### MandatorClearingExport

Create an instance: `var mandatorClearingExport = client.MandatorClearingExport();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Dictionary<string, object?>` |  |
| `records` | `List<object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var mandatorClearingExport = client.MandatorClearingExport().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```


### MandatorClearingExportDownload

Create an instance: `var mandatorClearingExportDownload = client.MandatorClearingExportDownload();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | End date for clearing export (inclusive) |
| `fileId` | `string` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | Optional filename template for the export file |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `status` | `string` | Processing status of the export request |

#### Example: Load

```csharp
var mandatorClearingExportDownload = client.MandatorClearingExportDownload().Load(new Dictionary<string, object?> { ["id"] = "mandator_clearing_export_download_id" });
```

#### Example: Create

```csharp
var mandatorClearingExportDownload = client.MandatorClearingExportDownload().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```


### MandatorClearingExportSummary

Create an instance: `var mandatorClearingExportSummary = client.MandatorClearingExportSummary();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `List<object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var mandatorClearingExportSummary = client.MandatorClearingExportSummary().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```


### MerchantPortalServicesApi

Create an instance: `var merchantPortalServicesApi = client.MerchantPortalServicesApi();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `long` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `long` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

#### Example: Create

```csharp
var merchantPortalServicesApi = client.MerchantPortalServicesApi().Create(new Dictionary<string, object?>
{
});
```


### MoveTid

Create an instance: `var moveTid = client.MoveTid();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `List<object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `targetPackageorderuuid` | `string` |  |
| `targetProductorderuuid` | `string` |  |

#### Example: Create

```csharp
var moveTid = client.MoveTid().Create(new Dictionary<string, object?>
{
    ["productorderuuids"] = new List<object?>(),  // List<object?>
});
```


### PaymentManual

Create an instance: `var paymentManual = client.PaymentManual();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `string` | Acquirer name parsed from KKG field |
| `amount` | `long` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `string` | Authorization number from the gateway |
| `cardNumber` | `string` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `string` | Card type parsed from KKG field |
| `currency` | `string` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `string` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `string` | Date and time of the transaction |
| `expDate` | `string` | Card expiry date in MMYY format |
| `merchantId` | `string` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `string` | Original transaction ID from gateway |
| `password` | `string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `string` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `string` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `string` | Terminal ID used for the transaction |
| `transactionId` | `string` | Transaction ID generated by the backend |
| `txtype` | `string` | Transaction type |

#### Example: Create

```csharp
var paymentManual = client.PaymentManual().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["cardNumber"] = "example_cardNumber",  // string
    ["currency"] = "example_currency",  // string
    ["expDate"] = "example_expDate",  // string
    ["txtype"] = "example_txtype",  // string
});
```


### PaymentSred

Create an instance: `var paymentSred = client.PaymentSred();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `long` | Transaction amount in minor units (cents) |
| `currency` | `string` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `string` | Device type that provided the SRED payload |
| `devicePayload` | `string` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `string` | Card expiry date in MMYY format |
| `mode` | `string` | Decryption mode |
| `panMasked` | `string` | Masked PAN (first 6 and last 4 digits) |
| `password` | `string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `string` | Device serial number |
| `serviceCode` | `string` | Service code from the card |
| `terminalId` | `string` | Terminal ID - 8 digits |
| `txtype` | `string` | Transaction type |

#### Example: Create

```csharp
var paymentSred = client.PaymentSred().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["devicePayload"] = "example_devicePayload",  // string
    ["terminalId"] = "example_terminalId",  // string
    ["txtype"] = "example_txtype",  // string
});
```


### PreAuthTransactionCompletion

Create an instance: `var preAuthTransactionCompletion = client.PreAuthTransactionCompletion();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `long` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `cardNumberReference` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `long` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `long` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `long` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `long` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```csharp
var preAuthTransactionCompletion = client.PreAuthTransactionCompletion().Create(new Dictionary<string, object?>
{
    ["cardNumberReference"] = "example_cardNumberReference",  // string
    ["clientId"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receiptNumber"] = "example_receiptNumber",  // string
    ["terminalId"] = 1L,  // long
    ["transactionType"] = "example_transactionType",  // string
});
```


### ReactivateTerminal

Create an instance: `var reactivateTerminal = client.ReactivateTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `reactivationReason` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```csharp
var reactivateTerminal = client.ReactivateTerminal().Create(new Dictionary<string, object?>
{
    ["reactivationReason"] = "example_reactivationReason",  // string
    ["terminalId"] = 1L,  // long
});
```


### RefundTransaction

Create an instance: `var refundTransaction = client.RefundTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `long` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `long` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `long` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `long` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `long` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```csharp
var refundTransaction = client.RefundTransaction().Create(new Dictionary<string, object?>
{
    ["clientId"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receiptNumber"] = "example_receiptNumber",  // string
    ["terminalId"] = 1L,  // long
});
```


### RegisterTecsCompany

Create an instance: `var registerTecsCompany = client.RegisterTecsCompany();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `partnerId` | `long` |  |
| `partnerName` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```csharp
var registerTecsCompany = client.RegisterTecsCompany().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
    ["packageOrderUuid"] = "example_packageOrderUuid",  // string
    ["productOrderUuid"] = "example_productOrderUuid",  // string
    ["templateName"] = "example_templateName",  // string
});
```


### RegisterTerminal

Create an instance: `var registerTerminal = client.RegisterTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `Dictionary<string, object?>` |  |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `tecsWebSecretKey` | `string` |  |
| `templateName` | `string` |  |
| `terminalCountryCode` | `string` |  |
| `terminalId` | `long` |  |
| `terminalIdAcq` | `string` |  |
| `terminalLanguageCode` | `string` |  |
| `terminalLocation` | `string` |  |
| `terminalSerialNumber` | `string` |  |
| `tokenIOAlias` | `string` |  |
| `tokenIOIban` | `string` |  |
| `tokenIOMemberId` | `string` |  |
| `webShopUrl` | `string` |  |

#### Example: Create

```csharp
var registerTerminal = client.RegisterTerminal().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
    ["packageOrderUuid"] = "example_packageOrderUuid",  // string
    ["productOrderUuid"] = "example_productOrderUuid",  // string
    ["templateName"] = "example_templateName",  // string
    ["terminalCountryCode"] = "example_terminalCountryCode",  // string
    ["terminalLanguageCode"] = "example_terminalLanguageCode",  // string
    ["terminalLocation"] = "example_terminalLocation",  // string
});
```


### ReportData

Create an instance: `var reportData = client.ReportData();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `List<object?>` |  |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` |  |
| `currency` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `sumOverCreditTx` | `Dictionary<string, object?>` |  |
| `sumOverDebitTx` | `Dictionary<string, object?>` |  |
| `terminalId` | `long` |  |

#### Example: Create

```csharp
var reportData = client.ReportData().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
    ["corporateId"] = "example_corporateId",  // string
    ["currency"] = "example_currency",  // string
});
```


### StatusTransaction

Create an instance: `var statusTransaction = client.StatusTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `string` |  |
| `acquirerTerminalId` | `string` |  |
| `amount` | `long` |  |
| `applicationCryptogram` | `string` |  |
| `authorizationCode` | `object?` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `string` |  |
| `cardBrand` | `string` |  |
| `cardEntry` | `string` |  |
| `cardExpiration` | `string` |  |
| `cardNumber` | `string` |  |
| `clearingAmount` | `long` |  |
| `clearingBatchId` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingDate` | `string` |  |
| `clearingProcessedDate` | `string` |  |
| `clearingStatus` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecrData` | `string` |  |
| `emvApplicationId` | `string` |  |
| `emvApplicationLabel` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `originalClientId` | `string` |  |
| `originalTerminalId` | `long` |  |
| `originalTransactionId` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseCodeFromAS` | `string` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `serviceCode` | `string` |  |
| `settlementStatus` | `string` |  |
| `sourceId` | `long` |  |
| `tecsengineResponseCode` | `long` |  |
| `tecsengineResponseText` | `string` |  |
| `terminalEndOfDayDate` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `tipAmount` | `long` |  |
| `traceNumber` | `long` |  |
| `transactionClearingDate` | `string` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionSeqNumber` | `long` |  |
| `transactionServerDate` | `string` |  |
| `transactionSource` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```csharp
var statusTransaction = client.StatusTransaction().Create(new Dictionary<string, object?>
{
});
```


### StoreTerminalParameter

Create an instance: `var storeTerminalParameter = client.StoreTerminalParameter();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `Dictionary<string, object?>` |  |
| `configVersion` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `tidSent` | `string` |  |

#### Example: Create

```csharp
var storeTerminalParameter = client.StoreTerminalParameter().Create(new Dictionary<string, object?>
{
    ["serialNumber"] = "example_serialNumber",  // string
});
```


### TerminalId

Create an instance: `var terminalId = client.TerminalId();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `List<object?>` |  |
| `duplicateTerminalIds` | `List<object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminals` | `List<object?>` |  |

#### Example: Create

```csharp
var terminalId = client.TerminalId().Create(new Dictionary<string, object?>
{
    ["deviceSerialNumber"] = new List<object?>(),  // List<object?>
});
```


### TransactionHistory

Create an instance: `var transactionHistory = client.TransactionHistory();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `paymentTokenPublicId` | `string` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `long` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `long` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionHistories` | `List<object?>` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

#### Example: Create

```csharp
var transactionHistory = client.TransactionHistory().Create(new Dictionary<string, object?>
{
});
```


### TransactionsCount

Create an instance: `var transactionsCount = client.TransactionsCount();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `List<object?>` |  |

#### Example: Create

```csharp
var transactionsCount = client.TransactionsCount().Create(new Dictionary<string, object?>
{
});
```


### TransactionsCountCardBrand

Create an instance: `var transactionsCountCardBrand = client.TransactionsCountCardBrand();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `List<object?>` |  |

#### Example: Create

```csharp
var transactionsCountCardBrand = client.TransactionsCountCardBrand().Create(new Dictionary<string, object?>
{
});
```


### TransactionsTurnover

Create an instance: `var transactionsTurnover = client.TransactionsTurnover();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `turnovers` | `List<object?>` |  |

#### Example: Create

```csharp
var transactionsTurnover = client.TransactionsTurnover().Create(new Dictionary<string, object?>
{
});
```


### UpdateMerchant

Create an instance: `var updateMerchant = client.UpdateMerchant();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporateUuid` | `string` |  |
| `country` | `string` |  |
| `merchantCategoryCode` | `string` |  |
| `name` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vuNummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```csharp
var updateMerchant = client.UpdateMerchant().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
});
```


### UpdateTemplateXml

Create an instance: `var updateTemplateXml = client.UpdateTemplateXml();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateXml` | `string` |  |

#### Example: Create

```csharp
var updateTemplateXml = client.UpdateTemplateXml().Create(new Dictionary<string, object?>
{
    ["templateName"] = "example_templateName",  // string
    ["templateXml"] = "example_templateXml",  // string
});
```


### Version

Create an instance: `var version = client.Version();`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```csharp
var version = client.Version().Load(null);
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

### Data as dictionaries

The C# SDK uses a loose object model — `Dictionary<string, object?>`
throughout — rather than a bespoke typed class per endpoint. This mirrors
the dynamic nature of the API and keeps the SDK flexible: no regeneration is
needed when the API schema changes.

Use `Helpers.ToMapAny(value)` to safely coerce a value to a
`Dictionary<string, object?>`. A `BluefinTecsMerchantServicesTypes.cs` module of
reference `record` types is also generated for editor documentation.

### Project structure

```
csharp/
├── BluefinTecsMerchantServicesSDK.csproj    -- Library project (compiles everything except test/)
├── core/                       -- Main SDK client, config, entity base, error type
├── entity/                     -- Entity implementations
├── feature/                    -- Built-in features (Base, Test, Log, ...)
├── utility/                    -- Utility functions and the vendored struct library
└── test/                       -- xUnit test suites
```

The main client class (`BluefinTecsMerchantServicesSDK`, namespace
`BluefinTecsMerchantServicesSdk`) exposes the entity accessors. Reference entity or
utility types directly only when needed.

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
