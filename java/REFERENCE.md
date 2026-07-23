# BluefinTecsMerchantServices Java SDK Reference

Complete API reference for the BluefinTecsMerchantServices Java SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```java
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

Create a new SDK client instance. `options` is a `Map<String, Object>`.

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

```java
BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(null, null);
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
`Map<String, Object>` with `ok`, `status`, `headers`, and `data` (or
`err` on failure). This escape hatch never raises — branch on
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

**Returns:** `Map<String, Object>`

#### `prepare(fetchargs) -> Map`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```java
SdkEntity cancelTransaction = client.cancelTransaction(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Long` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `Long` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Long` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Long` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Long` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Long` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `tx_type` | `String` | No |  |
| `user_data` | `String` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.cancelTransaction(null).create(Map.of(
    "client_id", 1L,  // Long
    "currency", "example_currency",  // String
    "receipt_number", "example_receipt_number",  // String
    "terminal_id", 1L  // Long
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CancelTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## CheckCardBlackListed

```java
SdkEntity checkCardBlackListed = client.checkCardBlackListed(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.checkCardBlackListed(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## CreateProduct

```java
SdkEntity createProduct = client.createProduct(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `Long` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_type` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |
| `terminal_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.createProduct(null).create(Map.of(
    "template_name", "example_template_name",  // String
    "template_type", "example_template_type",  // String
    "template_xml", "example_template_xml",  // String
    "terminal_type", "example_terminal_type"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `CreateProduct` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## DeactivateTerminal

```java
SdkEntity deactivateTerminal = client.deactivateTerminal(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `deactivation_reason` | `String` | Yes |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.deactivateTerminal(null).create(Map.of(
    "deactivation_reason", "example_deactivation_reason",  // String
    "terminal_id", 1L  // Long
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## DigitalServicesApi

```java
SdkEntity digitalServicesApi = client.digitalServicesApi(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `tx_count` | `Long` | No |  |
| `tx_id_end` | `String` | No |  |
| `tx_id_start` | `String` | No |  |
| `tx_seq_no_end` | `Long` | No |  |
| `tx_seq_no_start` | `Long` | No |  |
| `tx_total` | `Long` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.digitalServicesApi(null).create(Map.of(
), null);
```

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```java
Object result = client.digitalServicesApi(null).load(null, null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcDataEcom

```java
SdkEntity ecDataEcom = client.ecDataEcom(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.ecDataEcom(null).create(Map.of(
    "terminal_id", 1L,  // Long
    "transaction_id", "example_transaction_id",  // String
    "transaction_type", "example_transaction_type"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcDataEcom` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcomParameter

```java
SdkEntity ecomParameter = client.ecomParameter(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `String` | No |  |
| `ecom_skey` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.ecomParameter(null).create(Map.of(
    "terminal_id", 1L  // Long
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcomParameter` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EcrData

```java
SdkEntity ecrData = client.ecrData(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.ecrData(null).create(Map.of(
    "terminal_id", 1L,  // Long
    "transaction_id", "example_transaction_id",  // String
    "transaction_type", "example_transaction_type"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EcrData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EmvData

```java
SdkEntity emvData = client.emvData(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.emvData(null).create(Map.of(
    "terminal_id", 1L,  // Long
    "transaction_id", "example_transaction_id",  // String
    "transaction_type", "example_transaction_type"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EmvData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## EnableAcquiring

```java
SdkEntity enableAcquiring = client.enableAcquiring(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `Long` | No |  |
| `additional_data` | `Map<String, Object>` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchant_category_code` | `Long` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `sorting_code` | `Long` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_id` | `List<Object>` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `vu_nummer` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.enableAcquiring(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid",  // String
    "currency", "example_currency",  // String
    "merchant_category_code", 1L,  // Long
    "package_order_uuid", "example_package_order_uuid",  // String
    "product_order_uuid", "example_product_order_uuid",  // String
    "template_name", "example_template_name"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## GetMerchantContractNumber

```java
SdkEntity getMerchantContractNumber = client.getMerchantContractNumber(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.getMerchantContractNumber(null).create(Map.of(
    "merchant_contract_number", "example_merchant_contract_number"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## GetTemplateXml

```java
SdkEntity getTemplateXml = client.getTemplateXml(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.getTemplateXml(null).create(Map.of(
    "template_name", "example_template_name"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## IntroduceMandator

```java
SdkEntity introduceMandator = client.introduceMandator(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.introduceMandator(null).create(Map.of(
    "mandator_name", "example_mandator_name"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## IntroducePackage

```java
SdkEntity introducePackage = client.introducePackage(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_template_description` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.introducePackage(null).create(Map.of(
    "terminal_template_description", "example_terminal_template_description"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroducePackage` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## KeepAlive

```java
SdkEntity keepAlive = client.keepAlive(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `ka_date_time_from` | `String` | No |  |
| `ka_date_time_to` | `String` | No |  |
| `keep_alive_data` | `List<Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_date_time_from` | `String` | No |  |
| `terminal_date_time_to` | `String` | No |  |
| `terminal_id` | `Long` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.keepAlive(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `KeepAlive` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ListTerminal

```java
SdkEntity listTerminal = client.listTerminal(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `List<Object>` | No |  |
| `filter` | `Map<String, Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `List<Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.listTerminal(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ListTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExport

```java
SdkEntity mandatorClearingExport = client.mandatorClearingExport(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `pagination` | `Map<String, Object>` | No |  |
| `record` | `List<Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.mandatorClearingExport(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExportDownload

```java
SdkEntity mandatorClearingExportDownload = client.mandatorClearingExportDownload(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `file_id` | `String` | No |  |
| `filename_template` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.mandatorClearingExportDownload(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to"  // String
), null);
```

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```java
Object result = client.mandatorClearingExportDownload(null).load(Map.of("id", "mandator_clearing_export_download_id"), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MandatorClearingExportSummary

```java
SdkEntity mandatorClearingExportSummary = client.mandatorClearingExportSummary(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `record` | `List<Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.mandatorClearingExportSummary(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MerchantPortalServicesApi

```java
SdkEntity merchantPortalServicesApi = client.merchantPortalServicesApi(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `String` | No |  |
| `authorization_code` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `clearing_amount_from` | `String` | No |  |
| `clearing_amount_to` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `corporate_uuid` | `String` | No |  |
| `order_by_transaction_date` | `String` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `Long` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `Long` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.merchantPortalServicesApi(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## MoveTid

```java
SdkEntity moveTid = client.moveTid(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `List<Object>` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `target_packageorderuuid` | `String` | No |  |
| `target_productorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.moveTid(null).create(Map.of(
    "productorderuuid", List.of()  // List<Object>
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `MoveTid` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PaymentManual

```java
SdkEntity paymentManual = client.paymentManual(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `Long` | Yes |  |
| `authorization_number` | `String` | No |  |
| `card_number` | `String` | Yes |  |
| `card_type` | `String` | No |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `date_time_tx` | `String` | No |  |
| `exp_date` | `String` | Yes |  |
| `merchant_id` | `String` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `response_code` | `String` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `txtype` | `String` | Yes |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.paymentManual(null).create(Map.of(
    "amount", 1L,  // Long
    "card_number", "example_card_number",  // String
    "currency", "example_currency",  // String
    "exp_date", "example_exp_date",  // String
    "txtype", "example_txtype"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentManual` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PaymentSred

```java
SdkEntity paymentSred = client.paymentSred(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `Long` | Yes |  |
| `authorization_number` | `String` | No |  |
| `card_type` | `String` | No |  |
| `currency` | `String` | Yes |  |
| `date_time_tx` | `String` | No |  |
| `device_payload` | `String` | Yes |  |
| `merchant_id` | `String` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `response_code` | `String` | No |  |
| `response_message` | `String` | No |  |
| `sred` | `Map<String, Object>` | No |  |
| `terminal_id` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `txtype` | `String` | Yes |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.paymentSred(null).create(Map.of(
    "amount", 1L,  // Long
    "currency", "example_currency",  // String
    "device_payload", "example_device_payload",  // String
    "txtype", "example_txtype"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentSred` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## PreAuthTransactionCompletion

```java
SdkEntity preAuthTransactionCompletion = client.preAuthTransactionCompletion(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Long` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `card_number_reference` | `String` | Yes |  |
| `client_id` | `Long` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Long` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Long` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Long` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Long` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | Yes |  |
| `tx_type` | `String` | No |  |
| `user_data` | `String` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.preAuthTransactionCompletion(null).create(Map.of(
    "card_number_reference", "example_card_number_reference",  // String
    "client_id", 1L,  // Long
    "currency", "example_currency",  // String
    "receipt_number", "example_receipt_number",  // String
    "terminal_id", 1L,  // Long
    "transaction_type", "example_transaction_type"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ReactivateTerminal

```java
SdkEntity reactivateTerminal = client.reactivateTerminal(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `reactivation_reason` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.reactivateTerminal(null).create(Map.of(
    "reactivation_reason", "example_reactivation_reason",  // String
    "terminal_id", 1L  // Long
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RefundTransaction

```java
SdkEntity refundTransaction = client.refundTransaction(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Long` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `Long` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Long` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Long` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Long` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Long` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Long` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `tx_type` | `String` | No |  |
| `user_data` | `String` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.refundTransaction(null).create(Map.of(
    "client_id", 1L,  // Long
    "currency", "example_currency",  // String
    "receipt_number", "example_receipt_number",  // String
    "terminal_id", 1L  // Long
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RefundTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RegisterTecsCompany

```java
SdkEntity registerTecsCompany = client.registerTecsCompany(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `partner_id` | `Long` | No |  |
| `partner_name` | `String` | No |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.registerTecsCompany(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid",  // String
    "package_order_uuid", "example_package_order_uuid",  // String
    "product_order_uuid", "example_product_order_uuid",  // String
    "template_name", "example_template_name"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## RegisterTerminal

```java
SdkEntity registerTerminal = client.registerTerminal(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `Map<String, Object>` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `tecs_web_secret_key` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_country_code` | `String` | Yes |  |
| `terminal_id` | `Long` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `terminal_language_code` | `String` | Yes |  |
| `terminal_location` | `String` | Yes |  |
| `terminal_serial_number` | `String` | No |  |
| `token_io_alia` | `String` | No |  |
| `token_io_iban` | `String` | No |  |
| `token_io_member_id` | `String` | No |  |
| `web_shop_url` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.registerTerminal(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid",  // String
    "package_order_uuid", "example_package_order_uuid",  // String
    "product_order_uuid", "example_product_order_uuid",  // String
    "template_name", "example_template_name",  // String
    "terminal_country_code", "example_terminal_country_code",  // String
    "terminal_language_code", "example_terminal_language_code",  // String
    "terminal_location", "example_terminal_location"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## ReportData

```java
SdkEntity reportData = client.reportData(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `List<Object>` | No |  |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `corporate_id` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `sum_over_credit_tx` | `Map<String, Object>` | No |  |
| `sum_over_debit_tx` | `Map<String, Object>` | No |  |
| `terminal_id` | `Long` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.reportData(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to",  // String
    "corporate_id", "example_corporate_id",  // String
    "currency", "example_currency"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `ReportData` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## StatusTransaction

```java
SdkEntity statusTransaction = client.statusTransaction(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `acquirer_terminal_id` | `String` | No |  |
| `amount` | `Long` | No |  |
| `application_cryptogram` | `String` | No |  |
| `authorization_code` | `Object` | No |  |
| `authorization_date` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_entry` | `String` | No |  |
| `card_expiration` | `String` | No |  |
| `card_number` | `String` | No |  |
| `clearing_amount` | `Long` | No |  |
| `clearing_batch_id` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_date` | `String` | No |  |
| `clearing_processed_date` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `client_id` | `Long` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_application_id` | `String` | No |  |
| `emv_application_label` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `original_client_id` | `String` | No |  |
| `original_terminal_id` | `Long` | No |  |
| `original_transaction_id` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_code_from_a` | `String` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `service_code` | `String` | No |  |
| `settlement_status` | `String` | No |  |
| `source_id` | `Long` | No |  |
| `tecsengine_response_code` | `Long` | No |  |
| `tecsengine_response_text` | `String` | No |  |
| `terminal_end_of_day_date` | `String` | No |  |
| `terminal_id` | `Long` | No |  |
| `terminal_location` | `String` | No |  |
| `tip_amount` | `Long` | No |  |
| `trace_number` | `Long` | No |  |
| `transaction_clearing_date` | `String` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_seq_number` | `Long` | No |  |
| `transaction_server_date` | `String` | No |  |
| `transaction_source` | `String` | No |  |
| `transaction_type` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.statusTransaction(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StatusTransaction` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## StoreTerminalParameter

```java
SdkEntity storeTerminalParameter = client.storeTerminalParameter(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `Map<String, Object>` | No |  |
| `config_version` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | Yes |  |
| `tid_sent` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.storeTerminalParameter(null).create(Map.of(
    "serial_number", "example_serial_number"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TerminalId

```java
SdkEntity terminalId = client.terminalId(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `List<Object>` | Yes |  |
| `duplicate_terminal_id` | `List<Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `List<Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.terminalId(null).create(Map.of(
    "device_serial_number", List.of()  // List<Object>
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TerminalId` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionHistory

```java
SdkEntity transactionHistory = client.transactionHistory(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `String` | No |  |
| `authorization_code` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `clearing_amount_from` | `String` | No |  |
| `clearing_amount_to` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `corporate_uuid` | `String` | No |  |
| `order_by_transaction_date` | `String` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `payment_token_public_id` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `Long` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `Long` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_history` | `List<Object>` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.transactionHistory(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionHistory` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsCount

```java
SdkEntity transactionsCount = client.transactionsCount(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `List<Object>` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.transactionsCount(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCount` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsCountCardBrand

```java
SdkEntity transactionsCountCardBrand = client.transactionsCountCardBrand(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `List<Object>` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.transactionsCountCardBrand(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## TransactionsTurnover

```java
SdkEntity transactionsTurnover = client.transactionsTurnover(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `turnover` | `List<Object>` | No |  |

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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.transactionsTurnover(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## UpdateMerchant

```java
SdkEntity updateMerchant = client.updateMerchant(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchant_category_code` | `String` | No |  |
| `name` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vu_nummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.updateMerchant(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## UpdateTemplateXml

```java
SdkEntity updateTemplateXml = client.updateTemplateXml(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.updateTemplateXml(null).create(Map.of(
    "template_name", "example_template_name",  // String
    "template_xml", "example_template_xml"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Version

```java
SdkEntity version = client.version(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```java
Object result = client.version(null).load(null, null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

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

```java
Map<String, Object> feature = new java.util.LinkedHashMap<>();
feature.put("test", Map.of("active", true));
Map<String, Object> options = new java.util.LinkedHashMap<>();
options.put("feature", feature);
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

