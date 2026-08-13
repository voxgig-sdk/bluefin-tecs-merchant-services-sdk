# BluefinTecsMerchantServices Swift SDK Reference

Complete API reference for the BluefinTecsMerchantServices Swift SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```swift
let client = BluefinTecsMerchantServicesSDK(options)
```

Create a new SDK client instance. `options` is a `VMap` of `Value`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `VMap` | SDK configuration options. |
| `options["apikey"]` | `String` | API key for authentication. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `VMap` | Custom headers for all requests. |
| `options["feature"]` | `VMap` | Feature configuration. |
| `options["system"]` | `VMap` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts)`

Create a test client with mock features active. Both arguments may be `nil`.

```swift
let client = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
```


### Instance Methods

#### `CancelTransaction(entopts)`

Create a new `CancelTransaction` entity instance. Pass `nil` for no initial
options.

#### `CheckCardBlackListed(entopts)`

Create a new `CheckCardBlackListed` entity instance. Pass `nil` for no initial
options.

#### `CreateProduct(entopts)`

Create a new `CreateProduct` entity instance. Pass `nil` for no initial
options.

#### `DeactivateTerminal(entopts)`

Create a new `DeactivateTerminal` entity instance. Pass `nil` for no initial
options.

#### `DigitalServicesApi(entopts)`

Create a new `DigitalServicesApi` entity instance. Pass `nil` for no initial
options.

#### `EcDataEcom(entopts)`

Create a new `EcDataEcom` entity instance. Pass `nil` for no initial
options.

#### `EcomParameter(entopts)`

Create a new `EcomParameter` entity instance. Pass `nil` for no initial
options.

#### `EcrData(entopts)`

Create a new `EcrData` entity instance. Pass `nil` for no initial
options.

#### `EmvData(entopts)`

Create a new `EmvData` entity instance. Pass `nil` for no initial
options.

#### `EnableAcquiring(entopts)`

Create a new `EnableAcquiring` entity instance. Pass `nil` for no initial
options.

#### `GetMerchantContractNumber(entopts)`

Create a new `GetMerchantContractNumber` entity instance. Pass `nil` for no initial
options.

#### `GetTemplateXml(entopts)`

Create a new `GetTemplateXml` entity instance. Pass `nil` for no initial
options.

#### `IntroduceMandator(entopts)`

Create a new `IntroduceMandator` entity instance. Pass `nil` for no initial
options.

#### `IntroducePackage(entopts)`

Create a new `IntroducePackage` entity instance. Pass `nil` for no initial
options.

#### `KeepAlive(entopts)`

Create a new `KeepAlive` entity instance. Pass `nil` for no initial
options.

#### `ListTerminal(entopts)`

Create a new `ListTerminal` entity instance. Pass `nil` for no initial
options.

#### `MandatorClearingExport(entopts)`

Create a new `MandatorClearingExport` entity instance. Pass `nil` for no initial
options.

#### `MandatorClearingExportDownload(entopts)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `nil` for no initial
options.

#### `MandatorClearingExportSummary(entopts)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `nil` for no initial
options.

#### `MerchantPortalServicesApi(entopts)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `nil` for no initial
options.

#### `MoveTid(entopts)`

Create a new `MoveTid` entity instance. Pass `nil` for no initial
options.

#### `PaymentManual(entopts)`

Create a new `PaymentManual` entity instance. Pass `nil` for no initial
options.

#### `PaymentSred(entopts)`

Create a new `PaymentSred` entity instance. Pass `nil` for no initial
options.

#### `PreAuthTransactionCompletion(entopts)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `nil` for no initial
options.

#### `ReactivateTerminal(entopts)`

Create a new `ReactivateTerminal` entity instance. Pass `nil` for no initial
options.

#### `RefundTransaction(entopts)`

Create a new `RefundTransaction` entity instance. Pass `nil` for no initial
options.

#### `RegisterTecsCompany(entopts)`

Create a new `RegisterTecsCompany` entity instance. Pass `nil` for no initial
options.

#### `RegisterTerminal(entopts)`

Create a new `RegisterTerminal` entity instance. Pass `nil` for no initial
options.

#### `ReportData(entopts)`

Create a new `ReportData` entity instance. Pass `nil` for no initial
options.

#### `StatusTransaction(entopts)`

Create a new `StatusTransaction` entity instance. Pass `nil` for no initial
options.

#### `StoreTerminalParameter(entopts)`

Create a new `StoreTerminalParameter` entity instance. Pass `nil` for no initial
options.

#### `TerminalId(entopts)`

Create a new `TerminalId` entity instance. Pass `nil` for no initial
options.

#### `TransactionHistory(entopts)`

Create a new `TransactionHistory` entity instance. Pass `nil` for no initial
options.

#### `TransactionsCount(entopts)`

Create a new `TransactionsCount` entity instance. Pass `nil` for no initial
options.

#### `TransactionsCountCardBrand(entopts)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `nil` for no initial
options.

#### `TransactionsTurnover(entopts)`

Create a new `TransactionsTurnover` entity instance. Pass `nil` for no initial
options.

#### `UpdateMerchant(entopts)`

Create a new `UpdateMerchant` entity instance. Pass `nil` for no initial
options.

#### `UpdateTemplateXml(entopts)`

Create a new `UpdateTemplateXml` entity instance. Pass `nil` for no initial
options.

#### `Version(entopts)`

Create a new `Version` entity instance. Pass `nil` for no initial
options.

#### `optionsMap() -> VMap`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> VMap`

Make a direct HTTP request to any API endpoint. Returns a result `VMap`
with `ok`, `status`, `headers`, and `data` (or `err` on failure).
This escape hatch never throws — branch on `result.entries["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `VMap` | Path parameter values. |
| `fetchargs["query"]` | `VMap` | Query string parameters. |
| `fetchargs["headers"]` | `VMap` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Value` | Request body (maps are JSON-serialized). |

**Returns:** `VMap`

#### `prepare(fetchargs) throws -> VMap`

Prepare a fetch definition without sending. Returns the `fetchdef` and throws on error.


---

## CancelTransaction

```swift
let cancelTransaction = client.CancelTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Int` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `txType` | `String` | No |  |
| `userData` | `String` | No |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.CancelTransaction().create(VMap([
    ("clientId", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receiptNumber", .string("example_receiptNumber")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CancelTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## CheckCardBlackListed

```swift
let checkCardBlackListed = client.CheckCardBlackListed()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.CheckCardBlackListed().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## CreateProduct

```swift
let createProduct = client.CreateProduct()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `Int` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateType` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |
| `terminalType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.CreateProduct().create(VMap([
    ("templateName", .string("example_templateName")),  // String
    ("templateType", .string("example_templateType")),  // String
    ("templateXml", .string("example_templateXml")),  // String
    ("terminalType", .string("example_terminalType"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CreateProduct` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## DeactivateTerminal

```swift
let deactivateTerminal = client.DeactivateTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | No |  |
| `deactivationReason` | `String` | Yes |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.DeactivateTerminal().create(VMap([
    ("deactivationReason", .string("example_deactivationReason")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## DigitalServicesApi

```swift
let digitalServicesApi = client.DigitalServicesApi()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `txCount` | `Int` | No |  |
| `txIdEnd` | `String` | No |  |
| `txIdStart` | `String` | No |  |
| `txSeqNoEnd` | `Int` | No |  |
| `txSeqNoStart` | `Int` | No |  |
| `txTotal` | `Int` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.DigitalServicesApi().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```

#### `load(reqmatch, ctrl) throws -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```swift
let result = try client.DigitalServicesApi().load(nil, nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcDataEcom

```swift
let ecDataEcom = client.EcDataEcom()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EcDataEcom().create(VMap([
    ("terminalId", .int(1)),  // Int
    ("transactionId", .string("example_transactionId")),  // String
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcDataEcom` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcomParameter

```swift
let ecomParameter = client.EcomParameter()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `String` | No |  |
| `ecomSkey` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EcomParameter().create(VMap([
    ("terminalId", .int(1))  // Int
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcomParameter` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcrData

```swift
let ecrData = client.EcrData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EcrData().create(VMap([
    ("terminalId", .int(1)),  // Int
    ("transactionId", .string("example_transactionId")),  // String
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcrData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EmvData

```swift
let emvData = client.EmvData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EmvData().create(VMap([
    ("terminalId", .int(1)),  // Int
    ("transactionId", .string("example_transactionId")),  // String
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EmvData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EnableAcquiring

```swift
let enableAcquiring = client.EnableAcquiring()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `Int` | No |  |
| `additionalData` | `VMap` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchantCategoryCode` | `Int` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sortingCode` | `Int` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalIds` | `[Value]` | No |  |
| `vuNummer` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EnableAcquiring().create(VMap([
    ("corporateUuid", .string("example_corporateUuid")),  // String
    ("currency", .string("example_currency")),  // String
    ("merchantCategoryCode", .int(1)),  // Int
    ("packageOrderUuid", .string("example_packageOrderUuid")),  // String
    ("productOrderUuid", .string("example_productOrderUuid")),  // String
    ("templateName", .string("example_templateName"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## GetMerchantContractNumber

```swift
let getMerchantContractNumber = client.GetMerchantContractNumber()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.GetMerchantContractNumber().create(VMap([
    ("merchantContractNumber", .string("example_merchantContractNumber"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## GetTemplateXml

```swift
let getTemplateXml = client.GetTemplateXml()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.GetTemplateXml().create(VMap([
    ("templateName", .string("example_templateName"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## IntroduceMandator

```swift
let introduceMandator = client.IntroduceMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.IntroduceMandator().create(VMap([
    ("mandatorName", .string("example_mandatorName"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## IntroducePackage

```swift
let introducePackage = client.IntroducePackage()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalTemplateDescription` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.IntroducePackage().create(VMap([
    ("terminalTemplateDescription", .string("example_terminalTemplateDescription"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroducePackage` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## KeepAlive

```swift
let keepAlive = client.KeepAlive()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `kaDateTimeFrom` | `String` | No |  |
| `kaDateTimeTo` | `String` | No |  |
| `keepAliveData` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalDateTimeFrom` | `String` | No |  |
| `terminalDateTimeTo` | `String` | No |  |
| `terminalId` | `Int` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.KeepAlive().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `KeepAlive` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ListTerminal

```swift
let listTerminal = client.ListTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `[Value]` | No |  |
| `filter` | `VMap` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `[Value]` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.ListTerminal().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ListTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExport

```swift
let mandatorClearingExport = client.MandatorClearingExport()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `pagination` | `VMap` | No |  |
| `records` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MandatorClearingExport().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExportDownload

```swift
let mandatorClearingExportDownload = client.MandatorClearingExportDownload()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `fileId` | `String` | No |  |
| `filenameTemplate` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MandatorClearingExportDownload().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```

#### `load(reqmatch, ctrl) throws -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```swift
let result = try client.MandatorClearingExportDownload().load(VMap([("id", .string("mandator_clearing_export_download_id"))]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExportSummary

```swift
let mandatorClearingExportSummary = client.MandatorClearingExportSummary()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `records` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MandatorClearingExportSummary().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MerchantPortalServicesApi

```swift
let merchantPortalServicesApi = client.MerchantPortalServicesApi()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `VMap` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `Int` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `Int` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MerchantPortalServicesApi().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MoveTid

```swift
let moveTid = client.MoveTid()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `[Value]` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `targetPackageorderuuid` | `String` | No |  |
| `targetProductorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MoveTid().create(VMap([
    ("productorderuuids", .list([]))  // [Value]
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MoveTid` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PaymentManual

```swift
let paymentManual = client.PaymentManual()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String` | No |  |
| `amount` | `Int` | Yes |  |
| `authorizationNumber` | `String` | No |  |
| `cardNumber` | `String` | Yes |  |
| `cardType` | `String` | No |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `dateTimeTx` | `String` | No |  |
| `expDate` | `String` | Yes |  |
| `merchantId` | `String` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `responseCode` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `txtype` | `String` | Yes |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.PaymentManual().create(VMap([
    ("amount", .int(1)),  // Int
    ("cardNumber", .string("example_cardNumber")),  // String
    ("currency", .string("example_currency")),  // String
    ("expDate", .string("example_expDate")),  // String
    ("txtype", .string("example_txtype"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentManual` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PaymentSred

```swift
let paymentSred = client.PaymentSred()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `device` | `String` | No |  |
| `devicePayload` | `String` | Yes |  |
| `expDate` | `String` | No |  |
| `mode` | `String` | No |  |
| `panMasked` | `String` | No |  |
| `password` | `String` | No |  |
| `serial` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `terminalId` | `String` | Yes |  |
| `txtype` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.PaymentSred().create(VMap([
    ("amount", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("devicePayload", .string("example_devicePayload")),  // String
    ("terminalId", .string("example_terminalId")),  // String
    ("txtype", .string("example_txtype"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentSred` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PreAuthTransactionCompletion

```swift
let preAuthTransactionCompletion = client.PreAuthTransactionCompletion()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `cardNumberReference` | `String` | Yes |  |
| `clientId` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Int` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | Yes |  |
| `txType` | `String` | No |  |
| `userData` | `String` | No |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.PreAuthTransactionCompletion().create(VMap([
    ("cardNumberReference", .string("example_cardNumberReference")),  // String
    ("clientId", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receiptNumber", .string("example_receiptNumber")),  // String
    ("terminalId", .int(1)),  // Int
    ("transactionType", .string("example_transactionType"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ReactivateTerminal

```swift
let reactivateTerminal = client.ReactivateTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | No |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `reactivationReason` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.ReactivateTerminal().create(VMap([
    ("reactivationReason", .string("example_reactivationReason")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RefundTransaction

```swift
let refundTransaction = client.RefundTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Int` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `txType` | `String` | No |  |
| `userData` | `String` | No |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.RefundTransaction().create(VMap([
    ("clientId", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receiptNumber", .string("example_receiptNumber")),  // String
    ("terminalId", .int(1))  // Int
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RefundTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RegisterTecsCompany

```swift
let registerTecsCompany = client.RegisterTecsCompany()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `partnerId` | `Int` | No |  |
| `partnerName` | `String` | No |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.RegisterTecsCompany().create(VMap([
    ("corporateUuid", .string("example_corporateUuid")),  // String
    ("packageOrderUuid", .string("example_packageOrderUuid")),  // String
    ("productOrderUuid", .string("example_productOrderUuid")),  // String
    ("templateName", .string("example_templateName"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RegisterTerminal

```swift
let registerTerminal = client.RegisterTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `VMap` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `tecsWebSecretKey` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalCountryCode` | `String` | Yes |  |
| `terminalId` | `Int` | No |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalLanguageCode` | `String` | Yes |  |
| `terminalLocation` | `String` | Yes |  |
| `terminalSerialNumber` | `String` | No |  |
| `tokenIOAlias` | `String` | No |  |
| `tokenIOIban` | `String` | No |  |
| `tokenIOMemberId` | `String` | No |  |
| `webShopUrl` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.RegisterTerminal().create(VMap([
    ("corporateUuid", .string("example_corporateUuid")),  // String
    ("packageOrderUuid", .string("example_packageOrderUuid")),  // String
    ("productOrderUuid", .string("example_productOrderUuid")),  // String
    ("templateName", .string("example_templateName")),  // String
    ("terminalCountryCode", .string("example_terminalCountryCode")),  // String
    ("terminalLanguageCode", .string("example_terminalLanguageCode")),  // String
    ("terminalLocation", .string("example_terminalLocation"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ReportData

```swift
let reportData = client.ReportData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `[Value]` | No |  |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `corporateId` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sumOverCreditTx` | `VMap` | No |  |
| `sumOverDebitTx` | `VMap` | No |  |
| `terminalId` | `Int` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.ReportData().create(VMap([
    ("clearingDateFrom", .string("example_clearingDateFrom")),  // String
    ("clearingDateTo", .string("example_clearingDateTo")),  // String
    ("corporateId", .string("example_corporateId")),  // String
    ("currency", .string("example_currency"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReportData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## StatusTransaction

```swift
let statusTransaction = client.StatusTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String` | No |  |
| `acquirerTerminalId` | `String` | No |  |
| `amount` | `Int` | No |  |
| `applicationCryptogram` | `String` | No |  |
| `authorizationCode` | `Value` | No |  |
| `authorizationDate` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardEntry` | `String` | No |  |
| `cardExpiration` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clearingAmount` | `Int` | No |  |
| `clearingBatchId` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingDate` | `String` | No |  |
| `clearingProcessedDate` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `clientId` | `Int` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvApplicationId` | `String` | No |  |
| `emvApplicationLabel` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `originalClientId` | `String` | No |  |
| `originalTerminalId` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseCodeFromAS` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `settlementStatus` | `String` | No |  |
| `sourceId` | `Int` | No |  |
| `tecsengineResponseCode` | `Int` | No |  |
| `tecsengineResponseText` | `String` | No |  |
| `terminalEndOfDayDate` | `String` | No |  |
| `terminalId` | `Int` | No |  |
| `terminalLocation` | `String` | No |  |
| `tipAmount` | `Int` | No |  |
| `traceNumber` | `Int` | No |  |
| `transactionClearingDate` | `String` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionSeqNumber` | `Int` | No |  |
| `transactionServerDate` | `String` | No |  |
| `transactionSource` | `String` | No |  |
| `transactionType` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.StatusTransaction().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StatusTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## StoreTerminalParameter

```swift
let storeTerminalParameter = client.StoreTerminalParameter()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `VMap` | No |  |
| `configVersion` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | Yes |  |
| `tidSent` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.StoreTerminalParameter().create(VMap([
    ("serialNumber", .string("example_serialNumber"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TerminalId

```swift
let terminalId = client.TerminalId()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `[Value]` | Yes |  |
| `duplicateTerminalIds` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `[Value]` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.TerminalId().create(VMap([
    ("deviceSerialNumber", .list([]))  // [Value]
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TerminalId` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionHistory

```swift
let transactionHistory = client.TransactionHistory()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `VMap` | No |  |
| `paymentTokenPublicId` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `Int` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `Int` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionHistories` | `[Value]` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.TransactionHistory().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionHistory` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsCount

```swift
let transactionsCount = client.TransactionsCount()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `[Value]` | No |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.TransactionsCount().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCount` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsCountCardBrand

```swift
let transactionsCountCardBrand = client.TransactionsCountCardBrand()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `[Value]` | No |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.TransactionsCountCardBrand().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsTurnover

```swift
let transactionsTurnover = client.TransactionsTurnover()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `turnovers` | `[Value]` | No |  |

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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.TransactionsTurnover().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## UpdateMerchant

```swift
let updateMerchant = client.UpdateMerchant()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchantCategoryCode` | `String` | No |  |
| `name` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vuNummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.UpdateMerchant().create(VMap([
    ("corporateUuid", .string("example_corporateUuid"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## UpdateTemplateXml

```swift
let updateTemplateXml = client.UpdateTemplateXml()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.UpdateTemplateXml().create(VMap([
    ("templateName", .string("example_templateName")),  // String
    ("templateXml", .string("example_templateXml"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Version

```swift
let version = client.Version()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) throws -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```swift
let result = try client.Version().load(nil, nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `Version` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```swift
let feature = VMap()
feature.entries["test"] = .map([("active", .bool(true))])
let options = VMap()
options.entries["feature"] = .map(feature)
let client = BluefinTecsMerchantServicesSDK(options)
```

