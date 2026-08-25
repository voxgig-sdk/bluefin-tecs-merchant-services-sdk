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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `i64` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `i64` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `i64` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `i64` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `i64` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `i64` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.cancel_transaction(Value::Noval).create(jo(vec![
    ("clientId", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receiptNumber", Value::str("example_receiptNumber")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `cardNo` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `acquirerId` | `i64` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateType` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |
| `terminalType` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.create_product(Value::Noval).create(jo(vec![
    ("templateName", Value::str("example_templateName")),  // String
    ("templateType", Value::str("example_templateType")),  // String
    ("templateXml", Value::str("example_templateXml")),  // String
    ("terminalType", Value::str("example_terminalType")),  // String
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
| `corporateUuid` | `String` | No |  |
| `deactivationReason` | `String` | Yes |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.deactivate_terminal(Value::Noval).create(jo(vec![
    ("deactivationReason", Value::str("example_deactivationReason")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `txCount` | `i64` | No |  |
| `txIdEnd` | `String` | No |  |
| `txIdStart` | `String` | No |  |
| `txSeqNoEnd` | `i64` | No |  |
| `txSeqNoStart` | `i64` | No |  |
| `txTotal` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.digital_services_api(Value::Noval).create(jo(vec![
    ("file_id", Value::str("example_file_id")),  // String
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `ecomData` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.ec_data_ecom(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionId", Value::str("example_transactionId")),  // String
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `ecomPass` | `String` | No |  |
| `ecomSkey` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.ecom_parameter(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
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
| `ecrData` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.ecr_data(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionId", Value::str("example_transactionId")),  // String
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `emvData` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.emv_data(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionId", Value::str("example_transactionId")),  // String
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `accountNo` | `i64` | No |  |
| `additionalData` | `std::collections::HashMap<String, Value>` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchantCategoryCode` | `i64` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `sortingCode` | `i64` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalIds` | `Vec<Value>` | No |  |
| `vuNummer` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.enable_acquiring(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("merchantCategoryCode", Value::Num(1.0)),  // i64
    ("packageOrderUuid", Value::str("example_packageOrderUuid")),  // String
    ("productOrderUuid", Value::str("example_productOrderUuid")),  // String
    ("templateName", Value::str("example_templateName")),  // String
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
| `merchantContractNumber` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.get_merchant_contract_number(Value::Noval).create(jo(vec![
    ("merchantContractNumber", Value::str("example_merchantContractNumber")),  // String
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.get_template_xml(Value::Noval).create(jo(vec![
    ("templateName", Value::str("example_templateName")),  // String
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
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.introduce_mandator(Value::Noval).create(jo(vec![
    ("mandatorName", Value::str("example_mandatorName")),  // String
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalTemplateDescription` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.introduce_package(Value::Noval).create(jo(vec![
    ("terminalTemplateDescription", Value::str("example_terminalTemplateDescription")),  // String
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
| `kaDateTimeFrom` | `String` | No |  |
| `kaDateTimeTo` | `String` | No |  |
| `keepAliveData` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalDateTimeFrom` | `String` | No |  |
| `terminalDateTimeTo` | `String` | No |  |
| `terminalId` | `i64` | No |  |

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
| `corporateUuid` | `Vec<Value>` | No |  |
| `filter` | `std::collections::HashMap<String, Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `Vec<Value>` | No |  |

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
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `records` | `Vec<Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `clearingDateFrom` | `String` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | Yes | End date for clearing export (inclusive) |
| `fileId` | `String` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | No | Optional filename template for the export file |
| `id` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `status` | `String` | No | Processing status of the export request |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export_download(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `Vec<Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.mandator_clearing_export_summary(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `i64` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `i64` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No | Filter by wallet type. |

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
| `productorderuuids` | `Vec<Value>` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `targetPackageorderuuid` | `String` | No |  |
| `targetProductorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.move_tid(Value::Noval).create(jo(vec![
    ("productorderuuids", Value::empty_list()),  // Vec<Value>
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
| `acquirerName` | `String` | No | Acquirer name parsed from KKG field |
| `amount` | `i64` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `String` | No | Authorization number from the gateway |
| `cardNumber` | `String` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `String` | No | Card type parsed from KKG field |
| `currency` | `String` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `String` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `String` | No | Date and time of the transaction |
| `expDate` | `String` | Yes | Card expiry date in MMYY format |
| `merchantId` | `String` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `String` | No | Original transaction ID from gateway |
| `password` | `String` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `String` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `String` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `String` | No | Terminal ID used for the transaction |
| `transactionId` | `String` | No | Transaction ID generated by the backend |
| `txtype` | `String` | Yes | Transaction type |

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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.payment_manual(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("cardNumber", Value::str("example_cardNumber")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("expDate", Value::str("example_expDate")),  // String
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
| `amount` | `i64` | Yes | Transaction amount in minor units (cents) |
| `currency` | `String` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `String` | No | Device type that provided the SRED payload |
| `devicePayload` | `String` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `String` | No | Card expiry date in MMYY format |
| `mode` | `String` | No | Decryption mode |
| `panMasked` | `String` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `String` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `String` | No | Device serial number |
| `serviceCode` | `String` | No | Service code from the card |
| `terminalId` | `String` | Yes | Terminal ID - 8 digits |
| `txtype` | `String` | Yes | Transaction type |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.payment_sred(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("devicePayload", Value::str("example_devicePayload")),  // String
    ("terminalId", Value::str("example_terminalId")),  // String
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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `i64` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `cardNumberReference` | `String` | Yes |  |
| `clientId` | `i64` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `i64` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `i64` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `i64` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `i64` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.pre_auth_transaction_completion(Value::Noval).create(jo(vec![
    ("cardNumberReference", Value::str("example_cardNumberReference")),  // String
    ("clientId", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receiptNumber", Value::str("example_receiptNumber")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `corporateUuid` | `String` | No |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `reactivationReason` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.reactivate_terminal(Value::Noval).create(jo(vec![
    ("reactivationReason", Value::str("example_reactivationReason")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `i64` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `i64` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `i64` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `i64` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `i64` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `i64` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `i64` | No |  |
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

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.refund_transaction(Value::Noval).create(jo(vec![
    ("clientId", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receiptNumber", Value::str("example_receiptNumber")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `partnerId` | `i64` | No |  |
| `partnerName` | `String` | No |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.register_tecs_company(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
    ("packageOrderUuid", Value::str("example_packageOrderUuid")),  // String
    ("productOrderUuid", Value::str("example_productOrderUuid")),  // String
    ("templateName", Value::str("example_templateName")),  // String
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
| `additionalData` | `std::collections::HashMap<String, Value>` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `tecsWebSecretKey` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalCountryCode` | `String` | Yes |  |
| `terminalId` | `i64` | No |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalLanguageCode` | `String` | Yes |  |
| `terminalLocation` | `String` | Yes |  |
| `terminalSerialNumber` | `String` | No |  |
| `tokenIOAlias` | `String` | No |  |
| `tokenIOIban` | `String` | No |  |
| `tokenIOMemberId` | `String` | No |  |
| `webShopUrl` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.register_terminal(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
    ("packageOrderUuid", Value::str("example_packageOrderUuid")),  // String
    ("productOrderUuid", Value::str("example_productOrderUuid")),  // String
    ("templateName", Value::str("example_templateName")),  // String
    ("terminalCountryCode", Value::str("example_terminalCountryCode")),  // String
    ("terminalLanguageCode", Value::str("example_terminalLanguageCode")),  // String
    ("terminalLocation", Value::str("example_terminalLocation")),  // String
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
| `cardBrandReportData` | `Vec<Value>` | No |  |
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `sumOverCreditTx` | `std::collections::HashMap<String, Value>` | No |  |
| `sumOverDebitTx` | `std::collections::HashMap<String, Value>` | No |  |
| `terminalId` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.report_data(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
    ("corporateId", Value::str("example_corporateId")),  // String
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
| `acquirerName` | `String` | No |  |
| `acquirerTerminalId` | `String` | No |  |
| `amount` | `i64` | No |  |
| `applicationCryptogram` | `String` | No |  |
| `authorizationCode` | `Value` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardEntry` | `String` | No |  |
| `cardExpiration` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clearingAmount` | `i64` | No |  |
| `clearingBatchId` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingDate` | `String` | No |  |
| `clearingProcessedDate` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `clientId` | `i64` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvApplicationId` | `String` | No |  |
| `emvApplicationLabel` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `originalClientId` | `String` | No |  |
| `originalTerminalId` | `i64` | No |  |
| `originalTransactionId` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseCodeFromAS` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `settlementStatus` | `String` | No |  |
| `sourceId` | `i64` | No |  |
| `tecsengineResponseCode` | `i64` | No |  |
| `tecsengineResponseText` | `String` | No |  |
| `terminalEndOfDayDate` | `String` | No |  |
| `terminalId` | `i64` | No |  |
| `terminalLocation` | `String` | No |  |
| `tipAmount` | `i64` | No |  |
| `traceNumber` | `i64` | No |  |
| `transactionClearingDate` | `String` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionSeqNumber` | `i64` | No |  |
| `transactionServerDate` | `String` | No |  |
| `transactionSource` | `String` | No |  |
| `transactionType` | `String` | No |  |

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
| `acqTabNexo` | `std::collections::HashMap<String, Value>` | No |  |
| `configVersion` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | Yes |  |
| `tidSent` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.store_terminal_parameter(Value::Noval).create(jo(vec![
    ("serialNumber", Value::str("example_serialNumber")),  // String
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
| `deviceSerialNumber` | `Vec<Value>` | Yes |  |
| `duplicateTerminalIds` | `Vec<Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `Vec<Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.terminal_id(Value::Noval).create(jo(vec![
    ("deviceSerialNumber", Value::empty_list()),  // Vec<Value>
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
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `paymentTokenPublicId` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `i64` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `i64` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionHistories` | `Vec<Value>` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No | Filter by wallet type. |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `Vec<Value>` | No |  |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `Vec<Value>` | No |  |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `turnovers` | `Vec<Value>` | No |  |

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
| `corporateUuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchantCategoryCode` | `String` | No |  |
| `name` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vuNummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.update_merchant(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.update_template_xml(Value::Noval).create(jo(vec![
    ("templateName", Value::str("example_templateName")),  // String
    ("templateXml", Value::str("example_templateXml")),  // String
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
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
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

