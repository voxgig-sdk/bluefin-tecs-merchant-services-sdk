# BluefinTecsMerchantServices C++ SDK Reference

Complete API reference for the BluefinTecsMerchantServices C++ SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```cpp
#include "core/sdk.hpp"

using namespace sdk;

auto client = std::make_shared<BluefinTecsMerchantServicesSDK>(options);
```

Create a new SDK client instance. `options` is an `sdk::Value` map.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Value` | SDK configuration options (a map). |
| `options["apikey"]` | `std::string` | API key for authentication. |
| `options["base"]` | `std::string` | Base URL for API requests. |
| `options["prefix"]` | `std::string` | URL prefix appended after base. |
| `options["suffix"]` | `std::string` | URL suffix appended after path. |
| `options["headers"]` | `Value` | Custom headers for all requests. |
| `options["feature"]` | `Value` | Feature configuration. |
| `options["system"]` | `Value` | System overrides. |


### Static Methods

#### `BluefinTecsMerchantServicesSDK::testSDK(testopts, sdkopts)`

Create a test client with mock features active. Both arguments may be
`Value::undef()`; a no-arg overload is also provided.

```cpp
auto client = BluefinTecsMerchantServicesSDK::testSDK();
```


### Instance Methods

#### `cancel_transaction(entopts = Value::undef()) -> std::shared_ptr<CancelTransactionEntity>`

Create a new `CancelTransactionEntity` instance bound to this client.

#### `check_card_black_listed(entopts = Value::undef()) -> std::shared_ptr<CheckCardBlackListedEntity>`

Create a new `CheckCardBlackListedEntity` instance bound to this client.

#### `create_product(entopts = Value::undef()) -> std::shared_ptr<CreateProductEntity>`

Create a new `CreateProductEntity` instance bound to this client.

#### `deactivate_terminal(entopts = Value::undef()) -> std::shared_ptr<DeactivateTerminalEntity>`

Create a new `DeactivateTerminalEntity` instance bound to this client.

#### `digital_services_api(entopts = Value::undef()) -> std::shared_ptr<DigitalServicesApiEntity>`

Create a new `DigitalServicesApiEntity` instance bound to this client.

#### `ec_data_ecom(entopts = Value::undef()) -> std::shared_ptr<EcDataEcomEntity>`

Create a new `EcDataEcomEntity` instance bound to this client.

#### `ecom_parameter(entopts = Value::undef()) -> std::shared_ptr<EcomParameterEntity>`

Create a new `EcomParameterEntity` instance bound to this client.

#### `ecr_data(entopts = Value::undef()) -> std::shared_ptr<EcrDataEntity>`

Create a new `EcrDataEntity` instance bound to this client.

#### `emv_data(entopts = Value::undef()) -> std::shared_ptr<EmvDataEntity>`

Create a new `EmvDataEntity` instance bound to this client.

#### `enable_acquiring(entopts = Value::undef()) -> std::shared_ptr<EnableAcquiringEntity>`

Create a new `EnableAcquiringEntity` instance bound to this client.

#### `get_merchant_contract_number(entopts = Value::undef()) -> std::shared_ptr<GetMerchantContractNumberEntity>`

Create a new `GetMerchantContractNumberEntity` instance bound to this client.

#### `get_template_xml(entopts = Value::undef()) -> std::shared_ptr<GetTemplateXmlEntity>`

Create a new `GetTemplateXmlEntity` instance bound to this client.

#### `introduce_mandator(entopts = Value::undef()) -> std::shared_ptr<IntroduceMandatorEntity>`

Create a new `IntroduceMandatorEntity` instance bound to this client.

#### `introduce_package(entopts = Value::undef()) -> std::shared_ptr<IntroducePackageEntity>`

Create a new `IntroducePackageEntity` instance bound to this client.

#### `keep_alive(entopts = Value::undef()) -> std::shared_ptr<KeepAliveEntity>`

Create a new `KeepAliveEntity` instance bound to this client.

#### `list_terminal(entopts = Value::undef()) -> std::shared_ptr<ListTerminalEntity>`

Create a new `ListTerminalEntity` instance bound to this client.

#### `mandator_clearing_export(entopts = Value::undef()) -> std::shared_ptr<MandatorClearingExportEntity>`

Create a new `MandatorClearingExportEntity` instance bound to this client.

#### `mandator_clearing_export_download(entopts = Value::undef()) -> std::shared_ptr<MandatorClearingExportDownloadEntity>`

Create a new `MandatorClearingExportDownloadEntity` instance bound to this client.

#### `mandator_clearing_export_summary(entopts = Value::undef()) -> std::shared_ptr<MandatorClearingExportSummaryEntity>`

Create a new `MandatorClearingExportSummaryEntity` instance bound to this client.

#### `merchant_portal_services_api(entopts = Value::undef()) -> std::shared_ptr<MerchantPortalServicesApiEntity>`

Create a new `MerchantPortalServicesApiEntity` instance bound to this client.

#### `move_tid(entopts = Value::undef()) -> std::shared_ptr<MoveTidEntity>`

Create a new `MoveTidEntity` instance bound to this client.

#### `payment_manual(entopts = Value::undef()) -> std::shared_ptr<PaymentManualEntity>`

Create a new `PaymentManualEntity` instance bound to this client.

#### `payment_sred(entopts = Value::undef()) -> std::shared_ptr<PaymentSredEntity>`

Create a new `PaymentSredEntity` instance bound to this client.

#### `pre_auth_transaction_completion(entopts = Value::undef()) -> std::shared_ptr<PreAuthTransactionCompletionEntity>`

Create a new `PreAuthTransactionCompletionEntity` instance bound to this client.

#### `reactivate_terminal(entopts = Value::undef()) -> std::shared_ptr<ReactivateTerminalEntity>`

Create a new `ReactivateTerminalEntity` instance bound to this client.

#### `refund_transaction(entopts = Value::undef()) -> std::shared_ptr<RefundTransactionEntity>`

Create a new `RefundTransactionEntity` instance bound to this client.

#### `register_tecs_company(entopts = Value::undef()) -> std::shared_ptr<RegisterTecsCompanyEntity>`

Create a new `RegisterTecsCompanyEntity` instance bound to this client.

#### `register_terminal(entopts = Value::undef()) -> std::shared_ptr<RegisterTerminalEntity>`

Create a new `RegisterTerminalEntity` instance bound to this client.

#### `report_data(entopts = Value::undef()) -> std::shared_ptr<ReportDataEntity>`

Create a new `ReportDataEntity` instance bound to this client.

#### `status_transaction(entopts = Value::undef()) -> std::shared_ptr<StatusTransactionEntity>`

Create a new `StatusTransactionEntity` instance bound to this client.

#### `store_terminal_parameter(entopts = Value::undef()) -> std::shared_ptr<StoreTerminalParameterEntity>`

Create a new `StoreTerminalParameterEntity` instance bound to this client.

#### `terminal_id(entopts = Value::undef()) -> std::shared_ptr<TerminalIdEntity>`

Create a new `TerminalIdEntity` instance bound to this client.

#### `transaction_history(entopts = Value::undef()) -> std::shared_ptr<TransactionHistoryEntity>`

Create a new `TransactionHistoryEntity` instance bound to this client.

#### `transactions_count(entopts = Value::undef()) -> std::shared_ptr<TransactionsCountEntity>`

Create a new `TransactionsCountEntity` instance bound to this client.

#### `transactions_count_card_brand(entopts = Value::undef()) -> std::shared_ptr<TransactionsCountCardBrandEntity>`

Create a new `TransactionsCountCardBrandEntity` instance bound to this client.

#### `transactions_turnover(entopts = Value::undef()) -> std::shared_ptr<TransactionsTurnoverEntity>`

Create a new `TransactionsTurnoverEntity` instance bound to this client.

#### `update_merchant(entopts = Value::undef()) -> std::shared_ptr<UpdateMerchantEntity>`

Create a new `UpdateMerchantEntity` instance bound to this client.

#### `update_template_xml(entopts = Value::undef()) -> std::shared_ptr<UpdateTemplateXmlEntity>`

Create a new `UpdateTemplateXmlEntity` instance bound to this client.

#### `version(entopts = Value::undef()) -> std::shared_ptr<VersionEntity>`

Create a new `VersionEntity` instance bound to this client.

#### `optionsMap() -> Value`

Return a deep copy of the current SDK options.

#### `getUtility() -> UtilityPtr`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> Value`

Make a direct HTTP request to any API endpoint. Returns a result `Value` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never throws — branch on `getp(result, "ok")`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `std::string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `std::string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Value` | Path parameter values. |
| `fetchargs["query"]` | `Value` | Query string parameters. |
| `fetchargs["headers"]` | `Value` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Value` | Request body (maps are JSON-serialized). |

**Returns:** `Value` (result map)

#### `prepare(fetchargs) -> Value`

Prepare a fetch definition without sending. Returns the `fetchdef` and throws on error.


---

## CancelTransactionEntity

```cpp
auto cancel_transaction = client->cancel_transaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `std::string` | No |  |
| `acquirer_name` | `std::string` | No |  |
| `actual_bonus_point` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `authorization_code` | `std::string` | No |  |
| `balance_amount` | `std::string` | No |  |
| `card_brand` | `std::string` | No |  |
| `card_number` | `std::string` | No |  |
| `client_id` | `int64_t` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `ec_data` | `std::string` | No |  |
| `ecr_data` | `std::string` | No |  |
| `emv_data` | `std::string` | No |  |
| `exchange_fee` | `int64_t` | No |  |
| `exchange_rate` | `std::string` | No |  |
| `language_code` | `std::string` | No |  |
| `merchant_address` | `std::string` | No |  |
| `merchant_name` | `std::string` | No |  |
| `merchant_number` | `std::string` | No |  |
| `message_type` | `std::string` | No |  |
| `original_trace_number` | `int64_t` | No |  |
| `original_transaction_id` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `payment_reason` | `std::string` | No |  |
| `receipt_footer` | `std::string` | No |  |
| `receipt_header` | `std::string` | No |  |
| `receipt_layout` | `int64_t` | No |  |
| `receipt_number` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `serial_number` | `std::string` | No |  |
| `svc` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `terminal_location` | `std::string` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_date` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `tx_type` | `std::string` | No |  |
| `user_data` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->cancel_transaction()->create(vmap({
    {"client_id", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receipt_number", Value("example_receipt_number")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `CancelTransactionEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## CheckCardBlackListedEntity

```cpp
auto check_card_black_listed = client->check_card_black_listed();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->check_card_black_listed()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `CheckCardBlackListedEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## CreateProductEntity

```cpp
auto create_product = client->create_product();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `int64_t` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `template_name` | `std::string` | Yes |  |
| `template_type` | `std::string` | Yes |  |
| `template_xml` | `std::string` | Yes |  |
| `terminal_type` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->create_product()->create(vmap({
    {"template_name", Value("example_template_name")},  // std::string
    {"template_type", Value("example_template_type")},  // std::string
    {"template_xml", Value("example_template_xml")},  // std::string
    {"terminal_type", Value("example_terminal_type")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `CreateProductEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## DeactivateTerminalEntity

```cpp
auto deactivate_terminal = client->deactivate_terminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `std::string` | No |  |
| `deactivation_reason` | `std::string` | Yes |  |
| `package_order_uuid` | `std::string` | No |  |
| `product_order_uuid` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->deactivate_terminal()->create(vmap({
    {"deactivation_reason", Value("example_deactivation_reason")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `DeactivateTerminalEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## DigitalServicesApiEntity

```cpp
auto digital_services_api = client->digital_services_api();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `std::string` | Yes |  |
| `clearing_date_to` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `tx_count` | `int64_t` | No |  |
| `tx_id_end` | `std::string` | No |  |
| `tx_id_start` | `std::string` | No |  |
| `tx_seq_no_end` | `int64_t` | No |  |
| `tx_seq_no_start` | `int64_t` | No |  |
| `tx_total` | `int64_t` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->digital_services_api()->create(vmap({
}), Value::undef());
```

#### `load(reqmatch, ctrl) -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```cpp
Value result = client->digital_services_api()->load(Value::undef(), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `DigitalServicesApiEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## EcDataEcomEntity

```cpp
auto ec_data_ecom = client->ec_data_ecom();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `transaction_id` | `std::string` | Yes |  |
| `transaction_type` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->ec_data_ecom()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_id", Value("example_transaction_id")},  // std::string
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `EcDataEcomEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## EcomParameterEntity

```cpp
auto ecom_parameter = client->ecom_parameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `std::string` | No |  |
| `ecom_skey` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->ecom_parameter()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `EcomParameterEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## EcrDataEntity

```cpp
auto ecr_data = client->ecr_data();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `transaction_id` | `std::string` | Yes |  |
| `transaction_type` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->ecr_data()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_id", Value("example_transaction_id")},  // std::string
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `EcrDataEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## EmvDataEntity

```cpp
auto emv_data = client->emv_data();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `transaction_id` | `std::string` | Yes |  |
| `transaction_type` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->emv_data()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_id", Value("example_transaction_id")},  // std::string
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `EmvDataEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## EnableAcquiringEntity

```cpp
auto enable_acquiring = client->enable_acquiring();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `int64_t` | No |  |
| `additional_data` | `std::map<std::string, Value>` | No |  |
| `corporate_uuid` | `std::string` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `merchant_category_code` | `int64_t` | Yes |  |
| `package_order_uuid` | `std::string` | Yes |  |
| `product_order_uuid` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `sorting_code` | `int64_t` | No |  |
| `template_name` | `std::string` | Yes |  |
| `terminal_id` | `std::vector<Value>` | No |  |
| `terminal_id_acq` | `std::string` | No |  |
| `vu_nummer` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->enable_acquiring()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"merchant_category_code", Value(1)},  // int64_t
    {"package_order_uuid", Value("example_package_order_uuid")},  // std::string
    {"product_order_uuid", Value("example_product_order_uuid")},  // std::string
    {"template_name", Value("example_template_name")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `EnableAcquiringEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## GetMerchantContractNumberEntity

```cpp
auto get_merchant_contract_number = client->get_merchant_contract_number();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->get_merchant_contract_number()->create(vmap({
    {"merchant_contract_number", Value("example_merchant_contract_number")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `GetMerchantContractNumberEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## GetTemplateXmlEntity

```cpp
auto get_template_xml = client->get_template_xml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `template_name` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->get_template_xml()->create(vmap({
    {"template_name", Value("example_template_name")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `GetTemplateXmlEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## IntroduceMandatorEntity

```cpp
auto introduce_mandator = client->introduce_mandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->introduce_mandator()->create(vmap({
    {"mandator_name", Value("example_mandator_name")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `IntroduceMandatorEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## IntroducePackageEntity

```cpp
auto introduce_package = client->introduce_package();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_template_description` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->introduce_package()->create(vmap({
    {"terminal_template_description", Value("example_terminal_template_description")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `IntroducePackageEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## KeepAliveEntity

```cpp
auto keep_alive = client->keep_alive();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `std::string` | No |  |
| `ka_date_time_from` | `std::string` | No |  |
| `ka_date_time_to` | `std::string` | No |  |
| `keep_alive_data` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_date_time_from` | `std::string` | No |  |
| `terminal_date_time_to` | `std::string` | No |  |
| `terminal_id` | `int64_t` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->keep_alive()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `KeepAliveEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## ListTerminalEntity

```cpp
auto list_terminal = client->list_terminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `std::vector<Value>` | No |  |
| `filter` | `std::map<std::string, Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal` | `std::vector<Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->list_terminal()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `ListTerminalEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## MandatorClearingExportEntity

```cpp
auto mandator_clearing_export = client->mandator_clearing_export();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `std::string` | Yes |  |
| `clearing_date_to` | `std::string` | Yes |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `record` | `std::vector<Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `MandatorClearingExportEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```cpp
auto mandator_clearing_export_download = client->mandator_clearing_export_download();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `std::string` | Yes |  |
| `clearing_date_to` | `std::string` | Yes |  |
| `file_id` | `std::string` | No |  |
| `filename_template` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `status` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export_download()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
}), Value::undef());
```

#### `load(reqmatch, ctrl) -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export_download()->load(vmap({{"id", Value("mandator_clearing_export_download_id")}}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `MandatorClearingExportDownloadEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```cpp
auto mandator_clearing_export_summary = client->mandator_clearing_export_summary();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `std::string` | Yes |  |
| `clearing_date_to` | `std::string` | Yes |  |
| `record` | `std::vector<Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export_summary()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `MandatorClearingExportSummaryEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```cpp
auto merchant_portal_services_api = client->merchant_portal_services_api();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `std::string` | No |  |
| `authorization_code` | `std::string` | No |  |
| `card_brand` | `std::string` | No |  |
| `clearing_amount_from` | `std::string` | No |  |
| `clearing_amount_to` | `std::string` | No |  |
| `clearing_currency` | `std::string` | No |  |
| `clearing_status` | `std::string` | No |  |
| `corporate_uuid` | `std::string` | No |  |
| `order_by_transaction_date` | `std::string` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `receipt_number` | `std::string` | No |  |
| `referenced_transaction_id` | `std::string` | No |  |
| `retrieval_reference_number` | `std::string` | No |  |
| `source_id` | `int64_t` | No |  |
| `tecsengine_response_code_from` | `std::string` | No |  |
| `tecsengine_response_code_to` | `std::string` | No |  |
| `terminal_id` | `int64_t` | No |  |
| `trace_number` | `std::string` | No |  |
| `transaction_amount_from` | `std::string` | No |  |
| `transaction_amount_to` | `std::string` | No |  |
| `transaction_date_from` | `std::string` | No |  |
| `transaction_date_to` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `transaction_type` | `std::string` | No |  |
| `wallet` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->merchant_portal_services_api()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `MerchantPortalServicesApiEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## MoveTidEntity

```cpp
auto move_tid = client->move_tid();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `std::vector<Value>` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `target_packageorderuuid` | `std::string` | No |  |
| `target_productorderuuid` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->move_tid()->create(vmap({
    {"productorderuuid", vlist()},  // std::vector<Value>
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `MoveTidEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## PaymentManualEntity

```cpp
auto payment_manual = client->payment_manual();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `std::string` | No |  |
| `amount` | `int64_t` | Yes |  |
| `authorization_number` | `std::string` | No |  |
| `card_number` | `std::string` | Yes |  |
| `card_type` | `std::string` | No |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `date_time_tx` | `std::string` | No |  |
| `exp_date` | `std::string` | Yes |  |
| `merchant_id` | `std::string` | No |  |
| `original_transaction_id` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `response_code` | `std::string` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `txtype` | `std::string` | Yes |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->payment_manual()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"card_number", Value("example_card_number")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"exp_date", Value("example_exp_date")},  // std::string
    {"txtype", Value("example_txtype")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `PaymentManualEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## PaymentSredEntity

```cpp
auto payment_sred = client->payment_sred();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `std::string` | No |  |
| `amount` | `int64_t` | Yes |  |
| `authorization_number` | `std::string` | No |  |
| `card_type` | `std::string` | No |  |
| `currency` | `std::string` | Yes |  |
| `date_time_tx` | `std::string` | No |  |
| `device_payload` | `std::string` | Yes |  |
| `merchant_id` | `std::string` | No |  |
| `original_transaction_id` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `response_code` | `std::string` | No |  |
| `response_message` | `std::string` | No |  |
| `sred` | `std::map<std::string, Value>` | No |  |
| `terminal_id` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `txtype` | `std::string` | Yes |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->payment_sred()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"device_payload", Value("example_device_payload")},  // std::string
    {"txtype", Value("example_txtype")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `PaymentSredEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```cpp
auto pre_auth_transaction_completion = client->pre_auth_transaction_completion();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `std::string` | No |  |
| `acquirer_name` | `std::string` | No |  |
| `actual_bonus_point` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `authorization_code` | `std::string` | No |  |
| `balance_amount` | `std::string` | No |  |
| `card_brand` | `std::string` | No |  |
| `card_number` | `std::string` | No |  |
| `card_number_reference` | `std::string` | Yes |  |
| `client_id` | `int64_t` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `ec_data` | `std::string` | No |  |
| `ecr_data` | `std::string` | No |  |
| `emv_data` | `std::string` | No |  |
| `exchange_fee` | `int64_t` | No |  |
| `exchange_rate` | `std::string` | No |  |
| `language_code` | `std::string` | No |  |
| `merchant_address` | `std::string` | No |  |
| `merchant_name` | `std::string` | No |  |
| `merchant_number` | `std::string` | No |  |
| `message_type` | `std::string` | No |  |
| `original_trace_number` | `int64_t` | No |  |
| `original_transaction_id` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `payment_reason` | `std::string` | No |  |
| `receipt_footer` | `std::string` | No |  |
| `receipt_header` | `std::string` | No |  |
| `receipt_layout` | `int64_t` | No |  |
| `receipt_number` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `serial_number` | `std::string` | No |  |
| `svc` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `terminal_location` | `std::string` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_date` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `transaction_type` | `std::string` | Yes |  |
| `tx_type` | `std::string` | No |  |
| `user_data` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->pre_auth_transaction_completion()->create(vmap({
    {"card_number_reference", Value("example_card_number_reference")},  // std::string
    {"client_id", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receipt_number", Value("example_receipt_number")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `PreAuthTransactionCompletionEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## ReactivateTerminalEntity

```cpp
auto reactivate_terminal = client->reactivate_terminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `std::string` | No |  |
| `package_order_uuid` | `std::string` | No |  |
| `product_order_uuid` | `std::string` | No |  |
| `reactivation_reason` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->reactivate_terminal()->create(vmap({
    {"reactivation_reason", Value("example_reactivation_reason")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `ReactivateTerminalEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## RefundTransactionEntity

```cpp
auto refund_transaction = client->refund_transaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `std::string` | No |  |
| `acquirer_name` | `std::string` | No |  |
| `actual_bonus_point` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `authorization_code` | `std::string` | No |  |
| `balance_amount` | `std::string` | No |  |
| `card_brand` | `std::string` | No |  |
| `card_number` | `std::string` | No |  |
| `client_id` | `int64_t` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `ec_data` | `std::string` | No |  |
| `ecr_data` | `std::string` | No |  |
| `emv_data` | `std::string` | No |  |
| `exchange_fee` | `int64_t` | No |  |
| `exchange_rate` | `std::string` | No |  |
| `language_code` | `std::string` | No |  |
| `merchant_address` | `std::string` | No |  |
| `merchant_name` | `std::string` | No |  |
| `merchant_number` | `std::string` | No |  |
| `message_type` | `std::string` | No |  |
| `original_trace_number` | `int64_t` | No |  |
| `original_transaction_id` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `payment_reason` | `std::string` | No |  |
| `receipt_footer` | `std::string` | No |  |
| `receipt_header` | `std::string` | No |  |
| `receipt_layout` | `int64_t` | No |  |
| `receipt_number` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `serial_number` | `std::string` | No |  |
| `svc` | `std::string` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `terminal_location` | `std::string` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_date` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `tx_type` | `std::string` | No |  |
| `user_data` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->refund_transaction()->create(vmap({
    {"client_id", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receipt_number", Value("example_receipt_number")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `RefundTransactionEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## RegisterTecsCompanyEntity

```cpp
auto register_tecs_company = client->register_tecs_company();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `std::string` | Yes |  |
| `package_order_uuid` | `std::string` | Yes |  |
| `partner_id` | `int64_t` | No |  |
| `partner_name` | `std::string` | No |  |
| `product_order_uuid` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `template_name` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->register_tecs_company()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
    {"package_order_uuid", Value("example_package_order_uuid")},  // std::string
    {"product_order_uuid", Value("example_product_order_uuid")},  // std::string
    {"template_name", Value("example_template_name")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `RegisterTecsCompanyEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## RegisterTerminalEntity

```cpp
auto register_terminal = client->register_terminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `std::map<std::string, Value>` | No |  |
| `corporate_uuid` | `std::string` | Yes |  |
| `package_order_uuid` | `std::string` | Yes |  |
| `product_order_uuid` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `tecs_web_secret_key` | `std::string` | No |  |
| `template_name` | `std::string` | Yes |  |
| `terminal_country_code` | `std::string` | Yes |  |
| `terminal_id` | `int64_t` | No |  |
| `terminal_id_acq` | `std::string` | No |  |
| `terminal_language_code` | `std::string` | Yes |  |
| `terminal_location` | `std::string` | Yes |  |
| `terminal_serial_number` | `std::string` | No |  |
| `token_io_alia` | `std::string` | No |  |
| `token_io_iban` | `std::string` | No |  |
| `token_io_member_id` | `std::string` | No |  |
| `web_shop_url` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->register_terminal()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
    {"package_order_uuid", Value("example_package_order_uuid")},  // std::string
    {"product_order_uuid", Value("example_product_order_uuid")},  // std::string
    {"template_name", Value("example_template_name")},  // std::string
    {"terminal_country_code", Value("example_terminal_country_code")},  // std::string
    {"terminal_language_code", Value("example_terminal_language_code")},  // std::string
    {"terminal_location", Value("example_terminal_location")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `RegisterTerminalEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## ReportDataEntity

```cpp
auto report_data = client->report_data();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `std::vector<Value>` | No |  |
| `clearing_date_from` | `std::string` | Yes |  |
| `clearing_date_to` | `std::string` | Yes |  |
| `corporate_id` | `std::string` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `sum_over_credit_tx` | `std::map<std::string, Value>` | No |  |
| `sum_over_debit_tx` | `std::map<std::string, Value>` | No |  |
| `terminal_id` | `int64_t` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->report_data()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
    {"corporate_id", Value("example_corporate_id")},  // std::string
    {"currency", Value("example_currency")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `ReportDataEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## StatusTransactionEntity

```cpp
auto status_transaction = client->status_transaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `std::string` | No |  |
| `acquirer_terminal_id` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `application_cryptogram` | `std::string` | No |  |
| `authorization_code` | `Value` | No |  |
| `authorization_date` | `std::string` | No |  |
| `card_brand` | `std::string` | No |  |
| `card_entry` | `std::string` | No |  |
| `card_expiration` | `std::string` | No |  |
| `card_number` | `std::string` | No |  |
| `clearing_amount` | `int64_t` | No |  |
| `clearing_batch_id` | `std::string` | No |  |
| `clearing_currency` | `std::string` | No |  |
| `clearing_date` | `std::string` | No |  |
| `clearing_processed_date` | `std::string` | No |  |
| `clearing_status` | `std::string` | No |  |
| `client_id` | `int64_t` | No |  |
| `currency` | `std::string` | No |  |
| `cvm` | `std::string` | No |  |
| `ecr_data` | `std::string` | No |  |
| `emv_application_id` | `std::string` | No |  |
| `emv_application_label` | `std::string` | No |  |
| `merchant_name` | `std::string` | No |  |
| `merchant_number` | `std::string` | No |  |
| `original_client_id` | `std::string` | No |  |
| `original_terminal_id` | `int64_t` | No |  |
| `original_transaction_id` | `std::string` | No |  |
| `payment_reason` | `std::string` | No |  |
| `receipt_number` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_code_from_a` | `std::string` | No |  |
| `response_message` | `std::string` | No |  |
| `retrieval_reference_number` | `std::string` | No |  |
| `service_code` | `std::string` | No |  |
| `settlement_status` | `std::string` | No |  |
| `source_id` | `int64_t` | No |  |
| `tecsengine_response_code` | `int64_t` | No |  |
| `tecsengine_response_text` | `std::string` | No |  |
| `terminal_end_of_day_date` | `std::string` | No |  |
| `terminal_id` | `int64_t` | No |  |
| `terminal_location` | `std::string` | No |  |
| `tip_amount` | `int64_t` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_clearing_date` | `std::string` | No |  |
| `transaction_date` | `std::string` | No |  |
| `transaction_id` | `std::string` | No |  |
| `transaction_seq_number` | `int64_t` | No |  |
| `transaction_server_date` | `std::string` | No |  |
| `transaction_source` | `std::string` | No |  |
| `transaction_type` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->status_transaction()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `StatusTransactionEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## StoreTerminalParameterEntity

```cpp
auto store_terminal_parameter = client->store_terminal_parameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `std::map<std::string, Value>` | No |  |
| `config_version` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `serial_number` | `std::string` | Yes |  |
| `tid_sent` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->store_terminal_parameter()->create(vmap({
    {"serial_number", Value("example_serial_number")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `StoreTerminalParameterEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## TerminalIdEntity

```cpp
auto terminal_id = client->terminal_id();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `std::vector<Value>` | Yes |  |
| `duplicate_terminal_id` | `std::vector<Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `terminal` | `std::vector<Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->terminal_id()->create(vmap({
    {"device_serial_number", vlist()},  // std::vector<Value>
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `TerminalIdEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## TransactionHistoryEntity

```cpp
auto transaction_history = client->transaction_history();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `std::string` | No |  |
| `authorization_code` | `std::string` | No |  |
| `card_brand` | `std::string` | No |  |
| `clearing_amount_from` | `std::string` | No |  |
| `clearing_amount_to` | `std::string` | No |  |
| `clearing_currency` | `std::string` | No |  |
| `clearing_status` | `std::string` | No |  |
| `corporate_uuid` | `std::string` | No |  |
| `order_by_transaction_date` | `std::string` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `payment_token_public_id` | `std::string` | No |  |
| `receipt_number` | `std::string` | No |  |
| `referenced_transaction_id` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `retrieval_reference_number` | `std::string` | No |  |
| `source_id` | `int64_t` | No |  |
| `tecsengine_response_code_from` | `std::string` | No |  |
| `tecsengine_response_code_to` | `std::string` | No |  |
| `terminal_id` | `int64_t` | No |  |
| `trace_number` | `std::string` | No |  |
| `transaction_amount_from` | `std::string` | No |  |
| `transaction_amount_to` | `std::string` | No |  |
| `transaction_date_from` | `std::string` | No |  |
| `transaction_date_to` | `std::string` | No |  |
| `transaction_history` | `std::vector<Value>` | No |  |
| `transaction_id` | `std::string` | No |  |
| `transaction_type` | `std::string` | No |  |
| `wallet` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->transaction_history()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `TransactionHistoryEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## TransactionsCountEntity

```cpp
auto transactions_count = client->transactions_count();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `transaction_date_from` | `std::string` | No |  |
| `transaction_date_to` | `std::string` | No |  |
| `transactions_count` | `std::vector<Value>` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->transactions_count()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `TransactionsCountEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```cpp
auto transactions_count_card_brand = client->transactions_count_card_brand();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `transaction_date_from` | `std::string` | No |  |
| `transaction_date_to` | `std::string` | No |  |
| `transactions_count` | `std::vector<Value>` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->transactions_count_card_brand()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `TransactionsCountCardBrandEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## TransactionsTurnoverEntity

```cpp
auto transactions_turnover = client->transactions_turnover();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `transaction_date_from` | `std::string` | No |  |
| `transaction_date_to` | `std::string` | No |  |
| `turnover` | `std::vector<Value>` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->transactions_turnover()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `TransactionsTurnoverEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## UpdateMerchantEntity

```cpp
auto update_merchant = client->update_merchant();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `std::string` | No |  |
| `corporate_uuid` | `std::string` | Yes |  |
| `country` | `std::string` | No |  |
| `merchant_category_code` | `std::string` | No |  |
| `name` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `state` | `std::string` | No |  |
| `street` | `std::string` | No |  |
| `vu_nummer` | `std::string` | No |  |
| `zipcode` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->update_merchant()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `UpdateMerchantEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## UpdateTemplateXmlEntity

```cpp
auto update_template_xml = client->update_template_xml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `template_name` | `std::string` | Yes |  |
| `template_xml` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->update_template_xml()->create(vmap({
    {"template_name", Value("example_template_name")},  // std::string
    {"template_xml", Value("example_template_xml")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `UpdateTemplateXmlEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## VersionEntity

```cpp
auto version = client->version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `std::string` | No |  |
| `build_date` | `std::string` | No |  |
| `version` | `std::string` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```cpp
Value result = client->version()->load(Value::undef(), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `VersionEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```cpp
auto client = std::make_shared<BluefinTecsMerchantServicesSDK>(vmap({
    {"feature", vmap({
        {"test", vmap({{"active", Value(true)}})},
    })},
}));
```

