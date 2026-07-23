# BluefinTecsMerchantServices C SDK



The C SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic C conventions (explicit structs, function-pointer vtables, and a trailing `PNError**` out-param for errors).

The SDK exposes the API as capitalised, semantic **Entities** — for example `bluefintecsmerchantservices_cancel_transaction(client, NULL)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
C has no central package registry — a release is the git tag
(`c/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)). Build from a
source checkout with the bundled `Makefile`; the voxgig struct library is
vendored under `utility/struct`, so there are no external dependencies to
fetch:

```bash
cd c && make          # builds libsdk.a
cd c && make test     # builds + runs the test binaries
```

Link your program against `libsdk.a` and include `core/api.h`:

```bash
cc -I c/core -I c/utility/struct \
   myapp.c c/libsdk.a -lm -o myapp
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```c
#include "core/api.h"

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(1,
    "apikey", v_str(getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"))));
PNError* err = NULL;
```

### 4. Create, update, and remove

```c
Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);
// Create — returns the bare created record
voxgig_value* created = cancel_transaction->vt->create(cancel_transaction, cmap(4, "client_id", v_num(1), "currency", v_str("example_currency"), "receipt_number", v_str("example_receipt_number"), "terminal_id", v_num(1)), NULL, &err);

```


## Error handling

Entity operations reject on failure, so wrap them in `try` / `catch`:

```ts
try {
  const digitalservicesapi = await client.DigitalServicesApi().load()
  console.log(digitalservicesapi)
} catch (err) {
  console.error('load failed:', err)
}
```

The low-level `direct()` method does **not** throw — it returns the
value or an `Error`, so check the result before using it:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example_id' },
})

if (result instanceof Error) {
  throw result
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity operations:

```c
PNError* err = NULL;
voxgig_value* result = sdk_direct(client, cmap(3,
    "path", v_str("/api/resource/{id}"),
    "method", v_str("GET"),
    "params", cmap(1, "id", v_str("example"))), &err);

if (voxgig_as_bool(getp(result, "ok"))) {
    printf("%lld\n", (long long)to_int(getp(result, "status")));  // 200
    printf("%s\n", voxgig_to_json(getp(result, "data")));         // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    printf("%s\n", voxgig_to_json(getp(result, "err")));
}
```

`sdk_direct()` never sets `*err` for a non-2xx response — it always returns
a result map you branch on via `getp(result, "ok")`.

### Prepare a request without sending it

```c
PNError* err = NULL;
voxgig_value* fetchdef = sdk_prepare(client, cmap(3,
    "path", v_str("/api/resource/{id}"),
    "method", v_str("DELETE"),
    "params", cmap(1, "id", v_str("example"))), &err);

printf("%s\n", get_str(fetchdef, "url"));
printf("%s\n", get_str(fetchdef, "method"));
printf("%s\n", voxgig_to_json(getp(fetchdef, "headers")));
```

### Use test mode

Create a mock client for unit testing — no server required:

```c
BluefinTecsMerchantServicesSDK* client = test_sdk(NULL, NULL);
PNError* err = NULL;

// Entity ops return the bare record and set *err on failure.
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* digital_services_api_rec = digital_services_api->vt->load(digital_services_api, NULL, NULL, &err);
// digital_services_api_rec contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own function (the same shape the test
transport uses):

```c
static voxgig_value* mock_fetch(void* ud, voxgig_value* args) {
    (void)ud; (void)args;
    return cmap(4,
        "status", v_num(200),
        "statusText", v_str("OK"),
        "headers", v_map(),
        "json", json_thunk(cmap(1, "id", v_str("mock01"))));
}

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(2,
    "base", v_str("http://localhost:8080"),
    "system", cmap(1, "fetch", vfn(mock_fetch, NULL))));
```

### Point at a different server

Override the base URL to reach a local or staging server:

```c
BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(1,
    "base", v_str("http://localhost:8080")));
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd c && make test
```


## Reference

### BluefinTecsMerchantServicesSDK

```c
#include "core/api.h"

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(options);
```

Creates a new SDK client. `options` is a `voxgig_value*` map (`NULL` for
none) carrying any of the following keys:

| Option | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `system` | `map` | System overrides (e.g. a custom `fetch`). |

### test_sdk

```c
BluefinTecsMerchantServicesSDK* client = test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`NULL`.

### BluefinTecsMerchantServicesSDK functions

| Function | Signature | Description |
| --- | --- | --- |
| `sdk_prepare` | `(BluefinTecsMerchantServicesSDK*, fetchargs, PNError**) -> voxgig_value*` | Build an HTTP request definition without sending. |
| `sdk_direct` | `(BluefinTecsMerchantServicesSDK*, fetchargs, PNError**) -> voxgig_value*` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `bluefintecsmerchantservices_cancel_transaction` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a CancelTransaction entity instance. |
| `bluefintecsmerchantservices_check_card_black_listed` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a CheckCardBlackListed entity instance. |
| `bluefintecsmerchantservices_create_product` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a CreateProduct entity instance. |
| `bluefintecsmerchantservices_deactivate_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a DeactivateTerminal entity instance. |
| `bluefintecsmerchantservices_digital_services_api` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a DigitalServicesApi entity instance. |
| `bluefintecsmerchantservices_ec_data_ecom` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EcDataEcom entity instance. |
| `bluefintecsmerchantservices_ecom_parameter` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EcomParameter entity instance. |
| `bluefintecsmerchantservices_ecr_data` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EcrData entity instance. |
| `bluefintecsmerchantservices_emv_data` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EmvData entity instance. |
| `bluefintecsmerchantservices_enable_acquiring` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EnableAcquiring entity instance. |
| `bluefintecsmerchantservices_get_merchant_contract_number` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a GetMerchantContractNumber entity instance. |
| `bluefintecsmerchantservices_get_template_xml` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a GetTemplateXml entity instance. |
| `bluefintecsmerchantservices_introduce_mandator` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an IntroduceMandator entity instance. |
| `bluefintecsmerchantservices_introduce_package` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an IntroducePackage entity instance. |
| `bluefintecsmerchantservices_keep_alive` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a KeepAlive entity instance. |
| `bluefintecsmerchantservices_list_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a ListTerminal entity instance. |
| `bluefintecsmerchantservices_mandator_clearing_export` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MandatorClearingExport entity instance. |
| `bluefintecsmerchantservices_mandator_clearing_export_download` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MandatorClearingExportDownload entity instance. |
| `bluefintecsmerchantservices_mandator_clearing_export_summary` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MandatorClearingExportSummary entity instance. |
| `bluefintecsmerchantservices_merchant_portal_services_api` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MerchantPortalServicesApi entity instance. |
| `bluefintecsmerchantservices_move_tid` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MoveTid entity instance. |
| `bluefintecsmerchantservices_payment_manual` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a PaymentManual entity instance. |
| `bluefintecsmerchantservices_payment_sred` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a PaymentSred entity instance. |
| `bluefintecsmerchantservices_pre_auth_transaction_completion` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a PreAuthTransactionCompletion entity instance. |
| `bluefintecsmerchantservices_reactivate_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a ReactivateTerminal entity instance. |
| `bluefintecsmerchantservices_refund_transaction` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a RefundTransaction entity instance. |
| `bluefintecsmerchantservices_register_tecs_company` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a RegisterTecsCompany entity instance. |
| `bluefintecsmerchantservices_register_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a RegisterTerminal entity instance. |
| `bluefintecsmerchantservices_report_data` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a ReportData entity instance. |
| `bluefintecsmerchantservices_status_transaction` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a StatusTransaction entity instance. |
| `bluefintecsmerchantservices_store_terminal_parameter` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a StoreTerminalParameter entity instance. |
| `bluefintecsmerchantservices_terminal_id` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TerminalId entity instance. |
| `bluefintecsmerchantservices_transaction_history` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionHistory entity instance. |
| `bluefintecsmerchantservices_transactions_count` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionsCount entity instance. |
| `bluefintecsmerchantservices_transactions_count_card_brand` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionsCountCardBrand entity instance. |
| `bluefintecsmerchantservices_transactions_turnover` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionsTurnover entity instance. |
| `bluefintecsmerchantservices_update_merchant` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an UpdateMerchant entity instance. |
| `bluefintecsmerchantservices_update_template_xml` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an UpdateTemplateXml entity instance. |
| `bluefintecsmerchantservices_version` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a Version entity instance. |

### Entity interface (vtable)

All entities share the same `EntityVT` vtable, reached via `e->vt->...`.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(Entity*, reqmatch, ctrl, PNError**) -> voxgig_value*` | Load a single entity by match criteria. |
| `create` | `(Entity*, reqdata, ctrl, PNError**) -> voxgig_value*` | Create a new entity. |
| `data` | `(Entity*, args) -> voxgig_value*` | Get entity data (pass a map to set). |
| `matchv` | `(Entity*, args) -> voxgig_value*` | Get entity match criteria (pass a map to set). |
| `make` | `(Entity*) -> Entity*` | Create a new instance with the same options. |
| `get_name` | `(Entity*) -> const char*` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `voxgig_value` map for
single-entity ops, a List for `list`) and set `*err` to a `PNError*` on
failure. Always initialise `PNError* err = NULL;` and check it after the
call.

The `sdk_direct()` escape hatch never sets `*err` for a non-2xx response —
it returns a result map you branch on via `getp(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `number` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` carries the error value.

### Entities

#### CancelTransaction

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `card_no` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_type` |  |
| `template_xml` |  |
| `terminal_type` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `deactivation_reason` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `response_code` |  |
| `response_message` |  |
| `tx_count` |  |
| `tx_id_end` |  |
| `tx_id_start` |  |
| `tx_seq_no_end` |  |
| `tx_seq_no_start` |  |
| `tx_total` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `ecom_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecom_pass` |  |
| `ecom_skey` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `ecr_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `emv_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `account_no` |  |
| `additional_data` |  |
| `corporate_uuid` |  |
| `currency` |  |
| `merchant_category_code` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting_code` |  |
| `template_name` |  |
| `terminal_id` |  |
| `terminal_id_acq` |  |
| `vu_nummer` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchant_contract_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `terminal_template_description` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `hwserialno` |  |
| `ka_date_time_from` |  |
| `ka_date_time_to` |  |
| `keep_alive_data` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_date_time_from` |  |
| `terminal_date_time_to` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `filter` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `pagination` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `file_id` |  |
| `filename_template` |  |
| `response_code` |  |
| `response_message` |  |
| `status` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `3_d_secure` |  |
| `authorization_code` |  |
| `card_brand` |  |
| `clearing_amount_from` |  |
| `clearing_amount_to` |  |
| `clearing_currency` |  |
| `clearing_status` |  |
| `corporate_uuid` |  |
| `order_by_transaction_date` |  |
| `pagination` |  |
| `receipt_number` |  |
| `referenced_transaction_id` |  |
| `retrieval_reference_number` |  |
| `source_id` |  |
| `tecsengine_response_code_from` |  |
| `tecsengine_response_code_to` |  |
| `terminal_id` |  |
| `trace_number` |  |
| `transaction_amount_from` |  |
| `transaction_amount_to` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuid` |  |
| `response_code` |  |
| `response_message` |  |
| `target_packageorderuuid` |  |
| `target_productorderuuid` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `amount` |  |
| `authorization_number` |  |
| `card_number` |  |
| `card_type` |  |
| `currency` |  |
| `cvc` |  |
| `date_time_tx` |  |
| `exp_date` |  |
| `merchant_id` |  |
| `original_transaction_id` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `amount` |  |
| `authorization_number` |  |
| `card_type` |  |
| `currency` |  |
| `date_time_tx` |  |
| `device_payload` |  |
| `merchant_id` |  |
| `original_transaction_id` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `sred` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `card_number_reference` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `reactivation_reason` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `partner_id` |  |
| `partner_name` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `additional_data` |  |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `tecs_web_secret_key` |  |
| `template_name` |  |
| `terminal_country_code` |  |
| `terminal_id` |  |
| `terminal_id_acq` |  |
| `terminal_language_code` |  |
| `terminal_location` |  |
| `terminal_serial_number` |  |
| `token_io_alia` |  |
| `token_io_iban` |  |
| `token_io_member_id` |  |
| `web_shop_url` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `card_brand_report_data` |  |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `corporate_id` |  |
| `currency` |  |
| `response_code` |  |
| `response_message` |  |
| `sum_over_credit_tx` |  |
| `sum_over_debit_tx` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `acquirer_terminal_id` |  |
| `amount` |  |
| `application_cryptogram` |  |
| `authorization_code` |  |
| `authorization_date` |  |
| `card_brand` |  |
| `card_entry` |  |
| `card_expiration` |  |
| `card_number` |  |
| `clearing_amount` |  |
| `clearing_batch_id` |  |
| `clearing_currency` |  |
| `clearing_date` |  |
| `clearing_processed_date` |  |
| `clearing_status` |  |
| `client_id` |  |
| `currency` |  |
| `cvm` |  |
| `ecr_data` |  |
| `emv_application_id` |  |
| `emv_application_label` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `original_client_id` |  |
| `original_terminal_id` |  |
| `original_transaction_id` |  |
| `payment_reason` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_code_from_a` |  |
| `response_message` |  |
| `retrieval_reference_number` |  |
| `service_code` |  |
| `settlement_status` |  |
| `source_id` |  |
| `tecsengine_response_code` |  |
| `tecsengine_response_text` |  |
| `terminal_end_of_day_date` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `tip_amount` |  |
| `trace_number` |  |
| `transaction_clearing_date` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `transaction_seq_number` |  |
| `transaction_server_date` |  |
| `transaction_source` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `acq_tab_nexo` |  |
| `config_version` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `tid_sent` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `device_serial_number` |  |
| `duplicate_terminal_id` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `3_d_secure` |  |
| `authorization_code` |  |
| `card_brand` |  |
| `clearing_amount_from` |  |
| `clearing_amount_to` |  |
| `clearing_currency` |  |
| `clearing_status` |  |
| `corporate_uuid` |  |
| `order_by_transaction_date` |  |
| `pagination` |  |
| `payment_token_public_id` |  |
| `receipt_number` |  |
| `referenced_transaction_id` |  |
| `response_code` |  |
| `response_message` |  |
| `retrieval_reference_number` |  |
| `source_id` |  |
| `tecsengine_response_code_from` |  |
| `tecsengine_response_code_to` |  |
| `terminal_id` |  |
| `trace_number` |  |
| `transaction_amount_from` |  |
| `transaction_amount_to` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transaction_history` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transactions_count` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transactions_count` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `turnover` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `city` |  |
| `corporate_uuid` |  |
| `country` |  |
| `merchant_category_code` |  |
| `name` |  |
| `response_code` |  |
| `response_message` |  |
| `state` |  |
| `street` |  |
| `vu_nummer` |  |
| `zipcode` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_xml` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: Load.

API path: `/public/version`



## Entities


### CancelTransaction

Create an instance: `Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `char*` |  |
| `acquirer_name` | `char*` |  |
| `actual_bonus_point` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorization_code` | `char*` |  |
| `balance_amount` | `char*` |  |
| `card_brand` | `char*` |  |
| `card_number` | `char*` |  |
| `client_id` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `ec_data` | `char*` |  |
| `ecr_data` | `char*` |  |
| `emv_data` | `char*` |  |
| `exchange_fee` | `int64_t` |  |
| `exchange_rate` | `char*` |  |
| `language_code` | `char*` |  |
| `merchant_address` | `char*` |  |
| `merchant_name` | `char*` |  |
| `merchant_number` | `char*` |  |
| `message_type` | `char*` |  |
| `original_trace_number` | `int64_t` |  |
| `original_transaction_id` | `char*` |  |
| `password` | `char*` |  |
| `payment_reason` | `char*` |  |
| `receipt_footer` | `char*` |  |
| `receipt_header` | `char*` |  |
| `receipt_layout` | `int64_t` |  |
| `receipt_number` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `serial_number` | `char*` |  |
| `svc` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `char*` |  |
| `trace_number` | `int64_t` |  |
| `transaction_date` | `char*` |  |
| `transaction_id` | `char*` |  |
| `tx_type` | `char*` |  |
| `user_data` | `char*` |  |

#### Example: Create

```c
Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);
voxgig_value* cancel_transaction_rec = cancel_transaction->vt->create(cancel_transaction, cmap(4,
    "client_id", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receipt_number", v_str("example_receipt_number"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```


### CheckCardBlackListed

Create an instance: `Entity* check_card_black_listed = bluefintecsmerchantservices_check_card_black_listed(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |

#### Example: Create

```c
Entity* check_card_black_listed = bluefintecsmerchantservices_check_card_black_listed(client, NULL);
voxgig_value* check_card_black_listed_rec = check_card_black_listed->vt->create(check_card_black_listed, NULL, NULL, &err);
```


### CreateProduct

Create an instance: `Entity* create_product = bluefintecsmerchantservices_create_product(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `int64_t` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `template_name` | `char*` |  |
| `template_type` | `char*` |  |
| `template_xml` | `char*` |  |
| `terminal_type` | `char*` |  |

#### Example: Create

```c
Entity* create_product = bluefintecsmerchantservices_create_product(client, NULL);
voxgig_value* create_product_rec = create_product->vt->create(create_product, cmap(4,
    "template_name", v_str("example_template_name"),  // char*
    "template_type", v_str("example_template_type"),  // char*
    "template_xml", v_str("example_template_xml"),  // char*
    "terminal_type", v_str("example_terminal_type"))  // char*
, NULL, &err);
```


### DeactivateTerminal

Create an instance: `Entity* deactivate_terminal = bluefintecsmerchantservices_deactivate_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `char*` |  |
| `deactivation_reason` | `char*` |  |
| `package_order_uuid` | `char*` |  |
| `product_order_uuid` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```c
Entity* deactivate_terminal = bluefintecsmerchantservices_deactivate_terminal(client, NULL);
voxgig_value* deactivate_terminal_rec = deactivate_terminal->vt->create(deactivate_terminal, cmap(2,
    "deactivation_reason", v_str("example_deactivation_reason"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```


### DigitalServicesApi

Create an instance: `Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `char*` |  |
| `clearing_date_to` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `tx_count` | `int64_t` |  |
| `tx_id_end` | `char*` |  |
| `tx_id_start` | `char*` |  |
| `tx_seq_no_end` | `int64_t` |  |
| `tx_seq_no_start` | `int64_t` |  |
| `tx_total` | `int64_t` |  |

#### Example: Load

```c
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* digital_services_api_rec = digital_services_api->vt->load(digital_services_api, NULL, NULL, &err);
```

#### Example: Create

```c
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* digital_services_api_rec = digital_services_api->vt->create(digital_services_api, NULL, NULL, &err);
```


### EcDataEcom

Create an instance: `Entity* ec_data_ecom = bluefintecsmerchantservices_ec_data_ecom(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `transaction_id` | `char*` |  |
| `transaction_type` | `char*` |  |

#### Example: Create

```c
Entity* ec_data_ecom = bluefintecsmerchantservices_ec_data_ecom(client, NULL);
voxgig_value* ec_data_ecom_rec = ec_data_ecom->vt->create(ec_data_ecom, cmap(3,
    "terminal_id", v_num(1),  // int64_t
    "transaction_id", v_str("example_transaction_id"),  // char*
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```


### EcomParameter

Create an instance: `Entity* ecom_parameter = bluefintecsmerchantservices_ecom_parameter(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `char*` |  |
| `ecom_skey` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```c
Entity* ecom_parameter = bluefintecsmerchantservices_ecom_parameter(client, NULL);
voxgig_value* ecom_parameter_rec = ecom_parameter->vt->create(ecom_parameter, cmap(1,
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```


### EcrData

Create an instance: `Entity* ecr_data = bluefintecsmerchantservices_ecr_data(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `transaction_id` | `char*` |  |
| `transaction_type` | `char*` |  |

#### Example: Create

```c
Entity* ecr_data = bluefintecsmerchantservices_ecr_data(client, NULL);
voxgig_value* ecr_data_rec = ecr_data->vt->create(ecr_data, cmap(3,
    "terminal_id", v_num(1),  // int64_t
    "transaction_id", v_str("example_transaction_id"),  // char*
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```


### EmvData

Create an instance: `Entity* emv_data = bluefintecsmerchantservices_emv_data(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `transaction_id` | `char*` |  |
| `transaction_type` | `char*` |  |

#### Example: Create

```c
Entity* emv_data = bluefintecsmerchantservices_emv_data(client, NULL);
voxgig_value* emv_data_rec = emv_data->vt->create(emv_data, cmap(3,
    "terminal_id", v_num(1),  // int64_t
    "transaction_id", v_str("example_transaction_id"),  // char*
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```


### EnableAcquiring

Create an instance: `Entity* enable_acquiring = bluefintecsmerchantservices_enable_acquiring(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `int64_t` |  |
| `additional_data` | `voxgig_value* (map)` |  |
| `corporate_uuid` | `char*` |  |
| `currency` | `char*` |  |
| `merchant_category_code` | `int64_t` |  |
| `package_order_uuid` | `char*` |  |
| `product_order_uuid` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `sorting_code` | `int64_t` |  |
| `template_name` | `char*` |  |
| `terminal_id` | `voxgig_value* (list)` |  |
| `terminal_id_acq` | `char*` |  |
| `vu_nummer` | `char*` |  |

#### Example: Create

```c
Entity* enable_acquiring = bluefintecsmerchantservices_enable_acquiring(client, NULL);
voxgig_value* enable_acquiring_rec = enable_acquiring->vt->create(enable_acquiring, cmap(6,
    "corporate_uuid", v_str("example_corporate_uuid"),  // char*
    "currency", v_str("example_currency"),  // char*
    "merchant_category_code", v_num(1),  // int64_t
    "package_order_uuid", v_str("example_package_order_uuid"),  // char*
    "product_order_uuid", v_str("example_product_order_uuid"),  // char*
    "template_name", v_str("example_template_name"))  // char*
, NULL, &err);
```


### GetMerchantContractNumber

Create an instance: `Entity* get_merchant_contract_number = bluefintecsmerchantservices_get_merchant_contract_number(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |

#### Example: Create

```c
Entity* get_merchant_contract_number = bluefintecsmerchantservices_get_merchant_contract_number(client, NULL);
voxgig_value* get_merchant_contract_number_rec = get_merchant_contract_number->vt->create(get_merchant_contract_number, cmap(1,
    "merchant_contract_number", v_str("example_merchant_contract_number"))  // char*
, NULL, &err);
```


### GetTemplateXml

Create an instance: `Entity* get_template_xml = bluefintecsmerchantservices_get_template_xml(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `template_name` | `char*` |  |

#### Example: Create

```c
Entity* get_template_xml = bluefintecsmerchantservices_get_template_xml(client, NULL);
voxgig_value* get_template_xml_rec = get_template_xml->vt->create(get_template_xml, cmap(1,
    "template_name", v_str("example_template_name"))  // char*
, NULL, &err);
```


### IntroduceMandator

Create an instance: `Entity* introduce_mandator = bluefintecsmerchantservices_introduce_mandator(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |

#### Example: Create

```c
Entity* introduce_mandator = bluefintecsmerchantservices_introduce_mandator(client, NULL);
voxgig_value* introduce_mandator_rec = introduce_mandator->vt->create(introduce_mandator, cmap(1,
    "mandator_name", v_str("example_mandator_name"))  // char*
, NULL, &err);
```


### IntroducePackage

Create an instance: `Entity* introduce_package = bluefintecsmerchantservices_introduce_package(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_template_description` | `char*` |  |

#### Example: Create

```c
Entity* introduce_package = bluefintecsmerchantservices_introduce_package(client, NULL);
voxgig_value* introduce_package_rec = introduce_package->vt->create(introduce_package, cmap(1,
    "terminal_template_description", v_str("example_terminal_template_description"))  // char*
, NULL, &err);
```


### KeepAlive

Create an instance: `Entity* keep_alive = bluefintecsmerchantservices_keep_alive(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `char*` |  |
| `ka_date_time_from` | `char*` |  |
| `ka_date_time_to` | `char*` |  |
| `keep_alive_data` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_date_time_from` | `char*` |  |
| `terminal_date_time_to` | `char*` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```c
Entity* keep_alive = bluefintecsmerchantservices_keep_alive(client, NULL);
voxgig_value* keep_alive_rec = keep_alive->vt->create(keep_alive, NULL, NULL, &err);
```


### ListTerminal

Create an instance: `Entity* list_terminal = bluefintecsmerchantservices_list_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `voxgig_value* (list)` |  |
| `filter` | `voxgig_value* (map)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* list_terminal = bluefintecsmerchantservices_list_terminal(client, NULL);
voxgig_value* list_terminal_rec = list_terminal->vt->create(list_terminal, NULL, NULL, &err);
```


### MandatorClearingExport

Create an instance: `Entity* mandator_clearing_export = bluefintecsmerchantservices_mandator_clearing_export(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `char*` |  |
| `clearing_date_to` | `char*` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `record` | `voxgig_value* (list)` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |

#### Example: Create

```c
Entity* mandator_clearing_export = bluefintecsmerchantservices_mandator_clearing_export(client, NULL);
voxgig_value* mandator_clearing_export_rec = mandator_clearing_export->vt->create(mandator_clearing_export, cmap(2,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"))  // char*
, NULL, &err);
```


### MandatorClearingExportDownload

Create an instance: `Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `char*` |  |
| `clearing_date_to` | `char*` |  |
| `file_id` | `char*` |  |
| `filename_template` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `status` | `char*` |  |

#### Example: Load

```c
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
voxgig_value* mandator_clearing_export_download_rec = mandator_clearing_export_download->vt->load(mandator_clearing_export_download, cmap(1, "id", v_str("mandator_clearing_export_download_id")), NULL, &err);
```

#### Example: Create

```c
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
voxgig_value* mandator_clearing_export_download_rec = mandator_clearing_export_download->vt->create(mandator_clearing_export_download, cmap(2,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"))  // char*
, NULL, &err);
```


### MandatorClearingExportSummary

Create an instance: `Entity* mandator_clearing_export_summary = bluefintecsmerchantservices_mandator_clearing_export_summary(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `char*` |  |
| `clearing_date_to` | `char*` |  |
| `record` | `voxgig_value* (list)` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |

#### Example: Create

```c
Entity* mandator_clearing_export_summary = bluefintecsmerchantservices_mandator_clearing_export_summary(client, NULL);
voxgig_value* mandator_clearing_export_summary_rec = mandator_clearing_export_summary->vt->create(mandator_clearing_export_summary, cmap(2,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"))  // char*
, NULL, &err);
```


### MerchantPortalServicesApi

Create an instance: `Entity* merchant_portal_services_api = bluefintecsmerchantservices_merchant_portal_services_api(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `char*` |  |
| `authorization_code` | `char*` |  |
| `card_brand` | `char*` |  |
| `clearing_amount_from` | `char*` |  |
| `clearing_amount_to` | `char*` |  |
| `clearing_currency` | `char*` |  |
| `clearing_status` | `char*` |  |
| `corporate_uuid` | `char*` |  |
| `order_by_transaction_date` | `char*` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `receipt_number` | `char*` |  |
| `referenced_transaction_id` | `char*` |  |
| `retrieval_reference_number` | `char*` |  |
| `source_id` | `int64_t` |  |
| `tecsengine_response_code_from` | `char*` |  |
| `tecsengine_response_code_to` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `trace_number` | `char*` |  |
| `transaction_amount_from` | `char*` |  |
| `transaction_amount_to` | `char*` |  |
| `transaction_date_from` | `char*` |  |
| `transaction_date_to` | `char*` |  |
| `transaction_id` | `char*` |  |
| `transaction_type` | `char*` |  |
| `wallet` | `char*` |  |

#### Example: Create

```c
Entity* merchant_portal_services_api = bluefintecsmerchantservices_merchant_portal_services_api(client, NULL);
voxgig_value* merchant_portal_services_api_rec = merchant_portal_services_api->vt->create(merchant_portal_services_api, NULL, NULL, &err);
```


### MoveTid

Create an instance: `Entity* move_tid = bluefintecsmerchantservices_move_tid(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `voxgig_value* (list)` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `target_packageorderuuid` | `char*` |  |
| `target_productorderuuid` | `char*` |  |

#### Example: Create

```c
Entity* move_tid = bluefintecsmerchantservices_move_tid(client, NULL);
voxgig_value* move_tid_rec = move_tid->vt->create(move_tid, cmap(1,
    "productorderuuid", v_list())  // voxgig_value* (list)
, NULL, &err);
```


### PaymentManual

Create an instance: `Entity* payment_manual = bluefintecsmerchantservices_payment_manual(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorization_number` | `char*` |  |
| `card_number` | `char*` |  |
| `card_type` | `char*` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `date_time_tx` | `char*` |  |
| `exp_date` | `char*` |  |
| `merchant_id` | `char*` |  |
| `original_transaction_id` | `char*` |  |
| `password` | `char*` |  |
| `response_code` | `char*` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `char*` |  |
| `transaction_id` | `char*` |  |
| `txtype` | `char*` |  |

#### Example: Create

```c
Entity* payment_manual = bluefintecsmerchantservices_payment_manual(client, NULL);
voxgig_value* payment_manual_rec = payment_manual->vt->create(payment_manual, cmap(5,
    "amount", v_num(1),  // int64_t
    "card_number", v_str("example_card_number"),  // char*
    "currency", v_str("example_currency"),  // char*
    "exp_date", v_str("example_exp_date"),  // char*
    "txtype", v_str("example_txtype"))  // char*
, NULL, &err);
```


### PaymentSred

Create an instance: `Entity* payment_sred = bluefintecsmerchantservices_payment_sred(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorization_number` | `char*` |  |
| `card_type` | `char*` |  |
| `currency` | `char*` |  |
| `date_time_tx` | `char*` |  |
| `device_payload` | `char*` |  |
| `merchant_id` | `char*` |  |
| `original_transaction_id` | `char*` |  |
| `password` | `char*` |  |
| `response_code` | `char*` |  |
| `response_message` | `char*` |  |
| `sred` | `voxgig_value* (map)` |  |
| `terminal_id` | `char*` |  |
| `transaction_id` | `char*` |  |
| `txtype` | `char*` |  |

#### Example: Create

```c
Entity* payment_sred = bluefintecsmerchantservices_payment_sred(client, NULL);
voxgig_value* payment_sred_rec = payment_sred->vt->create(payment_sred, cmap(4,
    "amount", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "device_payload", v_str("example_device_payload"),  // char*
    "txtype", v_str("example_txtype"))  // char*
, NULL, &err);
```


### PreAuthTransactionCompletion

Create an instance: `Entity* pre_auth_transaction_completion = bluefintecsmerchantservices_pre_auth_transaction_completion(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `char*` |  |
| `acquirer_name` | `char*` |  |
| `actual_bonus_point` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorization_code` | `char*` |  |
| `balance_amount` | `char*` |  |
| `card_brand` | `char*` |  |
| `card_number` | `char*` |  |
| `card_number_reference` | `char*` |  |
| `client_id` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `ec_data` | `char*` |  |
| `ecr_data` | `char*` |  |
| `emv_data` | `char*` |  |
| `exchange_fee` | `int64_t` |  |
| `exchange_rate` | `char*` |  |
| `language_code` | `char*` |  |
| `merchant_address` | `char*` |  |
| `merchant_name` | `char*` |  |
| `merchant_number` | `char*` |  |
| `message_type` | `char*` |  |
| `original_trace_number` | `int64_t` |  |
| `original_transaction_id` | `char*` |  |
| `password` | `char*` |  |
| `payment_reason` | `char*` |  |
| `receipt_footer` | `char*` |  |
| `receipt_header` | `char*` |  |
| `receipt_layout` | `int64_t` |  |
| `receipt_number` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `serial_number` | `char*` |  |
| `svc` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `char*` |  |
| `trace_number` | `int64_t` |  |
| `transaction_date` | `char*` |  |
| `transaction_id` | `char*` |  |
| `transaction_type` | `char*` |  |
| `tx_type` | `char*` |  |
| `user_data` | `char*` |  |

#### Example: Create

```c
Entity* pre_auth_transaction_completion = bluefintecsmerchantservices_pre_auth_transaction_completion(client, NULL);
voxgig_value* pre_auth_transaction_completion_rec = pre_auth_transaction_completion->vt->create(pre_auth_transaction_completion, cmap(6,
    "card_number_reference", v_str("example_card_number_reference"),  // char*
    "client_id", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receipt_number", v_str("example_receipt_number"),  // char*
    "terminal_id", v_num(1),  // int64_t
    "transaction_type", v_str("example_transaction_type"))  // char*
, NULL, &err);
```


### ReactivateTerminal

Create an instance: `Entity* reactivate_terminal = bluefintecsmerchantservices_reactivate_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `char*` |  |
| `package_order_uuid` | `char*` |  |
| `product_order_uuid` | `char*` |  |
| `reactivation_reason` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```c
Entity* reactivate_terminal = bluefintecsmerchantservices_reactivate_terminal(client, NULL);
voxgig_value* reactivate_terminal_rec = reactivate_terminal->vt->create(reactivate_terminal, cmap(2,
    "reactivation_reason", v_str("example_reactivation_reason"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```


### RefundTransaction

Create an instance: `Entity* refund_transaction = bluefintecsmerchantservices_refund_transaction(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `char*` |  |
| `acquirer_name` | `char*` |  |
| `actual_bonus_point` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorization_code` | `char*` |  |
| `balance_amount` | `char*` |  |
| `card_brand` | `char*` |  |
| `card_number` | `char*` |  |
| `client_id` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `ec_data` | `char*` |  |
| `ecr_data` | `char*` |  |
| `emv_data` | `char*` |  |
| `exchange_fee` | `int64_t` |  |
| `exchange_rate` | `char*` |  |
| `language_code` | `char*` |  |
| `merchant_address` | `char*` |  |
| `merchant_name` | `char*` |  |
| `merchant_number` | `char*` |  |
| `message_type` | `char*` |  |
| `original_trace_number` | `int64_t` |  |
| `original_transaction_id` | `char*` |  |
| `password` | `char*` |  |
| `payment_reason` | `char*` |  |
| `receipt_footer` | `char*` |  |
| `receipt_header` | `char*` |  |
| `receipt_layout` | `int64_t` |  |
| `receipt_number` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `serial_number` | `char*` |  |
| `svc` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `char*` |  |
| `trace_number` | `int64_t` |  |
| `transaction_date` | `char*` |  |
| `transaction_id` | `char*` |  |
| `tx_type` | `char*` |  |
| `user_data` | `char*` |  |

#### Example: Create

```c
Entity* refund_transaction = bluefintecsmerchantservices_refund_transaction(client, NULL);
voxgig_value* refund_transaction_rec = refund_transaction->vt->create(refund_transaction, cmap(4,
    "client_id", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receipt_number", v_str("example_receipt_number"),  // char*
    "terminal_id", v_num(1))  // int64_t
, NULL, &err);
```


### RegisterTecsCompany

Create an instance: `Entity* register_tecs_company = bluefintecsmerchantservices_register_tecs_company(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `char*` |  |
| `package_order_uuid` | `char*` |  |
| `partner_id` | `int64_t` |  |
| `partner_name` | `char*` |  |
| `product_order_uuid` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `template_name` | `char*` |  |

#### Example: Create

```c
Entity* register_tecs_company = bluefintecsmerchantservices_register_tecs_company(client, NULL);
voxgig_value* register_tecs_company_rec = register_tecs_company->vt->create(register_tecs_company, cmap(4,
    "corporate_uuid", v_str("example_corporate_uuid"),  // char*
    "package_order_uuid", v_str("example_package_order_uuid"),  // char*
    "product_order_uuid", v_str("example_product_order_uuid"),  // char*
    "template_name", v_str("example_template_name"))  // char*
, NULL, &err);
```


### RegisterTerminal

Create an instance: `Entity* register_terminal = bluefintecsmerchantservices_register_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `voxgig_value* (map)` |  |
| `corporate_uuid` | `char*` |  |
| `package_order_uuid` | `char*` |  |
| `product_order_uuid` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `tecs_web_secret_key` | `char*` |  |
| `template_name` | `char*` |  |
| `terminal_country_code` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_id_acq` | `char*` |  |
| `terminal_language_code` | `char*` |  |
| `terminal_location` | `char*` |  |
| `terminal_serial_number` | `char*` |  |
| `token_io_alia` | `char*` |  |
| `token_io_iban` | `char*` |  |
| `token_io_member_id` | `char*` |  |
| `web_shop_url` | `char*` |  |

#### Example: Create

```c
Entity* register_terminal = bluefintecsmerchantservices_register_terminal(client, NULL);
voxgig_value* register_terminal_rec = register_terminal->vt->create(register_terminal, cmap(7,
    "corporate_uuid", v_str("example_corporate_uuid"),  // char*
    "package_order_uuid", v_str("example_package_order_uuid"),  // char*
    "product_order_uuid", v_str("example_product_order_uuid"),  // char*
    "template_name", v_str("example_template_name"),  // char*
    "terminal_country_code", v_str("example_terminal_country_code"),  // char*
    "terminal_language_code", v_str("example_terminal_language_code"),  // char*
    "terminal_location", v_str("example_terminal_location"))  // char*
, NULL, &err);
```


### ReportData

Create an instance: `Entity* report_data = bluefintecsmerchantservices_report_data(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `voxgig_value* (list)` |  |
| `clearing_date_from` | `char*` |  |
| `clearing_date_to` | `char*` |  |
| `corporate_id` | `char*` |  |
| `currency` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `sum_over_credit_tx` | `voxgig_value* (map)` |  |
| `sum_over_debit_tx` | `voxgig_value* (map)` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```c
Entity* report_data = bluefintecsmerchantservices_report_data(client, NULL);
voxgig_value* report_data_rec = report_data->vt->create(report_data, cmap(4,
    "clearing_date_from", v_str("example_clearing_date_from"),  // char*
    "clearing_date_to", v_str("example_clearing_date_to"),  // char*
    "corporate_id", v_str("example_corporate_id"),  // char*
    "currency", v_str("example_currency"))  // char*
, NULL, &err);
```


### StatusTransaction

Create an instance: `Entity* status_transaction = bluefintecsmerchantservices_status_transaction(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `char*` |  |
| `acquirer_terminal_id` | `char*` |  |
| `amount` | `int64_t` |  |
| `application_cryptogram` | `char*` |  |
| `authorization_code` | `voxgig_value*` |  |
| `authorization_date` | `char*` |  |
| `card_brand` | `char*` |  |
| `card_entry` | `char*` |  |
| `card_expiration` | `char*` |  |
| `card_number` | `char*` |  |
| `clearing_amount` | `int64_t` |  |
| `clearing_batch_id` | `char*` |  |
| `clearing_currency` | `char*` |  |
| `clearing_date` | `char*` |  |
| `clearing_processed_date` | `char*` |  |
| `clearing_status` | `char*` |  |
| `client_id` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvm` | `char*` |  |
| `ecr_data` | `char*` |  |
| `emv_application_id` | `char*` |  |
| `emv_application_label` | `char*` |  |
| `merchant_name` | `char*` |  |
| `merchant_number` | `char*` |  |
| `original_client_id` | `char*` |  |
| `original_terminal_id` | `int64_t` |  |
| `original_transaction_id` | `char*` |  |
| `payment_reason` | `char*` |  |
| `receipt_number` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_code_from_a` | `char*` |  |
| `response_message` | `char*` |  |
| `retrieval_reference_number` | `char*` |  |
| `service_code` | `char*` |  |
| `settlement_status` | `char*` |  |
| `source_id` | `int64_t` |  |
| `tecsengine_response_code` | `int64_t` |  |
| `tecsengine_response_text` | `char*` |  |
| `terminal_end_of_day_date` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `char*` |  |
| `tip_amount` | `int64_t` |  |
| `trace_number` | `int64_t` |  |
| `transaction_clearing_date` | `char*` |  |
| `transaction_date` | `char*` |  |
| `transaction_id` | `char*` |  |
| `transaction_seq_number` | `int64_t` |  |
| `transaction_server_date` | `char*` |  |
| `transaction_source` | `char*` |  |
| `transaction_type` | `char*` |  |

#### Example: Create

```c
Entity* status_transaction = bluefintecsmerchantservices_status_transaction(client, NULL);
voxgig_value* status_transaction_rec = status_transaction->vt->create(status_transaction, NULL, NULL, &err);
```


### StoreTerminalParameter

Create an instance: `Entity* store_terminal_parameter = bluefintecsmerchantservices_store_terminal_parameter(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `voxgig_value* (map)` |  |
| `config_version` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `serial_number` | `char*` |  |
| `tid_sent` | `char*` |  |

#### Example: Create

```c
Entity* store_terminal_parameter = bluefintecsmerchantservices_store_terminal_parameter(client, NULL);
voxgig_value* store_terminal_parameter_rec = store_terminal_parameter->vt->create(store_terminal_parameter, cmap(1,
    "serial_number", v_str("example_serial_number"))  // char*
, NULL, &err);
```


### TerminalId

Create an instance: `Entity* terminal_id = bluefintecsmerchantservices_terminal_id(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `voxgig_value* (list)` |  |
| `duplicate_terminal_id` | `voxgig_value* (list)` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `terminal` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* terminal_id = bluefintecsmerchantservices_terminal_id(client, NULL);
voxgig_value* terminal_id_rec = terminal_id->vt->create(terminal_id, cmap(1,
    "device_serial_number", v_list())  // voxgig_value* (list)
, NULL, &err);
```


### TransactionHistory

Create an instance: `Entity* transaction_history = bluefintecsmerchantservices_transaction_history(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `char*` |  |
| `authorization_code` | `char*` |  |
| `card_brand` | `char*` |  |
| `clearing_amount_from` | `char*` |  |
| `clearing_amount_to` | `char*` |  |
| `clearing_currency` | `char*` |  |
| `clearing_status` | `char*` |  |
| `corporate_uuid` | `char*` |  |
| `order_by_transaction_date` | `char*` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `payment_token_public_id` | `char*` |  |
| `receipt_number` | `char*` |  |
| `referenced_transaction_id` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `retrieval_reference_number` | `char*` |  |
| `source_id` | `int64_t` |  |
| `tecsengine_response_code_from` | `char*` |  |
| `tecsengine_response_code_to` | `char*` |  |
| `terminal_id` | `int64_t` |  |
| `trace_number` | `char*` |  |
| `transaction_amount_from` | `char*` |  |
| `transaction_amount_to` | `char*` |  |
| `transaction_date_from` | `char*` |  |
| `transaction_date_to` | `char*` |  |
| `transaction_history` | `voxgig_value* (list)` |  |
| `transaction_id` | `char*` |  |
| `transaction_type` | `char*` |  |
| `wallet` | `char*` |  |

#### Example: Create

```c
Entity* transaction_history = bluefintecsmerchantservices_transaction_history(client, NULL);
voxgig_value* transaction_history_rec = transaction_history->vt->create(transaction_history, NULL, NULL, &err);
```


### TransactionsCount

Create an instance: `Entity* transactions_count = bluefintecsmerchantservices_transactions_count(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `transaction_date_from` | `char*` |  |
| `transaction_date_to` | `char*` |  |
| `transactions_count` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* transactions_count = bluefintecsmerchantservices_transactions_count(client, NULL);
voxgig_value* transactions_count_rec = transactions_count->vt->create(transactions_count, NULL, NULL, &err);
```


### TransactionsCountCardBrand

Create an instance: `Entity* transactions_count_card_brand = bluefintecsmerchantservices_transactions_count_card_brand(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `transaction_date_from` | `char*` |  |
| `transaction_date_to` | `char*` |  |
| `transactions_count` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* transactions_count_card_brand = bluefintecsmerchantservices_transactions_count_card_brand(client, NULL);
voxgig_value* transactions_count_card_brand_rec = transactions_count_card_brand->vt->create(transactions_count_card_brand, NULL, NULL, &err);
```


### TransactionsTurnover

Create an instance: `Entity* transactions_turnover = bluefintecsmerchantservices_transactions_turnover(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `transaction_date_from` | `char*` |  |
| `transaction_date_to` | `char*` |  |
| `turnover` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* transactions_turnover = bluefintecsmerchantservices_transactions_turnover(client, NULL);
voxgig_value* transactions_turnover_rec = transactions_turnover->vt->create(transactions_turnover, NULL, NULL, &err);
```


### UpdateMerchant

Create an instance: `Entity* update_merchant = bluefintecsmerchantservices_update_merchant(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `char*` |  |
| `corporate_uuid` | `char*` |  |
| `country` | `char*` |  |
| `merchant_category_code` | `char*` |  |
| `name` | `char*` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `state` | `char*` |  |
| `street` | `char*` |  |
| `vu_nummer` | `char*` |  |
| `zipcode` | `char*` |  |

#### Example: Create

```c
Entity* update_merchant = bluefintecsmerchantservices_update_merchant(client, NULL);
voxgig_value* update_merchant_rec = update_merchant->vt->create(update_merchant, cmap(1,
    "corporate_uuid", v_str("example_corporate_uuid"))  // char*
, NULL, &err);
```


### UpdateTemplateXml

Create an instance: `Entity* update_template_xml = bluefintecsmerchantservices_update_template_xml(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `char*` |  |
| `template_name` | `char*` |  |
| `template_xml` | `char*` |  |

#### Example: Create

```c
Entity* update_template_xml = bluefintecsmerchantservices_update_template_xml(client, NULL);
voxgig_value* update_template_xml_rec = update_template_xml->vt->create(update_template_xml, cmap(2,
    "template_name", v_str("example_template_name"),  // char*
    "template_xml", v_str("example_template_xml"))  // char*
, NULL, &err);
```


### Version

Create an instance: `Entity* version = bluefintecsmerchantservices_version(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `char*` |  |
| `build_date` | `char*` |  |
| `version` | `char*` |  |

#### Example: Load

```c
Entity* version = bluefintecsmerchantservices_version(client, NULL);
voxgig_value* version_rec = version->vt->load(version, NULL, NULL, &err);
```


## Advanced

> The sections above cover everyday use. The material below explains the
> SDK's internals — useful when extending it with custom features, but not
> needed for normal use.

### The operation pipeline

Every entity operation follows a six-stage pipeline. Each stage fires a
feature hook before executing:

```
PrePoint → PreSpec → PreRequest → PreResponse → PreResult → PreDone
```

- **PrePoint**: Resolves which API endpoint to call based on the
  operation name and entity configuration.
- **PreSpec**: Builds the HTTP spec — URL, method, headers, body —
  from the resolved point and the caller's parameters.
- **PreRequest**: Sends the HTTP request. Features can intercept here
  to replace the transport (as TestFeature does with mocks).
- **PreResponse**: Parses the raw HTTP response.
- **PreResult**: Extracts the business data from the parsed response.
- **PreDone**: Final stage before returning to the caller. Entity
  state (match, data) is updated here.

If any stage errors, the pipeline short-circuits and the error surfaces
to the caller — see [Error handling](#error-handling) for how that looks
in this language.

### Features and hooks

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as `voxgig_value*`

The C SDK uses a single dynamic `voxgig_value*` type throughout rather than
a typed struct per entity. `voxgig_value` is the vendored voxgig struct
port (a JSON-shaped tagged union: string, number, bool, list, map, null,
undef). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `cmap` / `clist` / `v_str` / `v_num` /
`v_bool` helper builders, and read fields back with `getp` (or the typed
`get_str` / `get_bool` / `to_int`); use `to_map` to safely coerce a
value to a map.

Memory follows a retain-heavy, never-free discipline — pipeline values are
never released. This is safe (no use-after-free) and leaks are acceptable
for the short-lived SDK and test binaries.

### Error handling

Fallible functions return a `voxgig_value*` (or a struct pointer) and take a
trailing `PNError** err` out-param. On success `*err` is left `NULL`; on
failure `*err` points to a heap `PNError` carrying `code` and `msg`.
Always initialise `PNError* err = NULL;` and branch on it after each call.

### Project structure

```
c/
├── core/          -- Pipeline types, config, client (client.c), api.h + sdk.h
├── entity/        -- Per-entity implementations (one .c each)
├── feature/       -- Built-in features (base, test, log, ...)
├── utility/       -- Utilities + the vendored voxgig struct port (utility/struct)
├── tests/         -- Test binaries (each a standalone main())
└── Makefile       -- Builds libsdk.a and runs every tests/*.c
```

The public entry header is `core/api.h` — it includes `core/sdk.h` (the
umbrella runtime header) and declares each entity's constructor and SDK
accessor. Include it and link against `libsdk.a`.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const digitalservicesapi = client.DigitalServicesApi()
await digitalservicesapi.load()

// digitalservicesapi.data() now returns the digitalservicesapi data from the last `load`
// digitalservicesapi.match() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
