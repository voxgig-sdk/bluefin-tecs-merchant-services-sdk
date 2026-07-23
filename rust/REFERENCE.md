# BluefinTecsMerchantServices Rust SDK Reference

Complete API reference for the BluefinTecsMerchantServices Rust SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```rust
use bluefin_tecs_merchant_services_sdk::{BluefinTecsMerchantServicesSDK, Value};

let client = BluefinTecsMerchantServicesSDK::new(options);
```

Create a new SDK client instance. `options` is a `Value` map
(`Value::Noval` for none).

**Parameters:**

| Key | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides. |


### Static Functions

#### `test_sdk(testopts: Value, sdkopts: Value) -> Rc<BluefinTecsMerchantServicesSDK>`

Create a test client with mock features active. Both arguments may be
`Value::Noval`.

```rust
use bluefin_tecs_merchant_services_sdk::{test_sdk, Value};

let client = test_sdk(Value::Noval, Value::Noval);
```


### Instance Methods

#### `cancel_transaction(entopts: Value) -> Rc<CancelTransactionEntity>`

Create a new `CancelTransactionEntity` instance. Pass `Value::Noval` for no
initial options.

#### `check_card_black_listed(entopts: Value) -> Rc<CheckCardBlackListedEntity>`

Create a new `CheckCardBlackListedEntity` instance. Pass `Value::Noval` for no
initial options.

#### `create_product(entopts: Value) -> Rc<CreateProductEntity>`

Create a new `CreateProductEntity` instance. Pass `Value::Noval` for no
initial options.

#### `deactivate_terminal(entopts: Value) -> Rc<DeactivateTerminalEntity>`

Create a new `DeactivateTerminalEntity` instance. Pass `Value::Noval` for no
initial options.

#### `digital_services_api(entopts: Value) -> Rc<DigitalServicesApiEntity>`

Create a new `DigitalServicesApiEntity` instance. Pass `Value::Noval` for no
initial options.

#### `ec_data_ecom(entopts: Value) -> Rc<EcDataEcomEntity>`

Create a new `EcDataEcomEntity` instance. Pass `Value::Noval` for no
initial options.

#### `ecom_parameter(entopts: Value) -> Rc<EcomParameterEntity>`

Create a new `EcomParameterEntity` instance. Pass `Value::Noval` for no
initial options.

#### `ecr_data(entopts: Value) -> Rc<EcrDataEntity>`

Create a new `EcrDataEntity` instance. Pass `Value::Noval` for no
initial options.

#### `emv_data(entopts: Value) -> Rc<EmvDataEntity>`

Create a new `EmvDataEntity` instance. Pass `Value::Noval` for no
initial options.

#### `enable_acquiring(entopts: Value) -> Rc<EnableAcquiringEntity>`

Create a new `EnableAcquiringEntity` instance. Pass `Value::Noval` for no
initial options.

#### `get_merchant_contract_number(entopts: Value) -> Rc<GetMerchantContractNumberEntity>`

Create a new `GetMerchantContractNumberEntity` instance. Pass `Value::Noval` for no
initial options.

#### `get_template_xml(entopts: Value) -> Rc<GetTemplateXmlEntity>`

Create a new `GetTemplateXmlEntity` instance. Pass `Value::Noval` for no
initial options.

#### `introduce_mandator(entopts: Value) -> Rc<IntroduceMandatorEntity>`

Create a new `IntroduceMandatorEntity` instance. Pass `Value::Noval` for no
initial options.

#### `introduce_package(entopts: Value) -> Rc<IntroducePackageEntity>`

Create a new `IntroducePackageEntity` instance. Pass `Value::Noval` for no
initial options.

#### `keep_alive(entopts: Value) -> Rc<KeepAliveEntity>`

Create a new `KeepAliveEntity` instance. Pass `Value::Noval` for no
initial options.

#### `list_terminal(entopts: Value) -> Rc<ListTerminalEntity>`

Create a new `ListTerminalEntity` instance. Pass `Value::Noval` for no
initial options.

#### `mandator_clearing_export(entopts: Value) -> Rc<MandatorClearingExportEntity>`

Create a new `MandatorClearingExportEntity` instance. Pass `Value::Noval` for no
initial options.

#### `mandator_clearing_export_download(entopts: Value) -> Rc<MandatorClearingExportDownloadEntity>`

Create a new `MandatorClearingExportDownloadEntity` instance. Pass `Value::Noval` for no
initial options.

#### `mandator_clearing_export_summary(entopts: Value) -> Rc<MandatorClearingExportSummaryEntity>`

Create a new `MandatorClearingExportSummaryEntity` instance. Pass `Value::Noval` for no
initial options.

#### `merchant_portal_services_api(entopts: Value) -> Rc<MerchantPortalServicesApiEntity>`

Create a new `MerchantPortalServicesApiEntity` instance. Pass `Value::Noval` for no
initial options.

#### `move_tid(entopts: Value) -> Rc<MoveTidEntity>`

Create a new `MoveTidEntity` instance. Pass `Value::Noval` for no
initial options.

#### `payment_manual(entopts: Value) -> Rc<PaymentManualEntity>`

Create a new `PaymentManualEntity` instance. Pass `Value::Noval` for no
initial options.

#### `payment_sred(entopts: Value) -> Rc<PaymentSredEntity>`

Create a new `PaymentSredEntity` instance. Pass `Value::Noval` for no
initial options.

#### `pre_auth_transaction_completion(entopts: Value) -> Rc<PreAuthTransactionCompletionEntity>`

Create a new `PreAuthTransactionCompletionEntity` instance. Pass `Value::Noval` for no
initial options.

#### `reactivate_terminal(entopts: Value) -> Rc<ReactivateTerminalEntity>`

Create a new `ReactivateTerminalEntity` instance. Pass `Value::Noval` for no
initial options.

#### `refund_transaction(entopts: Value) -> Rc<RefundTransactionEntity>`

Create a new `RefundTransactionEntity` instance. Pass `Value::Noval` for no
initial options.

#### `register_tecs_company(entopts: Value) -> Rc<RegisterTecsCompanyEntity>`

Create a new `RegisterTecsCompanyEntity` instance. Pass `Value::Noval` for no
initial options.

#### `register_terminal(entopts: Value) -> Rc<RegisterTerminalEntity>`

Create a new `RegisterTerminalEntity` instance. Pass `Value::Noval` for no
initial options.

#### `report_data(entopts: Value) -> Rc<ReportDataEntity>`

Create a new `ReportDataEntity` instance. Pass `Value::Noval` for no
initial options.

#### `status_transaction(entopts: Value) -> Rc<StatusTransactionEntity>`

Create a new `StatusTransactionEntity` instance. Pass `Value::Noval` for no
initial options.

#### `store_terminal_parameter(entopts: Value) -> Rc<StoreTerminalParameterEntity>`

Create a new `StoreTerminalParameterEntity` instance. Pass `Value::Noval` for no
initial options.

#### `terminal_id(entopts: Value) -> Rc<TerminalIdEntity>`

Create a new `TerminalIdEntity` instance. Pass `Value::Noval` for no
initial options.

#### `transaction_history(entopts: Value) -> Rc<TransactionHistoryEntity>`

Create a new `TransactionHistoryEntity` instance. Pass `Value::Noval` for no
initial options.

#### `transactions_count(entopts: Value) -> Rc<TransactionsCountEntity>`

Create a new `TransactionsCountEntity` instance. Pass `Value::Noval` for no
initial options.

#### `transactions_count_card_brand(entopts: Value) -> Rc<TransactionsCountCardBrandEntity>`

Create a new `TransactionsCountCardBrandEntity` instance. Pass `Value::Noval` for no
initial options.

#### `transactions_turnover(entopts: Value) -> Rc<TransactionsTurnoverEntity>`

Create a new `TransactionsTurnoverEntity` instance. Pass `Value::Noval` for no
initial options.

#### `update_merchant(entopts: Value) -> Rc<UpdateMerchantEntity>`

Create a new `UpdateMerchantEntity` instance. Pass `Value::Noval` for no
initial options.

#### `update_template_xml(entopts: Value) -> Rc<UpdateTemplateXmlEntity>`

Create a new `UpdateTemplateXmlEntity` instance. Pass `Value::Noval` for no
initial options.

#### `version(entopts: Value) -> Rc<VersionEntity>`

Create a new `VersionEntity` instance. Pass `Value::Noval` for no
initial options.

#### `options_map() -> Value`

Return a deep copy of the current SDK options.

#### `get_utility() -> Rc<Utility>`

Return a copy of the SDK utility object.

#### `direct(fetchargs: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Make a direct HTTP request to any API endpoint. `Ok` is a result `Value::Map`
with `ok`, `status`, `headers`, and `data` (or `err` on failure). This
escape hatch resolves to `Ok` even on a non-2xx response — branch on
`getp(&result, "ok")`.

**Parameters (`fetchargs` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

#### `prepare(fetchargs: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Prepare a fetch definition without sending. Returns the fetchdef on `Ok`.


---

## CancelTransactionEntity

```rust
let cancel_transaction = client.cancel_transaction(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `i64` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `i64` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `i64` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `i64` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `i64` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `i64` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.cancel_transaction(Value::Noval).create(jo(vec![
    ("client_id", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receipt_number", Value::str("example_receipt_number")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `CancelTransactionEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## CheckCardBlackListedEntity

```rust
let check_card_black_listed = client.check_card_black_listed(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.check_card_black_listed(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `CheckCardBlackListedEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## CreateProductEntity

```rust
let create_product = client.create_product(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `i64` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_type` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |
| `terminal_type` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.create_product(Value::Noval).create(jo(vec![
    ("template_name", Value::str("example_template_name")),  // String
    ("template_type", Value::str("example_template_type")),  // String
    ("template_xml", Value::str("example_template_xml")),  // String
    ("terminal_type", Value::str("example_terminal_type")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `CreateProductEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## DeactivateTerminalEntity

```rust
let deactivate_terminal = client.deactivate_terminal(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `deactivation_reason` | `String` | Yes |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.deactivate_terminal(Value::Noval).create(jo(vec![
    ("deactivation_reason", Value::str("example_deactivation_reason")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `DeactivateTerminalEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## DigitalServicesApiEntity

```rust
let digital_services_api = client.digital_services_api(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `tx_count` | `i64` | No |  |
| `tx_id_end` | `String` | No |  |
| `tx_id_start` | `String` | No |  |
| `tx_seq_no_end` | `i64` | No |  |
| `tx_seq_no_start` | `i64` | No |  |
| `tx_total` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.digital_services_api(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

#### `load(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Load a single entity matching the given criteria. Returns the entity data on `Ok` and `Err` on failure.

```rust
let result = client.digital_services_api(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `DigitalServicesApiEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## EcDataEcomEntity

```rust
let ec_data_ecom = client.ec_data_ecom(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.ec_data_ecom(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_id", Value::str("example_transaction_id")),  // String
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `EcDataEcomEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## EcomParameterEntity

```rust
let ecom_parameter = client.ecom_parameter(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `String` | No |  |
| `ecom_skey` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.ecom_parameter(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `EcomParameterEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## EcrDataEntity

```rust
let ecr_data = client.ecr_data(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.ecr_data(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_id", Value::str("example_transaction_id")),  // String
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `EcrDataEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## EmvDataEntity

```rust
let emv_data = client.emv_data(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.emv_data(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_id", Value::str("example_transaction_id")),  // String
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `EmvDataEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## EnableAcquiringEntity

```rust
let enable_acquiring = client.enable_acquiring(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `i64` | No |  |
| `additional_data` | `std::collections::HashMap<String, Value>` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchant_category_code` | `i64` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `sorting_code` | `i64` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_id` | `Vec<Value>` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `vu_nummer` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.enable_acquiring(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("merchant_category_code", Value::Num(1.0)),  // i64
    ("package_order_uuid", Value::str("example_package_order_uuid")),  // String
    ("product_order_uuid", Value::str("example_product_order_uuid")),  // String
    ("template_name", Value::str("example_template_name")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `EnableAcquiringEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## GetMerchantContractNumberEntity

```rust
let get_merchant_contract_number = client.get_merchant_contract_number(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.get_merchant_contract_number(Value::Noval).create(jo(vec![
    ("merchant_contract_number", Value::str("example_merchant_contract_number")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `GetMerchantContractNumberEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## GetTemplateXmlEntity

```rust
let get_template_xml = client.get_template_xml(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.get_template_xml(Value::Noval).create(jo(vec![
    ("template_name", Value::str("example_template_name")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `GetTemplateXmlEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## IntroduceMandatorEntity

```rust
let introduce_mandator = client.introduce_mandator(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.introduce_mandator(Value::Noval).create(jo(vec![
    ("mandator_name", Value::str("example_mandator_name")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `IntroduceMandatorEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## IntroducePackageEntity

```rust
let introduce_package = client.introduce_package(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_template_description` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.introduce_package(Value::Noval).create(jo(vec![
    ("terminal_template_description", Value::str("example_terminal_template_description")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `IntroducePackageEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## KeepAliveEntity

```rust
let keep_alive = client.keep_alive(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `ka_date_time_from` | `String` | No |  |
| `ka_date_time_to` | `String` | No |  |
| `keep_alive_data` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_date_time_from` | `String` | No |  |
| `terminal_date_time_to` | `String` | No |  |
| `terminal_id` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.keep_alive(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `KeepAliveEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## ListTerminalEntity

```rust
let list_terminal = client.list_terminal(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `Vec<Value>` | No |  |
| `filter` | `std::collections::HashMap<String, Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `Vec<Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.list_terminal(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `ListTerminalEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## MandatorClearingExportEntity

```rust
let mandator_clearing_export = client.mandator_clearing_export(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `record` | `Vec<Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `MandatorClearingExportEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```rust
let mandator_clearing_export_download = client.mandator_clearing_export_download(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `file_id` | `String` | No |  |
| `filename_template` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export_download(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
]), Value::Noval).unwrap();
```

#### `load(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Load a single entity matching the given criteria. Returns the entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export_download(Value::Noval).load(jo(vec![("id", Value::str("mandator_clearing_export_download_id"))]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `MandatorClearingExportDownloadEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```rust
let mandator_clearing_export_summary = client.mandator_clearing_export_summary(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `record` | `Vec<Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export_summary(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `MandatorClearingExportSummaryEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```rust
let merchant_portal_services_api = client.merchant_portal_services_api(Value::Noval);
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
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `i64` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `i64` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.merchant_portal_services_api(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `MerchantPortalServicesApiEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## MoveTidEntity

```rust
let move_tid = client.move_tid(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `Vec<Value>` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `target_packageorderuuid` | `String` | No |  |
| `target_productorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.move_tid(Value::Noval).create(jo(vec![
    ("productorderuuid", Value::empty_list()),  // Vec<Value>
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `MoveTidEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## PaymentManualEntity

```rust
let payment_manual = client.payment_manual(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `i64` | Yes |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.payment_manual(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("card_number", Value::str("example_card_number")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("exp_date", Value::str("example_exp_date")),  // String
    ("txtype", Value::str("example_txtype")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `PaymentManualEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## PaymentSredEntity

```rust
let payment_sred = client.payment_sred(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `i64` | Yes |  |
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
| `sred` | `std::collections::HashMap<String, Value>` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.payment_sred(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("device_payload", Value::str("example_device_payload")),  // String
    ("txtype", Value::str("example_txtype")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `PaymentSredEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```rust
let pre_auth_transaction_completion = client.pre_auth_transaction_completion(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `i64` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `card_number_reference` | `String` | Yes |  |
| `client_id` | `i64` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `i64` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `i64` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `i64` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `i64` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.pre_auth_transaction_completion(Value::Noval).create(jo(vec![
    ("card_number_reference", Value::str("example_card_number_reference")),  // String
    ("client_id", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receipt_number", Value::str("example_receipt_number")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `PreAuthTransactionCompletionEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## ReactivateTerminalEntity

```rust
let reactivate_terminal = client.reactivate_terminal(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `reactivation_reason` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.reactivate_terminal(Value::Noval).create(jo(vec![
    ("reactivation_reason", Value::str("example_reactivation_reason")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `ReactivateTerminalEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## RefundTransactionEntity

```rust
let refund_transaction = client.refund_transaction(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `i64` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `i64` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `i64` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `i64` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `i64` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `i64` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.refund_transaction(Value::Noval).create(jo(vec![
    ("client_id", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receipt_number", Value::str("example_receipt_number")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `RefundTransactionEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## RegisterTecsCompanyEntity

```rust
let register_tecs_company = client.register_tecs_company(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `partner_id` | `i64` | No |  |
| `partner_name` | `String` | No |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.register_tecs_company(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
    ("package_order_uuid", Value::str("example_package_order_uuid")),  // String
    ("product_order_uuid", Value::str("example_product_order_uuid")),  // String
    ("template_name", Value::str("example_template_name")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `RegisterTecsCompanyEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## RegisterTerminalEntity

```rust
let register_terminal = client.register_terminal(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `std::collections::HashMap<String, Value>` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `tecs_web_secret_key` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_country_code` | `String` | Yes |  |
| `terminal_id` | `i64` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `terminal_language_code` | `String` | Yes |  |
| `terminal_location` | `String` | Yes |  |
| `terminal_serial_number` | `String` | No |  |
| `token_io_alia` | `String` | No |  |
| `token_io_iban` | `String` | No |  |
| `token_io_member_id` | `String` | No |  |
| `web_shop_url` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.register_terminal(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
    ("package_order_uuid", Value::str("example_package_order_uuid")),  // String
    ("product_order_uuid", Value::str("example_product_order_uuid")),  // String
    ("template_name", Value::str("example_template_name")),  // String
    ("terminal_country_code", Value::str("example_terminal_country_code")),  // String
    ("terminal_language_code", Value::str("example_terminal_language_code")),  // String
    ("terminal_location", Value::str("example_terminal_location")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `RegisterTerminalEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## ReportDataEntity

```rust
let report_data = client.report_data(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `Vec<Value>` | No |  |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `corporate_id` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `sum_over_credit_tx` | `std::collections::HashMap<String, Value>` | No |  |
| `sum_over_debit_tx` | `std::collections::HashMap<String, Value>` | No |  |
| `terminal_id` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.report_data(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
    ("corporate_id", Value::str("example_corporate_id")),  // String
    ("currency", Value::str("example_currency")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `ReportDataEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## StatusTransactionEntity

```rust
let status_transaction = client.status_transaction(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `acquirer_terminal_id` | `String` | No |  |
| `amount` | `i64` | No |  |
| `application_cryptogram` | `String` | No |  |
| `authorization_code` | `Value` | No |  |
| `authorization_date` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_entry` | `String` | No |  |
| `card_expiration` | `String` | No |  |
| `card_number` | `String` | No |  |
| `clearing_amount` | `i64` | No |  |
| `clearing_batch_id` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_date` | `String` | No |  |
| `clearing_processed_date` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `client_id` | `i64` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_application_id` | `String` | No |  |
| `emv_application_label` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `original_client_id` | `String` | No |  |
| `original_terminal_id` | `i64` | No |  |
| `original_transaction_id` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_code_from_a` | `String` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `service_code` | `String` | No |  |
| `settlement_status` | `String` | No |  |
| `source_id` | `i64` | No |  |
| `tecsengine_response_code` | `i64` | No |  |
| `tecsengine_response_text` | `String` | No |  |
| `terminal_end_of_day_date` | `String` | No |  |
| `terminal_id` | `i64` | No |  |
| `terminal_location` | `String` | No |  |
| `tip_amount` | `i64` | No |  |
| `trace_number` | `i64` | No |  |
| `transaction_clearing_date` | `String` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_seq_number` | `i64` | No |  |
| `transaction_server_date` | `String` | No |  |
| `transaction_source` | `String` | No |  |
| `transaction_type` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.status_transaction(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `StatusTransactionEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## StoreTerminalParameterEntity

```rust
let store_terminal_parameter = client.store_terminal_parameter(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `std::collections::HashMap<String, Value>` | No |  |
| `config_version` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | Yes |  |
| `tid_sent` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.store_terminal_parameter(Value::Noval).create(jo(vec![
    ("serial_number", Value::str("example_serial_number")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `StoreTerminalParameterEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## TerminalIdEntity

```rust
let terminal_id = client.terminal_id(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `Vec<Value>` | Yes |  |
| `duplicate_terminal_id` | `Vec<Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `Vec<Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.terminal_id(Value::Noval).create(jo(vec![
    ("device_serial_number", Value::empty_list()),  // Vec<Value>
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `TerminalIdEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## TransactionHistoryEntity

```rust
let transaction_history = client.transaction_history(Value::Noval);
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
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `payment_token_public_id` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `i64` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `i64` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_history` | `Vec<Value>` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.transaction_history(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `TransactionHistoryEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## TransactionsCountEntity

```rust
let transactions_count = client.transactions_count(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `Vec<Value>` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.transactions_count(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `TransactionsCountEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```rust
let transactions_count_card_brand = client.transactions_count_card_brand(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `Vec<Value>` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.transactions_count_card_brand(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `TransactionsCountCardBrandEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## TransactionsTurnoverEntity

```rust
let transactions_turnover = client.transactions_turnover(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `turnover` | `Vec<Value>` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.transactions_turnover(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `TransactionsTurnoverEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## UpdateMerchantEntity

```rust
let update_merchant = client.update_merchant(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchant_category_code` | `String` | No |  |
| `name` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vu_nummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.update_merchant(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `UpdateMerchantEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## UpdateTemplateXmlEntity

```rust
let update_template_xml = client.update_template_xml(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.update_template_xml(Value::Noval).create(jo(vec![
    ("template_name", Value::str("example_template_name")),  // String
    ("template_xml", Value::str("example_template_xml")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `UpdateTemplateXmlEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## VersionEntity

```rust
let version = client.version(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Load a single entity matching the given criteria. Returns the entity data on `Ok` and `Err` on failure.

```rust
let result = client.version(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `VersionEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```rust
let client = BluefinTecsMerchantServicesSDK::new(jo(vec![
    ("feature", jo(vec![
        ("test", jo(vec![("active", Value::Bool(true))])),
    ])),
]));
```

