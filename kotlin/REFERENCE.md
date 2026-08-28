# BluefinTecsMerchantServices Kotlin SDK Reference

Complete API reference for the BluefinTecsMerchantServices Kotlin SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```kotlin
val client = BluefinTecsMerchantServicesSDK(options)
```

Create a new SDK client instance. `options` is a `MutableMap<String, Any?>`.

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

```kotlin
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

#### `optionsMap() -> MutableMap`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> MutableMap`

Make a direct HTTP request to any API endpoint. Returns a result
`MutableMap<String, Any?>` with `ok`, `status`, `headers`, and `data`
(or `err` on failure). This escape hatch never raises — branch on
`result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Map` | Path parameter values. |
| `fetchargs["query"]` | `Map` | Query string parameters. |
| `fetchargs["headers"]` | `Map` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Any?` | Request body (maps are JSON-serialized). |

**Returns:** `MutableMap<String, Any?>`

#### `prepare(fetchargs) -> MutableMap`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```kotlin
val cancelTransaction = client.cancelTransaction(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String?` | No |  |
| `acquirerName` | `String?` | No |  |
| `actualBonusPoints` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `authorizationCode` | `String?` | No |  |
| `balanceAmount` | `String?` | No |  |
| `cardBrand` | `String?` | No |  |
| `cardNumber` | `String?` | No |  |
| `clientId` | `Long?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `ecData` | `String?` | No |  |
| `ecrData` | `String?` | No |  |
| `emvData` | `String?` | No |  |
| `exchangeFee` | `Long?` | No |  |
| `exchangeRate` | `String?` | No |  |
| `languageCode` | `String?` | No |  |
| `merchantAddress` | `String?` | No |  |
| `merchantName` | `String?` | No |  |
| `merchantNumber` | `String?` | No |  |
| `messageType` | `String?` | No |  |
| `originalTraceNumber` | `Long?` | No |  |
| `originalTransactionId` | `String?` | No |  |
| `password` | `String?` | No |  |
| `paymentReason` | `String?` | No |  |
| `receiptFooter` | `String?` | No |  |
| `receiptHeader` | `String?` | No |  |
| `receiptLayout` | `Long?` | No |  |
| `receiptNumber` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `serialNumber` | `String?` | No |  |
| `svc` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |
| `terminalLocation` | `String?` | No |  |
| `traceNumber` | `Long?` | No |  |
| `transactionDate` | `String?` | No |  |
| `transactionId` | `String?` | No |  |
| `txType` | `String?` | No |  |
| `userData` | `String?` | No |  |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.cancelTransaction(null).create(mutableMapOf<String, Any?>(
    "clientId" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "receiptNumber" to "example_receiptNumber",  // String?
    "terminalId" to 1L  // Long?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CancelTransaction` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## CheckCardBlackListed

```kotlin
val checkCardBlackListed = client.checkCardBlackListed(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.checkCardBlackListed(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## CreateProduct

```kotlin
val createProduct = client.createProduct(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `Long?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `templateName` | `String?` | Yes |  |
| `templateType` | `String?` | Yes |  |
| `templateXml` | `String?` | Yes |  |
| `terminalType` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.createProduct(null).create(mutableMapOf<String, Any?>(
    "templateName" to "example_templateName",  // String?
    "templateType" to "example_templateType",  // String?
    "templateXml" to "example_templateXml",  // String?
    "terminalType" to "example_terminalType"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CreateProduct` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## DeactivateTerminal

```kotlin
val deactivateTerminal = client.deactivateTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String?` | No |  |
| `deactivationReason` | `String?` | Yes |  |
| `packageOrderUuid` | `String?` | No |  |
| `productOrderUuid` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.deactivateTerminal(null).create(mutableMapOf<String, Any?>(
    "deactivationReason" to "example_deactivationReason",  // String?
    "terminalId" to 1L  // Long?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## DigitalServicesApi

```kotlin
val digitalServicesApi = client.digitalServicesApi(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `txCount` | `Long?` | No |  |
| `txIdEnd` | `String?` | No |  |
| `txIdStart` | `String?` | No |  |
| `txSeqNoEnd` | `Long?` | No |  |
| `txSeqNoStart` | `Long?` | No |  |
| `txTotal` | `Long?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.digitalServicesApi(null).create(mutableMapOf<String, Any?>(
    "file_id" to "example_file_id",  // String?
    "clearingDateFrom" to "example_clearingDateFrom",  // String?
    "clearingDateTo" to "example_clearingDateTo"  // String?
), null)
```

#### `load(reqmatch, ctrl) -> Any?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```kotlin
val result = client.digitalServicesApi(null).load(null, null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## EcDataEcom

```kotlin
val ecDataEcom = client.ecDataEcom(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |
| `transactionId` | `String?` | Yes |  |
| `transactionType` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.ecDataEcom(null).create(mutableMapOf<String, Any?>(
    "terminalId" to 1L,  // Long?
    "transactionId" to "example_transactionId",  // String?
    "transactionType" to "example_transactionType"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcDataEcom` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## EcomParameter

```kotlin
val ecomParameter = client.ecomParameter(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `String?` | No |  |
| `ecomSkey` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.ecomParameter(null).create(mutableMapOf<String, Any?>(
    "terminalId" to 1L  // Long?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcomParameter` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## EcrData

```kotlin
val ecrData = client.ecrData(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |
| `transactionId` | `String?` | Yes |  |
| `transactionType` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.ecrData(null).create(mutableMapOf<String, Any?>(
    "terminalId" to 1L,  // Long?
    "transactionId" to "example_transactionId",  // String?
    "transactionType" to "example_transactionType"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcrData` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## EmvData

```kotlin
val emvData = client.emvData(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |
| `transactionId` | `String?` | Yes |  |
| `transactionType` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.emvData(null).create(mutableMapOf<String, Any?>(
    "terminalId" to 1L,  // Long?
    "transactionId" to "example_transactionId",  // String?
    "transactionType" to "example_transactionType"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EmvData` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## EnableAcquiring

```kotlin
val enableAcquiring = client.enableAcquiring(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `Long?` | No |  |
| `additionalData` | `Map<String, Any?>?` | No |  |
| `corporateUuid` | `String?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `merchantCategoryCode` | `Long?` | Yes |  |
| `packageOrderUuid` | `String?` | Yes |  |
| `productOrderUuid` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `sortingCode` | `Long?` | No |  |
| `templateName` | `String?` | Yes |  |
| `terminalIdAcq` | `String?` | No |  |
| `terminalIds` | `List<Any?>?` | No |  |
| `vuNummer` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.enableAcquiring(null).create(mutableMapOf<String, Any?>(
    "corporateUuid" to "example_corporateUuid",  // String?
    "currency" to "example_currency",  // String?
    "merchantCategoryCode" to 1L,  // Long?
    "packageOrderUuid" to "example_packageOrderUuid",  // String?
    "productOrderUuid" to "example_productOrderUuid",  // String?
    "templateName" to "example_templateName"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## GetMerchantContractNumber

```kotlin
val getMerchantContractNumber = client.getMerchantContractNumber(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.getMerchantContractNumber(null).create(mutableMapOf<String, Any?>(
    "merchantContractNumber" to "example_merchantContractNumber"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## GetTemplateXml

```kotlin
val getTemplateXml = client.getTemplateXml(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `templateName` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.getTemplateXml(null).create(mutableMapOf<String, Any?>(
    "templateName" to "example_templateName"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## IntroduceMandator

```kotlin
val introduceMandator = client.introduceMandator(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.introduceMandator(null).create(mutableMapOf<String, Any?>(
    "mandatorName" to "example_mandatorName"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## IntroducePackage

```kotlin
val introducePackage = client.introducePackage(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalTemplateDescription` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.introducePackage(null).create(mutableMapOf<String, Any?>(
    "terminalTemplateDescription" to "example_terminalTemplateDescription"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroducePackage` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## KeepAlive

```kotlin
val keepAlive = client.keepAlive(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String?` | No |  |
| `kaDateTimeFrom` | `String?` | No |  |
| `kaDateTimeTo` | `String?` | No |  |
| `keepAliveData` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalDateTimeFrom` | `String?` | No |  |
| `terminalDateTimeTo` | `String?` | No |  |
| `terminalId` | `Long?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.keepAlive(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `KeepAlive` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## ListTerminal

```kotlin
val listTerminal = client.listTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `List<Any?>?` | No |  |
| `filter` | `Map<String, Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminals` | `List<Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.listTerminal(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ListTerminal` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## MandatorClearingExport

```kotlin
val mandatorClearingExport = client.mandatorClearingExport(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Map<String, Any?>?` | No |  |
| `records` | `List<Any?>?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.mandatorClearingExport(null).create(mutableMapOf<String, Any?>(
    "clearingDateFrom" to "example_clearingDateFrom",  // String?
    "clearingDateTo" to "example_clearingDateTo"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## MandatorClearingExportDownload

```kotlin
val mandatorClearingExportDownload = client.mandatorClearingExportDownload(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String?` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String?` | Yes | End date for clearing export (inclusive) |
| `fileId` | `String?` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String?` | No | Optional filename template for the export file |
| `id` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `status` | `String?` | No | Processing status of the export request |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.mandatorClearingExportDownload(null).create(mutableMapOf<String, Any?>(
    "clearingDateFrom" to "example_clearingDateFrom",  // String?
    "clearingDateTo" to "example_clearingDateTo"  // String?
), null)
```

#### `load(reqmatch, ctrl) -> Any?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```kotlin
val result = client.mandatorClearingExportDownload(null).load(mutableMapOf<String, Any?>("id" to "mandator_clearing_export_download_id"), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## MandatorClearingExportSummary

```kotlin
val mandatorClearingExportSummary = client.mandatorClearingExportSummary(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `List<Any?>?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.mandatorClearingExportSummary(null).create(mutableMapOf<String, Any?>(
    "clearingDateFrom" to "example_clearingDateFrom",  // String?
    "clearingDateTo" to "example_clearingDateTo"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## MerchantPortalServicesApi

```kotlin
val merchantPortalServicesApi = client.merchantPortalServicesApi(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String?` | No |  |
| `authorizationCode` | `String?` | No |  |
| `cardBrand` | `String?` | No |  |
| `clearingAmountFrom` | `String?` | No |  |
| `clearingAmountTo` | `String?` | No |  |
| `clearingCurrency` | `String?` | No |  |
| `clearingStatus` | `String?` | No |  |
| `corporateUUID` | `String?` | No |  |
| `orderByTransactionDate` | `String?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `receiptNumber` | `String?` | No |  |
| `referencedTransactionId` | `String?` | No |  |
| `retrievalReferenceNumber` | `String?` | No |  |
| `sourceId` | `Long?` | No |  |
| `tecsengineResponseCodeFrom` | `String?` | No |  |
| `tecsengineResponseCodeTo` | `String?` | No |  |
| `terminalId` | `Long?` | No |  |
| `traceNumber` | `String?` | No |  |
| `transactionAmountFrom` | `String?` | No |  |
| `transactionAmountTo` | `String?` | No |  |
| `transactionDateFrom` | `String?` | No |  |
| `transactionDateTo` | `String?` | No |  |
| `transactionId` | `String?` | No |  |
| `transactionType` | `String?` | No |  |
| `wallet` | `String?` | No | Filter by wallet type. |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.merchantPortalServicesApi(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## MoveTid

```kotlin
val moveTid = client.moveTid(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `List<Any?>?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `targetPackageorderuuid` | `String?` | No |  |
| `targetProductorderuuid` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.moveTid(null).create(mutableMapOf<String, Any?>(
    "productorderuuids" to listOf<Any?>()  // List<Any?>?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MoveTid` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## PaymentManual

```kotlin
val paymentManual = client.paymentManual(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String?` | No | Acquirer name parsed from KKG field |
| `amount` | `Long?` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `String?` | No | Authorization number from the gateway |
| `cardNumber` | `String?` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `String?` | No | Card type parsed from KKG field |
| `currency` | `String?` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `String?` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `String?` | No | Date and time of the transaction |
| `expDate` | `String?` | Yes | Card expiry date in MMYY format |
| `merchantId` | `String?` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `String?` | No | Original transaction ID from gateway |
| `password` | `String?` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `String?` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `String?` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `String?` | No | Terminal ID used for the transaction |
| `transactionId` | `String?` | No | Transaction ID generated by the backend |
| `txtype` | `String?` | Yes | Transaction type |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.paymentManual(null).create(mutableMapOf<String, Any?>(
    "amount" to 1L,  // Long?
    "cardNumber" to "example_cardNumber",  // String?
    "currency" to "example_currency",  // String?
    "expDate" to "example_expDate",  // String?
    "txtype" to "example_txtype"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentManual` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## PaymentSred

```kotlin
val paymentSred = client.paymentSred(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `Long?` | Yes | Transaction amount in minor units (cents) |
| `currency` | `String?` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `String?` | No | Device type that provided the SRED payload |
| `devicePayload` | `String?` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `String?` | No | Card expiry date in MMYY format |
| `mode` | `String?` | No | Decryption mode |
| `panMasked` | `String?` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `String?` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `String?` | No | Device serial number |
| `serviceCode` | `String?` | No | Service code from the card |
| `terminalId` | `String?` | Yes | Terminal ID - 8 digits |
| `txtype` | `String?` | Yes | Transaction type |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.paymentSred(null).create(mutableMapOf<String, Any?>(
    "amount" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "devicePayload" to "example_devicePayload",  // String?
    "terminalId" to "example_terminalId",  // String?
    "txtype" to "example_txtype"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentSred` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## PreAuthTransactionCompletion

```kotlin
val preAuthTransactionCompletion = client.preAuthTransactionCompletion(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String?` | No |  |
| `acquirerName` | `String?` | No |  |
| `actualBonusPoints` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `authorizationCode` | `String?` | No |  |
| `balanceAmount` | `String?` | No |  |
| `cardBrand` | `String?` | No |  |
| `cardNumber` | `String?` | No |  |
| `cardNumberReference` | `String?` | Yes |  |
| `clientId` | `Long?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `ecData` | `String?` | No |  |
| `ecrData` | `String?` | No |  |
| `emvData` | `String?` | No |  |
| `exchangeFee` | `Long?` | No |  |
| `exchangeRate` | `String?` | No |  |
| `languageCode` | `String?` | No |  |
| `merchantAddress` | `String?` | No |  |
| `merchantName` | `String?` | No |  |
| `merchantNumber` | `String?` | No |  |
| `messageType` | `String?` | No |  |
| `originalTraceNumber` | `Long?` | No |  |
| `originalTransactionId` | `String?` | No |  |
| `password` | `String?` | No |  |
| `paymentReason` | `String?` | No |  |
| `receiptFooter` | `String?` | No |  |
| `receiptHeader` | `String?` | No |  |
| `receiptLayout` | `Long?` | No |  |
| `receiptNumber` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `serialNumber` | `String?` | No |  |
| `svc` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |
| `terminalLocation` | `String?` | No |  |
| `traceNumber` | `Long?` | No |  |
| `transactionDate` | `String?` | No |  |
| `transactionId` | `String?` | No |  |
| `transactionType` | `String?` | Yes |  |
| `txType` | `String?` | No |  |
| `userData` | `String?` | No |  |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.preAuthTransactionCompletion(null).create(mutableMapOf<String, Any?>(
    "cardNumberReference" to "example_cardNumberReference",  // String?
    "clientId" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "receiptNumber" to "example_receiptNumber",  // String?
    "terminalId" to 1L,  // Long?
    "transactionType" to "example_transactionType"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## ReactivateTerminal

```kotlin
val reactivateTerminal = client.reactivateTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String?` | No |  |
| `packageOrderUuid` | `String?` | No |  |
| `productOrderUuid` | `String?` | No |  |
| `reactivationReason` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.reactivateTerminal(null).create(mutableMapOf<String, Any?>(
    "reactivationReason" to "example_reactivationReason",  // String?
    "terminalId" to 1L  // Long?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## RefundTransaction

```kotlin
val refundTransaction = client.refundTransaction(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String?` | No |  |
| `acquirerName` | `String?` | No |  |
| `actualBonusPoints` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `authorizationCode` | `String?` | No |  |
| `balanceAmount` | `String?` | No |  |
| `cardBrand` | `String?` | No |  |
| `cardNumber` | `String?` | No |  |
| `clientId` | `Long?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `ecData` | `String?` | No |  |
| `ecrData` | `String?` | No |  |
| `emvData` | `String?` | No |  |
| `exchangeFee` | `Long?` | No |  |
| `exchangeRate` | `String?` | No |  |
| `languageCode` | `String?` | No |  |
| `merchantAddress` | `String?` | No |  |
| `merchantName` | `String?` | No |  |
| `merchantNumber` | `String?` | No |  |
| `messageType` | `String?` | No |  |
| `originalTraceNumber` | `Long?` | No |  |
| `originalTransactionId` | `String?` | No |  |
| `password` | `String?` | No |  |
| `paymentReason` | `String?` | No |  |
| `receiptFooter` | `String?` | No |  |
| `receiptHeader` | `String?` | No |  |
| `receiptLayout` | `Long?` | No |  |
| `receiptNumber` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `serialNumber` | `String?` | No |  |
| `svc` | `String?` | No |  |
| `terminalId` | `Long?` | Yes |  |
| `terminalLocation` | `String?` | No |  |
| `traceNumber` | `Long?` | No |  |
| `transactionDate` | `String?` | No |  |
| `transactionId` | `String?` | No |  |
| `txType` | `String?` | No |  |
| `userData` | `String?` | No |  |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.refundTransaction(null).create(mutableMapOf<String, Any?>(
    "clientId" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "receiptNumber" to "example_receiptNumber",  // String?
    "terminalId" to 1L  // Long?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RefundTransaction` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## RegisterTecsCompany

```kotlin
val registerTecsCompany = client.registerTecsCompany(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String?` | Yes |  |
| `packageOrderUuid` | `String?` | Yes |  |
| `partnerId` | `Long?` | No |  |
| `partnerName` | `String?` | No |  |
| `productOrderUuid` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `templateName` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.registerTecsCompany(null).create(mutableMapOf<String, Any?>(
    "corporateUuid" to "example_corporateUuid",  // String?
    "packageOrderUuid" to "example_packageOrderUuid",  // String?
    "productOrderUuid" to "example_productOrderUuid",  // String?
    "templateName" to "example_templateName"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## RegisterTerminal

```kotlin
val registerTerminal = client.registerTerminal(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `Map<String, Any?>?` | No |  |
| `corporateUuid` | `String?` | Yes |  |
| `packageOrderUuid` | `String?` | Yes |  |
| `productOrderUuid` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `tecsWebSecretKey` | `String?` | No |  |
| `templateName` | `String?` | Yes |  |
| `terminalCountryCode` | `String?` | Yes |  |
| `terminalId` | `Long?` | No |  |
| `terminalIdAcq` | `String?` | No |  |
| `terminalLanguageCode` | `String?` | Yes |  |
| `terminalLocation` | `String?` | Yes |  |
| `terminalSerialNumber` | `String?` | No |  |
| `tokenIOAlias` | `String?` | No |  |
| `tokenIOIban` | `String?` | No |  |
| `tokenIOMemberId` | `String?` | No |  |
| `webShopUrl` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.registerTerminal(null).create(mutableMapOf<String, Any?>(
    "corporateUuid" to "example_corporateUuid",  // String?
    "packageOrderUuid" to "example_packageOrderUuid",  // String?
    "productOrderUuid" to "example_productOrderUuid",  // String?
    "templateName" to "example_templateName",  // String?
    "terminalCountryCode" to "example_terminalCountryCode",  // String?
    "terminalLanguageCode" to "example_terminalLanguageCode",  // String?
    "terminalLocation" to "example_terminalLocation"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## ReportData

```kotlin
val reportData = client.reportData(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `List<Any?>?` | No |  |
| `clearingDateFrom` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String?` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `sumOverCreditTx` | `Map<String, Any?>?` | No |  |
| `sumOverDebitTx` | `Map<String, Any?>?` | No |  |
| `terminalId` | `Long?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.reportData(null).create(mutableMapOf<String, Any?>(
    "clearingDateFrom" to "example_clearingDateFrom",  // String?
    "clearingDateTo" to "example_clearingDateTo",  // String?
    "corporateId" to "example_corporateId",  // String?
    "currency" to "example_currency"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReportData` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## StatusTransaction

```kotlin
val statusTransaction = client.statusTransaction(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String?` | No |  |
| `acquirerTerminalId` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `applicationCryptogram` | `String?` | No |  |
| `authorizationCode` | `Any?` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String?` | No |  |
| `cardBrand` | `String?` | No |  |
| `cardEntry` | `String?` | No |  |
| `cardExpiration` | `String?` | No |  |
| `cardNumber` | `String?` | No |  |
| `clearingAmount` | `Long?` | No |  |
| `clearingBatchId` | `String?` | No |  |
| `clearingCurrency` | `String?` | No |  |
| `clearingDate` | `String?` | No |  |
| `clearingProcessedDate` | `String?` | No |  |
| `clearingStatus` | `String?` | No |  |
| `clientId` | `Long?` | No |  |
| `currency` | `String?` | No |  |
| `cvm` | `String?` | No |  |
| `ecrData` | `String?` | No |  |
| `emvApplicationId` | `String?` | No |  |
| `emvApplicationLabel` | `String?` | No |  |
| `merchantName` | `String?` | No |  |
| `merchantNumber` | `String?` | No |  |
| `originalClientId` | `String?` | No |  |
| `originalTerminalId` | `Long?` | No |  |
| `originalTransactionId` | `String?` | No |  |
| `paymentReason` | `String?` | No |  |
| `receiptNumber` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseCodeFromAS` | `String?` | No |  |
| `responseMessage` | `String?` | No |  |
| `retrievalReferenceNumber` | `String?` | No |  |
| `serviceCode` | `String?` | No |  |
| `settlementStatus` | `String?` | No |  |
| `sourceId` | `Long?` | No |  |
| `tecsengineResponseCode` | `Long?` | No |  |
| `tecsengineResponseText` | `String?` | No |  |
| `terminalEndOfDayDate` | `String?` | No |  |
| `terminalId` | `Long?` | No |  |
| `terminalLocation` | `String?` | No |  |
| `tipAmount` | `Long?` | No |  |
| `traceNumber` | `Long?` | No |  |
| `transactionClearingDate` | `String?` | No |  |
| `transactionDate` | `String?` | No |  |
| `transactionId` | `String?` | No |  |
| `transactionSeqNumber` | `Long?` | No |  |
| `transactionServerDate` | `String?` | No |  |
| `transactionSource` | `String?` | No |  |
| `transactionType` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.statusTransaction(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StatusTransaction` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## StoreTerminalParameter

```kotlin
val storeTerminalParameter = client.storeTerminalParameter(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `Map<String, Any?>?` | No |  |
| `configVersion` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `serialNumber` | `String?` | Yes |  |
| `tidSent` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.storeTerminalParameter(null).create(mutableMapOf<String, Any?>(
    "serialNumber" to "example_serialNumber"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## TerminalId

```kotlin
val terminalId = client.terminalId(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `List<Any?>?` | Yes |  |
| `duplicateTerminalIds` | `List<Any?>?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `terminals` | `List<Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.terminalId(null).create(mutableMapOf<String, Any?>(
    "deviceSerialNumber" to listOf<Any?>()  // List<Any?>?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TerminalId` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## TransactionHistory

```kotlin
val transactionHistory = client.transactionHistory(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String?` | No |  |
| `authorizationCode` | `String?` | No |  |
| `cardBrand` | `String?` | No |  |
| `clearingAmountFrom` | `String?` | No |  |
| `clearingAmountTo` | `String?` | No |  |
| `clearingCurrency` | `String?` | No |  |
| `clearingStatus` | `String?` | No |  |
| `corporateUUID` | `String?` | No |  |
| `orderByTransactionDate` | `String?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `paymentTokenPublicId` | `String?` | No |  |
| `receiptNumber` | `String?` | No |  |
| `referencedTransactionId` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `retrievalReferenceNumber` | `String?` | No |  |
| `sourceId` | `Long?` | No |  |
| `tecsengineResponseCodeFrom` | `String?` | No |  |
| `tecsengineResponseCodeTo` | `String?` | No |  |
| `terminalId` | `Long?` | No |  |
| `traceNumber` | `String?` | No |  |
| `transactionAmountFrom` | `String?` | No |  |
| `transactionAmountTo` | `String?` | No |  |
| `transactionDateFrom` | `String?` | No |  |
| `transactionDateTo` | `String?` | No |  |
| `transactionHistories` | `List<Any?>?` | No |  |
| `transactionId` | `String?` | No |  |
| `transactionType` | `String?` | No |  |
| `wallet` | `String?` | No | Filter by wallet type. |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.transactionHistory(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionHistory` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## TransactionsCount

```kotlin
val transactionsCount = client.transactionsCount(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `transactionDateFrom` | `String?` | No |  |
| `transactionDateTo` | `String?` | No |  |
| `transactionsCount` | `List<Any?>?` | No |  |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.transactionsCount(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCount` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## TransactionsCountCardBrand

```kotlin
val transactionsCountCardBrand = client.transactionsCountCardBrand(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `transactionDateFrom` | `String?` | No |  |
| `transactionDateTo` | `String?` | No |  |
| `transactionsCount` | `List<Any?>?` | No |  |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.transactionsCountCardBrand(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## TransactionsTurnover

```kotlin
val transactionsTurnover = client.transactionsTurnover(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `transactionDateFrom` | `String?` | No |  |
| `transactionDateTo` | `String?` | No |  |
| `turnovers` | `List<Any?>?` | No |  |

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

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.transactionsTurnover(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## UpdateMerchant

```kotlin
val updateMerchant = client.updateMerchant(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String?` | No |  |
| `corporateUuid` | `String?` | Yes |  |
| `country` | `String?` | No |  |
| `merchantCategoryCode` | `String?` | No |  |
| `name` | `String?` | No |  |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `state` | `String?` | No |  |
| `street` | `String?` | No |  |
| `vuNummer` | `String?` | No |  |
| `zipcode` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.updateMerchant(null).create(mutableMapOf<String, Any?>(
    "corporateUuid" to "example_corporateUuid"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## UpdateTemplateXml

```kotlin
val updateTemplateXml = client.updateTemplateXml(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Long?` | No |  |
| `responseMessage` | `String?` | No |  |
| `templateName` | `String?` | Yes |  |
| `templateXml` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.updateTemplateXml(null).create(mutableMapOf<String, Any?>(
    "templateName" to "example_templateName",  // String?
    "templateXml" to "example_templateXml"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## Version

```kotlin
val version = client.version(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String?` | No |  |
| `buildDate` | `String?` | No |  |
| `version` | `String?` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Any?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```kotlin
val result = client.version(null).load(null, null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `Version` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
| `idempotency` | 0.0.1 | Idempotency keys for safe retries of mutating operations |
| `log` | 0.0.1 | Structured request and response logging |
| `metrics` | 0.0.1 | Statistics capture: per-operation counters and latency |
| `paging` | 0.0.1 | Pagination signals for list operations |
| `ratelimit` | 0.0.1 | Client-side rate limiting via a token bucket |
| `retry` | 0.0.1 | Automatic retry of transient failures with exponential backoff |
| `telemetry` | 0.0.1 | Distributed tracing spans with W3C trace-context propagation |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |
| `timeout` | 0.0.1 | Per-request timeout with transport abort |


Features are activated via the `feature` option:

```kotlin
val feature = mutableMapOf<String, Any?>(
    "audit" to mapOf("active" to true),
    "clienttrack" to mapOf("active" to true),
    "idempotency" to mapOf("active" to true),
    "log" to mapOf("active" to true),
    "metrics" to mapOf("active" to true),
    "paging" to mapOf("active" to true),
    "ratelimit" to mapOf("active" to true),
    "retry" to mapOf("active" to true),
    "telemetry" to mapOf("active" to true),
    "test" to mapOf("active" to true),
    "timeout" to mapOf("active" to true),
)
val client = BluefinTecsMerchantServicesSDK(mutableMapOf<String, Any?>("feature" to feature))
```


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### Ordering

`ratelimit`, `retry`, `timeout` wrap the transport. Each
wraps whatever is already installed, so **activation order is nesting order**:
a feature activated later sits OUTSIDE one activated earlier, and sees the call
first.

That decides behaviour, not just sequence: a feature that short-circuits the
call, such as a cache serving a hit, stops every feature nested inside it from
ever seeing that call.

`audit`, `clienttrack`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.audit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `clienttrack`

Client identity and per-request correlation headers.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `idempotency`

Idempotency keys for safe retries of mutating operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.idempotency.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `log`

Structured request and response logging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `true` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.log.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `metrics`

Statistics capture: per-operation counters and latency.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.metrics.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `paging`

Pagination signals for list operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.paging.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `ratelimit`

Client-side rate limiting via a token bucket.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.ratelimit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `retry`

Automatic retry of transient failures with exponential backoff.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.retry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `telemetry`

Distributed tracing spans with W3C trace-context propagation.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.telemetry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.

#### `timeout`

Per-request timeout with transport abort.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

