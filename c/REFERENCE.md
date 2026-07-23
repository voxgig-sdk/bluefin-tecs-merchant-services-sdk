# BluefinTecsMerchantServices C SDK Reference

Complete API reference for the BluefinTecsMerchantServices C SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```c
#include "core/api.h"

BluefinTecsMerchantServicesSDK* client = bluefin_tecs_merchant_services_sdk_new(options);
```

Create a new SDK client instance. `options` is a `voxgig_value*` map
(`NULL` for none).

**Parameters (`options` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides. |


### Test Constructor

#### `BluefinTecsMerchantServicesSDK* test_sdk(voxgig_value* testopts, voxgig_value* sdkopts)`

Create a test client with mock features active. Both arguments may be
`NULL`.

```c
BluefinTecsMerchantServicesSDK* client = test_sdk(NULL, NULL);
```


### Entity Accessors

#### `Entity* bluefin_tecs_merchant_services_cancel_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `CancelTransaction` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_check_card_black_listed(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `CheckCardBlackListed` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_create_product(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `CreateProduct` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_deactivate_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `DeactivateTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_digital_services_api(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `DigitalServicesApi` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_ec_data_ecom(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EcDataEcom` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_ecom_parameter(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EcomParameter` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_ecr_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EcrData` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_emv_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EmvData` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_enable_acquiring(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EnableAcquiring` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_get_merchant_contract_number(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `GetMerchantContractNumber` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_get_template_xml(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `GetTemplateXml` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_introduce_mandator(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `IntroduceMandator` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_introduce_package(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `IntroducePackage` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_keep_alive(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `KeepAlive` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_list_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `ListTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_mandator_clearing_export(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MandatorClearingExport` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_mandator_clearing_export_download(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_mandator_clearing_export_summary(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_merchant_portal_services_api(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_move_tid(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MoveTid` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_payment_manual(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `PaymentManual` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_payment_sred(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `PaymentSred` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_pre_auth_transaction_completion(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_reactivate_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `ReactivateTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_refund_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `RefundTransaction` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_register_tecs_company(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `RegisterTecsCompany` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_register_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `RegisterTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_report_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `ReportData` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_status_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `StatusTransaction` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_store_terminal_parameter(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `StoreTerminalParameter` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_terminal_id(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TerminalId` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_transaction_history(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionHistory` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_transactions_count(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionsCount` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_transactions_count_card_brand(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_transactions_turnover(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionsTurnover` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_update_merchant(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `UpdateMerchant` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_update_template_xml(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `UpdateTemplateXml` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefin_tecs_merchant_services_version(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `Version` entity instance. Pass `NULL` for no initial
options.

#### `voxgig_value* sdk_direct(BluefinTecsMerchantServicesSDK* client, voxgig_value* fetchargs, PNError** err)`

Make a direct HTTP request to any API endpoint. Returns a result map with
`ok`, `status`, `headers`, and `data` (or `err` on failure). This escape
hatch never sets `*err` for a non-2xx response — branch on
`getp(result, "ok")`.

**Parameters (`fetchargs` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

#### `voxgig_value* sdk_prepare(BluefinTecsMerchantServicesSDK* client, voxgig_value* fetchargs, PNError** err)`

Prepare a fetch definition without sending. Returns the fetchdef and sets
`*err` on failure.


---

## CancelTransaction

```c
Entity* cancel_transaction = bluefin_tecs_merchant_services_cancel_transaction(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `char*` | No |  |
| `acquirer_name` | `char*` | No |  |
| `actual_bonus_point` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `authorization_code` | `char*` | No |  |
| `balance_amount` | `char*` | No |  |
| `card_brand` | `char*` | No |  |
| `card_number` | `char*` | No |  |
| `client_id` | `int64_t` | Yes |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `ec_data` | `char*` | No |  |
| `ecr_data` | `char*` | No |  |
| `emv_data` | `char*` | No |  |
| `exchange_fee` | `int64_t` | No |  |
| `exchange_rate` | `char*` | No |  |
| `language_code` | `char*` | No |  |
| `merchant_address` | `char*` | No |  |
| `merchant_name` | `char*` | No |  |
| `merchant_number` | `char*` | No |  |
| `message_type` | `char*` | No |  |
| `original_trace_number` | `int64_t` | No |  |
| `original_transaction_id` | `char*` | No |  |
| `password` | `char*` | No |  |
| `payment_reason` | `char*` | No |  |
| `receipt_footer` | `char*` | No |  |
| `receipt_header` | `char*` | No |  |
| `receipt_layout` | `int64_t` | No |  |
| `receipt_number` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `serial_number` | `char*` | No |  |
| `svc` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `terminal_location` | `char*` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_date` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `tx_type` | `char*` | No |  |
| `user_data` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* cancel_transaction = bluefin_tecs_merchant_services_cancel_transaction(client, NULL);
voxgig_value* result = cancel_transaction->vt->create(cancel_transaction, cmap(4,
    "client_id", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receipt_number", v_str("example_receipt_number"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `CancelTransaction` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## CheckCardBlackListed

```c
Entity* check_card_black_listed = bluefin_tecs_merchant_services_check_card_black_listed(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* check_card_black_listed = bluefin_tecs_merchant_services_check_card_black_listed(client, NULL);
voxgig_value* result = check_card_black_listed->vt->create(check_card_black_listed, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## CreateProduct

```c
Entity* create_product = bluefin_tecs_merchant_services_create_product(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `int64_t` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `template_name` | `char*` | Yes |  |
| `template_type` | `char*` | Yes |  |
| `template_xml` | `char*` | Yes |  |
| `terminal_type` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* create_product = bluefin_tecs_merchant_services_create_product(client, NULL);
voxgig_value* result = create_product->vt->create(create_product, cmap(4,
    "template_name", v_str("example_template_name"),  // char*
    "template_type", v_str("example_template_type"),  // char*
    "template_xml", v_str("example_template_xml"),  // char*
    "terminal_type", v_str("example_terminal_type"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `CreateProduct` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## DeactivateTerminal

```c
Entity* deactivate_terminal = bluefin_tecs_merchant_services_deactivate_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `char*` | No |  |
| `deactivation_reason` | `char*` | Yes |  |
| `package_order_uuid` | `char*` | No |  |
| `product_order_uuid` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* deactivate_terminal = bluefin_tecs_merchant_services_deactivate_terminal(client, NULL);
voxgig_value* result = deactivate_terminal->vt->create(deactivate_terminal, cmap(2,
    "deactivation_reason", v_str("example_deactivation_reason"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## DigitalServicesApi

```c
Entity* digital_services_api = bluefin_tecs_merchant_services_digital_services_api(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `char*` | Yes |  |
| `clearing_date_to` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `tx_count` | `int64_t` | No |  |
| `tx_id_end` | `char*` | No |  |
| `tx_id_start` | `char*` | No |  |
| `tx_seq_no_end` | `int64_t` | No |  |
| `tx_seq_no_start` | `int64_t` | No |  |
| `tx_total` | `int64_t` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* digital_services_api = bluefin_tecs_merchant_services_digital_services_api(client, NULL);
voxgig_value* result = digital_services_api->vt->create(digital_services_api, NULL, NULL, &err);
```

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* digital_services_api = bluefin_tecs_merchant_services_digital_services_api(client, NULL);
voxgig_value* result = digital_services_api->vt->load(digital_services_api, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## EcDataEcom

```c
Entity* ec_data_ecom = bluefin_tecs_merchant_services_ec_data_ecom(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `transaction_id` | `char*` | Yes |  |
| `transaction_type` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* ec_data_ecom = bluefin_tecs_merchant_services_ec_data_ecom(client, NULL);
voxgig_value* result = ec_data_ecom->vt->create(ec_data_ecom, cmap(3,
    "terminal_id", v_num(1),  // int64_t
    "transaction_id", v_str("example_transaction_id"),  // char*
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `EcDataEcom` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## EcomParameter

```c
Entity* ecom_parameter = bluefin_tecs_merchant_services_ecom_parameter(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `char*` | No |  |
| `ecom_skey` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* ecom_parameter = bluefin_tecs_merchant_services_ecom_parameter(client, NULL);
voxgig_value* result = ecom_parameter->vt->create(ecom_parameter, cmap(1,
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `EcomParameter` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## EcrData

```c
Entity* ecr_data = bluefin_tecs_merchant_services_ecr_data(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `transaction_id` | `char*` | Yes |  |
| `transaction_type` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* ecr_data = bluefin_tecs_merchant_services_ecr_data(client, NULL);
voxgig_value* result = ecr_data->vt->create(ecr_data, cmap(3,
    "terminal_id", v_num(1),  // int64_t
    "transaction_id", v_str("example_transaction_id"),  // char*
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `EcrData` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## EmvData

```c
Entity* emv_data = bluefin_tecs_merchant_services_emv_data(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `transaction_id` | `char*` | Yes |  |
| `transaction_type` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* emv_data = bluefin_tecs_merchant_services_emv_data(client, NULL);
voxgig_value* result = emv_data->vt->create(emv_data, cmap(3,
    "terminal_id", v_num(1),  // int64_t
    "transaction_id", v_str("example_transaction_id"),  // char*
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `EmvData` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## EnableAcquiring

```c
Entity* enable_acquiring = bluefin_tecs_merchant_services_enable_acquiring(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `int64_t` | No |  |
| `additional_data` | `voxgig_value* (map)` | No |  |
| `corporate_uuid` | `char*` | Yes |  |
| `currency` | `char*` | Yes |  |
| `merchant_category_code` | `int64_t` | Yes |  |
| `package_order_uuid` | `char*` | Yes |  |
| `product_order_uuid` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `sorting_code` | `int64_t` | No |  |
| `template_name` | `char*` | Yes |  |
| `terminal_id` | `voxgig_value* (list)` | No |  |
| `terminal_id_acq` | `char*` | No |  |
| `vu_nummer` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* enable_acquiring = bluefin_tecs_merchant_services_enable_acquiring(client, NULL);
voxgig_value* result = enable_acquiring->vt->create(enable_acquiring, cmap(6,
    "corporate_uuid", v_str("example_corporate_uuid"),  // char*
    "currency", v_str("example_currency"),  // char*
    "merchant_category_code", v_num(1),  // int64_t
    "package_order_uuid", v_str("example_package_order_uuid"),  // char*
    "product_order_uuid", v_str("example_product_order_uuid"),  // char*
    "template_name", v_str("example_template_name"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `EnableAcquiring` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## GetMerchantContractNumber

```c
Entity* get_merchant_contract_number = bluefin_tecs_merchant_services_get_merchant_contract_number(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* get_merchant_contract_number = bluefin_tecs_merchant_services_get_merchant_contract_number(client, NULL);
voxgig_value* result = get_merchant_contract_number->vt->create(get_merchant_contract_number, cmap(1,
    "merchant_contract_number", v_str("example_merchant_contract_number"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## GetTemplateXml

```c
Entity* get_template_xml = bluefin_tecs_merchant_services_get_template_xml(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `template_name` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* get_template_xml = bluefin_tecs_merchant_services_get_template_xml(client, NULL);
voxgig_value* result = get_template_xml->vt->create(get_template_xml, cmap(1,
    "template_name", v_str("example_template_name"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `GetTemplateXml` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## IntroduceMandator

```c
Entity* introduce_mandator = bluefin_tecs_merchant_services_introduce_mandator(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* introduce_mandator = bluefin_tecs_merchant_services_introduce_mandator(client, NULL);
voxgig_value* result = introduce_mandator->vt->create(introduce_mandator, cmap(1,
    "mandator_name", v_str("example_mandator_name"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `IntroduceMandator` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## IntroducePackage

```c
Entity* introduce_package = bluefin_tecs_merchant_services_introduce_package(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_template_description` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* introduce_package = bluefin_tecs_merchant_services_introduce_package(client, NULL);
voxgig_value* result = introduce_package->vt->create(introduce_package, cmap(1,
    "terminal_template_description", v_str("example_terminal_template_description"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `IntroducePackage` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## KeepAlive

```c
Entity* keep_alive = bluefin_tecs_merchant_services_keep_alive(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `char*` | No |  |
| `ka_date_time_from` | `char*` | No |  |
| `ka_date_time_to` | `char*` | No |  |
| `keep_alive_data` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_date_time_from` | `char*` | No |  |
| `terminal_date_time_to` | `char*` | No |  |
| `terminal_id` | `int64_t` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* keep_alive = bluefin_tecs_merchant_services_keep_alive(client, NULL);
voxgig_value* result = keep_alive->vt->create(keep_alive, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `KeepAlive` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## ListTerminal

```c
Entity* list_terminal = bluefin_tecs_merchant_services_list_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `voxgig_value* (list)` | No |  |
| `filter` | `voxgig_value* (map)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal` | `voxgig_value* (list)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* list_terminal = bluefin_tecs_merchant_services_list_terminal(client, NULL);
voxgig_value* result = list_terminal->vt->create(list_terminal, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `ListTerminal` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## MandatorClearingExport

```c
Entity* mandator_clearing_export = bluefin_tecs_merchant_services_mandator_clearing_export(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `char*` | Yes |  |
| `clearing_date_to` | `char*` | Yes |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `record` | `voxgig_value* (list)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export = bluefin_tecs_merchant_services_mandator_clearing_export(client, NULL);
voxgig_value* result = mandator_clearing_export->vt->create(mandator_clearing_export, cmap(2,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## MandatorClearingExportDownload

```c
Entity* mandator_clearing_export_download = bluefin_tecs_merchant_services_mandator_clearing_export_download(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `char*` | Yes |  |
| `clearing_date_to` | `char*` | Yes |  |
| `file_id` | `char*` | No |  |
| `filename_template` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `status` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export_download = bluefin_tecs_merchant_services_mandator_clearing_export_download(client, NULL);
voxgig_value* result = mandator_clearing_export_download->vt->create(mandator_clearing_export_download, cmap(2,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"))  // char*
, NULL, &err);
```

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export_download = bluefin_tecs_merchant_services_mandator_clearing_export_download(client, NULL);
voxgig_value* result = mandator_clearing_export_download->vt->load(mandator_clearing_export_download, cmap(1, "id", v_str("mandator_clearing_export_download_id")), NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## MandatorClearingExportSummary

```c
Entity* mandator_clearing_export_summary = bluefin_tecs_merchant_services_mandator_clearing_export_summary(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `char*` | Yes |  |
| `clearing_date_to` | `char*` | Yes |  |
| `record` | `voxgig_value* (list)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export_summary = bluefin_tecs_merchant_services_mandator_clearing_export_summary(client, NULL);
voxgig_value* result = mandator_clearing_export_summary->vt->create(mandator_clearing_export_summary, cmap(2,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## MerchantPortalServicesApi

```c
Entity* merchant_portal_services_api = bluefin_tecs_merchant_services_merchant_portal_services_api(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `char*` | No |  |
| `authorization_code` | `char*` | No |  |
| `card_brand` | `char*` | No |  |
| `clearing_amount_from` | `char*` | No |  |
| `clearing_amount_to` | `char*` | No |  |
| `clearing_currency` | `char*` | No |  |
| `clearing_status` | `char*` | No |  |
| `corporate_uuid` | `char*` | No |  |
| `order_by_transaction_date` | `char*` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `receipt_number` | `char*` | No |  |
| `referenced_transaction_id` | `char*` | No |  |
| `retrieval_reference_number` | `char*` | No |  |
| `source_id` | `int64_t` | No |  |
| `tecsengine_response_code_from` | `char*` | No |  |
| `tecsengine_response_code_to` | `char*` | No |  |
| `terminal_id` | `int64_t` | No |  |
| `trace_number` | `char*` | No |  |
| `transaction_amount_from` | `char*` | No |  |
| `transaction_amount_to` | `char*` | No |  |
| `transaction_date_from` | `char*` | No |  |
| `transaction_date_to` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `transaction_type` | `char*` | No |  |
| `wallet` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* merchant_portal_services_api = bluefin_tecs_merchant_services_merchant_portal_services_api(client, NULL);
voxgig_value* result = merchant_portal_services_api->vt->create(merchant_portal_services_api, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## MoveTid

```c
Entity* move_tid = bluefin_tecs_merchant_services_move_tid(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `voxgig_value* (list)` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `target_packageorderuuid` | `char*` | No |  |
| `target_productorderuuid` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* move_tid = bluefin_tecs_merchant_services_move_tid(client, NULL);
voxgig_value* result = move_tid->vt->create(move_tid, cmap(1,
    "productorderuuid", v_list())  // voxgig_value* (list)
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `MoveTid` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## PaymentManual

```c
Entity* payment_manual = bluefin_tecs_merchant_services_payment_manual(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `char*` | No |  |
| `amount` | `int64_t` | Yes |  |
| `authorization_number` | `char*` | No |  |
| `card_number` | `char*` | Yes |  |
| `card_type` | `char*` | No |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `date_time_tx` | `char*` | No |  |
| `exp_date` | `char*` | Yes |  |
| `merchant_id` | `char*` | No |  |
| `original_transaction_id` | `char*` | No |  |
| `password` | `char*` | No |  |
| `response_code` | `char*` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `txtype` | `char*` | Yes |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* payment_manual = bluefin_tecs_merchant_services_payment_manual(client, NULL);
voxgig_value* result = payment_manual->vt->create(payment_manual, cmap(5,
    "amount", v_num(1),  // int64_t
    "card_number", v_str("example_card_number"),  // char*
    "currency", v_str("example_currency"),  // char*
    "exp_date", v_str("example_exp_date"),  // char*
    "txtype", v_str("example_txtype"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `PaymentManual` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## PaymentSred

```c
Entity* payment_sred = bluefin_tecs_merchant_services_payment_sred(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `char*` | No |  |
| `amount` | `int64_t` | Yes |  |
| `authorization_number` | `char*` | No |  |
| `card_type` | `char*` | No |  |
| `currency` | `char*` | Yes |  |
| `date_time_tx` | `char*` | No |  |
| `device_payload` | `char*` | Yes |  |
| `merchant_id` | `char*` | No |  |
| `original_transaction_id` | `char*` | No |  |
| `password` | `char*` | No |  |
| `response_code` | `char*` | No |  |
| `response_message` | `char*` | No |  |
| `sred` | `voxgig_value* (map)` | No |  |
| `terminal_id` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `txtype` | `char*` | Yes |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* payment_sred = bluefin_tecs_merchant_services_payment_sred(client, NULL);
voxgig_value* result = payment_sred->vt->create(payment_sred, cmap(4,
    "amount", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "device_payload", v_str("example_device_payload"),  // char*
    "txtype", v_str("example_txtype"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `PaymentSred` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## PreAuthTransactionCompletion

```c
Entity* pre_auth_transaction_completion = bluefin_tecs_merchant_services_pre_auth_transaction_completion(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `char*` | No |  |
| `acquirer_name` | `char*` | No |  |
| `actual_bonus_point` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `authorization_code` | `char*` | No |  |
| `balance_amount` | `char*` | No |  |
| `card_brand` | `char*` | No |  |
| `card_number` | `char*` | No |  |
| `card_number_reference` | `char*` | Yes |  |
| `client_id` | `int64_t` | Yes |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `ec_data` | `char*` | No |  |
| `ecr_data` | `char*` | No |  |
| `emv_data` | `char*` | No |  |
| `exchange_fee` | `int64_t` | No |  |
| `exchange_rate` | `char*` | No |  |
| `language_code` | `char*` | No |  |
| `merchant_address` | `char*` | No |  |
| `merchant_name` | `char*` | No |  |
| `merchant_number` | `char*` | No |  |
| `message_type` | `char*` | No |  |
| `original_trace_number` | `int64_t` | No |  |
| `original_transaction_id` | `char*` | No |  |
| `password` | `char*` | No |  |
| `payment_reason` | `char*` | No |  |
| `receipt_footer` | `char*` | No |  |
| `receipt_header` | `char*` | No |  |
| `receipt_layout` | `int64_t` | No |  |
| `receipt_number` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `serial_number` | `char*` | No |  |
| `svc` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `terminal_location` | `char*` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_date` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `transaction_type` | `char*` | Yes |  |
| `tx_type` | `char*` | No |  |
| `user_data` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* pre_auth_transaction_completion = bluefin_tecs_merchant_services_pre_auth_transaction_completion(client, NULL);
voxgig_value* result = pre_auth_transaction_completion->vt->create(pre_auth_transaction_completion, cmap(6,
    "card_number_reference", v_str("example_card_number_reference"),  // char*
    "client_id", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receipt_number", v_str("example_receipt_number"),  // char*
    "terminal_id", v_num(1),  // int64_t
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## ReactivateTerminal

```c
Entity* reactivate_terminal = bluefin_tecs_merchant_services_reactivate_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `char*` | No |  |
| `package_order_uuid` | `char*` | No |  |
| `product_order_uuid` | `char*` | No |  |
| `reactivation_reason` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* reactivate_terminal = bluefin_tecs_merchant_services_reactivate_terminal(client, NULL);
voxgig_value* result = reactivate_terminal->vt->create(reactivate_terminal, cmap(2,
    "reactivation_reason", v_str("example_reactivation_reason"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## RefundTransaction

```c
Entity* refund_transaction = bluefin_tecs_merchant_services_refund_transaction(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `char*` | No |  |
| `acquirer_name` | `char*` | No |  |
| `actual_bonus_point` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `authorization_code` | `char*` | No |  |
| `balance_amount` | `char*` | No |  |
| `card_brand` | `char*` | No |  |
| `card_number` | `char*` | No |  |
| `client_id` | `int64_t` | Yes |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `ec_data` | `char*` | No |  |
| `ecr_data` | `char*` | No |  |
| `emv_data` | `char*` | No |  |
| `exchange_fee` | `int64_t` | No |  |
| `exchange_rate` | `char*` | No |  |
| `language_code` | `char*` | No |  |
| `merchant_address` | `char*` | No |  |
| `merchant_name` | `char*` | No |  |
| `merchant_number` | `char*` | No |  |
| `message_type` | `char*` | No |  |
| `original_trace_number` | `int64_t` | No |  |
| `original_transaction_id` | `char*` | No |  |
| `password` | `char*` | No |  |
| `payment_reason` | `char*` | No |  |
| `receipt_footer` | `char*` | No |  |
| `receipt_header` | `char*` | No |  |
| `receipt_layout` | `int64_t` | No |  |
| `receipt_number` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `serial_number` | `char*` | No |  |
| `svc` | `char*` | No |  |
| `terminal_id` | `int64_t` | Yes |  |
| `terminal_location` | `char*` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_date` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `tx_type` | `char*` | No |  |
| `user_data` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* refund_transaction = bluefin_tecs_merchant_services_refund_transaction(client, NULL);
voxgig_value* result = refund_transaction->vt->create(refund_transaction, cmap(4,
    "client_id", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receipt_number", v_str("example_receipt_number"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `RefundTransaction` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## RegisterTecsCompany

```c
Entity* register_tecs_company = bluefin_tecs_merchant_services_register_tecs_company(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `char*` | Yes |  |
| `package_order_uuid` | `char*` | Yes |  |
| `partner_id` | `int64_t` | No |  |
| `partner_name` | `char*` | No |  |
| `product_order_uuid` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `template_name` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* register_tecs_company = bluefin_tecs_merchant_services_register_tecs_company(client, NULL);
voxgig_value* result = register_tecs_company->vt->create(register_tecs_company, cmap(4,
    "corporate_uuid", v_str("example_corporate_uuid"),  // char*
    "package_order_uuid", v_str("example_package_order_uuid"),  // char*
    "product_order_uuid", v_str("example_product_order_uuid"),  // char*
    "template_name", v_str("example_template_name"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## RegisterTerminal

```c
Entity* register_terminal = bluefin_tecs_merchant_services_register_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `voxgig_value* (map)` | No |  |
| `corporate_uuid` | `char*` | Yes |  |
| `package_order_uuid` | `char*` | Yes |  |
| `product_order_uuid` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `tecs_web_secret_key` | `char*` | No |  |
| `template_name` | `char*` | Yes |  |
| `terminal_country_code` | `char*` | Yes |  |
| `terminal_id` | `int64_t` | No |  |
| `terminal_id_acq` | `char*` | No |  |
| `terminal_language_code` | `char*` | Yes |  |
| `terminal_location` | `char*` | Yes |  |
| `terminal_serial_number` | `char*` | No |  |
| `token_io_alia` | `char*` | No |  |
| `token_io_iban` | `char*` | No |  |
| `token_io_member_id` | `char*` | No |  |
| `web_shop_url` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* register_terminal = bluefin_tecs_merchant_services_register_terminal(client, NULL);
voxgig_value* result = register_terminal->vt->create(register_terminal, cmap(7,
    "corporate_uuid", v_str("example_corporate_uuid"),  // char*
    "package_order_uuid", v_str("example_package_order_uuid"),  // char*
    "product_order_uuid", v_str("example_product_order_uuid"),  // char*
    "template_name", v_str("example_template_name"),  // char*
    "terminal_country_code", v_str("example_terminal_country_code"),  // char*
    "terminal_language_code", v_str("example_terminal_language_code"),  // char*
    "terminal_location", v_str("example_terminal_location"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `RegisterTerminal` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## ReportData

```c
Entity* report_data = bluefin_tecs_merchant_services_report_data(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `voxgig_value* (list)` | No |  |
| `clearing_date_from` | `char*` | Yes |  |
| `clearing_date_to` | `char*` | Yes |  |
| `corporate_id` | `char*` | Yes |  |
| `currency` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `sum_over_credit_tx` | `voxgig_value* (map)` | No |  |
| `sum_over_debit_tx` | `voxgig_value* (map)` | No |  |
| `terminal_id` | `int64_t` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* report_data = bluefin_tecs_merchant_services_report_data(client, NULL);
voxgig_value* result = report_data->vt->create(report_data, cmap(4,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"),  // char*
    "corporate_id", v_str("example_corporate_id"),  // char*
    "currency", v_str("example_currency"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `ReportData` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## StatusTransaction

```c
Entity* status_transaction = bluefin_tecs_merchant_services_status_transaction(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `char*` | No |  |
| `acquirer_terminal_id` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `application_cryptogram` | `char*` | No |  |
| `authorization_code` | `voxgig_value*` | No |  |
| `authorization_date` | `char*` | No |  |
| `card_brand` | `char*` | No |  |
| `card_entry` | `char*` | No |  |
| `card_expiration` | `char*` | No |  |
| `card_number` | `char*` | No |  |
| `clearing_amount` | `int64_t` | No |  |
| `clearing_batch_id` | `char*` | No |  |
| `clearing_currency` | `char*` | No |  |
| `clearing_date` | `char*` | No |  |
| `clearing_processed_date` | `char*` | No |  |
| `clearing_status` | `char*` | No |  |
| `client_id` | `int64_t` | No |  |
| `currency` | `char*` | No |  |
| `cvm` | `char*` | No |  |
| `ecr_data` | `char*` | No |  |
| `emv_application_id` | `char*` | No |  |
| `emv_application_label` | `char*` | No |  |
| `merchant_name` | `char*` | No |  |
| `merchant_number` | `char*` | No |  |
| `original_client_id` | `char*` | No |  |
| `original_terminal_id` | `int64_t` | No |  |
| `original_transaction_id` | `char*` | No |  |
| `payment_reason` | `char*` | No |  |
| `receipt_number` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_code_from_a` | `char*` | No |  |
| `response_message` | `char*` | No |  |
| `retrieval_reference_number` | `char*` | No |  |
| `service_code` | `char*` | No |  |
| `settlement_status` | `char*` | No |  |
| `source_id` | `int64_t` | No |  |
| `tecsengine_response_code` | `int64_t` | No |  |
| `tecsengine_response_text` | `char*` | No |  |
| `terminal_end_of_day_date` | `char*` | No |  |
| `terminal_id` | `int64_t` | No |  |
| `terminal_location` | `char*` | No |  |
| `tip_amount` | `int64_t` | No |  |
| `trace_number` | `int64_t` | No |  |
| `transaction_clearing_date` | `char*` | No |  |
| `transaction_date` | `char*` | No |  |
| `transaction_id` | `char*` | No |  |
| `transaction_seq_number` | `int64_t` | No |  |
| `transaction_server_date` | `char*` | No |  |
| `transaction_source` | `char*` | No |  |
| `transaction_type` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* status_transaction = bluefin_tecs_merchant_services_status_transaction(client, NULL);
voxgig_value* result = status_transaction->vt->create(status_transaction, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `StatusTransaction` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## StoreTerminalParameter

```c
Entity* store_terminal_parameter = bluefin_tecs_merchant_services_store_terminal_parameter(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `voxgig_value* (map)` | No |  |
| `config_version` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `serial_number` | `char*` | Yes |  |
| `tid_sent` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* store_terminal_parameter = bluefin_tecs_merchant_services_store_terminal_parameter(client, NULL);
voxgig_value* result = store_terminal_parameter->vt->create(store_terminal_parameter, cmap(1,
    "serial_number", v_str("example_serial_number"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## TerminalId

```c
Entity* terminal_id = bluefin_tecs_merchant_services_terminal_id(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `voxgig_value* (list)` | Yes |  |
| `duplicate_terminal_id` | `voxgig_value* (list)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `terminal` | `voxgig_value* (list)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* terminal_id = bluefin_tecs_merchant_services_terminal_id(client, NULL);
voxgig_value* result = terminal_id->vt->create(terminal_id, cmap(1,
    "device_serial_number", v_list())  // voxgig_value* (list)
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `TerminalId` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## TransactionHistory

```c
Entity* transaction_history = bluefin_tecs_merchant_services_transaction_history(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `char*` | No |  |
| `authorization_code` | `char*` | No |  |
| `card_brand` | `char*` | No |  |
| `clearing_amount_from` | `char*` | No |  |
| `clearing_amount_to` | `char*` | No |  |
| `clearing_currency` | `char*` | No |  |
| `clearing_status` | `char*` | No |  |
| `corporate_uuid` | `char*` | No |  |
| `order_by_transaction_date` | `char*` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `payment_token_public_id` | `char*` | No |  |
| `receipt_number` | `char*` | No |  |
| `referenced_transaction_id` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `retrieval_reference_number` | `char*` | No |  |
| `source_id` | `int64_t` | No |  |
| `tecsengine_response_code_from` | `char*` | No |  |
| `tecsengine_response_code_to` | `char*` | No |  |
| `terminal_id` | `int64_t` | No |  |
| `trace_number` | `char*` | No |  |
| `transaction_amount_from` | `char*` | No |  |
| `transaction_amount_to` | `char*` | No |  |
| `transaction_date_from` | `char*` | No |  |
| `transaction_date_to` | `char*` | No |  |
| `transaction_history` | `voxgig_value* (list)` | No |  |
| `transaction_id` | `char*` | No |  |
| `transaction_type` | `char*` | No |  |
| `wallet` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transaction_history = bluefin_tecs_merchant_services_transaction_history(client, NULL);
voxgig_value* result = transaction_history->vt->create(transaction_history, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `TransactionHistory` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## TransactionsCount

```c
Entity* transactions_count = bluefin_tecs_merchant_services_transactions_count(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `transaction_date_from` | `char*` | No |  |
| `transaction_date_to` | `char*` | No |  |
| `transactions_count` | `voxgig_value* (list)` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transactions_count = bluefin_tecs_merchant_services_transactions_count(client, NULL);
voxgig_value* result = transactions_count->vt->create(transactions_count, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `TransactionsCount` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## TransactionsCountCardBrand

```c
Entity* transactions_count_card_brand = bluefin_tecs_merchant_services_transactions_count_card_brand(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `transaction_date_from` | `char*` | No |  |
| `transaction_date_to` | `char*` | No |  |
| `transactions_count` | `voxgig_value* (list)` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transactions_count_card_brand = bluefin_tecs_merchant_services_transactions_count_card_brand(client, NULL);
voxgig_value* result = transactions_count_card_brand->vt->create(transactions_count_card_brand, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## TransactionsTurnover

```c
Entity* transactions_turnover = bluefin_tecs_merchant_services_transactions_turnover(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `transaction_date_from` | `char*` | No |  |
| `transaction_date_to` | `char*` | No |  |
| `turnover` | `voxgig_value* (list)` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transactions_turnover = bluefin_tecs_merchant_services_transactions_turnover(client, NULL);
voxgig_value* result = transactions_turnover->vt->create(transactions_turnover, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## UpdateMerchant

```c
Entity* update_merchant = bluefin_tecs_merchant_services_update_merchant(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `char*` | No |  |
| `corporate_uuid` | `char*` | Yes |  |
| `country` | `char*` | No |  |
| `merchant_category_code` | `char*` | No |  |
| `name` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `state` | `char*` | No |  |
| `street` | `char*` | No |  |
| `vu_nummer` | `char*` | No |  |
| `zipcode` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* update_merchant = bluefin_tecs_merchant_services_update_merchant(client, NULL);
voxgig_value* result = update_merchant->vt->create(update_merchant, cmap(1,
    "corporate_uuid", v_str("example_corporate_uuid"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `UpdateMerchant` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## UpdateTemplateXml

```c
Entity* update_template_xml = bluefin_tecs_merchant_services_update_template_xml(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `template_name` | `char*` | Yes |  |
| `template_xml` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* update_template_xml = bluefin_tecs_merchant_services_update_template_xml(client, NULL);
voxgig_value* result = update_template_xml->vt->create(update_template_xml, cmap(2,
    "template_name", v_str("example_template_name"),  // char*
    "template_xml", v_str("example_template_xml"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## Version

```c
Entity* version = bluefin_tecs_merchant_services_version(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `char*` | No |  |
| `build_date` | `char*` | No |  |
| `version` | `char*` | No |  |

### Operations

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* version = bluefin_tecs_merchant_services_version(client, NULL);
voxgig_value* result = version->vt->load(version, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `Version` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```c
BluefinTecsMerchantServicesSDK* client = bluefin_tecs_merchant_services_sdk_new(cmap(1,
    "feature", cmap(1,
        "test", cmap(1, "active", v_bool(true)))
));
```

