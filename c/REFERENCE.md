# BluefinTecsMerchantServices C SDK Reference

Complete API reference for the BluefinTecsMerchantServices C SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```c
#include "core/api.h"

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(options);
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

#### `Entity* bluefintecsmerchantservices_cancel_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `CancelTransaction` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_check_card_black_listed(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `CheckCardBlackListed` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_create_product(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `CreateProduct` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_deactivate_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `DeactivateTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_digital_services_api(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `DigitalServicesApi` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_ec_data_ecom(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EcDataEcom` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_ecom_parameter(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EcomParameter` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_ecr_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EcrData` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_emv_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EmvData` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_enable_acquiring(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `EnableAcquiring` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_get_merchant_contract_number(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `GetMerchantContractNumber` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_get_template_xml(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `GetTemplateXml` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_introduce_mandator(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `IntroduceMandator` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_introduce_package(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `IntroducePackage` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_keep_alive(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `KeepAlive` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_list_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `ListTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_mandator_clearing_export(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MandatorClearingExport` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_mandator_clearing_export_download(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_mandator_clearing_export_summary(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_merchant_portal_services_api(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_move_tid(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `MoveTid` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_payment_manual(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `PaymentManual` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_payment_sred(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `PaymentSred` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_pre_auth_transaction_completion(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_reactivate_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `ReactivateTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_refund_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `RefundTransaction` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_register_tecs_company(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `RegisterTecsCompany` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_register_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `RegisterTerminal` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_report_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `ReportData` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_status_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `StatusTransaction` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_store_terminal_parameter(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `StoreTerminalParameter` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_terminal_id(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TerminalId` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_transaction_history(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionHistory` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_transactions_count(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionsCount` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_transactions_count_card_brand(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_transactions_turnover(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `TransactionsTurnover` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_update_merchant(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `UpdateMerchant` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_update_template_xml(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

Create a new `UpdateTemplateXml` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsmerchantservices_version(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts)`

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
Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `char*` | No |  |
| `acquirerName` | `char*` | No |  |
| `actualBonusPoints` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `authorizationCode` | `char*` | No |  |
| `balanceAmount` | `char*` | No |  |
| `cardBrand` | `char*` | No |  |
| `cardNumber` | `char*` | No |  |
| `clientId` | `int64_t` | Yes |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `ecData` | `char*` | No |  |
| `ecrData` | `char*` | No |  |
| `emvData` | `char*` | No |  |
| `exchangeFee` | `int64_t` | No |  |
| `exchangeRate` | `char*` | No |  |
| `languageCode` | `char*` | No |  |
| `merchantAddress` | `char*` | No |  |
| `merchantName` | `char*` | No |  |
| `merchantNumber` | `char*` | No |  |
| `messageType` | `char*` | No |  |
| `originalTraceNumber` | `int64_t` | No |  |
| `originalTransactionId` | `char*` | No |  |
| `password` | `char*` | No |  |
| `paymentReason` | `char*` | No |  |
| `receiptFooter` | `char*` | No |  |
| `receiptHeader` | `char*` | No |  |
| `receiptLayout` | `int64_t` | No |  |
| `receiptNumber` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `serialNumber` | `char*` | No |  |
| `svc` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `terminalLocation` | `char*` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionDate` | `char*` | No |  |
| `transactionId` | `char*` | No |  |
| `txType` | `char*` | No |  |
| `userData` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);
voxgig_value* result = cancel_transaction->vt->create(cancel_transaction, cmap(4,
    "clientId", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receiptNumber", v_str("example_receiptNumber"),  // char*
    "terminalId", v_num(1))  // int64_t
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
Entity* check_card_black_listed = bluefintecsmerchantservices_check_card_black_listed(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* check_card_black_listed = bluefintecsmerchantservices_check_card_black_listed(client, NULL);
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
Entity* create_product = bluefintecsmerchantservices_create_product(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `int64_t` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `templateName` | `char*` | Yes |  |
| `templateType` | `char*` | Yes |  |
| `templateXml` | `char*` | Yes |  |
| `terminalType` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* create_product = bluefintecsmerchantservices_create_product(client, NULL);
voxgig_value* result = create_product->vt->create(create_product, cmap(4,
    "templateName", v_str("example_templateName"),  // char*
    "templateType", v_str("example_templateType"),  // char*
    "templateXml", v_str("example_templateXml"),  // char*
    "terminalType", v_str("example_terminalType"))  // char*
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
Entity* deactivate_terminal = bluefintecsmerchantservices_deactivate_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `char*` | No |  |
| `deactivationReason` | `char*` | Yes |  |
| `packageOrderUuid` | `char*` | No |  |
| `productOrderUuid` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* deactivate_terminal = bluefintecsmerchantservices_deactivate_terminal(client, NULL);
voxgig_value* result = deactivate_terminal->vt->create(deactivate_terminal, cmap(2,
    "deactivationReason", v_str("example_deactivationReason"),  // char*
    "terminalId", v_num(1))  // int64_t
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
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `txCount` | `int64_t` | No |  |
| `txIdEnd` | `char*` | No |  |
| `txIdStart` | `char*` | No |  |
| `txSeqNoEnd` | `int64_t` | No |  |
| `txSeqNoStart` | `int64_t` | No |  |
| `txTotal` | `int64_t` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* result = digital_services_api->vt->create(digital_services_api, cmap(3,
    "file_id", v_str("example_file_id"),  // char*
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
, NULL, &err);
```

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
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
Entity* ec_data_ecom = bluefintecsmerchantservices_ec_data_ecom(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `transactionId` | `char*` | Yes |  |
| `transactionType` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* ec_data_ecom = bluefintecsmerchantservices_ec_data_ecom(client, NULL);
voxgig_value* result = ec_data_ecom->vt->create(ec_data_ecom, cmap(3,
    "terminalId", v_num(1),  // int64_t
    "transactionId", v_str("example_transactionId"),  // char*
    "transactionType", v_str("example_transactionType"))  // char*
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
Entity* ecom_parameter = bluefintecsmerchantservices_ecom_parameter(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `char*` | No |  |
| `ecomSkey` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* ecom_parameter = bluefintecsmerchantservices_ecom_parameter(client, NULL);
voxgig_value* result = ecom_parameter->vt->create(ecom_parameter, cmap(1,
    "terminalId", v_num(1))  // int64_t
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
Entity* ecr_data = bluefintecsmerchantservices_ecr_data(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `transactionId` | `char*` | Yes |  |
| `transactionType` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* ecr_data = bluefintecsmerchantservices_ecr_data(client, NULL);
voxgig_value* result = ecr_data->vt->create(ecr_data, cmap(3,
    "terminalId", v_num(1),  // int64_t
    "transactionId", v_str("example_transactionId"),  // char*
    "transactionType", v_str("example_transactionType"))  // char*
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
Entity* emv_data = bluefintecsmerchantservices_emv_data(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `transactionId` | `char*` | Yes |  |
| `transactionType` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* emv_data = bluefintecsmerchantservices_emv_data(client, NULL);
voxgig_value* result = emv_data->vt->create(emv_data, cmap(3,
    "terminalId", v_num(1),  // int64_t
    "transactionId", v_str("example_transactionId"),  // char*
    "transactionType", v_str("example_transactionType"))  // char*
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
Entity* enable_acquiring = bluefintecsmerchantservices_enable_acquiring(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `int64_t` | No |  |
| `additionalData` | `voxgig_value* (map)` | No |  |
| `corporateUuid` | `char*` | Yes |  |
| `currency` | `char*` | Yes |  |
| `merchantCategoryCode` | `int64_t` | Yes |  |
| `packageOrderUuid` | `char*` | Yes |  |
| `productOrderUuid` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `sortingCode` | `int64_t` | No |  |
| `templateName` | `char*` | Yes |  |
| `terminalIdAcq` | `char*` | No |  |
| `terminalIds` | `voxgig_value* (list)` | No |  |
| `vuNummer` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* enable_acquiring = bluefintecsmerchantservices_enable_acquiring(client, NULL);
voxgig_value* result = enable_acquiring->vt->create(enable_acquiring, cmap(6,
    "corporateUuid", v_str("example_corporateUuid"),  // char*
    "currency", v_str("example_currency"),  // char*
    "merchantCategoryCode", v_num(1),  // int64_t
    "packageOrderUuid", v_str("example_packageOrderUuid"),  // char*
    "productOrderUuid", v_str("example_productOrderUuid"),  // char*
    "templateName", v_str("example_templateName"))  // char*
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
Entity* get_merchant_contract_number = bluefintecsmerchantservices_get_merchant_contract_number(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* get_merchant_contract_number = bluefintecsmerchantservices_get_merchant_contract_number(client, NULL);
voxgig_value* result = get_merchant_contract_number->vt->create(get_merchant_contract_number, cmap(1,
    "merchantContractNumber", v_str("example_merchantContractNumber"))  // char*
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
Entity* get_template_xml = bluefintecsmerchantservices_get_template_xml(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `templateName` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* get_template_xml = bluefintecsmerchantservices_get_template_xml(client, NULL);
voxgig_value* result = get_template_xml->vt->create(get_template_xml, cmap(1,
    "templateName", v_str("example_templateName"))  // char*
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
Entity* introduce_mandator = bluefintecsmerchantservices_introduce_mandator(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* introduce_mandator = bluefintecsmerchantservices_introduce_mandator(client, NULL);
voxgig_value* result = introduce_mandator->vt->create(introduce_mandator, cmap(1,
    "mandatorName", v_str("example_mandatorName"))  // char*
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
Entity* introduce_package = bluefintecsmerchantservices_introduce_package(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalTemplateDescription` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* introduce_package = bluefintecsmerchantservices_introduce_package(client, NULL);
voxgig_value* result = introduce_package->vt->create(introduce_package, cmap(1,
    "terminalTemplateDescription", v_str("example_terminalTemplateDescription"))  // char*
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
Entity* keep_alive = bluefintecsmerchantservices_keep_alive(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `char*` | No |  |
| `kaDateTimeFrom` | `char*` | No |  |
| `kaDateTimeTo` | `char*` | No |  |
| `keepAliveData` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalDateTimeFrom` | `char*` | No |  |
| `terminalDateTimeTo` | `char*` | No |  |
| `terminalId` | `int64_t` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* keep_alive = bluefintecsmerchantservices_keep_alive(client, NULL);
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
Entity* list_terminal = bluefintecsmerchantservices_list_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `voxgig_value* (list)` | No |  |
| `filter` | `voxgig_value* (map)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminals` | `voxgig_value* (list)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* list_terminal = bluefintecsmerchantservices_list_terminal(client, NULL);
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
Entity* mandator_clearing_export = bluefintecsmerchantservices_mandator_clearing_export(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `voxgig_value* (map)` | No |  |
| `records` | `voxgig_value* (list)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export = bluefintecsmerchantservices_mandator_clearing_export(client, NULL);
voxgig_value* result = mandator_clearing_export->vt->create(mandator_clearing_export, cmap(2,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
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
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `char*` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `char*` | Yes | End date for clearing export (inclusive) |
| `fileId` | `char*` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `char*` | No | Optional filename template for the export file |
| `id` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `status` | `char*` | No | Processing status of the export request |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
voxgig_value* result = mandator_clearing_export_download->vt->create(mandator_clearing_export_download, cmap(2,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
, NULL, &err);
```

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
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
Entity* mandator_clearing_export_summary = bluefintecsmerchantservices_mandator_clearing_export_summary(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `voxgig_value* (list)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* mandator_clearing_export_summary = bluefintecsmerchantservices_mandator_clearing_export_summary(client, NULL);
voxgig_value* result = mandator_clearing_export_summary->vt->create(mandator_clearing_export_summary, cmap(2,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
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
Entity* merchant_portal_services_api = bluefintecsmerchantservices_merchant_portal_services_api(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `char*` | No |  |
| `authorizationCode` | `char*` | No |  |
| `cardBrand` | `char*` | No |  |
| `clearingAmountFrom` | `char*` | No |  |
| `clearingAmountTo` | `char*` | No |  |
| `clearingCurrency` | `char*` | No |  |
| `clearingStatus` | `char*` | No |  |
| `corporateUUID` | `char*` | No |  |
| `orderByTransactionDate` | `char*` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `receiptNumber` | `char*` | No |  |
| `referencedTransactionId` | `char*` | No |  |
| `retrievalReferenceNumber` | `char*` | No |  |
| `sourceId` | `int64_t` | No |  |
| `tecsengineResponseCodeFrom` | `char*` | No |  |
| `tecsengineResponseCodeTo` | `char*` | No |  |
| `terminalId` | `int64_t` | No |  |
| `traceNumber` | `char*` | No |  |
| `transactionAmountFrom` | `char*` | No |  |
| `transactionAmountTo` | `char*` | No |  |
| `transactionDateFrom` | `char*` | No |  |
| `transactionDateTo` | `char*` | No |  |
| `transactionId` | `char*` | No |  |
| `transactionType` | `char*` | No |  |
| `wallet` | `char*` | No | Filter by wallet type. |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* merchant_portal_services_api = bluefintecsmerchantservices_merchant_portal_services_api(client, NULL);
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
Entity* move_tid = bluefintecsmerchantservices_move_tid(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `voxgig_value* (list)` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `targetPackageorderuuid` | `char*` | No |  |
| `targetProductorderuuid` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* move_tid = bluefintecsmerchantservices_move_tid(client, NULL);
voxgig_value* result = move_tid->vt->create(move_tid, cmap(1,
    "productorderuuids", v_list())  // voxgig_value* (list)
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
Entity* payment_manual = bluefintecsmerchantservices_payment_manual(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `char*` | No | Acquirer name parsed from KKG field |
| `amount` | `int64_t` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `char*` | No | Authorization number from the gateway |
| `cardNumber` | `char*` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `char*` | No | Card type parsed from KKG field |
| `currency` | `char*` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `char*` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `char*` | No | Date and time of the transaction |
| `expDate` | `char*` | Yes | Card expiry date in MMYY format |
| `merchantId` | `char*` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `char*` | No | Original transaction ID from gateway |
| `password` | `char*` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `char*` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `char*` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `char*` | No | Terminal ID used for the transaction |
| `transactionId` | `char*` | No | Transaction ID generated by the backend |
| `txtype` | `char*` | Yes | Transaction type |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* payment_manual = bluefintecsmerchantservices_payment_manual(client, NULL);
voxgig_value* result = payment_manual->vt->create(payment_manual, cmap(5,
    "amount", v_num(1),  // int64_t
    "cardNumber", v_str("example_cardNumber"),  // char*
    "currency", v_str("example_currency"),  // char*
    "expDate", v_str("example_expDate"),  // char*
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
Entity* payment_sred = bluefintecsmerchantservices_payment_sred(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `int64_t` | Yes | Transaction amount in minor units (cents) |
| `currency` | `char*` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `char*` | No | Device type that provided the SRED payload |
| `devicePayload` | `char*` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `char*` | No | Card expiry date in MMYY format |
| `mode` | `char*` | No | Decryption mode |
| `panMasked` | `char*` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `char*` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `char*` | No | Device serial number |
| `serviceCode` | `char*` | No | Service code from the card |
| `terminalId` | `char*` | Yes | Terminal ID - 8 digits |
| `txtype` | `char*` | Yes | Transaction type |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* payment_sred = bluefintecsmerchantservices_payment_sred(client, NULL);
voxgig_value* result = payment_sred->vt->create(payment_sred, cmap(5,
    "amount", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "devicePayload", v_str("example_devicePayload"),  // char*
    "terminalId", v_str("example_terminalId"),  // char*
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
Entity* pre_auth_transaction_completion = bluefintecsmerchantservices_pre_auth_transaction_completion(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `char*` | No |  |
| `acquirerName` | `char*` | No |  |
| `actualBonusPoints` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `authorizationCode` | `char*` | No |  |
| `balanceAmount` | `char*` | No |  |
| `cardBrand` | `char*` | No |  |
| `cardNumber` | `char*` | No |  |
| `cardNumberReference` | `char*` | Yes |  |
| `clientId` | `int64_t` | Yes |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `ecData` | `char*` | No |  |
| `ecrData` | `char*` | No |  |
| `emvData` | `char*` | No |  |
| `exchangeFee` | `int64_t` | No |  |
| `exchangeRate` | `char*` | No |  |
| `languageCode` | `char*` | No |  |
| `merchantAddress` | `char*` | No |  |
| `merchantName` | `char*` | No |  |
| `merchantNumber` | `char*` | No |  |
| `messageType` | `char*` | No |  |
| `originalTraceNumber` | `int64_t` | No |  |
| `originalTransactionId` | `char*` | No |  |
| `password` | `char*` | No |  |
| `paymentReason` | `char*` | No |  |
| `receiptFooter` | `char*` | No |  |
| `receiptHeader` | `char*` | No |  |
| `receiptLayout` | `int64_t` | No |  |
| `receiptNumber` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `serialNumber` | `char*` | No |  |
| `svc` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `terminalLocation` | `char*` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionDate` | `char*` | No |  |
| `transactionId` | `char*` | No |  |
| `transactionType` | `char*` | Yes |  |
| `txType` | `char*` | No |  |
| `userData` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* pre_auth_transaction_completion = bluefintecsmerchantservices_pre_auth_transaction_completion(client, NULL);
voxgig_value* result = pre_auth_transaction_completion->vt->create(pre_auth_transaction_completion, cmap(6,
    "cardNumberReference", v_str("example_cardNumberReference"),  // char*
    "clientId", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receiptNumber", v_str("example_receiptNumber"),  // char*
    "terminalId", v_num(1),  // int64_t
    "transactionType", v_str("example_transactionType"))  // char*
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
Entity* reactivate_terminal = bluefintecsmerchantservices_reactivate_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `char*` | No |  |
| `packageOrderUuid` | `char*` | No |  |
| `productOrderUuid` | `char*` | No |  |
| `reactivationReason` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* reactivate_terminal = bluefintecsmerchantservices_reactivate_terminal(client, NULL);
voxgig_value* result = reactivate_terminal->vt->create(reactivate_terminal, cmap(2,
    "reactivationReason", v_str("example_reactivationReason"),  // char*
    "terminalId", v_num(1))  // int64_t
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
Entity* refund_transaction = bluefintecsmerchantservices_refund_transaction(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `char*` | No |  |
| `acquirerName` | `char*` | No |  |
| `actualBonusPoints` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `authorizationCode` | `char*` | No |  |
| `balanceAmount` | `char*` | No |  |
| `cardBrand` | `char*` | No |  |
| `cardNumber` | `char*` | No |  |
| `clientId` | `int64_t` | Yes |  |
| `currency` | `char*` | Yes |  |
| `cvc` | `char*` | No |  |
| `ecData` | `char*` | No |  |
| `ecrData` | `char*` | No |  |
| `emvData` | `char*` | No |  |
| `exchangeFee` | `int64_t` | No |  |
| `exchangeRate` | `char*` | No |  |
| `languageCode` | `char*` | No |  |
| `merchantAddress` | `char*` | No |  |
| `merchantName` | `char*` | No |  |
| `merchantNumber` | `char*` | No |  |
| `messageType` | `char*` | No |  |
| `originalTraceNumber` | `int64_t` | No |  |
| `originalTransactionId` | `char*` | No |  |
| `password` | `char*` | No |  |
| `paymentReason` | `char*` | No |  |
| `receiptFooter` | `char*` | No |  |
| `receiptHeader` | `char*` | No |  |
| `receiptLayout` | `int64_t` | No |  |
| `receiptNumber` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `serialNumber` | `char*` | No |  |
| `svc` | `char*` | No |  |
| `terminalId` | `int64_t` | Yes |  |
| `terminalLocation` | `char*` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionDate` | `char*` | No |  |
| `transactionId` | `char*` | No |  |
| `txType` | `char*` | No |  |
| `userData` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* refund_transaction = bluefintecsmerchantservices_refund_transaction(client, NULL);
voxgig_value* result = refund_transaction->vt->create(refund_transaction, cmap(4,
    "clientId", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receiptNumber", v_str("example_receiptNumber"),  // char*
    "terminalId", v_num(1))  // int64_t
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
Entity* register_tecs_company = bluefintecsmerchantservices_register_tecs_company(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `char*` | Yes |  |
| `packageOrderUuid` | `char*` | Yes |  |
| `partnerId` | `int64_t` | No |  |
| `partnerName` | `char*` | No |  |
| `productOrderUuid` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `templateName` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* register_tecs_company = bluefintecsmerchantservices_register_tecs_company(client, NULL);
voxgig_value* result = register_tecs_company->vt->create(register_tecs_company, cmap(4,
    "corporateUuid", v_str("example_corporateUuid"),  // char*
    "packageOrderUuid", v_str("example_packageOrderUuid"),  // char*
    "productOrderUuid", v_str("example_productOrderUuid"),  // char*
    "templateName", v_str("example_templateName"))  // char*
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
Entity* register_terminal = bluefintecsmerchantservices_register_terminal(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `voxgig_value* (map)` | No |  |
| `corporateUuid` | `char*` | Yes |  |
| `packageOrderUuid` | `char*` | Yes |  |
| `productOrderUuid` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `tecsWebSecretKey` | `char*` | No |  |
| `templateName` | `char*` | Yes |  |
| `terminalCountryCode` | `char*` | Yes |  |
| `terminalId` | `int64_t` | No |  |
| `terminalIdAcq` | `char*` | No |  |
| `terminalLanguageCode` | `char*` | Yes |  |
| `terminalLocation` | `char*` | Yes |  |
| `terminalSerialNumber` | `char*` | No |  |
| `tokenIOAlias` | `char*` | No |  |
| `tokenIOIban` | `char*` | No |  |
| `tokenIOMemberId` | `char*` | No |  |
| `webShopUrl` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* register_terminal = bluefintecsmerchantservices_register_terminal(client, NULL);
voxgig_value* result = register_terminal->vt->create(register_terminal, cmap(7,
    "corporateUuid", v_str("example_corporateUuid"),  // char*
    "packageOrderUuid", v_str("example_packageOrderUuid"),  // char*
    "productOrderUuid", v_str("example_productOrderUuid"),  // char*
    "templateName", v_str("example_templateName"),  // char*
    "terminalCountryCode", v_str("example_terminalCountryCode"),  // char*
    "terminalLanguageCode", v_str("example_terminalLanguageCode"),  // char*
    "terminalLocation", v_str("example_terminalLocation"))  // char*
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
Entity* report_data = bluefintecsmerchantservices_report_data(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `voxgig_value* (list)` | No |  |
| `clearingDateFrom` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `char*` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `char*` | Yes |  |
| `currency` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `sumOverCreditTx` | `voxgig_value* (map)` | No |  |
| `sumOverDebitTx` | `voxgig_value* (map)` | No |  |
| `terminalId` | `int64_t` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* report_data = bluefintecsmerchantservices_report_data(client, NULL);
voxgig_value* result = report_data->vt->create(report_data, cmap(4,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"),  // char*
    "corporateId", v_str("example_corporateId"),  // char*
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
Entity* status_transaction = bluefintecsmerchantservices_status_transaction(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `char*` | No |  |
| `acquirerTerminalId` | `char*` | No |  |
| `amount` | `int64_t` | No |  |
| `applicationCryptogram` | `char*` | No |  |
| `authorizationCode` | `voxgig_value*` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `char*` | No |  |
| `cardBrand` | `char*` | No |  |
| `cardEntry` | `char*` | No |  |
| `cardExpiration` | `char*` | No |  |
| `cardNumber` | `char*` | No |  |
| `clearingAmount` | `int64_t` | No |  |
| `clearingBatchId` | `char*` | No |  |
| `clearingCurrency` | `char*` | No |  |
| `clearingDate` | `char*` | No |  |
| `clearingProcessedDate` | `char*` | No |  |
| `clearingStatus` | `char*` | No |  |
| `clientId` | `int64_t` | No |  |
| `currency` | `char*` | No |  |
| `cvm` | `char*` | No |  |
| `ecrData` | `char*` | No |  |
| `emvApplicationId` | `char*` | No |  |
| `emvApplicationLabel` | `char*` | No |  |
| `merchantName` | `char*` | No |  |
| `merchantNumber` | `char*` | No |  |
| `originalClientId` | `char*` | No |  |
| `originalTerminalId` | `int64_t` | No |  |
| `originalTransactionId` | `char*` | No |  |
| `paymentReason` | `char*` | No |  |
| `receiptNumber` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseCodeFromAS` | `char*` | No |  |
| `responseMessage` | `char*` | No |  |
| `retrievalReferenceNumber` | `char*` | No |  |
| `serviceCode` | `char*` | No |  |
| `settlementStatus` | `char*` | No |  |
| `sourceId` | `int64_t` | No |  |
| `tecsengineResponseCode` | `int64_t` | No |  |
| `tecsengineResponseText` | `char*` | No |  |
| `terminalEndOfDayDate` | `char*` | No |  |
| `terminalId` | `int64_t` | No |  |
| `terminalLocation` | `char*` | No |  |
| `tipAmount` | `int64_t` | No |  |
| `traceNumber` | `int64_t` | No |  |
| `transactionClearingDate` | `char*` | No |  |
| `transactionDate` | `char*` | No |  |
| `transactionId` | `char*` | No |  |
| `transactionSeqNumber` | `int64_t` | No |  |
| `transactionServerDate` | `char*` | No |  |
| `transactionSource` | `char*` | No |  |
| `transactionType` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* status_transaction = bluefintecsmerchantservices_status_transaction(client, NULL);
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
Entity* store_terminal_parameter = bluefintecsmerchantservices_store_terminal_parameter(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `voxgig_value* (map)` | No |  |
| `configVersion` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `serialNumber` | `char*` | Yes |  |
| `tidSent` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* store_terminal_parameter = bluefintecsmerchantservices_store_terminal_parameter(client, NULL);
voxgig_value* result = store_terminal_parameter->vt->create(store_terminal_parameter, cmap(1,
    "serialNumber", v_str("example_serialNumber"))  // char*
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
Entity* terminal_id = bluefintecsmerchantservices_terminal_id(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `voxgig_value* (list)` | Yes |  |
| `duplicateTerminalIds` | `voxgig_value* (list)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `terminals` | `voxgig_value* (list)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* terminal_id = bluefintecsmerchantservices_terminal_id(client, NULL);
voxgig_value* result = terminal_id->vt->create(terminal_id, cmap(1,
    "deviceSerialNumber", v_list())  // voxgig_value* (list)
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
Entity* transaction_history = bluefintecsmerchantservices_transaction_history(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `char*` | No |  |
| `authorizationCode` | `char*` | No |  |
| `cardBrand` | `char*` | No |  |
| `clearingAmountFrom` | `char*` | No |  |
| `clearingAmountTo` | `char*` | No |  |
| `clearingCurrency` | `char*` | No |  |
| `clearingStatus` | `char*` | No |  |
| `corporateUUID` | `char*` | No |  |
| `orderByTransactionDate` | `char*` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `paymentTokenPublicId` | `char*` | No |  |
| `receiptNumber` | `char*` | No |  |
| `referencedTransactionId` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `retrievalReferenceNumber` | `char*` | No |  |
| `sourceId` | `int64_t` | No |  |
| `tecsengineResponseCodeFrom` | `char*` | No |  |
| `tecsengineResponseCodeTo` | `char*` | No |  |
| `terminalId` | `int64_t` | No |  |
| `traceNumber` | `char*` | No |  |
| `transactionAmountFrom` | `char*` | No |  |
| `transactionAmountTo` | `char*` | No |  |
| `transactionDateFrom` | `char*` | No |  |
| `transactionDateTo` | `char*` | No |  |
| `transactionHistories` | `voxgig_value* (list)` | No |  |
| `transactionId` | `char*` | No |  |
| `transactionType` | `char*` | No |  |
| `wallet` | `char*` | No | Filter by wallet type. |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transaction_history = bluefintecsmerchantservices_transaction_history(client, NULL);
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
Entity* transactions_count = bluefintecsmerchantservices_transactions_count(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `transactionDateFrom` | `char*` | No |  |
| `transactionDateTo` | `char*` | No |  |
| `transactionsCount` | `voxgig_value* (list)` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transactions_count = bluefintecsmerchantservices_transactions_count(client, NULL);
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
Entity* transactions_count_card_brand = bluefintecsmerchantservices_transactions_count_card_brand(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `transactionDateFrom` | `char*` | No |  |
| `transactionDateTo` | `char*` | No |  |
| `transactionsCount` | `voxgig_value* (list)` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transactions_count_card_brand = bluefintecsmerchantservices_transactions_count_card_brand(client, NULL);
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
Entity* transactions_turnover = bluefintecsmerchantservices_transactions_turnover(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `transactionDateFrom` | `char*` | No |  |
| `transactionDateTo` | `char*` | No |  |
| `turnovers` | `voxgig_value* (list)` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* transactions_turnover = bluefintecsmerchantservices_transactions_turnover(client, NULL);
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
Entity* update_merchant = bluefintecsmerchantservices_update_merchant(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `char*` | No |  |
| `corporateUuid` | `char*` | Yes |  |
| `country` | `char*` | No |  |
| `merchantCategoryCode` | `char*` | No |  |
| `name` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `state` | `char*` | No |  |
| `street` | `char*` | No |  |
| `vuNummer` | `char*` | No |  |
| `zipcode` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* update_merchant = bluefintecsmerchantservices_update_merchant(client, NULL);
voxgig_value* result = update_merchant->vt->create(update_merchant, cmap(1,
    "corporateUuid", v_str("example_corporateUuid"))  // char*
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
Entity* update_template_xml = bluefintecsmerchantservices_update_template_xml(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `templateName` | `char*` | Yes |  |
| `templateXml` | `char*` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* update_template_xml = bluefintecsmerchantservices_update_template_xml(client, NULL);
voxgig_value* result = update_template_xml->vt->create(update_template_xml, cmap(2,
    "templateName", v_str("example_templateName"),  // char*
    "templateXml", v_str("example_templateXml"))  // char*
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
Entity* version = bluefintecsmerchantservices_version(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `char*` | No |  |
| `buildDate` | `char*` | No |  |
| `version` | `char*` | No |  |

### Operations

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* version = bluefintecsmerchantservices_version(client, NULL);
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
BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(1,
    "feature", cmap(1,
        "test", cmap(1, "active", v_bool(true)))
));
```

