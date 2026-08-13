# BluefinTecsMerchantServices Scala SDK Reference

Complete API reference for the BluefinTecsMerchantServices Scala SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```scala
val client = new BluefinTecsMerchantServicesSDK(options)
```

Create a new SDK client instance. `options` is a `java.util.Map[String, Object]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Map` | SDK configuration options. |
| `options["apikey"]` | `String` | API key for authentication. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Map` | Custom headers for all requests. |
| `options["feature"]` | `Map` | Feature configuration. |
| `options["system"]` | `Map` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts)`

Create a test client with mock features active. Both arguments may be `null`.

```scala
val client = BluefinTecsMerchantServicesSDK.testSDK(null, null)
```


### Instance Methods

#### `cancelTransaction(entopts)`

Create a new `CancelTransaction` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `checkCardBlackListed(entopts)`

Create a new `CheckCardBlackListed` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `createProduct(entopts)`

Create a new `CreateProduct` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `deactivateTerminal(entopts)`

Create a new `DeactivateTerminal` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `digitalServicesApi(entopts)`

Create a new `DigitalServicesApi` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `ecDataEcom(entopts)`

Create a new `EcDataEcom` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `ecomParameter(entopts)`

Create a new `EcomParameter` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `ecrData(entopts)`

Create a new `EcrData` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `emvData(entopts)`

Create a new `EmvData` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `enableAcquiring(entopts)`

Create a new `EnableAcquiring` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `getMerchantContractNumber(entopts)`

Create a new `GetMerchantContractNumber` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `getTemplateXml(entopts)`

Create a new `GetTemplateXml` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `introduceMandator(entopts)`

Create a new `IntroduceMandator` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `introducePackage(entopts)`

Create a new `IntroducePackage` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `keepAlive(entopts)`

Create a new `KeepAlive` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `listTerminal(entopts)`

Create a new `ListTerminal` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `mandatorClearingExport(entopts)`

Create a new `MandatorClearingExport` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `mandatorClearingExportDownload(entopts)`

Create a new `MandatorClearingExportDownload` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `mandatorClearingExportSummary(entopts)`

Create a new `MandatorClearingExportSummary` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `merchantPortalServicesApi(entopts)`

Create a new `MerchantPortalServicesApi` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `moveTid(entopts)`

Create a new `MoveTid` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `paymentManual(entopts)`

Create a new `PaymentManual` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `paymentSred(entopts)`

Create a new `PaymentSred` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `preAuthTransactionCompletion(entopts)`

Create a new `PreAuthTransactionCompletion` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `reactivateTerminal(entopts)`

Create a new `ReactivateTerminal` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `refundTransaction(entopts)`

Create a new `RefundTransaction` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `registerTecsCompany(entopts)`

Create a new `RegisterTecsCompany` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `registerTerminal(entopts)`

Create a new `RegisterTerminal` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `reportData(entopts)`

Create a new `ReportData` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `statusTransaction(entopts)`

Create a new `StatusTransaction` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `storeTerminalParameter(entopts)`

Create a new `StoreTerminalParameter` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `terminalId(entopts)`

Create a new `TerminalId` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `transactionHistory(entopts)`

Create a new `TransactionHistory` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `transactionsCount(entopts)`

Create a new `TransactionsCount` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `transactionsCountCardBrand(entopts)`

Create a new `TransactionsCountCardBrand` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `transactionsTurnover(entopts)`

Create a new `TransactionsTurnover` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `updateMerchant(entopts)`

Create a new `UpdateMerchant` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `updateTemplateXml(entopts)`

Create a new `UpdateTemplateXml` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `version(entopts)`

Create a new `Version` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `optionsMap() -> Map`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> Map`

Make a direct HTTP request to any API endpoint. Returns a result
`java.util.Map[String, Object]` with `ok`, `status`, `headers`, and
`data` (or `err` on failure). This escape hatch never raises — branch on
`result.get("ok")`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Map` | Path parameter values. |
| `fetchargs["query"]` | `Map` | Query string parameters. |
| `fetchargs["headers"]` | `Map` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Object` | Request body (maps are JSON-serialized). |

**Returns:** `java.util.Map[String, Object]`

#### `prepare(fetchargs) -> Map`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```scala
val cancelTransaction = client.cancelTransaction(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `java.lang.Long` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `java.lang.Long` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `java.lang.Long` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `java.lang.Long` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `java.lang.Long` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `java.lang.Long` | No |  |
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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.cancelTransaction(null).create(java.util.Map.of(
    "clientId", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CancelTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## CheckCardBlackListed

```scala
val checkCardBlackListed = client.checkCardBlackListed(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.checkCardBlackListed(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## CreateProduct

```scala
val createProduct = client.createProduct(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `java.lang.Long` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateType` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |
| `terminalType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.createProduct(null).create(java.util.Map.of(
    "templateName", "example_templateName",  // String
    "templateType", "example_templateType",  // String
    "templateXml", "example_templateXml",  // String
    "terminalType", "example_terminalType"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CreateProduct` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## DeactivateTerminal

```scala
val deactivateTerminal = client.deactivateTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | No |  |
| `deactivationReason` | `String` | Yes |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.deactivateTerminal(null).create(java.util.Map.of(
    "deactivationReason", "example_deactivationReason",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## DigitalServicesApi

```scala
val digitalServicesApi = client.digitalServicesApi(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `txCount` | `java.lang.Long` | No |  |
| `txIdEnd` | `String` | No |  |
| `txIdStart` | `String` | No |  |
| `txSeqNoEnd` | `java.lang.Long` | No |  |
| `txSeqNoStart` | `java.lang.Long` | No |  |
| `txTotal` | `java.lang.Long` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.digitalServicesApi(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```scala
val result = client.digitalServicesApi(null).load(null, null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcDataEcom

```scala
val ecDataEcom = client.ecDataEcom(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.ecDataEcom(null).create(java.util.Map.of(
    "terminalId", 1L,  // java.lang.Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcDataEcom` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcomParameter

```scala
val ecomParameter = client.ecomParameter(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `String` | No |  |
| `ecomSkey` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.ecomParameter(null).create(java.util.Map.of(
    "terminalId", 1L  // java.lang.Long
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcomParameter` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcrData

```scala
val ecrData = client.ecrData(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.ecrData(null).create(java.util.Map.of(
    "terminalId", 1L,  // java.lang.Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcrData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EmvData

```scala
val emvData = client.emvData(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.emvData(null).create(java.util.Map.of(
    "terminalId", 1L,  // java.lang.Long
    "transactionId", "example_transactionId",  // String
    "transactionType", "example_transactionType"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EmvData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EnableAcquiring

```scala
val enableAcquiring = client.enableAcquiring(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `java.lang.Long` | No |  |
| `additionalData` | `java.util.Map[String, Object]` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchantCategoryCode` | `java.lang.Long` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `sortingCode` | `java.lang.Long` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalIds` | `java.util.List[Object]` | No |  |
| `vuNummer` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.enableAcquiring(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "currency", "example_currency",  // String
    "merchantCategoryCode", 1L,  // java.lang.Long
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## GetMerchantContractNumber

```scala
val getMerchantContractNumber = client.getMerchantContractNumber(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.getMerchantContractNumber(null).create(java.util.Map.of(
    "merchantContractNumber", "example_merchantContractNumber"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## GetTemplateXml

```scala
val getTemplateXml = client.getTemplateXml(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.getTemplateXml(null).create(java.util.Map.of(
    "templateName", "example_templateName"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## IntroduceMandator

```scala
val introduceMandator = client.introduceMandator(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.introduceMandator(null).create(java.util.Map.of(
    "mandatorName", "example_mandatorName"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## IntroducePackage

```scala
val introducePackage = client.introducePackage(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalTemplateDescription` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.introducePackage(null).create(java.util.Map.of(
    "terminalTemplateDescription", "example_terminalTemplateDescription"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroducePackage` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## KeepAlive

```scala
val keepAlive = client.keepAlive(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `kaDateTimeFrom` | `String` | No |  |
| `kaDateTimeTo` | `String` | No |  |
| `keepAliveData` | `java.util.List[Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalDateTimeFrom` | `String` | No |  |
| `terminalDateTimeTo` | `String` | No |  |
| `terminalId` | `java.lang.Long` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.keepAlive(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `KeepAlive` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ListTerminal

```scala
val listTerminal = client.listTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `java.util.List[Object]` | No |  |
| `filter` | `java.util.Map[String, Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `java.util.List[Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.listTerminal(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ListTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExport

```scala
val mandatorClearingExport = client.mandatorClearingExport(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `records` | `java.util.List[Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.mandatorClearingExport(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExportDownload

```scala
val mandatorClearingExportDownload = client.mandatorClearingExportDownload(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `fileId` | `String` | No |  |
| `filenameTemplate` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.mandatorClearingExportDownload(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```scala
val result = client.mandatorClearingExportDownload(null).load(java.util.Map.of("id", "mandator_clearing_export_download_id"), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExportSummary

```scala
val mandatorClearingExportSummary = client.mandatorClearingExportSummary(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `records` | `java.util.List[Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.mandatorClearingExportSummary(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MerchantPortalServicesApi

```scala
val merchantPortalServicesApi = client.merchantPortalServicesApi(null)
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
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `java.lang.Long` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `java.lang.Long` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.merchantPortalServicesApi(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MoveTid

```scala
val moveTid = client.moveTid(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `java.util.List[Object]` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `targetPackageorderuuid` | `String` | No |  |
| `targetProductorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.moveTid(null).create(java.util.Map.of(
    "productorderuuids", java.util.List.of()  // java.util.List[Object]
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MoveTid` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PaymentManual

```scala
val paymentManual = client.paymentManual(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String` | No |  |
| `amount` | `java.lang.Long` | Yes |  |
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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.paymentManual(null).create(java.util.Map.of(
    "amount", 1L,  // java.lang.Long
    "cardNumber", "example_cardNumber",  // String
    "currency", "example_currency",  // String
    "expDate", "example_expDate",  // String
    "txtype", "example_txtype"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentManual` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PaymentSred

```scala
val paymentSred = client.paymentSred(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `java.lang.Long` | Yes |  |
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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.paymentSred(null).create(java.util.Map.of(
    "amount", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "devicePayload", "example_devicePayload",  // String
    "terminalId", "example_terminalId",  // String
    "txtype", "example_txtype"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentSred` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PreAuthTransactionCompletion

```scala
val preAuthTransactionCompletion = client.preAuthTransactionCompletion(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `java.lang.Long` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `cardNumberReference` | `String` | Yes |  |
| `clientId` | `java.lang.Long` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `java.lang.Long` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `java.lang.Long` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `java.lang.Long` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `java.lang.Long` | No |  |
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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.preAuthTransactionCompletion(null).create(java.util.Map.of(
    "cardNumberReference", "example_cardNumberReference",  // String
    "clientId", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L,  // java.lang.Long
    "transactionType", "example_transactionType"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ReactivateTerminal

```scala
val reactivateTerminal = client.reactivateTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | No |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `reactivationReason` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.reactivateTerminal(null).create(java.util.Map.of(
    "reactivationReason", "example_reactivationReason",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RefundTransaction

```scala
val refundTransaction = client.refundTransaction(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `java.lang.Long` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `java.lang.Long` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `java.lang.Long` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `java.lang.Long` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `java.lang.Long` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `java.lang.Long` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `java.lang.Long` | No |  |
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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.refundTransaction(null).create(java.util.Map.of(
    "clientId", 1L,  // java.lang.Long
    "currency", "example_currency",  // String
    "receiptNumber", "example_receiptNumber",  // String
    "terminalId", 1L  // java.lang.Long
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RefundTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RegisterTecsCompany

```scala
val registerTecsCompany = client.registerTecsCompany(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `partnerId` | `java.lang.Long` | No |  |
| `partnerName` | `String` | No |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.registerTecsCompany(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RegisterTerminal

```scala
val registerTerminal = client.registerTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `java.util.Map[String, Object]` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `tecsWebSecretKey` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalCountryCode` | `String` | Yes |  |
| `terminalId` | `java.lang.Long` | No |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalLanguageCode` | `String` | Yes |  |
| `terminalLocation` | `String` | Yes |  |
| `terminalSerialNumber` | `String` | No |  |
| `tokenIOAlias` | `String` | No |  |
| `tokenIOIban` | `String` | No |  |
| `tokenIOMemberId` | `String` | No |  |
| `webShopUrl` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.registerTerminal(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid",  // String
    "packageOrderUuid", "example_packageOrderUuid",  // String
    "productOrderUuid", "example_productOrderUuid",  // String
    "templateName", "example_templateName",  // String
    "terminalCountryCode", "example_terminalCountryCode",  // String
    "terminalLanguageCode", "example_terminalLanguageCode",  // String
    "terminalLocation", "example_terminalLocation"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ReportData

```scala
val reportData = client.reportData(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `java.util.List[Object]` | No |  |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `corporateId` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `sumOverCreditTx` | `java.util.Map[String, Object]` | No |  |
| `sumOverDebitTx` | `java.util.Map[String, Object]` | No |  |
| `terminalId` | `java.lang.Long` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.reportData(null).create(java.util.Map.of(
    "clearingDateFrom", "example_clearingDateFrom",  // String
    "clearingDateTo", "example_clearingDateTo",  // String
    "corporateId", "example_corporateId",  // String
    "currency", "example_currency"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReportData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## StatusTransaction

```scala
val statusTransaction = client.statusTransaction(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String` | No |  |
| `acquirerTerminalId` | `String` | No |  |
| `amount` | `java.lang.Long` | No |  |
| `applicationCryptogram` | `String` | No |  |
| `authorizationCode` | `Object` | No |  |
| `authorizationDate` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardEntry` | `String` | No |  |
| `cardExpiration` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clearingAmount` | `java.lang.Long` | No |  |
| `clearingBatchId` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingDate` | `String` | No |  |
| `clearingProcessedDate` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `clientId` | `java.lang.Long` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvApplicationId` | `String` | No |  |
| `emvApplicationLabel` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `originalClientId` | `String` | No |  |
| `originalTerminalId` | `java.lang.Long` | No |  |
| `originalTransactionId` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseCodeFromAS` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `settlementStatus` | `String` | No |  |
| `sourceId` | `java.lang.Long` | No |  |
| `tecsengineResponseCode` | `java.lang.Long` | No |  |
| `tecsengineResponseText` | `String` | No |  |
| `terminalEndOfDayDate` | `String` | No |  |
| `terminalId` | `java.lang.Long` | No |  |
| `terminalLocation` | `String` | No |  |
| `tipAmount` | `java.lang.Long` | No |  |
| `traceNumber` | `java.lang.Long` | No |  |
| `transactionClearingDate` | `String` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionSeqNumber` | `java.lang.Long` | No |  |
| `transactionServerDate` | `String` | No |  |
| `transactionSource` | `String` | No |  |
| `transactionType` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.statusTransaction(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StatusTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## StoreTerminalParameter

```scala
val storeTerminalParameter = client.storeTerminalParameter(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `java.util.Map[String, Object]` | No |  |
| `configVersion` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | Yes |  |
| `tidSent` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.storeTerminalParameter(null).create(java.util.Map.of(
    "serialNumber", "example_serialNumber"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TerminalId

```scala
val terminalId = client.terminalId(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `java.util.List[Object]` | Yes |  |
| `duplicateTerminalIds` | `java.util.List[Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `java.util.List[Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.terminalId(null).create(java.util.Map.of(
    "deviceSerialNumber", java.util.List.of()  // java.util.List[Object]
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TerminalId` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionHistory

```scala
val transactionHistory = client.transactionHistory(null)
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
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `paymentTokenPublicId` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `java.lang.Long` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `java.lang.Long` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionHistories` | `java.util.List[Object]` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.transactionHistory(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionHistory` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsCount

```scala
val transactionsCount = client.transactionsCount(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `java.util.List[Object]` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.transactionsCount(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCount` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsCountCardBrand

```scala
val transactionsCountCardBrand = client.transactionsCountCardBrand(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `java.util.List[Object]` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.transactionsCountCardBrand(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsTurnover

```scala
val transactionsTurnover = client.transactionsTurnover(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `turnovers` | `java.util.List[Object]` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.transactionsTurnover(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## UpdateMerchant

```scala
val updateMerchant = client.updateMerchant(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchantCategoryCode` | `String` | No |  |
| `name` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vuNummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.updateMerchant(null).create(java.util.Map.of(
    "corporateUuid", "example_corporateUuid"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## UpdateTemplateXml

```scala
val updateTemplateXml = client.updateTemplateXml(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.updateTemplateXml(null).create(java.util.Map.of(
    "templateName", "example_templateName",  // String
    "templateXml", "example_templateXml"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Version

```scala
val version = client.version(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```scala
val result = client.version(null).load(null, null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

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

```scala
val feature = new java.util.LinkedHashMap[String, Object]()
feature.put("test", java.util.Map.of("active", true))
val options = new java.util.LinkedHashMap[String, Object]()
options.put("feature", feature)
val client = new BluefinTecsMerchantServicesSDK(options)
```

