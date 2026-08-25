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
| `acquirerId` | `std::string` | No |  |
| `acquirerName` | `std::string` | No |  |
| `actualBonusPoints` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `authorizationCode` | `std::string` | No |  |
| `balanceAmount` | `std::string` | No |  |
| `cardBrand` | `std::string` | No |  |
| `cardNumber` | `std::string` | No |  |
| `clientId` | `int64_t` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `ecData` | `std::string` | No |  |
| `ecrData` | `std::string` | No |  |
| `emvData` | `std::string` | No |  |
| `exchangeFee` | `int64_t` | No |  |
| `exchangeRate` | `std::string` | No |  |
| `languageCode` | `std::string` | No |  |
| `merchantAddress` | `std::string` | No |  |
| `merchantName` | `std::string` | No |  |
| `merchantNumber` | `std::string` | No |  |
| `messageType` | `std::string` | No |  |
| `originalTraceNumber` | `int64_t` | No |  |
| `originalTransactionId` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `paymentReason` | `std::string` | No |  |
| `receiptFooter` | `std::string` | No |  |
| `receiptHeader` | `std::string` | No |  |
| `receiptLayout` | `int64_t` | No |  |
| `receiptNumber` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `serialNumber` | `std::string` | No |  |
| `svc` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `terminalLocation` | `std::string` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionDate` | `std::string` | No |  |
| `transactionId` | `std::string` | No |  |
| `txType` | `std::string` | No |  |
| `userData` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->cancel_transaction()->create(vmap({
    {"clientId", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receiptNumber", Value("example_receiptNumber")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `cardNo` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

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
| `acquirerId` | `int64_t` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `templateName` | `std::string` | Yes |  |
| `templateType` | `std::string` | Yes |  |
| `templateXml` | `std::string` | Yes |  |
| `terminalType` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->create_product()->create(vmap({
    {"templateName", Value("example_templateName")},  // std::string
    {"templateType", Value("example_templateType")},  // std::string
    {"templateXml", Value("example_templateXml")},  // std::string
    {"terminalType", Value("example_terminalType")},  // std::string
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
| `corporateUuid` | `std::string` | No |  |
| `deactivationReason` | `std::string` | Yes |  |
| `packageOrderUuid` | `std::string` | No |  |
| `productOrderUuid` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->deactivate_terminal()->create(vmap({
    {"deactivationReason", Value("example_deactivationReason")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `clearingDateFrom` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `txCount` | `int64_t` | No |  |
| `txIdEnd` | `std::string` | No |  |
| `txIdStart` | `std::string` | No |  |
| `txSeqNoEnd` | `int64_t` | No |  |
| `txSeqNoStart` | `int64_t` | No |  |
| `txTotal` | `int64_t` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->digital_services_api()->create(vmap({
    {"file_id", Value("example_file_id")},  // std::string
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `ecomData` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `transactionId` | `std::string` | Yes |  |
| `transactionType` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->ec_data_ecom()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
    {"transactionId", Value("example_transactionId")},  // std::string
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `ecomPass` | `std::string` | No |  |
| `ecomSkey` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->ecom_parameter()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
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
| `ecrData` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `transactionId` | `std::string` | Yes |  |
| `transactionType` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->ecr_data()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
    {"transactionId", Value("example_transactionId")},  // std::string
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `emvData` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `transactionId` | `std::string` | Yes |  |
| `transactionType` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->emv_data()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
    {"transactionId", Value("example_transactionId")},  // std::string
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `accountNo` | `int64_t` | No |  |
| `additionalData` | `std::map<std::string, Value>` | No |  |
| `corporateUuid` | `std::string` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `merchantCategoryCode` | `int64_t` | Yes |  |
| `packageOrderUuid` | `std::string` | Yes |  |
| `productOrderUuid` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `sortingCode` | `int64_t` | No |  |
| `templateName` | `std::string` | Yes |  |
| `terminalIdAcq` | `std::string` | No |  |
| `terminalIds` | `std::vector<Value>` | No |  |
| `vuNummer` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->enable_acquiring()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"merchantCategoryCode", Value(1)},  // int64_t
    {"packageOrderUuid", Value("example_packageOrderUuid")},  // std::string
    {"productOrderUuid", Value("example_productOrderUuid")},  // std::string
    {"templateName", Value("example_templateName")},  // std::string
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
| `merchantContractNumber` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->get_merchant_contract_number()->create(vmap({
    {"merchantContractNumber", Value("example_merchantContractNumber")},  // std::string
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `templateName` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->get_template_xml()->create(vmap({
    {"templateName", Value("example_templateName")},  // std::string
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
| `mandatorName` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->introduce_mandator()->create(vmap({
    {"mandatorName", Value("example_mandatorName")},  // std::string
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalTemplateDescription` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->introduce_package()->create(vmap({
    {"terminalTemplateDescription", Value("example_terminalTemplateDescription")},  // std::string
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
| `kaDateTimeFrom` | `std::string` | No |  |
| `kaDateTimeTo` | `std::string` | No |  |
| `keepAliveData` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalDateTimeFrom` | `std::string` | No |  |
| `terminalDateTimeTo` | `std::string` | No |  |
| `terminalId` | `int64_t` | No |  |

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
| `corporateUuid` | `std::vector<Value>` | No |  |
| `filter` | `std::map<std::string, Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminals` | `std::vector<Value>` | No |  |

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
| `clearingDateFrom` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `records` | `std::vector<Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `clearingDateFrom` | `std::string` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `std::string` | Yes | End date for clearing export (inclusive) |
| `fileId` | `std::string` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `std::string` | No | Optional filename template for the export file |
| `id` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `status` | `std::string` | No | Processing status of the export request |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export_download()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `clearingDateFrom` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `std::vector<Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->mandator_clearing_export_summary()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `3DSecure` | `std::string` | No |  |
| `authorizationCode` | `std::string` | No |  |
| `cardBrand` | `std::string` | No |  |
| `clearingAmountFrom` | `std::string` | No |  |
| `clearingAmountTo` | `std::string` | No |  |
| `clearingCurrency` | `std::string` | No |  |
| `clearingStatus` | `std::string` | No |  |
| `corporateUUID` | `std::string` | No |  |
| `orderByTransactionDate` | `std::string` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `receiptNumber` | `std::string` | No |  |
| `referencedTransactionId` | `std::string` | No |  |
| `retrievalReferenceNumber` | `std::string` | No |  |
| `sourceId` | `int64_t` | No |  |
| `tecsengineResponseCodeFrom` | `std::string` | No |  |
| `tecsengineResponseCodeTo` | `std::string` | No |  |
| `terminalId` | `int64_t` | No |  |
| `traceNumber` | `std::string` | No |  |
| `transactionAmountFrom` | `std::string` | No |  |
| `transactionAmountTo` | `std::string` | No |  |
| `transactionDateFrom` | `std::string` | No |  |
| `transactionDateTo` | `std::string` | No |  |
| `transactionId` | `std::string` | No |  |
| `transactionType` | `std::string` | No |  |
| `wallet` | `std::string` | No | Filter by wallet type. |

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
| `productorderuuids` | `std::vector<Value>` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `targetPackageorderuuid` | `std::string` | No |  |
| `targetProductorderuuid` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->move_tid()->create(vmap({
    {"productorderuuids", vlist()},  // std::vector<Value>
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
| `acquirerName` | `std::string` | No | Acquirer name parsed from KKG field |
| `amount` | `int64_t` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `std::string` | No | Authorization number from the gateway |
| `cardNumber` | `std::string` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `std::string` | No | Card type parsed from KKG field |
| `currency` | `std::string` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `std::string` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `std::string` | No | Date and time of the transaction |
| `expDate` | `std::string` | Yes | Card expiry date in MMYY format |
| `merchantId` | `std::string` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `std::string` | No | Original transaction ID from gateway |
| `password` | `std::string` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `std::string` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `std::string` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `std::string` | No | Terminal ID used for the transaction |
| `transactionId` | `std::string` | No | Transaction ID generated by the backend |
| `txtype` | `std::string` | Yes | Transaction type |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->payment_manual()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"cardNumber", Value("example_cardNumber")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"expDate", Value("example_expDate")},  // std::string
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
| `amount` | `int64_t` | Yes | Transaction amount in minor units (cents) |
| `currency` | `std::string` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `std::string` | No | Device type that provided the SRED payload |
| `devicePayload` | `std::string` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `std::string` | No | Card expiry date in MMYY format |
| `mode` | `std::string` | No | Decryption mode |
| `panMasked` | `std::string` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `std::string` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `std::string` | No | Device serial number |
| `serviceCode` | `std::string` | No | Service code from the card |
| `terminalId` | `std::string` | Yes | Terminal ID - 8 digits |
| `txtype` | `std::string` | Yes | Transaction type |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->payment_sred()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"devicePayload", Value("example_devicePayload")},  // std::string
    {"terminalId", Value("example_terminalId")},  // std::string
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
| `acquirerId` | `std::string` | No |  |
| `acquirerName` | `std::string` | No |  |
| `actualBonusPoints` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `authorizationCode` | `std::string` | No |  |
| `balanceAmount` | `std::string` | No |  |
| `cardBrand` | `std::string` | No |  |
| `cardNumber` | `std::string` | No |  |
| `cardNumberReference` | `std::string` | Yes |  |
| `clientId` | `int64_t` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `ecData` | `std::string` | No |  |
| `ecrData` | `std::string` | No |  |
| `emvData` | `std::string` | No |  |
| `exchangeFee` | `int64_t` | No |  |
| `exchangeRate` | `std::string` | No |  |
| `languageCode` | `std::string` | No |  |
| `merchantAddress` | `std::string` | No |  |
| `merchantName` | `std::string` | No |  |
| `merchantNumber` | `std::string` | No |  |
| `messageType` | `std::string` | No |  |
| `originalTraceNumber` | `int64_t` | No |  |
| `originalTransactionId` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `paymentReason` | `std::string` | No |  |
| `receiptFooter` | `std::string` | No |  |
| `receiptHeader` | `std::string` | No |  |
| `receiptLayout` | `int64_t` | No |  |
| `receiptNumber` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `serialNumber` | `std::string` | No |  |
| `svc` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `terminalLocation` | `std::string` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionDate` | `std::string` | No |  |
| `transactionId` | `std::string` | No |  |
| `transactionType` | `std::string` | Yes |  |
| `txType` | `std::string` | No |  |
| `userData` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->pre_auth_transaction_completion()->create(vmap({
    {"cardNumberReference", Value("example_cardNumberReference")},  // std::string
    {"clientId", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receiptNumber", Value("example_receiptNumber")},  // std::string
    {"terminalId", Value(1)},  // int64_t
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `corporateUuid` | `std::string` | No |  |
| `packageOrderUuid` | `std::string` | No |  |
| `productOrderUuid` | `std::string` | No |  |
| `reactivationReason` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->reactivate_terminal()->create(vmap({
    {"reactivationReason", Value("example_reactivationReason")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `acquirerId` | `std::string` | No |  |
| `acquirerName` | `std::string` | No |  |
| `actualBonusPoints` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `authorizationCode` | `std::string` | No |  |
| `balanceAmount` | `std::string` | No |  |
| `cardBrand` | `std::string` | No |  |
| `cardNumber` | `std::string` | No |  |
| `clientId` | `int64_t` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `cvc` | `std::string` | No |  |
| `ecData` | `std::string` | No |  |
| `ecrData` | `std::string` | No |  |
| `emvData` | `std::string` | No |  |
| `exchangeFee` | `int64_t` | No |  |
| `exchangeRate` | `std::string` | No |  |
| `languageCode` | `std::string` | No |  |
| `merchantAddress` | `std::string` | No |  |
| `merchantName` | `std::string` | No |  |
| `merchantNumber` | `std::string` | No |  |
| `messageType` | `std::string` | No |  |
| `originalTraceNumber` | `int64_t` | No |  |
| `originalTransactionId` | `std::string` | No |  |
| `password` | `std::string` | No |  |
| `paymentReason` | `std::string` | No |  |
| `receiptFooter` | `std::string` | No |  |
| `receiptHeader` | `std::string` | No |  |
| `receiptLayout` | `int64_t` | No |  |
| `receiptNumber` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `serialNumber` | `std::string` | No |  |
| `svc` | `std::string` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `terminalLocation` | `std::string` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionDate` | `std::string` | No |  |
| `transactionId` | `std::string` | No |  |
| `txType` | `std::string` | No |  |
| `userData` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->refund_transaction()->create(vmap({
    {"clientId", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receiptNumber", Value("example_receiptNumber")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `corporateUuid` | `std::string` | Yes |  |
| `packageOrderUuid` | `std::string` | Yes |  |
| `partnerId` | `int64_t` | No |  |
| `partnerName` | `std::string` | No |  |
| `productOrderUuid` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `templateName` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->register_tecs_company()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
    {"packageOrderUuid", Value("example_packageOrderUuid")},  // std::string
    {"productOrderUuid", Value("example_productOrderUuid")},  // std::string
    {"templateName", Value("example_templateName")},  // std::string
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
| `additionalData` | `std::map<std::string, Value>` | No |  |
| `corporateUuid` | `std::string` | Yes |  |
| `packageOrderUuid` | `std::string` | Yes |  |
| `productOrderUuid` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `tecsWebSecretKey` | `std::string` | No |  |
| `templateName` | `std::string` | Yes |  |
| `terminalCountryCode` | `std::string` | Yes |  |
| `terminalId` | `int64_t` | No |  |
| `terminalIdAcq` | `std::string` | No |  |
| `terminalLanguageCode` | `std::string` | Yes |  |
| `terminalLocation` | `std::string` | Yes |  |
| `terminalSerialNumber` | `std::string` | No |  |
| `tokenIOAlias` | `std::string` | No |  |
| `tokenIOIban` | `std::string` | No |  |
| `tokenIOMemberId` | `std::string` | No |  |
| `webShopUrl` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->register_terminal()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
    {"packageOrderUuid", Value("example_packageOrderUuid")},  // std::string
    {"productOrderUuid", Value("example_productOrderUuid")},  // std::string
    {"templateName", Value("example_templateName")},  // std::string
    {"terminalCountryCode", Value("example_terminalCountryCode")},  // std::string
    {"terminalLanguageCode", Value("example_terminalLanguageCode")},  // std::string
    {"terminalLocation", Value("example_terminalLocation")},  // std::string
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
| `cardBrandReportData` | `std::vector<Value>` | No |  |
| `clearingDateFrom` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `std::string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `std::string` | Yes |  |
| `currency` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `sumOverCreditTx` | `std::map<std::string, Value>` | No |  |
| `sumOverDebitTx` | `std::map<std::string, Value>` | No |  |
| `terminalId` | `int64_t` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->report_data()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
    {"corporateId", Value("example_corporateId")},  // std::string
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
| `acquirerName` | `std::string` | No |  |
| `acquirerTerminalId` | `std::string` | No |  |
| `amount` | `int64_t` | No |  |
| `applicationCryptogram` | `std::string` | No |  |
| `authorizationCode` | `Value` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `std::string` | No |  |
| `cardBrand` | `std::string` | No |  |
| `cardEntry` | `std::string` | No |  |
| `cardExpiration` | `std::string` | No |  |
| `cardNumber` | `std::string` | No |  |
| `clearingAmount` | `int64_t` | No |  |
| `clearingBatchId` | `std::string` | No |  |
| `clearingCurrency` | `std::string` | No |  |
| `clearingDate` | `std::string` | No |  |
| `clearingProcessedDate` | `std::string` | No |  |
| `clearingStatus` | `std::string` | No |  |
| `clientId` | `int64_t` | No |  |
| `currency` | `std::string` | No |  |
| `cvm` | `std::string` | No |  |
| `ecrData` | `std::string` | No |  |
| `emvApplicationId` | `std::string` | No |  |
| `emvApplicationLabel` | `std::string` | No |  |
| `merchantName` | `std::string` | No |  |
| `merchantNumber` | `std::string` | No |  |
| `originalClientId` | `std::string` | No |  |
| `originalTerminalId` | `int64_t` | No |  |
| `originalTransactionId` | `std::string` | No |  |
| `paymentReason` | `std::string` | No |  |
| `receiptNumber` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseCodeFromAS` | `std::string` | No |  |
| `responseMessage` | `std::string` | No |  |
| `retrievalReferenceNumber` | `std::string` | No |  |
| `serviceCode` | `std::string` | No |  |
| `settlementStatus` | `std::string` | No |  |
| `sourceId` | `int64_t` | No |  |
| `tecsengineResponseCode` | `int64_t` | No |  |
| `tecsengineResponseText` | `std::string` | No |  |
| `terminalEndOfDayDate` | `std::string` | No |  |
| `terminalId` | `int64_t` | No |  |
| `terminalLocation` | `std::string` | No |  |
| `tipAmount` | `int64_t` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionClearingDate` | `std::string` | No |  |
| `transactionDate` | `std::string` | No |  |
| `transactionId` | `std::string` | No |  |
| `transactionSeqNumber` | `int64_t` | No |  |
| `transactionServerDate` | `std::string` | No |  |
| `transactionSource` | `std::string` | No |  |
| `transactionType` | `std::string` | No |  |

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
| `acqTabNexo` | `std::map<std::string, Value>` | No |  |
| `configVersion` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `serialNumber` | `std::string` | Yes |  |
| `tidSent` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->store_terminal_parameter()->create(vmap({
    {"serialNumber", Value("example_serialNumber")},  // std::string
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
| `deviceSerialNumber` | `std::vector<Value>` | Yes |  |
| `duplicateTerminalIds` | `std::vector<Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `terminals` | `std::vector<Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->terminal_id()->create(vmap({
    {"deviceSerialNumber", vlist()},  // std::vector<Value>
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
| `3DSecure` | `std::string` | No |  |
| `authorizationCode` | `std::string` | No |  |
| `cardBrand` | `std::string` | No |  |
| `clearingAmountFrom` | `std::string` | No |  |
| `clearingAmountTo` | `std::string` | No |  |
| `clearingCurrency` | `std::string` | No |  |
| `clearingStatus` | `std::string` | No |  |
| `corporateUUID` | `std::string` | No |  |
| `orderByTransactionDate` | `std::string` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `paymentTokenPublicId` | `std::string` | No |  |
| `receiptNumber` | `std::string` | No |  |
| `referencedTransactionId` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `retrievalReferenceNumber` | `std::string` | No |  |
| `sourceId` | `int64_t` | No |  |
| `tecsengineResponseCodeFrom` | `std::string` | No |  |
| `tecsengineResponseCodeTo` | `std::string` | No |  |
| `terminalId` | `int64_t` | No |  |
| `traceNumber` | `std::string` | No |  |
| `transactionAmountFrom` | `std::string` | No |  |
| `transactionAmountTo` | `std::string` | No |  |
| `transactionDateFrom` | `std::string` | No |  |
| `transactionDateTo` | `std::string` | No |  |
| `transactionHistories` | `std::vector<Value>` | No |  |
| `transactionId` | `std::string` | No |  |
| `transactionType` | `std::string` | No |  |
| `wallet` | `std::string` | No | Filter by wallet type. |

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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `transactionDateFrom` | `std::string` | No |  |
| `transactionDateTo` | `std::string` | No |  |
| `transactionsCount` | `std::vector<Value>` | No |  |

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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `transactionDateFrom` | `std::string` | No |  |
| `transactionDateTo` | `std::string` | No |  |
| `transactionsCount` | `std::vector<Value>` | No |  |

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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `transactionDateFrom` | `std::string` | No |  |
| `transactionDateTo` | `std::string` | No |  |
| `turnovers` | `std::vector<Value>` | No |  |

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
| `corporateUuid` | `std::string` | Yes |  |
| `country` | `std::string` | No |  |
| `merchantCategoryCode` | `std::string` | No |  |
| `name` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `state` | `std::string` | No |  |
| `street` | `std::string` | No |  |
| `vuNummer` | `std::string` | No |  |
| `zipcode` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->update_merchant()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `templateName` | `std::string` | Yes |  |
| `templateXml` | `std::string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->update_template_xml()->create(vmap({
    {"templateName", Value("example_templateName")},  // std::string
    {"templateXml", Value("example_templateXml")},  // std::string
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
| `appName` | `std::string` | No |  |
| `buildDate` | `std::string` | No |  |
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

