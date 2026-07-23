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
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Int` | No |  |
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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.CancelTransaction().create(VMap([
    ("client_id", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receipt_number", .string("example_receipt_number")),  // String
    ("terminal_id", .int(1))  // Int
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
| `card_no` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `acquirer_id` | `Int` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_type` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |
| `terminal_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.CreateProduct().create(VMap([
    ("template_name", .string("example_template_name")),  // String
    ("template_type", .string("example_template_type")),  // String
    ("template_xml", .string("example_template_xml")),  // String
    ("terminal_type", .string("example_terminal_type"))  // String
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
| `corporate_uuid` | `String` | No |  |
| `deactivation_reason` | `String` | Yes |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.DeactivateTerminal().create(VMap([
    ("deactivation_reason", .string("example_deactivation_reason")),  // String
    ("terminal_id", .int(1))  // Int
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
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `tx_count` | `Int` | No |  |
| `tx_id_end` | `String` | No |  |
| `tx_id_start` | `String` | No |  |
| `tx_seq_no_end` | `Int` | No |  |
| `tx_seq_no_start` | `Int` | No |  |
| `tx_total` | `Int` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.DigitalServicesApi().create(VMap([
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
| `ecom_data` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EcDataEcom().create(VMap([
    ("terminal_id", .int(1)),  // Int
    ("transaction_id", .string("example_transaction_id")),  // String
    ("transaction_type", .string("example_transaction_type"))  // String
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
| `ecom_pass` | `String` | No |  |
| `ecom_skey` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EcomParameter().create(VMap([
    ("terminal_id", .int(1))  // Int
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
| `ecr_data` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EcrData().create(VMap([
    ("terminal_id", .int(1)),  // Int
    ("transaction_id", .string("example_transaction_id")),  // String
    ("transaction_type", .string("example_transaction_type"))  // String
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
| `emv_data` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EmvData().create(VMap([
    ("terminal_id", .int(1)),  // Int
    ("transaction_id", .string("example_transaction_id")),  // String
    ("transaction_type", .string("example_transaction_type"))  // String
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
| `account_no` | `Int` | No |  |
| `additional_data` | `VMap` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchant_category_code` | `Int` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `sorting_code` | `Int` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_id` | `[Value]` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `vu_nummer` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.EnableAcquiring().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid")),  // String
    ("currency", .string("example_currency")),  // String
    ("merchant_category_code", .int(1)),  // Int
    ("package_order_uuid", .string("example_package_order_uuid")),  // String
    ("product_order_uuid", .string("example_product_order_uuid")),  // String
    ("template_name", .string("example_template_name"))  // String
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
| `merchant_contract_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.GetMerchantContractNumber().create(VMap([
    ("merchant_contract_number", .string("example_merchant_contract_number"))  // String
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.GetTemplateXml().create(VMap([
    ("template_name", .string("example_template_name"))  // String
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
| `mandator_name` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.IntroduceMandator().create(VMap([
    ("mandator_name", .string("example_mandator_name"))  // String
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_template_description` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.IntroducePackage().create(VMap([
    ("terminal_template_description", .string("example_terminal_template_description"))  // String
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
| `ka_date_time_from` | `String` | No |  |
| `ka_date_time_to` | `String` | No |  |
| `keep_alive_data` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_date_time_from` | `String` | No |  |
| `terminal_date_time_to` | `String` | No |  |
| `terminal_id` | `Int` | No |  |

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
| `corporate_uuid` | `[Value]` | No |  |
| `filter` | `VMap` | No |  |
| `pagination` | `VMap` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `[Value]` | No |  |

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
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `pagination` | `VMap` | No |  |
| `record` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MandatorClearingExport().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to"))  // String
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
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `file_id` | `String` | No |  |
| `filename_template` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MandatorClearingExportDownload().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to"))  // String
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
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `record` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MandatorClearingExportSummary().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to"))  // String
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
| `3_d_secure` | `String` | No |  |
| `authorization_code` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `clearing_amount_from` | `String` | No |  |
| `clearing_amount_to` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `corporate_uuid` | `String` | No |  |
| `order_by_transaction_date` | `String` | No |  |
| `pagination` | `VMap` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `Int` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `Int` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
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
| `productorderuuid` | `[Value]` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `target_packageorderuuid` | `String` | No |  |
| `target_productorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.MoveTid().create(VMap([
    ("productorderuuid", .list([]))  // [Value]
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
| `acquirer_name` | `String` | No |  |
| `amount` | `Int` | Yes |  |
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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.PaymentManual().create(VMap([
    ("amount", .int(1)),  // Int
    ("card_number", .string("example_card_number")),  // String
    ("currency", .string("example_currency")),  // String
    ("exp_date", .string("example_exp_date")),  // String
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
| `acquirer_name` | `String` | No |  |
| `amount` | `Int` | Yes |  |
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
| `sred` | `VMap` | No |  |
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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.PaymentSred().create(VMap([
    ("amount", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("device_payload", .string("example_device_payload")),  // String
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
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `card_number_reference` | `String` | Yes |  |
| `client_id` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Int` | No |  |
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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.PreAuthTransactionCompletion().create(VMap([
    ("card_number_reference", .string("example_card_number_reference")),  // String
    ("client_id", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receipt_number", .string("example_receipt_number")),  // String
    ("terminal_id", .int(1)),  // Int
    ("transaction_type", .string("example_transaction_type"))  // String
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
| `corporate_uuid` | `String` | No |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `reactivation_reason` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.ReactivateTerminal().create(VMap([
    ("reactivation_reason", .string("example_reactivation_reason")),  // String
    ("terminal_id", .int(1))  // Int
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
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Int` | No |  |
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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.RefundTransaction().create(VMap([
    ("client_id", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receipt_number", .string("example_receipt_number")),  // String
    ("terminal_id", .int(1))  // Int
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
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `partner_id` | `Int` | No |  |
| `partner_name` | `String` | No |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.RegisterTecsCompany().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid")),  // String
    ("package_order_uuid", .string("example_package_order_uuid")),  // String
    ("product_order_uuid", .string("example_product_order_uuid")),  // String
    ("template_name", .string("example_template_name"))  // String
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
| `additional_data` | `VMap` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `tecs_web_secret_key` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_country_code` | `String` | Yes |  |
| `terminal_id` | `Int` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `terminal_language_code` | `String` | Yes |  |
| `terminal_location` | `String` | Yes |  |
| `terminal_serial_number` | `String` | No |  |
| `token_io_alia` | `String` | No |  |
| `token_io_iban` | `String` | No |  |
| `token_io_member_id` | `String` | No |  |
| `web_shop_url` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.RegisterTerminal().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid")),  // String
    ("package_order_uuid", .string("example_package_order_uuid")),  // String
    ("product_order_uuid", .string("example_product_order_uuid")),  // String
    ("template_name", .string("example_template_name")),  // String
    ("terminal_country_code", .string("example_terminal_country_code")),  // String
    ("terminal_language_code", .string("example_terminal_language_code")),  // String
    ("terminal_location", .string("example_terminal_location"))  // String
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
| `card_brand_report_data` | `[Value]` | No |  |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `corporate_id` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `sum_over_credit_tx` | `VMap` | No |  |
| `sum_over_debit_tx` | `VMap` | No |  |
| `terminal_id` | `Int` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.ReportData().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to")),  // String
    ("corporate_id", .string("example_corporate_id")),  // String
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
| `acquirer_name` | `String` | No |  |
| `acquirer_terminal_id` | `String` | No |  |
| `amount` | `Int` | No |  |
| `application_cryptogram` | `String` | No |  |
| `authorization_code` | `Value` | No |  |
| `authorization_date` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_entry` | `String` | No |  |
| `card_expiration` | `String` | No |  |
| `card_number` | `String` | No |  |
| `clearing_amount` | `Int` | No |  |
| `clearing_batch_id` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_date` | `String` | No |  |
| `clearing_processed_date` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `client_id` | `Int` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_application_id` | `String` | No |  |
| `emv_application_label` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `original_client_id` | `String` | No |  |
| `original_terminal_id` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_code_from_a` | `String` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `service_code` | `String` | No |  |
| `settlement_status` | `String` | No |  |
| `source_id` | `Int` | No |  |
| `tecsengine_response_code` | `Int` | No |  |
| `tecsengine_response_text` | `String` | No |  |
| `terminal_end_of_day_date` | `String` | No |  |
| `terminal_id` | `Int` | No |  |
| `terminal_location` | `String` | No |  |
| `tip_amount` | `Int` | No |  |
| `trace_number` | `Int` | No |  |
| `transaction_clearing_date` | `String` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_seq_number` | `Int` | No |  |
| `transaction_server_date` | `String` | No |  |
| `transaction_source` | `String` | No |  |
| `transaction_type` | `String` | No |  |

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
| `acq_tab_nexo` | `VMap` | No |  |
| `config_version` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | Yes |  |
| `tid_sent` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.StoreTerminalParameter().create(VMap([
    ("serial_number", .string("example_serial_number"))  // String
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
| `device_serial_number` | `[Value]` | Yes |  |
| `duplicate_terminal_id` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `[Value]` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.TerminalId().create(VMap([
    ("device_serial_number", .list([]))  // [Value]
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
| `3_d_secure` | `String` | No |  |
| `authorization_code` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `clearing_amount_from` | `String` | No |  |
| `clearing_amount_to` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `corporate_uuid` | `String` | No |  |
| `order_by_transaction_date` | `String` | No |  |
| `pagination` | `VMap` | No |  |
| `payment_token_public_id` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `Int` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `Int` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_history` | `[Value]` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `[Value]` | No |  |

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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `[Value]` | No |  |

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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `turnover` | `[Value]` | No |  |

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
| `corporate_uuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchant_category_code` | `String` | No |  |
| `name` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vu_nummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.UpdateMerchant().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid"))  // String
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.UpdateTemplateXml().create(VMap([
    ("template_name", .string("example_template_name")),  // String
    ("template_xml", .string("example_template_xml"))  // String
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
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
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

