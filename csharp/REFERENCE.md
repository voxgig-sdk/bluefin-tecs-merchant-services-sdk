# BluefinTecsMerchantServices C# SDK Reference

Complete API reference for the BluefinTecsMerchantServices C# SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```csharp
using BluefinTecsMerchantServicesSdk;

var client = new BluefinTecsMerchantServicesSDK(options);
```

Create a new SDK client instance. `options` is a
`Dictionary<string, object?>`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Dictionary` | SDK configuration options. |
| `options["apikey"]` | `string` | API key for authentication. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `Dictionary` | Custom headers for all requests. |
| `options["feature"]` | `Dictionary` | Feature configuration. |
| `options["system"]` | `Dictionary` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.TestSDK(testopts = null, sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```csharp
var client = BluefinTecsMerchantServicesSDK.TestSDK(null, null);
```


### Instance Methods

#### `CancelTransaction(entopts = null)`

Create a new `CancelTransaction` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `CheckCardBlackListed(entopts = null)`

Create a new `CheckCardBlackListed` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `CreateProduct(entopts = null)`

Create a new `CreateProduct` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `DeactivateTerminal(entopts = null)`

Create a new `DeactivateTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `DigitalServicesApi(entopts = null)`

Create a new `DigitalServicesApi` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EcDataEcom(entopts = null)`

Create a new `EcDataEcom` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EcomParameter(entopts = null)`

Create a new `EcomParameter` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EcrData(entopts = null)`

Create a new `EcrData` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EmvData(entopts = null)`

Create a new `EmvData` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EnableAcquiring(entopts = null)`

Create a new `EnableAcquiring` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `GetMerchantContractNumber(entopts = null)`

Create a new `GetMerchantContractNumber` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `GetTemplateXml(entopts = null)`

Create a new `GetTemplateXml` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `IntroduceMandator(entopts = null)`

Create a new `IntroduceMandator` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `IntroducePackage(entopts = null)`

Create a new `IntroducePackage` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `KeepAlive(entopts = null)`

Create a new `KeepAlive` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `ListTerminal(entopts = null)`

Create a new `ListTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MandatorClearingExport(entopts = null)`

Create a new `MandatorClearingExport` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MandatorClearingExportDownload(entopts = null)`

Create a new `MandatorClearingExportDownload` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MandatorClearingExportSummary(entopts = null)`

Create a new `MandatorClearingExportSummary` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MerchantPortalServicesApi(entopts = null)`

Create a new `MerchantPortalServicesApi` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MoveTid(entopts = null)`

Create a new `MoveTid` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `PaymentManual(entopts = null)`

Create a new `PaymentManual` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `PaymentSred(entopts = null)`

Create a new `PaymentSred` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `PreAuthTransactionCompletion(entopts = null)`

Create a new `PreAuthTransactionCompletion` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `ReactivateTerminal(entopts = null)`

Create a new `ReactivateTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `RefundTransaction(entopts = null)`

Create a new `RefundTransaction` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `RegisterTecsCompany(entopts = null)`

Create a new `RegisterTecsCompany` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `RegisterTerminal(entopts = null)`

Create a new `RegisterTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `ReportData(entopts = null)`

Create a new `ReportData` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `StatusTransaction(entopts = null)`

Create a new `StatusTransaction` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `StoreTerminalParameter(entopts = null)`

Create a new `StoreTerminalParameter` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TerminalId(entopts = null)`

Create a new `TerminalId` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionHistory(entopts = null)`

Create a new `TransactionHistory` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionsCount(entopts = null)`

Create a new `TransactionsCount` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionsCountCardBrand(entopts = null)`

Create a new `TransactionsCountCardBrand` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionsTurnover(entopts = null)`

Create a new `TransactionsTurnover` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `UpdateMerchant(entopts = null)`

Create a new `UpdateMerchant` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `UpdateTemplateXml(entopts = null)`

Create a new `UpdateTemplateXml` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `Version(entopts = null)`

Create a new `Version` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `OptionsMap() -> Dictionary`

Return a deep copy of the current SDK options.

#### `GetUtility() -> Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs = null) -> Dictionary`

Make a direct HTTP request to any API endpoint. Returns a result
`Dictionary<string, object?>` with `ok`, `status`, `headers`, and `data`
(or `err` on failure). This escape hatch never raises — branch on
`result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Dictionary` | Path parameter values. |
| `fetchargs["query"]` | `Dictionary` | Query string parameters. |
| `fetchargs["headers"]` | `Dictionary` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `object?` | Request body (dictionaries are JSON-serialized). |

**Returns:** `Dictionary<string, object?>`

#### `Prepare(fetchargs = null) -> Dictionary`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```csharp
var cancelTransaction = client.CancelTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `long` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `long` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `long` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `txType` | `string` | No |  |
| `userData` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerId` | - |
| `acquirerName` | - |
| `actualBonusPoints` | - |
| `amount` | Yes |
| `authorizationCode` | - |
| `balanceAmount` | - |
| `cardBrand` | - |
| `cardNumber` | - |
| `clientId` | - |
| `currency` | - |
| `cvc` | - |
| `ecData` | - |
| `ecrData` | - |
| `emvData` | - |
| `exchangeFee` | - |
| `exchangeRate` | - |
| `languageCode` | - |
| `merchantAddress` | - |
| `merchantName` | - |
| `merchantNumber` | - |
| `messageType` | Yes |
| `originalTraceNumber` | - |
| `originalTransactionId` | Yes |
| `password` | - |
| `paymentReason` | - |
| `receiptFooter` | - |
| `receiptHeader` | - |
| `receiptLayout` | - |
| `receiptNumber` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `serialNumber` | - |
| `svc` | - |
| `terminalId` | - |
| `terminalLocation` | - |
| `traceNumber` | - |
| `transactionDate` | Yes |
| `transactionId` | Yes |
| `txType` | - |
| `userData` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.CancelTransaction().Create(new Dictionary<string, object?>
{
    ["clientId"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receiptNumber"] = "example_receiptNumber",  // string
    ["terminalId"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `CancelTransaction` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## CheckCardBlackListed

```csharp
var checkCardBlackListed = client.CheckCardBlackListed();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.CheckCardBlackListed().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## CreateProduct

```csharp
var createProduct = client.CreateProduct();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `long` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.CreateProduct().Create(new Dictionary<string, object?>
{
    ["templateName"] = "example_templateName",  // string
    ["templateType"] = "example_templateType",  // string
    ["templateXml"] = "example_templateXml",  // string
    ["terminalType"] = "example_terminalType",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `CreateProduct` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## DeactivateTerminal

```csharp
var deactivateTerminal = client.DeactivateTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.DeactivateTerminal().Create(new Dictionary<string, object?>
{
    ["deactivationReason"] = "example_deactivationReason",  // string
    ["terminalId"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## DigitalServicesApi

```csharp
var digitalServicesApi = client.DigitalServicesApi();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `txCount` | `long` | No |  |
| `txIdEnd` | `string` | No |  |
| `txIdStart` | `string` | No |  |
| `txSeqNoEnd` | `long` | No |  |
| `txSeqNoStart` | `long` | No |  |
| `txTotal` | `long` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.DigitalServicesApi().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.DigitalServicesApi().Load(null);
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EcDataEcom

```csharp
var ecDataEcom = client.EcDataEcom();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EcDataEcom().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
    ["transactionId"] = "example_transactionId",  // string
    ["transactionType"] = "example_transactionType",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EcDataEcom` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EcomParameter

```csharp
var ecomParameter = client.EcomParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EcomParameter().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EcomParameter` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EcrData

```csharp
var ecrData = client.EcrData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EcrData().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
    ["transactionId"] = "example_transactionId",  // string
    ["transactionType"] = "example_transactionType",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EcrData` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EmvData

```csharp
var emvData = client.EmvData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EmvData().Create(new Dictionary<string, object?>
{
    ["terminalId"] = 1L,  // long
    ["transactionId"] = "example_transactionId",  // string
    ["transactionType"] = "example_transactionType",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EmvData` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EnableAcquiring

```csharp
var enableAcquiring = client.EnableAcquiring();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `long` | No |  |
| `additionalData` | `Dictionary<string, object?>` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchantCategoryCode` | `long` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sortingCode` | `long` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalIds` | `List<object?>` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EnableAcquiring().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
    ["currency"] = "example_currency",  // string
    ["merchantCategoryCode"] = 1L,  // long
    ["packageOrderUuid"] = "example_packageOrderUuid",  // string
    ["productOrderUuid"] = "example_productOrderUuid",  // string
    ["templateName"] = "example_templateName",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## GetMerchantContractNumber

```csharp
var getMerchantContractNumber = client.GetMerchantContractNumber();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.GetMerchantContractNumber().Create(new Dictionary<string, object?>
{
    ["merchantContractNumber"] = "example_merchantContractNumber",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## GetTemplateXml

```csharp
var getTemplateXml = client.GetTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.GetTemplateXml().Create(new Dictionary<string, object?>
{
    ["templateName"] = "example_templateName",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## IntroduceMandator

```csharp
var introduceMandator = client.IntroduceMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.IntroduceMandator().Create(new Dictionary<string, object?>
{
    ["mandatorName"] = "example_mandatorName",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## IntroducePackage

```csharp
var introducePackage = client.IntroducePackage();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.IntroducePackage().Create(new Dictionary<string, object?>
{
    ["terminalTemplateDescription"] = "example_terminalTemplateDescription",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `IntroducePackage` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## KeepAlive

```csharp
var keepAlive = client.KeepAlive();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `long` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.KeepAlive().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `KeepAlive` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## ListTerminal

```csharp
var listTerminal = client.ListTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `List<object?>` | No |  |
| `filter` | `Dictionary<string, object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `List<object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.ListTerminal().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `ListTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MandatorClearingExport

```csharp
var mandatorClearingExport = client.MandatorClearingExport();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `records` | `List<object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MandatorClearingExport().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MandatorClearingExportDownload

```csharp
var mandatorClearingExportDownload = client.MandatorClearingExportDownload();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `fileId` | `string` | No |  |
| `filenameTemplate` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MandatorClearingExportDownload().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.MandatorClearingExportDownload().Load(new Dictionary<string, object?> { ["id"] = "mandator_clearing_export_download_id" });
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MandatorClearingExportSummary

```csharp
var mandatorClearingExportSummary = client.MandatorClearingExportSummary();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `records` | `List<object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MandatorClearingExportSummary().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MerchantPortalServicesApi

```csharp
var merchantPortalServicesApi = client.MerchantPortalServicesApi();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `long` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `long` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MerchantPortalServicesApi().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MoveTid

```csharp
var moveTid = client.MoveTid();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `List<object?>` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MoveTid().Create(new Dictionary<string, object?>
{
    ["productorderuuids"] = new List<object?>(),  // List<object?>
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MoveTid` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## PaymentManual

```csharp
var paymentManual = client.PaymentManual();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `amount` | `long` | Yes |  |
| `authorizationNumber` | `string` | No |  |
| `cardNumber` | `string` | Yes |  |
| `cardType` | `string` | No |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `dateTimeTx` | `string` | No |  |
| `expDate` | `string` | Yes |  |
| `merchantId` | `string` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `responseCode` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `txtype` | `string` | Yes |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerName` | - |
| `amount` | - |
| `authorizationNumber` | - |
| `cardNumber` | - |
| `cardType` | - |
| `currency` | - |
| `cvc` | - |
| `dateTimeTx` | - |
| `expDate` | - |
| `merchantId` | - |
| `originalTransactionId` | - |
| `password` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `terminalId` | Yes |
| `transactionId` | - |
| `txtype` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.PaymentManual().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["cardNumber"] = "example_cardNumber",  // string
    ["currency"] = "example_currency",  // string
    ["expDate"] = "example_expDate",  // string
    ["txtype"] = "example_txtype",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `PaymentManual` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## PaymentSred

```csharp
var paymentSred = client.PaymentSred();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `device` | `string` | No |  |
| `devicePayload` | `string` | Yes |  |
| `expDate` | `string` | No |  |
| `mode` | `string` | No |  |
| `panMasked` | `string` | No |  |
| `password` | `string` | No |  |
| `serial` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `terminalId` | `string` | Yes |  |
| `txtype` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.PaymentSred().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["devicePayload"] = "example_devicePayload",  // string
    ["terminalId"] = "example_terminalId",  // string
    ["txtype"] = "example_txtype",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `PaymentSred` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## PreAuthTransactionCompletion

```csharp
var preAuthTransactionCompletion = client.PreAuthTransactionCompletion();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `cardNumberReference` | `string` | Yes |  |
| `clientId` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `long` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `long` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `long` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | Yes |  |
| `txType` | `string` | No |  |
| `userData` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerId` | - |
| `acquirerName` | - |
| `actualBonusPoints` | - |
| `amount` | Yes |
| `authorizationCode` | - |
| `balanceAmount` | - |
| `cardBrand` | - |
| `cardNumber` | - |
| `cardNumberReference` | - |
| `clientId` | - |
| `currency` | - |
| `cvc` | - |
| `ecData` | - |
| `ecrData` | - |
| `emvData` | - |
| `exchangeFee` | - |
| `exchangeRate` | - |
| `languageCode` | - |
| `merchantAddress` | - |
| `merchantName` | - |
| `merchantNumber` | - |
| `messageType` | - |
| `originalTraceNumber` | - |
| `originalTransactionId` | Yes |
| `password` | - |
| `paymentReason` | - |
| `receiptFooter` | - |
| `receiptHeader` | - |
| `receiptLayout` | - |
| `receiptNumber` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `serialNumber` | - |
| `svc` | - |
| `terminalId` | - |
| `terminalLocation` | - |
| `traceNumber` | - |
| `transactionDate` | Yes |
| `transactionId` | Yes |
| `transactionType` | - |
| `txType` | - |
| `userData` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.PreAuthTransactionCompletion().Create(new Dictionary<string, object?>
{
    ["cardNumberReference"] = "example_cardNumberReference",  // string
    ["clientId"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receiptNumber"] = "example_receiptNumber",  // string
    ["terminalId"] = 1L,  // long
    ["transactionType"] = "example_transactionType",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## ReactivateTerminal

```csharp
var reactivateTerminal = client.ReactivateTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.ReactivateTerminal().Create(new Dictionary<string, object?>
{
    ["reactivationReason"] = "example_reactivationReason",  // string
    ["terminalId"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## RefundTransaction

```csharp
var refundTransaction = client.RefundTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `long` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `long` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `long` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `txType` | `string` | No |  |
| `userData` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerId` | - |
| `acquirerName` | - |
| `actualBonusPoints` | - |
| `amount` | Yes |
| `authorizationCode` | - |
| `balanceAmount` | - |
| `cardBrand` | - |
| `cardNumber` | - |
| `clientId` | - |
| `currency` | - |
| `cvc` | - |
| `ecData` | - |
| `ecrData` | - |
| `emvData` | - |
| `exchangeFee` | - |
| `exchangeRate` | - |
| `languageCode` | - |
| `merchantAddress` | - |
| `merchantName` | - |
| `merchantNumber` | - |
| `messageType` | - |
| `originalTraceNumber` | - |
| `originalTransactionId` | Yes |
| `password` | - |
| `paymentReason` | - |
| `receiptFooter` | - |
| `receiptHeader` | - |
| `receiptLayout` | - |
| `receiptNumber` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `serialNumber` | - |
| `svc` | - |
| `terminalId` | - |
| `terminalLocation` | - |
| `traceNumber` | - |
| `transactionDate` | Yes |
| `transactionId` | Yes |
| `txType` | - |
| `userData` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.RefundTransaction().Create(new Dictionary<string, object?>
{
    ["clientId"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receiptNumber"] = "example_receiptNumber",  // string
    ["terminalId"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `RefundTransaction` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## RegisterTecsCompany

```csharp
var registerTecsCompany = client.RegisterTecsCompany();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `long` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.RegisterTecsCompany().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
    ["packageOrderUuid"] = "example_packageOrderUuid",  // string
    ["productOrderUuid"] = "example_productOrderUuid",  // string
    ["templateName"] = "example_templateName",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## RegisterTerminal

```csharp
var registerTerminal = client.RegisterTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `Dictionary<string, object?>` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `tecsWebSecretKey` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalCountryCode` | `string` | Yes |  |
| `terminalId` | `long` | No |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalLanguageCode` | `string` | Yes |  |
| `terminalLocation` | `string` | Yes |  |
| `terminalSerialNumber` | `string` | No |  |
| `tokenIOAlias` | `string` | No |  |
| `tokenIOIban` | `string` | No |  |
| `tokenIOMemberId` | `string` | No |  |
| `webShopUrl` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.RegisterTerminal().Create(new Dictionary<string, object?>
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

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## ReportData

```csharp
var reportData = client.ReportData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `List<object?>` | No |  |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `Dictionary<string, object?>` | No |  |
| `sumOverDebitTx` | `Dictionary<string, object?>` | No |  |
| `terminalId` | `long` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.ReportData().Create(new Dictionary<string, object?>
{
    ["clearingDateFrom"] = "example_clearingDateFrom",  // string
    ["clearingDateTo"] = "example_clearingDateTo",  // string
    ["corporateId"] = "example_corporateId",  // string
    ["currency"] = "example_currency",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `ReportData` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## StatusTransaction

```csharp
var statusTransaction = client.StatusTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `long` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `object?` | No |  |
| `authorizationDate` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardEntry` | `string` | No |  |
| `cardExpiration` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clearingAmount` | `long` | No |  |
| `clearingBatchId` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingDate` | `string` | No |  |
| `clearingProcessedDate` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `clientId` | `long` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvApplicationId` | `string` | No |  |
| `emvApplicationLabel` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `originalClientId` | `string` | No |  |
| `originalTerminalId` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseCodeFromAS` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `settlementStatus` | `string` | No |  |
| `sourceId` | `long` | No |  |
| `tecsengineResponseCode` | `long` | No |  |
| `tecsengineResponseText` | `string` | No |  |
| `terminalEndOfDayDate` | `string` | No |  |
| `terminalId` | `long` | No |  |
| `terminalLocation` | `string` | No |  |
| `tipAmount` | `long` | No |  |
| `traceNumber` | `long` | No |  |
| `transactionClearingDate` | `string` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionSeqNumber` | `long` | No |  |
| `transactionServerDate` | `string` | No |  |
| `transactionSource` | `string` | No |  |
| `transactionType` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.StatusTransaction().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `StatusTransaction` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## StoreTerminalParameter

```csharp
var storeTerminalParameter = client.StoreTerminalParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `Dictionary<string, object?>` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.StoreTerminalParameter().Create(new Dictionary<string, object?>
{
    ["serialNumber"] = "example_serialNumber",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TerminalId

```csharp
var terminalId = client.TerminalId();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `List<object?>` | Yes |  |
| `duplicateTerminalIds` | `List<object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `List<object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TerminalId().Create(new Dictionary<string, object?>
{
    ["deviceSerialNumber"] = new List<object?>(),  // List<object?>
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TerminalId` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionHistory

```csharp
var transactionHistory = client.TransactionHistory();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `paymentTokenPublicId` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `long` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `long` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionHistories` | `List<object?>` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionHistory().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionHistory` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionsCount

```csharp
var transactionsCount = client.TransactionsCount();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `List<object?>` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `transactionDateFrom` | Yes |
| `transactionDateTo` | Yes |
| `transactionsCount` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionsCount().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionsCount` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionsCountCardBrand

```csharp
var transactionsCountCardBrand = client.TransactionsCountCardBrand();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `List<object?>` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `transactionDateFrom` | Yes |
| `transactionDateTo` | Yes |
| `transactionsCount` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionsCountCardBrand().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionsTurnover

```csharp
var transactionsTurnover = client.TransactionsTurnover();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `List<object?>` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `transactionDateFrom` | Yes |
| `transactionDateTo` | Yes |
| `turnovers` | - |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionsTurnover().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## UpdateMerchant

```csharp
var updateMerchant = client.UpdateMerchant();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchantCategoryCode` | `string` | No |  |
| `name` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vuNummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.UpdateMerchant().Create(new Dictionary<string, object?>
{
    ["corporateUuid"] = "example_corporateUuid",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## UpdateTemplateXml

```csharp
var updateTemplateXml = client.UpdateTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.UpdateTemplateXml().Create(new Dictionary<string, object?>
{
    ["templateName"] = "example_templateName",  // string
    ["templateXml"] = "example_templateXml",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## Version

```csharp
var version = client.Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.Version().Load(null);
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `Version` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```csharp
var client = new BluefinTecsMerchantServicesSDK(new Dictionary<string, object?>
{
    ["feature"] = new Dictionary<string, object?>
    {
        ["test"] = new Dictionary<string, object?> { ["active"] = true },
    },
});
```

