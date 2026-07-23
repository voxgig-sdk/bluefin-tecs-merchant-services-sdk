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
| `acquirer_id` | `String?` | No |  |
| `acquirer_name` | `String?` | No |  |
| `actual_bonus_point` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `authorization_code` | `String?` | No |  |
| `balance_amount` | `String?` | No |  |
| `card_brand` | `String?` | No |  |
| `card_number` | `String?` | No |  |
| `client_id` | `Long?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `ec_data` | `String?` | No |  |
| `ecr_data` | `String?` | No |  |
| `emv_data` | `String?` | No |  |
| `exchange_fee` | `Long?` | No |  |
| `exchange_rate` | `String?` | No |  |
| `language_code` | `String?` | No |  |
| `merchant_address` | `String?` | No |  |
| `merchant_name` | `String?` | No |  |
| `merchant_number` | `String?` | No |  |
| `message_type` | `String?` | No |  |
| `original_trace_number` | `Long?` | No |  |
| `original_transaction_id` | `String?` | No |  |
| `password` | `String?` | No |  |
| `payment_reason` | `String?` | No |  |
| `receipt_footer` | `String?` | No |  |
| `receipt_header` | `String?` | No |  |
| `receipt_layout` | `Long?` | No |  |
| `receipt_number` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `serial_number` | `String?` | No |  |
| `svc` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |
| `terminal_location` | `String?` | No |  |
| `trace_number` | `Long?` | No |  |
| `transaction_date` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `tx_type` | `String?` | No |  |
| `user_data` | `String?` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_id` | - |
| `acquirer_name` | - |
| `actual_bonus_point` | - |
| `amount` | Yes |
| `authorization_code` | - |
| `balance_amount` | - |
| `card_brand` | - |
| `card_number` | - |
| `client_id` | - |
| `currency` | - |
| `cvc` | - |
| `ec_data` | - |
| `ecr_data` | - |
| `emv_data` | - |
| `exchange_fee` | - |
| `exchange_rate` | - |
| `language_code` | - |
| `merchant_address` | - |
| `merchant_name` | - |
| `merchant_number` | - |
| `message_type` | Yes |
| `original_trace_number` | - |
| `original_transaction_id` | Yes |
| `password` | - |
| `payment_reason` | - |
| `receipt_footer` | - |
| `receipt_header` | - |
| `receipt_layout` | - |
| `receipt_number` | - |
| `response_code` | - |
| `response_message` | - |
| `serial_number` | - |
| `svc` | - |
| `terminal_id` | - |
| `terminal_location` | - |
| `trace_number` | - |
| `transaction_date` | Yes |
| `transaction_id` | Yes |
| `tx_type` | - |
| `user_data` | - |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.cancelTransaction(null).create(mutableMapOf<String, Any?>(
    "client_id" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "receipt_number" to "example_receipt_number",  // String?
    "terminal_id" to 1L  // Long?
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
| `card_no` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

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
| `acquirer_id` | `Long?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `template_name` | `String?` | Yes |  |
| `template_type` | `String?` | Yes |  |
| `template_xml` | `String?` | Yes |  |
| `terminal_type` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.createProduct(null).create(mutableMapOf<String, Any?>(
    "template_name" to "example_template_name",  // String?
    "template_type" to "example_template_type",  // String?
    "template_xml" to "example_template_xml",  // String?
    "terminal_type" to "example_terminal_type"  // String?
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
| `corporate_uuid` | `String?` | No |  |
| `deactivation_reason` | `String?` | Yes |  |
| `package_order_uuid` | `String?` | No |  |
| `product_order_uuid` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.deactivateTerminal(null).create(mutableMapOf<String, Any?>(
    "deactivation_reason" to "example_deactivation_reason",  // String?
    "terminal_id" to 1L  // Long?
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
| `clearing_date_from` | `String?` | Yes |  |
| `clearing_date_to` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `tx_count` | `Long?` | No |  |
| `tx_id_end` | `String?` | No |  |
| `tx_id_start` | `String?` | No |  |
| `tx_seq_no_end` | `Long?` | No |  |
| `tx_seq_no_start` | `Long?` | No |  |
| `tx_total` | `Long?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.digitalServicesApi(null).create(mutableMapOf<String, Any?>(
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
| `ecom_data` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |
| `transaction_id` | `String?` | Yes |  |
| `transaction_type` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.ecDataEcom(null).create(mutableMapOf<String, Any?>(
    "terminal_id" to 1L,  // Long?
    "transaction_id" to "example_transaction_id",  // String?
    "transaction_type" to "example_transaction_type"  // String?
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
| `ecom_pass` | `String?` | No |  |
| `ecom_skey` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.ecomParameter(null).create(mutableMapOf<String, Any?>(
    "terminal_id" to 1L  // Long?
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
| `ecr_data` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |
| `transaction_id` | `String?` | Yes |  |
| `transaction_type` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.ecrData(null).create(mutableMapOf<String, Any?>(
    "terminal_id" to 1L,  // Long?
    "transaction_id" to "example_transaction_id",  // String?
    "transaction_type" to "example_transaction_type"  // String?
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
| `emv_data` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |
| `transaction_id` | `String?` | Yes |  |
| `transaction_type` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.emvData(null).create(mutableMapOf<String, Any?>(
    "terminal_id" to 1L,  // Long?
    "transaction_id" to "example_transaction_id",  // String?
    "transaction_type" to "example_transaction_type"  // String?
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
| `account_no` | `Long?` | No |  |
| `additional_data` | `Map<String, Any?>?` | No |  |
| `corporate_uuid` | `String?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `merchant_category_code` | `Long?` | Yes |  |
| `package_order_uuid` | `String?` | Yes |  |
| `product_order_uuid` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `sorting_code` | `Long?` | No |  |
| `template_name` | `String?` | Yes |  |
| `terminal_id` | `List<Any?>?` | No |  |
| `terminal_id_acq` | `String?` | No |  |
| `vu_nummer` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.enableAcquiring(null).create(mutableMapOf<String, Any?>(
    "corporate_uuid" to "example_corporate_uuid",  // String?
    "currency" to "example_currency",  // String?
    "merchant_category_code" to 1L,  // Long?
    "package_order_uuid" to "example_package_order_uuid",  // String?
    "product_order_uuid" to "example_product_order_uuid",  // String?
    "template_name" to "example_template_name"  // String?
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
| `merchant_contract_number` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.getMerchantContractNumber(null).create(mutableMapOf<String, Any?>(
    "merchant_contract_number" to "example_merchant_contract_number"  // String?
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
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `template_name` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.getTemplateXml(null).create(mutableMapOf<String, Any?>(
    "template_name" to "example_template_name"  // String?
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
| `mandator_name` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.introduceMandator(null).create(mutableMapOf<String, Any?>(
    "mandator_name" to "example_mandator_name"  // String?
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
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_template_description` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.introducePackage(null).create(mutableMapOf<String, Any?>(
    "terminal_template_description" to "example_terminal_template_description"  // String?
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
| `ka_date_time_from` | `String?` | No |  |
| `ka_date_time_to` | `String?` | No |  |
| `keep_alive_data` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_date_time_from` | `String?` | No |  |
| `terminal_date_time_to` | `String?` | No |  |
| `terminal_id` | `Long?` | No |  |

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
| `corporate_uuid` | `List<Any?>?` | No |  |
| `filter` | `Map<String, Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal` | `List<Any?>?` | No |  |

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
| `clearing_date_from` | `String?` | Yes |  |
| `clearing_date_to` | `String?` | Yes |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `record` | `List<Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.mandatorClearingExport(null).create(mutableMapOf<String, Any?>(
    "clearing_date_from" to "example_clearing_date_from",  // String?
    "clearing_date_to" to "example_clearing_date_to"  // String?
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
| `clearing_date_from` | `String?` | Yes |  |
| `clearing_date_to` | `String?` | Yes |  |
| `file_id` | `String?` | No |  |
| `filename_template` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `status` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.mandatorClearingExportDownload(null).create(mutableMapOf<String, Any?>(
    "clearing_date_from" to "example_clearing_date_from",  // String?
    "clearing_date_to" to "example_clearing_date_to"  // String?
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
| `clearing_date_from` | `String?` | Yes |  |
| `clearing_date_to` | `String?` | Yes |  |
| `record` | `List<Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.mandatorClearingExportSummary(null).create(mutableMapOf<String, Any?>(
    "clearing_date_from" to "example_clearing_date_from",  // String?
    "clearing_date_to" to "example_clearing_date_to"  // String?
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
| `3_d_secure` | `String?` | No |  |
| `authorization_code` | `String?` | No |  |
| `card_brand` | `String?` | No |  |
| `clearing_amount_from` | `String?` | No |  |
| `clearing_amount_to` | `String?` | No |  |
| `clearing_currency` | `String?` | No |  |
| `clearing_status` | `String?` | No |  |
| `corporate_uuid` | `String?` | No |  |
| `order_by_transaction_date` | `String?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `receipt_number` | `String?` | No |  |
| `referenced_transaction_id` | `String?` | No |  |
| `retrieval_reference_number` | `String?` | No |  |
| `source_id` | `Long?` | No |  |
| `tecsengine_response_code_from` | `String?` | No |  |
| `tecsengine_response_code_to` | `String?` | No |  |
| `terminal_id` | `Long?` | No |  |
| `trace_number` | `String?` | No |  |
| `transaction_amount_from` | `String?` | No |  |
| `transaction_amount_to` | `String?` | No |  |
| `transaction_date_from` | `String?` | No |  |
| `transaction_date_to` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `transaction_type` | `String?` | No |  |
| `wallet` | `String?` | No |  |

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
| `productorderuuid` | `List<Any?>?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `target_packageorderuuid` | `String?` | No |  |
| `target_productorderuuid` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.moveTid(null).create(mutableMapOf<String, Any?>(
    "productorderuuid" to listOf<Any?>()  // List<Any?>?
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
| `acquirer_name` | `String?` | No |  |
| `amount` | `Long?` | Yes |  |
| `authorization_number` | `String?` | No |  |
| `card_number` | `String?` | Yes |  |
| `card_type` | `String?` | No |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `date_time_tx` | `String?` | No |  |
| `exp_date` | `String?` | Yes |  |
| `merchant_id` | `String?` | No |  |
| `original_transaction_id` | `String?` | No |  |
| `password` | `String?` | No |  |
| `response_code` | `String?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `txtype` | `String?` | Yes |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_name` | - |
| `amount` | - |
| `authorization_number` | - |
| `card_number` | - |
| `card_type` | - |
| `currency` | - |
| `cvc` | - |
| `date_time_tx` | - |
| `exp_date` | - |
| `merchant_id` | - |
| `original_transaction_id` | - |
| `password` | - |
| `response_code` | - |
| `response_message` | - |
| `terminal_id` | Yes |
| `transaction_id` | - |
| `txtype` | - |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.paymentManual(null).create(mutableMapOf<String, Any?>(
    "amount" to 1L,  // Long?
    "card_number" to "example_card_number",  // String?
    "currency" to "example_currency",  // String?
    "exp_date" to "example_exp_date",  // String?
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
| `acquirer_name` | `String?` | No |  |
| `amount` | `Long?` | Yes |  |
| `authorization_number` | `String?` | No |  |
| `card_type` | `String?` | No |  |
| `currency` | `String?` | Yes |  |
| `date_time_tx` | `String?` | No |  |
| `device_payload` | `String?` | Yes |  |
| `merchant_id` | `String?` | No |  |
| `original_transaction_id` | `String?` | No |  |
| `password` | `String?` | No |  |
| `response_code` | `String?` | No |  |
| `response_message` | `String?` | No |  |
| `sred` | `Map<String, Any?>?` | No |  |
| `terminal_id` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `txtype` | `String?` | Yes |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_name` | - |
| `amount` | - |
| `authorization_number` | - |
| `card_type` | - |
| `currency` | - |
| `date_time_tx` | - |
| `device_payload` | - |
| `merchant_id` | - |
| `original_transaction_id` | - |
| `password` | - |
| `response_code` | - |
| `response_message` | - |
| `sred` | - |
| `terminal_id` | Yes |
| `transaction_id` | - |
| `txtype` | - |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.paymentSred(null).create(mutableMapOf<String, Any?>(
    "amount" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "device_payload" to "example_device_payload",  // String?
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
| `acquirer_id` | `String?` | No |  |
| `acquirer_name` | `String?` | No |  |
| `actual_bonus_point` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `authorization_code` | `String?` | No |  |
| `balance_amount` | `String?` | No |  |
| `card_brand` | `String?` | No |  |
| `card_number` | `String?` | No |  |
| `card_number_reference` | `String?` | Yes |  |
| `client_id` | `Long?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `ec_data` | `String?` | No |  |
| `ecr_data` | `String?` | No |  |
| `emv_data` | `String?` | No |  |
| `exchange_fee` | `Long?` | No |  |
| `exchange_rate` | `String?` | No |  |
| `language_code` | `String?` | No |  |
| `merchant_address` | `String?` | No |  |
| `merchant_name` | `String?` | No |  |
| `merchant_number` | `String?` | No |  |
| `message_type` | `String?` | No |  |
| `original_trace_number` | `Long?` | No |  |
| `original_transaction_id` | `String?` | No |  |
| `password` | `String?` | No |  |
| `payment_reason` | `String?` | No |  |
| `receipt_footer` | `String?` | No |  |
| `receipt_header` | `String?` | No |  |
| `receipt_layout` | `Long?` | No |  |
| `receipt_number` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `serial_number` | `String?` | No |  |
| `svc` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |
| `terminal_location` | `String?` | No |  |
| `trace_number` | `Long?` | No |  |
| `transaction_date` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `transaction_type` | `String?` | Yes |  |
| `tx_type` | `String?` | No |  |
| `user_data` | `String?` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_id` | - |
| `acquirer_name` | - |
| `actual_bonus_point` | - |
| `amount` | Yes |
| `authorization_code` | - |
| `balance_amount` | - |
| `card_brand` | - |
| `card_number` | - |
| `card_number_reference` | - |
| `client_id` | - |
| `currency` | - |
| `cvc` | - |
| `ec_data` | - |
| `ecr_data` | - |
| `emv_data` | - |
| `exchange_fee` | - |
| `exchange_rate` | - |
| `language_code` | - |
| `merchant_address` | - |
| `merchant_name` | - |
| `merchant_number` | - |
| `message_type` | - |
| `original_trace_number` | - |
| `original_transaction_id` | Yes |
| `password` | - |
| `payment_reason` | - |
| `receipt_footer` | - |
| `receipt_header` | - |
| `receipt_layout` | - |
| `receipt_number` | - |
| `response_code` | - |
| `response_message` | - |
| `serial_number` | - |
| `svc` | - |
| `terminal_id` | - |
| `terminal_location` | - |
| `trace_number` | - |
| `transaction_date` | Yes |
| `transaction_id` | Yes |
| `transaction_type` | - |
| `tx_type` | - |
| `user_data` | - |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.preAuthTransactionCompletion(null).create(mutableMapOf<String, Any?>(
    "card_number_reference" to "example_card_number_reference",  // String?
    "client_id" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "receipt_number" to "example_receipt_number",  // String?
    "terminal_id" to 1L,  // Long?
    "transaction_type" to "example_transaction_type"  // String?
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
| `corporate_uuid` | `String?` | No |  |
| `package_order_uuid` | `String?` | No |  |
| `product_order_uuid` | `String?` | No |  |
| `reactivation_reason` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.reactivateTerminal(null).create(mutableMapOf<String, Any?>(
    "reactivation_reason" to "example_reactivation_reason",  // String?
    "terminal_id" to 1L  // Long?
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
| `acquirer_id` | `String?` | No |  |
| `acquirer_name` | `String?` | No |  |
| `actual_bonus_point` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `authorization_code` | `String?` | No |  |
| `balance_amount` | `String?` | No |  |
| `card_brand` | `String?` | No |  |
| `card_number` | `String?` | No |  |
| `client_id` | `Long?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `cvc` | `String?` | No |  |
| `ec_data` | `String?` | No |  |
| `ecr_data` | `String?` | No |  |
| `emv_data` | `String?` | No |  |
| `exchange_fee` | `Long?` | No |  |
| `exchange_rate` | `String?` | No |  |
| `language_code` | `String?` | No |  |
| `merchant_address` | `String?` | No |  |
| `merchant_name` | `String?` | No |  |
| `merchant_number` | `String?` | No |  |
| `message_type` | `String?` | No |  |
| `original_trace_number` | `Long?` | No |  |
| `original_transaction_id` | `String?` | No |  |
| `password` | `String?` | No |  |
| `payment_reason` | `String?` | No |  |
| `receipt_footer` | `String?` | No |  |
| `receipt_header` | `String?` | No |  |
| `receipt_layout` | `Long?` | No |  |
| `receipt_number` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `serial_number` | `String?` | No |  |
| `svc` | `String?` | No |  |
| `terminal_id` | `Long?` | Yes |  |
| `terminal_location` | `String?` | No |  |
| `trace_number` | `Long?` | No |  |
| `transaction_date` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `tx_type` | `String?` | No |  |
| `user_data` | `String?` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_id` | - |
| `acquirer_name` | - |
| `actual_bonus_point` | - |
| `amount` | Yes |
| `authorization_code` | - |
| `balance_amount` | - |
| `card_brand` | - |
| `card_number` | - |
| `client_id` | - |
| `currency` | - |
| `cvc` | - |
| `ec_data` | - |
| `ecr_data` | - |
| `emv_data` | - |
| `exchange_fee` | - |
| `exchange_rate` | - |
| `language_code` | - |
| `merchant_address` | - |
| `merchant_name` | - |
| `merchant_number` | - |
| `message_type` | - |
| `original_trace_number` | - |
| `original_transaction_id` | Yes |
| `password` | - |
| `payment_reason` | - |
| `receipt_footer` | - |
| `receipt_header` | - |
| `receipt_layout` | - |
| `receipt_number` | - |
| `response_code` | - |
| `response_message` | - |
| `serial_number` | - |
| `svc` | - |
| `terminal_id` | - |
| `terminal_location` | - |
| `trace_number` | - |
| `transaction_date` | Yes |
| `transaction_id` | Yes |
| `tx_type` | - |
| `user_data` | - |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.refundTransaction(null).create(mutableMapOf<String, Any?>(
    "client_id" to 1L,  // Long?
    "currency" to "example_currency",  // String?
    "receipt_number" to "example_receipt_number",  // String?
    "terminal_id" to 1L  // Long?
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
| `corporate_uuid` | `String?` | Yes |  |
| `package_order_uuid` | `String?` | Yes |  |
| `partner_id` | `Long?` | No |  |
| `partner_name` | `String?` | No |  |
| `product_order_uuid` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `template_name` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.registerTecsCompany(null).create(mutableMapOf<String, Any?>(
    "corporate_uuid" to "example_corporate_uuid",  // String?
    "package_order_uuid" to "example_package_order_uuid",  // String?
    "product_order_uuid" to "example_product_order_uuid",  // String?
    "template_name" to "example_template_name"  // String?
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
| `additional_data` | `Map<String, Any?>?` | No |  |
| `corporate_uuid` | `String?` | Yes |  |
| `package_order_uuid` | `String?` | Yes |  |
| `product_order_uuid` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `tecs_web_secret_key` | `String?` | No |  |
| `template_name` | `String?` | Yes |  |
| `terminal_country_code` | `String?` | Yes |  |
| `terminal_id` | `Long?` | No |  |
| `terminal_id_acq` | `String?` | No |  |
| `terminal_language_code` | `String?` | Yes |  |
| `terminal_location` | `String?` | Yes |  |
| `terminal_serial_number` | `String?` | No |  |
| `token_io_alia` | `String?` | No |  |
| `token_io_iban` | `String?` | No |  |
| `token_io_member_id` | `String?` | No |  |
| `web_shop_url` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.registerTerminal(null).create(mutableMapOf<String, Any?>(
    "corporate_uuid" to "example_corporate_uuid",  // String?
    "package_order_uuid" to "example_package_order_uuid",  // String?
    "product_order_uuid" to "example_product_order_uuid",  // String?
    "template_name" to "example_template_name",  // String?
    "terminal_country_code" to "example_terminal_country_code",  // String?
    "terminal_language_code" to "example_terminal_language_code",  // String?
    "terminal_location" to "example_terminal_location"  // String?
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
| `card_brand_report_data` | `List<Any?>?` | No |  |
| `clearing_date_from` | `String?` | Yes |  |
| `clearing_date_to` | `String?` | Yes |  |
| `corporate_id` | `String?` | Yes |  |
| `currency` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `sum_over_credit_tx` | `Map<String, Any?>?` | No |  |
| `sum_over_debit_tx` | `Map<String, Any?>?` | No |  |
| `terminal_id` | `Long?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.reportData(null).create(mutableMapOf<String, Any?>(
    "clearing_date_from" to "example_clearing_date_from",  // String?
    "clearing_date_to" to "example_clearing_date_to",  // String?
    "corporate_id" to "example_corporate_id",  // String?
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
| `acquirer_name` | `String?` | No |  |
| `acquirer_terminal_id` | `String?` | No |  |
| `amount` | `Long?` | No |  |
| `application_cryptogram` | `String?` | No |  |
| `authorization_code` | `Any?` | No |  |
| `authorization_date` | `String?` | No |  |
| `card_brand` | `String?` | No |  |
| `card_entry` | `String?` | No |  |
| `card_expiration` | `String?` | No |  |
| `card_number` | `String?` | No |  |
| `clearing_amount` | `Long?` | No |  |
| `clearing_batch_id` | `String?` | No |  |
| `clearing_currency` | `String?` | No |  |
| `clearing_date` | `String?` | No |  |
| `clearing_processed_date` | `String?` | No |  |
| `clearing_status` | `String?` | No |  |
| `client_id` | `Long?` | No |  |
| `currency` | `String?` | No |  |
| `cvm` | `String?` | No |  |
| `ecr_data` | `String?` | No |  |
| `emv_application_id` | `String?` | No |  |
| `emv_application_label` | `String?` | No |  |
| `merchant_name` | `String?` | No |  |
| `merchant_number` | `String?` | No |  |
| `original_client_id` | `String?` | No |  |
| `original_terminal_id` | `Long?` | No |  |
| `original_transaction_id` | `String?` | No |  |
| `payment_reason` | `String?` | No |  |
| `receipt_number` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_code_from_a` | `String?` | No |  |
| `response_message` | `String?` | No |  |
| `retrieval_reference_number` | `String?` | No |  |
| `service_code` | `String?` | No |  |
| `settlement_status` | `String?` | No |  |
| `source_id` | `Long?` | No |  |
| `tecsengine_response_code` | `Long?` | No |  |
| `tecsengine_response_text` | `String?` | No |  |
| `terminal_end_of_day_date` | `String?` | No |  |
| `terminal_id` | `Long?` | No |  |
| `terminal_location` | `String?` | No |  |
| `tip_amount` | `Long?` | No |  |
| `trace_number` | `Long?` | No |  |
| `transaction_clearing_date` | `String?` | No |  |
| `transaction_date` | `String?` | No |  |
| `transaction_id` | `String?` | No |  |
| `transaction_seq_number` | `Long?` | No |  |
| `transaction_server_date` | `String?` | No |  |
| `transaction_source` | `String?` | No |  |
| `transaction_type` | `String?` | No |  |

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
| `acq_tab_nexo` | `Map<String, Any?>?` | No |  |
| `config_version` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `serial_number` | `String?` | Yes |  |
| `tid_sent` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.storeTerminalParameter(null).create(mutableMapOf<String, Any?>(
    "serial_number" to "example_serial_number"  // String?
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
| `device_serial_number` | `List<Any?>?` | Yes |  |
| `duplicate_terminal_id` | `List<Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `terminal` | `List<Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.terminalId(null).create(mutableMapOf<String, Any?>(
    "device_serial_number" to listOf<Any?>()  // List<Any?>?
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
| `3_d_secure` | `String?` | No |  |
| `authorization_code` | `String?` | No |  |
| `card_brand` | `String?` | No |  |
| `clearing_amount_from` | `String?` | No |  |
| `clearing_amount_to` | `String?` | No |  |
| `clearing_currency` | `String?` | No |  |
| `clearing_status` | `String?` | No |  |
| `corporate_uuid` | `String?` | No |  |
| `order_by_transaction_date` | `String?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `payment_token_public_id` | `String?` | No |  |
| `receipt_number` | `String?` | No |  |
| `referenced_transaction_id` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `retrieval_reference_number` | `String?` | No |  |
| `source_id` | `Long?` | No |  |
| `tecsengine_response_code_from` | `String?` | No |  |
| `tecsengine_response_code_to` | `String?` | No |  |
| `terminal_id` | `Long?` | No |  |
| `trace_number` | `String?` | No |  |
| `transaction_amount_from` | `String?` | No |  |
| `transaction_amount_to` | `String?` | No |  |
| `transaction_date_from` | `String?` | No |  |
| `transaction_date_to` | `String?` | No |  |
| `transaction_history` | `List<Any?>?` | No |  |
| `transaction_id` | `String?` | No |  |
| `transaction_type` | `String?` | No |  |
| `wallet` | `String?` | No |  |

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
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `transaction_date_from` | `String?` | No |  |
| `transaction_date_to` | `String?` | No |  |
| `transactions_count` | `List<Any?>?` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `response_code` | - |
| `response_message` | - |
| `transaction_date_from` | Yes |
| `transaction_date_to` | Yes |
| `transactions_count` | - |

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
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `transaction_date_from` | `String?` | No |  |
| `transaction_date_to` | `String?` | No |  |
| `transactions_count` | `List<Any?>?` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `response_code` | - |
| `response_message` | - |
| `transaction_date_from` | Yes |
| `transaction_date_to` | Yes |
| `transactions_count` | - |

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
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `transaction_date_from` | `String?` | No |  |
| `transaction_date_to` | `String?` | No |  |
| `turnover` | `List<Any?>?` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `response_code` | - |
| `response_message` | - |
| `transaction_date_from` | Yes |
| `transaction_date_to` | Yes |
| `turnover` | - |

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
| `corporate_uuid` | `String?` | Yes |  |
| `country` | `String?` | No |  |
| `merchant_category_code` | `String?` | No |  |
| `name` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `state` | `String?` | No |  |
| `street` | `String?` | No |  |
| `vu_nummer` | `String?` | No |  |
| `zipcode` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.updateMerchant(null).create(mutableMapOf<String, Any?>(
    "corporate_uuid" to "example_corporate_uuid"  // String?
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
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `template_name` | `String?` | Yes |  |
| `template_xml` | `String?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.updateTemplateXml(null).create(mutableMapOf<String, Any?>(
    "template_name" to "example_template_name",  // String?
    "template_xml" to "example_template_xml"  // String?
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
| `app_name` | `String?` | No |  |
| `build_date` | `String?` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```kotlin
val feature = mutableMapOf<String, Any?>(
    "test" to mapOf("active" to true),
)
val client = BluefinTecsMerchantServicesSDK(mutableMapOf<String, Any?>("feature" to feature))
```

