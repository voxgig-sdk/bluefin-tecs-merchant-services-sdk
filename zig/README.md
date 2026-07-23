# BluefinTecsMerchantServices Zig SDK



The Zig SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Zig conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.cancel_transaction(h.vnull())` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
Zig has no central package registry, so this package is distributed as a
git tag (`zig/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)). Add it to
your `build.zig.zon` dependencies, or build from a source checkout:

```bash
cd zig && zig build
```

To depend on it from another project, add the tagged archive to
`build.zig.zon`:

```zig
.dependencies = .{
    .sdk = .{
        .url = "<repo-url>/archive/refs/tags/zig/vX.Y.Z.tar.gz",
        // .hash = "...", // filled in by `zig fetch`
    },
},
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```zig
const std = @import("std");
const sdk = @import("sdk");
const h = sdk.h;

const client = sdk.BluefinTecsMerchantServicesSDK.new(h.jo(&.{
    .{ "apikey", h.vstr(std.posix.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY") orelse "") },
}));
```

### 4. Create, update, and remove

```zig
// Create — .ok carries the created record
switch (client.cancel_transaction(h.vnull()).create(h.jo(&.{.{ "client_id", h.vnum(1) }, .{ "currency", h.vstr("example_currency") }, .{ "receipt_number", h.vstr("example_receipt_number") }, .{ "terminal_id", h.vnum(1) }}), h.vnull())) {
    .ok => |created| std.debug.print("{s}\n", .{h.stringify(created)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}

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

For endpoints not covered by entity methods:

```zig
const result = client.direct(h.jo(&.{
    .{ "path", h.vstr("/api/resource/{id}") },
    .{ "method", h.vstr("GET") },
    .{ "params", h.jo(&.{.{ "id", h.vstr("example") }}) },
}));

if (h.get_bool(result, "ok") orelse false) {
    std.debug.print("{d}\n", .{h.to_int(h.getp(result, "status"))}); // 200
    std.debug.print("{s}\n", .{h.stringify(h.getp(result, "data"))}); // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    std.debug.print("{s}\n", .{h.get_str(result, "err") orelse ""});
}
```

### Prepare a request without sending it

```zig
// prepare() returns the fetch definition (an error union — use `catch`/`try`).
const fetchdef = client.prepare(h.jo(&.{
    .{ "path", h.vstr("/api/resource/{id}") },
    .{ "method", h.vstr("DELETE") },
    .{ "params", h.jo(&.{.{ "id", h.vstr("example") }}) },
})) catch unreachable;

std.debug.print("{s}\n", .{h.get_str(fetchdef, "url") orelse ""});
std.debug.print("{s}\n", .{h.get_str(fetchdef, "method") orelse ""});
std.debug.print("{s}\n", .{h.stringify(h.getp(fetchdef, "headers"))});
```

### Use test mode

Create a mock client for unit testing — no server required:

```zig
const client = sdk.test_sdk(h.vnull(), h.vnull());

// Entity ops return an OpResult — .ok carries the record, .err the error.
switch (client.digital_services_api(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |digital_services_api| std.debug.print("{s}\n", .{h.stringify(digital_services_api)}), // the mock record
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Point at a different server

Override the base URL to reach a local or staging server:

```zig
const client = sdk.BluefinTecsMerchantServicesSDK.new(h.jo(&.{
    .{ "base", h.vstr("http://localhost:8080") },
}));
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd zig && zig build test
```


## Reference

### BluefinTecsMerchantServicesSDK

```zig
const sdk = @import("sdk");
const h = sdk.h;

const client = sdk.BluefinTecsMerchantServicesSDK.new(options);
```

Creates a new SDK client. `options` is a `Value` map (`h.vnull()` for
none) carrying any of the following keys:

| Option | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `system` | `map` | System overrides (e.g. a custom fetcher). |

### test_sdk

```zig
const client = sdk.test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`h.vnull()`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() Value` | Deep copy of the current SDK options. |
| `get_utility` | `() *Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs: Value) E!Value` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs: Value) Value` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `cancel_transaction` | `(entopts: Value) *CancelTransactionEntity` | Create a CancelTransaction entity instance. |
| `check_card_black_listed` | `(entopts: Value) *CheckCardBlackListedEntity` | Create a CheckCardBlackListed entity instance. |
| `create_product` | `(entopts: Value) *CreateProductEntity` | Create a CreateProduct entity instance. |
| `deactivate_terminal` | `(entopts: Value) *DeactivateTerminalEntity` | Create a DeactivateTerminal entity instance. |
| `digital_services_api` | `(entopts: Value) *DigitalServicesApiEntity` | Create a DigitalServicesApi entity instance. |
| `ec_data_ecom` | `(entopts: Value) *EcDataEcomEntity` | Create an EcDataEcom entity instance. |
| `ecom_parameter` | `(entopts: Value) *EcomParameterEntity` | Create an EcomParameter entity instance. |
| `ecr_data` | `(entopts: Value) *EcrDataEntity` | Create an EcrData entity instance. |
| `emv_data` | `(entopts: Value) *EmvDataEntity` | Create an EmvData entity instance. |
| `enable_acquiring` | `(entopts: Value) *EnableAcquiringEntity` | Create an EnableAcquiring entity instance. |
| `get_merchant_contract_number` | `(entopts: Value) *GetMerchantContractNumberEntity` | Create a GetMerchantContractNumber entity instance. |
| `get_template_xml` | `(entopts: Value) *GetTemplateXmlEntity` | Create a GetTemplateXml entity instance. |
| `introduce_mandator` | `(entopts: Value) *IntroduceMandatorEntity` | Create an IntroduceMandator entity instance. |
| `introduce_package` | `(entopts: Value) *IntroducePackageEntity` | Create an IntroducePackage entity instance. |
| `keep_alive` | `(entopts: Value) *KeepAliveEntity` | Create a KeepAlive entity instance. |
| `list_terminal` | `(entopts: Value) *ListTerminalEntity` | Create a ListTerminal entity instance. |
| `mandator_clearing_export` | `(entopts: Value) *MandatorClearingExportEntity` | Create a MandatorClearingExport entity instance. |
| `mandator_clearing_export_download` | `(entopts: Value) *MandatorClearingExportDownloadEntity` | Create a MandatorClearingExportDownload entity instance. |
| `mandator_clearing_export_summary` | `(entopts: Value) *MandatorClearingExportSummaryEntity` | Create a MandatorClearingExportSummary entity instance. |
| `merchant_portal_services_api` | `(entopts: Value) *MerchantPortalServicesApiEntity` | Create a MerchantPortalServicesApi entity instance. |
| `move_tid` | `(entopts: Value) *MoveTidEntity` | Create a MoveTid entity instance. |
| `payment_manual` | `(entopts: Value) *PaymentManualEntity` | Create a PaymentManual entity instance. |
| `payment_sred` | `(entopts: Value) *PaymentSredEntity` | Create a PaymentSred entity instance. |
| `pre_auth_transaction_completion` | `(entopts: Value) *PreAuthTransactionCompletionEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivate_terminal` | `(entopts: Value) *ReactivateTerminalEntity` | Create a ReactivateTerminal entity instance. |
| `refund_transaction` | `(entopts: Value) *RefundTransactionEntity` | Create a RefundTransaction entity instance. |
| `register_tecs_company` | `(entopts: Value) *RegisterTecsCompanyEntity` | Create a RegisterTecsCompany entity instance. |
| `register_terminal` | `(entopts: Value) *RegisterTerminalEntity` | Create a RegisterTerminal entity instance. |
| `report_data` | `(entopts: Value) *ReportDataEntity` | Create a ReportData entity instance. |
| `status_transaction` | `(entopts: Value) *StatusTransactionEntity` | Create a StatusTransaction entity instance. |
| `store_terminal_parameter` | `(entopts: Value) *StoreTerminalParameterEntity` | Create a StoreTerminalParameter entity instance. |
| `terminal_id` | `(entopts: Value) *TerminalIdEntity` | Create a TerminalId entity instance. |
| `transaction_history` | `(entopts: Value) *TransactionHistoryEntity` | Create a TransactionHistory entity instance. |
| `transactions_count` | `(entopts: Value) *TransactionsCountEntity` | Create a TransactionsCount entity instance. |
| `transactions_count_card_brand` | `(entopts: Value) *TransactionsCountCardBrandEntity` | Create a TransactionsCountCardBrand entity instance. |
| `transactions_turnover` | `(entopts: Value) *TransactionsTurnoverEntity` | Create a TransactionsTurnover entity instance. |
| `update_merchant` | `(entopts: Value) *UpdateMerchantEntity` | Create an UpdateMerchant entity instance. |
| `update_template_xml` | `(entopts: Value) *UpdateTemplateXmlEntity` | Create an UpdateTemplateXml entity instance. |
| `version` | `(entopts: Value) *VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch: Value, ctrl: Value) OpResult` | Load a single entity by match criteria. |
| `create` | `(reqdata: Value, ctrl: Value) OpResult` | Create a new entity. |
| `stream` | `(action: []const u8, args: Value, callopts: Value) []Value` | Run an op through the pipeline and materialise its result items. |
| `data` | `(args: ?Value) Value` | Get entity data (pass a map to set). |
| `matchv` | `(args: ?Value) Value` | Get entity match criteria (pass a map to set). |
| `get_name` | `() []const u8` | Return the entity name. |

### Result shape

Entity operations return an `OpResult` union — `switch` on it: `.ok`
carries the bare result data (a `Value` object for single-entity ops, a
`Value` array for `list`), `.err` carries the branded error pointer.

The `direct()` escape hatch returns a result `Value` map directly (no
error union) — even on a non-2xx response — that you branch on via
`h.get_bool(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `number` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` carries the error message.

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

Create an instance: `const cancel_transaction = client.cancel_transaction(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `[]const u8` |  |
| `acquirer_name` | `[]const u8` |  |
| `actual_bonus_point` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorization_code` | `[]const u8` |  |
| `balance_amount` | `[]const u8` |  |
| `card_brand` | `[]const u8` |  |
| `card_number` | `[]const u8` |  |
| `client_id` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `ec_data` | `[]const u8` |  |
| `ecr_data` | `[]const u8` |  |
| `emv_data` | `[]const u8` |  |
| `exchange_fee` | `i64` |  |
| `exchange_rate` | `[]const u8` |  |
| `language_code` | `[]const u8` |  |
| `merchant_address` | `[]const u8` |  |
| `merchant_name` | `[]const u8` |  |
| `merchant_number` | `[]const u8` |  |
| `message_type` | `[]const u8` |  |
| `original_trace_number` | `i64` |  |
| `original_transaction_id` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `payment_reason` | `[]const u8` |  |
| `receipt_footer` | `[]const u8` |  |
| `receipt_header` | `[]const u8` |  |
| `receipt_layout` | `i64` |  |
| `receipt_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `serial_number` | `[]const u8` |  |
| `svc` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `[]const u8` |  |
| `trace_number` | `i64` |  |
| `transaction_date` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `tx_type` | `[]const u8` |  |
| `user_data` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.cancel_transaction(h.vnull()).create(h.jo(&.{
    .{ "client_id", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receipt_number", h.vstr("example_receipt_number") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |cancel_transaction| std.debug.print("{s}\n", .{h.stringify(cancel_transaction)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### CheckCardBlackListed

Create an instance: `const check_card_black_listed = client.check_card_black_listed(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.check_card_black_listed(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |check_card_black_listed| std.debug.print("{s}\n", .{h.stringify(check_card_black_listed)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### CreateProduct

Create an instance: `const create_product = client.create_product(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `i64` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `template_name` | `[]const u8` |  |
| `template_type` | `[]const u8` |  |
| `template_xml` | `[]const u8` |  |
| `terminal_type` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.create_product(h.vnull()).create(h.jo(&.{
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
    .{ "template_type", h.vstr("example_template_type") }, // []const u8
    .{ "template_xml", h.vstr("example_template_xml") }, // []const u8
    .{ "terminal_type", h.vstr("example_terminal_type") }, // []const u8
}), h.vnull())) {
    .ok => |create_product| std.debug.print("{s}\n", .{h.stringify(create_product)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### DeactivateTerminal

Create an instance: `const deactivate_terminal = client.deactivate_terminal(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `[]const u8` |  |
| `deactivation_reason` | `[]const u8` |  |
| `package_order_uuid` | `[]const u8` |  |
| `product_order_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```zig
switch (client.deactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "deactivation_reason", h.vstr("example_deactivation_reason") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |deactivate_terminal| std.debug.print("{s}\n", .{h.stringify(deactivate_terminal)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### DigitalServicesApi

Create an instance: `const digital_services_api = client.digital_services_api(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `[]const u8` |  |
| `clearing_date_to` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `tx_count` | `i64` |  |
| `tx_id_end` | `[]const u8` |  |
| `tx_id_start` | `[]const u8` |  |
| `tx_seq_no_end` | `i64` |  |
| `tx_seq_no_start` | `i64` |  |
| `tx_total` | `i64` |  |

#### Example: Load

```zig
switch (client.digital_services_api(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |digital_services_api| std.debug.print("{s}\n", .{h.stringify(digital_services_api)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

#### Example: Create

```zig
switch (client.digital_services_api(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |digital_services_api| std.debug.print("{s}\n", .{h.stringify(digital_services_api)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### EcDataEcom

Create an instance: `const ec_data_ecom = client.ec_data_ecom(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.ec_data_ecom(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_id", h.vstr("example_transaction_id") }, // []const u8
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |ec_data_ecom| std.debug.print("{s}\n", .{h.stringify(ec_data_ecom)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### EcomParameter

Create an instance: `const ecom_parameter = client.ecom_parameter(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `[]const u8` |  |
| `ecom_skey` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```zig
switch (client.ecom_parameter(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |ecom_parameter| std.debug.print("{s}\n", .{h.stringify(ecom_parameter)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### EcrData

Create an instance: `const ecr_data = client.ecr_data(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.ecr_data(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_id", h.vstr("example_transaction_id") }, // []const u8
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |ecr_data| std.debug.print("{s}\n", .{h.stringify(ecr_data)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### EmvData

Create an instance: `const emv_data = client.emv_data(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.emv_data(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_id", h.vstr("example_transaction_id") }, // []const u8
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |emv_data| std.debug.print("{s}\n", .{h.stringify(emv_data)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### EnableAcquiring

Create an instance: `const enable_acquiring = client.enable_acquiring(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `i64` |  |
| `additional_data` | `Value (object)` |  |
| `corporate_uuid` | `[]const u8` |  |
| `currency` | `[]const u8` |  |
| `merchant_category_code` | `i64` |  |
| `package_order_uuid` | `[]const u8` |  |
| `product_order_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `sorting_code` | `i64` |  |
| `template_name` | `[]const u8` |  |
| `terminal_id` | `Value (array)` |  |
| `terminal_id_acq` | `[]const u8` |  |
| `vu_nummer` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.enable_acquiring(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "merchant_category_code", h.vnum(1) }, // i64
    .{ "package_order_uuid", h.vstr("example_package_order_uuid") }, // []const u8
    .{ "product_order_uuid", h.vstr("example_product_order_uuid") }, // []const u8
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
}), h.vnull())) {
    .ok => |enable_acquiring| std.debug.print("{s}\n", .{h.stringify(enable_acquiring)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### GetMerchantContractNumber

Create an instance: `const get_merchant_contract_number = client.get_merchant_contract_number(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.get_merchant_contract_number(h.vnull()).create(h.jo(&.{
    .{ "merchant_contract_number", h.vstr("example_merchant_contract_number") }, // []const u8
}), h.vnull())) {
    .ok => |get_merchant_contract_number| std.debug.print("{s}\n", .{h.stringify(get_merchant_contract_number)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### GetTemplateXml

Create an instance: `const get_template_xml = client.get_template_xml(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `template_name` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.get_template_xml(h.vnull()).create(h.jo(&.{
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
}), h.vnull())) {
    .ok => |get_template_xml| std.debug.print("{s}\n", .{h.stringify(get_template_xml)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### IntroduceMandator

Create an instance: `const introduce_mandator = client.introduce_mandator(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.introduce_mandator(h.vnull()).create(h.jo(&.{
    .{ "mandator_name", h.vstr("example_mandator_name") }, // []const u8
}), h.vnull())) {
    .ok => |introduce_mandator| std.debug.print("{s}\n", .{h.stringify(introduce_mandator)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### IntroducePackage

Create an instance: `const introduce_package = client.introduce_package(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_template_description` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.introduce_package(h.vnull()).create(h.jo(&.{
    .{ "terminal_template_description", h.vstr("example_terminal_template_description") }, // []const u8
}), h.vnull())) {
    .ok => |introduce_package| std.debug.print("{s}\n", .{h.stringify(introduce_package)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### KeepAlive

Create an instance: `const keep_alive = client.keep_alive(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `[]const u8` |  |
| `ka_date_time_from` | `[]const u8` |  |
| `ka_date_time_to` | `[]const u8` |  |
| `keep_alive_data` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_date_time_from` | `[]const u8` |  |
| `terminal_date_time_to` | `[]const u8` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```zig
switch (client.keep_alive(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |keep_alive| std.debug.print("{s}\n", .{h.stringify(keep_alive)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### ListTerminal

Create an instance: `const list_terminal = client.list_terminal(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `Value (array)` |  |
| `filter` | `Value (object)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.list_terminal(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |list_terminal| std.debug.print("{s}\n", .{h.stringify(list_terminal)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### MandatorClearingExport

Create an instance: `const mandator_clearing_export = client.mandator_clearing_export(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `[]const u8` |  |
| `clearing_date_to` | `[]const u8` |  |
| `pagination` | `Value (object)` |  |
| `record` | `Value (array)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.mandator_clearing_export(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
}), h.vnull())) {
    .ok => |mandator_clearing_export| std.debug.print("{s}\n", .{h.stringify(mandator_clearing_export)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### MandatorClearingExportDownload

Create an instance: `const mandator_clearing_export_download = client.mandator_clearing_export_download(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `[]const u8` |  |
| `clearing_date_to` | `[]const u8` |  |
| `file_id` | `[]const u8` |  |
| `filename_template` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `status` | `[]const u8` |  |

#### Example: Load

```zig
switch (client.mandator_clearing_export_download(h.vnull()).load(h.jo(&.{.{ "id", h.vstr("mandator_clearing_export_download_id") }}), h.vnull())) {
    .ok => |mandator_clearing_export_download| std.debug.print("{s}\n", .{h.stringify(mandator_clearing_export_download)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

#### Example: Create

```zig
switch (client.mandator_clearing_export_download(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
}), h.vnull())) {
    .ok => |mandator_clearing_export_download| std.debug.print("{s}\n", .{h.stringify(mandator_clearing_export_download)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### MandatorClearingExportSummary

Create an instance: `const mandator_clearing_export_summary = client.mandator_clearing_export_summary(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `[]const u8` |  |
| `clearing_date_to` | `[]const u8` |  |
| `record` | `Value (array)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.mandator_clearing_export_summary(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
}), h.vnull())) {
    .ok => |mandator_clearing_export_summary| std.debug.print("{s}\n", .{h.stringify(mandator_clearing_export_summary)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### MerchantPortalServicesApi

Create an instance: `const merchant_portal_services_api = client.merchant_portal_services_api(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `[]const u8` |  |
| `authorization_code` | `[]const u8` |  |
| `card_brand` | `[]const u8` |  |
| `clearing_amount_from` | `[]const u8` |  |
| `clearing_amount_to` | `[]const u8` |  |
| `clearing_currency` | `[]const u8` |  |
| `clearing_status` | `[]const u8` |  |
| `corporate_uuid` | `[]const u8` |  |
| `order_by_transaction_date` | `[]const u8` |  |
| `pagination` | `Value (object)` |  |
| `receipt_number` | `[]const u8` |  |
| `referenced_transaction_id` | `[]const u8` |  |
| `retrieval_reference_number` | `[]const u8` |  |
| `source_id` | `i64` |  |
| `tecsengine_response_code_from` | `[]const u8` |  |
| `tecsengine_response_code_to` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `trace_number` | `[]const u8` |  |
| `transaction_amount_from` | `[]const u8` |  |
| `transaction_amount_to` | `[]const u8` |  |
| `transaction_date_from` | `[]const u8` |  |
| `transaction_date_to` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |
| `wallet` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.merchant_portal_services_api(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |merchant_portal_services_api| std.debug.print("{s}\n", .{h.stringify(merchant_portal_services_api)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### MoveTid

Create an instance: `const move_tid = client.move_tid(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `Value (array)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `target_packageorderuuid` | `[]const u8` |  |
| `target_productorderuuid` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.move_tid(h.vnull()).create(h.jo(&.{
    .{ "productorderuuid", h.olist() }, // Value (array)
}), h.vnull())) {
    .ok => |move_tid| std.debug.print("{s}\n", .{h.stringify(move_tid)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### PaymentManual

Create an instance: `const payment_manual = client.payment_manual(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorization_number` | `[]const u8` |  |
| `card_number` | `[]const u8` |  |
| `card_type` | `[]const u8` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `date_time_tx` | `[]const u8` |  |
| `exp_date` | `[]const u8` |  |
| `merchant_id` | `[]const u8` |  |
| `original_transaction_id` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `response_code` | `[]const u8` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `txtype` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.payment_manual(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "card_number", h.vstr("example_card_number") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "exp_date", h.vstr("example_exp_date") }, // []const u8
    .{ "txtype", h.vstr("example_txtype") }, // []const u8
}), h.vnull())) {
    .ok => |payment_manual| std.debug.print("{s}\n", .{h.stringify(payment_manual)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### PaymentSred

Create an instance: `const payment_sred = client.payment_sred(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorization_number` | `[]const u8` |  |
| `card_type` | `[]const u8` |  |
| `currency` | `[]const u8` |  |
| `date_time_tx` | `[]const u8` |  |
| `device_payload` | `[]const u8` |  |
| `merchant_id` | `[]const u8` |  |
| `original_transaction_id` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `response_code` | `[]const u8` |  |
| `response_message` | `[]const u8` |  |
| `sred` | `Value (object)` |  |
| `terminal_id` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `txtype` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.payment_sred(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "device_payload", h.vstr("example_device_payload") }, // []const u8
    .{ "txtype", h.vstr("example_txtype") }, // []const u8
}), h.vnull())) {
    .ok => |payment_sred| std.debug.print("{s}\n", .{h.stringify(payment_sred)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### PreAuthTransactionCompletion

Create an instance: `const pre_auth_transaction_completion = client.pre_auth_transaction_completion(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `[]const u8` |  |
| `acquirer_name` | `[]const u8` |  |
| `actual_bonus_point` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorization_code` | `[]const u8` |  |
| `balance_amount` | `[]const u8` |  |
| `card_brand` | `[]const u8` |  |
| `card_number` | `[]const u8` |  |
| `card_number_reference` | `[]const u8` |  |
| `client_id` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `ec_data` | `[]const u8` |  |
| `ecr_data` | `[]const u8` |  |
| `emv_data` | `[]const u8` |  |
| `exchange_fee` | `i64` |  |
| `exchange_rate` | `[]const u8` |  |
| `language_code` | `[]const u8` |  |
| `merchant_address` | `[]const u8` |  |
| `merchant_name` | `[]const u8` |  |
| `merchant_number` | `[]const u8` |  |
| `message_type` | `[]const u8` |  |
| `original_trace_number` | `i64` |  |
| `original_transaction_id` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `payment_reason` | `[]const u8` |  |
| `receipt_footer` | `[]const u8` |  |
| `receipt_header` | `[]const u8` |  |
| `receipt_layout` | `i64` |  |
| `receipt_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `serial_number` | `[]const u8` |  |
| `svc` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `[]const u8` |  |
| `trace_number` | `i64` |  |
| `transaction_date` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |
| `tx_type` | `[]const u8` |  |
| `user_data` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.pre_auth_transaction_completion(h.vnull()).create(h.jo(&.{
    .{ "card_number_reference", h.vstr("example_card_number_reference") }, // []const u8
    .{ "client_id", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receipt_number", h.vstr("example_receipt_number") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |pre_auth_transaction_completion| std.debug.print("{s}\n", .{h.stringify(pre_auth_transaction_completion)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### ReactivateTerminal

Create an instance: `const reactivate_terminal = client.reactivate_terminal(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `[]const u8` |  |
| `package_order_uuid` | `[]const u8` |  |
| `product_order_uuid` | `[]const u8` |  |
| `reactivation_reason` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```zig
switch (client.reactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "reactivation_reason", h.vstr("example_reactivation_reason") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |reactivate_terminal| std.debug.print("{s}\n", .{h.stringify(reactivate_terminal)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### RefundTransaction

Create an instance: `const refund_transaction = client.refund_transaction(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `[]const u8` |  |
| `acquirer_name` | `[]const u8` |  |
| `actual_bonus_point` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorization_code` | `[]const u8` |  |
| `balance_amount` | `[]const u8` |  |
| `card_brand` | `[]const u8` |  |
| `card_number` | `[]const u8` |  |
| `client_id` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `ec_data` | `[]const u8` |  |
| `ecr_data` | `[]const u8` |  |
| `emv_data` | `[]const u8` |  |
| `exchange_fee` | `i64` |  |
| `exchange_rate` | `[]const u8` |  |
| `language_code` | `[]const u8` |  |
| `merchant_address` | `[]const u8` |  |
| `merchant_name` | `[]const u8` |  |
| `merchant_number` | `[]const u8` |  |
| `message_type` | `[]const u8` |  |
| `original_trace_number` | `i64` |  |
| `original_transaction_id` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `payment_reason` | `[]const u8` |  |
| `receipt_footer` | `[]const u8` |  |
| `receipt_header` | `[]const u8` |  |
| `receipt_layout` | `i64` |  |
| `receipt_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `serial_number` | `[]const u8` |  |
| `svc` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `[]const u8` |  |
| `trace_number` | `i64` |  |
| `transaction_date` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `tx_type` | `[]const u8` |  |
| `user_data` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.refund_transaction(h.vnull()).create(h.jo(&.{
    .{ "client_id", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receipt_number", h.vstr("example_receipt_number") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |refund_transaction| std.debug.print("{s}\n", .{h.stringify(refund_transaction)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### RegisterTecsCompany

Create an instance: `const register_tecs_company = client.register_tecs_company(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `[]const u8` |  |
| `package_order_uuid` | `[]const u8` |  |
| `partner_id` | `i64` |  |
| `partner_name` | `[]const u8` |  |
| `product_order_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `template_name` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.register_tecs_company(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
    .{ "package_order_uuid", h.vstr("example_package_order_uuid") }, // []const u8
    .{ "product_order_uuid", h.vstr("example_product_order_uuid") }, // []const u8
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
}), h.vnull())) {
    .ok => |register_tecs_company| std.debug.print("{s}\n", .{h.stringify(register_tecs_company)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### RegisterTerminal

Create an instance: `const register_terminal = client.register_terminal(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `Value (object)` |  |
| `corporate_uuid` | `[]const u8` |  |
| `package_order_uuid` | `[]const u8` |  |
| `product_order_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `tecs_web_secret_key` | `[]const u8` |  |
| `template_name` | `[]const u8` |  |
| `terminal_country_code` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `terminal_id_acq` | `[]const u8` |  |
| `terminal_language_code` | `[]const u8` |  |
| `terminal_location` | `[]const u8` |  |
| `terminal_serial_number` | `[]const u8` |  |
| `token_io_alia` | `[]const u8` |  |
| `token_io_iban` | `[]const u8` |  |
| `token_io_member_id` | `[]const u8` |  |
| `web_shop_url` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.register_terminal(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
    .{ "package_order_uuid", h.vstr("example_package_order_uuid") }, // []const u8
    .{ "product_order_uuid", h.vstr("example_product_order_uuid") }, // []const u8
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
    .{ "terminal_country_code", h.vstr("example_terminal_country_code") }, // []const u8
    .{ "terminal_language_code", h.vstr("example_terminal_language_code") }, // []const u8
    .{ "terminal_location", h.vstr("example_terminal_location") }, // []const u8
}), h.vnull())) {
    .ok => |register_terminal| std.debug.print("{s}\n", .{h.stringify(register_terminal)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### ReportData

Create an instance: `const report_data = client.report_data(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `Value (array)` |  |
| `clearing_date_from` | `[]const u8` |  |
| `clearing_date_to` | `[]const u8` |  |
| `corporate_id` | `[]const u8` |  |
| `currency` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `sum_over_credit_tx` | `Value (object)` |  |
| `sum_over_debit_tx` | `Value (object)` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```zig
switch (client.report_data(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
    .{ "corporate_id", h.vstr("example_corporate_id") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
}), h.vnull())) {
    .ok => |report_data| std.debug.print("{s}\n", .{h.stringify(report_data)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### StatusTransaction

Create an instance: `const status_transaction = client.status_transaction(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `[]const u8` |  |
| `acquirer_terminal_id` | `[]const u8` |  |
| `amount` | `i64` |  |
| `application_cryptogram` | `[]const u8` |  |
| `authorization_code` | `Value` |  |
| `authorization_date` | `[]const u8` |  |
| `card_brand` | `[]const u8` |  |
| `card_entry` | `[]const u8` |  |
| `card_expiration` | `[]const u8` |  |
| `card_number` | `[]const u8` |  |
| `clearing_amount` | `i64` |  |
| `clearing_batch_id` | `[]const u8` |  |
| `clearing_currency` | `[]const u8` |  |
| `clearing_date` | `[]const u8` |  |
| `clearing_processed_date` | `[]const u8` |  |
| `clearing_status` | `[]const u8` |  |
| `client_id` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvm` | `[]const u8` |  |
| `ecr_data` | `[]const u8` |  |
| `emv_application_id` | `[]const u8` |  |
| `emv_application_label` | `[]const u8` |  |
| `merchant_name` | `[]const u8` |  |
| `merchant_number` | `[]const u8` |  |
| `original_client_id` | `[]const u8` |  |
| `original_terminal_id` | `i64` |  |
| `original_transaction_id` | `[]const u8` |  |
| `payment_reason` | `[]const u8` |  |
| `receipt_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_code_from_a` | `[]const u8` |  |
| `response_message` | `[]const u8` |  |
| `retrieval_reference_number` | `[]const u8` |  |
| `service_code` | `[]const u8` |  |
| `settlement_status` | `[]const u8` |  |
| `source_id` | `i64` |  |
| `tecsengine_response_code` | `i64` |  |
| `tecsengine_response_text` | `[]const u8` |  |
| `terminal_end_of_day_date` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `[]const u8` |  |
| `tip_amount` | `i64` |  |
| `trace_number` | `i64` |  |
| `transaction_clearing_date` | `[]const u8` |  |
| `transaction_date` | `[]const u8` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_seq_number` | `i64` |  |
| `transaction_server_date` | `[]const u8` |  |
| `transaction_source` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.status_transaction(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |status_transaction| std.debug.print("{s}\n", .{h.stringify(status_transaction)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### StoreTerminalParameter

Create an instance: `const store_terminal_parameter = client.store_terminal_parameter(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `Value (object)` |  |
| `config_version` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `serial_number` | `[]const u8` |  |
| `tid_sent` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.store_terminal_parameter(h.vnull()).create(h.jo(&.{
    .{ "serial_number", h.vstr("example_serial_number") }, // []const u8
}), h.vnull())) {
    .ok => |store_terminal_parameter| std.debug.print("{s}\n", .{h.stringify(store_terminal_parameter)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### TerminalId

Create an instance: `const terminal_id = client.terminal_id(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `Value (array)` |  |
| `duplicate_terminal_id` | `Value (array)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `terminal` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.terminal_id(h.vnull()).create(h.jo(&.{
    .{ "device_serial_number", h.olist() }, // Value (array)
}), h.vnull())) {
    .ok => |terminal_id| std.debug.print("{s}\n", .{h.stringify(terminal_id)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### TransactionHistory

Create an instance: `const transaction_history = client.transaction_history(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `[]const u8` |  |
| `authorization_code` | `[]const u8` |  |
| `card_brand` | `[]const u8` |  |
| `clearing_amount_from` | `[]const u8` |  |
| `clearing_amount_to` | `[]const u8` |  |
| `clearing_currency` | `[]const u8` |  |
| `clearing_status` | `[]const u8` |  |
| `corporate_uuid` | `[]const u8` |  |
| `order_by_transaction_date` | `[]const u8` |  |
| `pagination` | `Value (object)` |  |
| `payment_token_public_id` | `[]const u8` |  |
| `receipt_number` | `[]const u8` |  |
| `referenced_transaction_id` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `retrieval_reference_number` | `[]const u8` |  |
| `source_id` | `i64` |  |
| `tecsengine_response_code_from` | `[]const u8` |  |
| `tecsengine_response_code_to` | `[]const u8` |  |
| `terminal_id` | `i64` |  |
| `trace_number` | `[]const u8` |  |
| `transaction_amount_from` | `[]const u8` |  |
| `transaction_amount_to` | `[]const u8` |  |
| `transaction_date_from` | `[]const u8` |  |
| `transaction_date_to` | `[]const u8` |  |
| `transaction_history` | `Value (array)` |  |
| `transaction_id` | `[]const u8` |  |
| `transaction_type` | `[]const u8` |  |
| `wallet` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.transaction_history(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |transaction_history| std.debug.print("{s}\n", .{h.stringify(transaction_history)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### TransactionsCount

Create an instance: `const transactions_count = client.transactions_count(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `transaction_date_from` | `[]const u8` |  |
| `transaction_date_to` | `[]const u8` |  |
| `transactions_count` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.transactions_count(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |transactions_count| std.debug.print("{s}\n", .{h.stringify(transactions_count)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### TransactionsCountCardBrand

Create an instance: `const transactions_count_card_brand = client.transactions_count_card_brand(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `transaction_date_from` | `[]const u8` |  |
| `transaction_date_to` | `[]const u8` |  |
| `transactions_count` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.transactions_count_card_brand(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |transactions_count_card_brand| std.debug.print("{s}\n", .{h.stringify(transactions_count_card_brand)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### TransactionsTurnover

Create an instance: `const transactions_turnover = client.transactions_turnover(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `transaction_date_from` | `[]const u8` |  |
| `transaction_date_to` | `[]const u8` |  |
| `turnover` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.transactions_turnover(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |transactions_turnover| std.debug.print("{s}\n", .{h.stringify(transactions_turnover)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### UpdateMerchant

Create an instance: `const update_merchant = client.update_merchant(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `[]const u8` |  |
| `corporate_uuid` | `[]const u8` |  |
| `country` | `[]const u8` |  |
| `merchant_category_code` | `[]const u8` |  |
| `name` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `state` | `[]const u8` |  |
| `street` | `[]const u8` |  |
| `vu_nummer` | `[]const u8` |  |
| `zipcode` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.update_merchant(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
}), h.vnull())) {
    .ok => |update_merchant| std.debug.print("{s}\n", .{h.stringify(update_merchant)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### UpdateTemplateXml

Create an instance: `const update_template_xml = client.update_template_xml(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `template_name` | `[]const u8` |  |
| `template_xml` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.update_template_xml(h.vnull()).create(h.jo(&.{
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
    .{ "template_xml", h.vstr("example_template_xml") }, // []const u8
}), h.vnull())) {
    .ok => |update_template_xml| std.debug.print("{s}\n", .{h.stringify(update_template_xml)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### Version

Create an instance: `const version = client.version(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `[]const u8` |  |
| `build_date` | `[]const u8` |  |
| `version` | `[]const u8` |  |

#### Example: Load

```zig
switch (client.version(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |version| std.debug.print("{s}\n", .{h.stringify(version)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
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

### Data as `Value`

The Zig SDK uses a single dynamic `Value` type throughout rather than a
typed struct per entity. `Value` is the vendored voxgig struct port's
`JsonValue` (a JSON-shaped tagged union: `.string`, `.integer`,
`.float`, `.bool`, `.array`, `.object`, `.null`). This mirrors the
dynamic nature of the API and keeps the SDK flexible — no code generation is
needed when the API schema changes.

Build request maps with the `h.jo` / `h.ja` helpers and read fields back
with `h.getp` (or the typed `h.get_str` / `h.get_bool` / `h.to_int`
accessors); use `h.to_map` to safely coerce a value to a map.

### Module structure

```
zig/
├── root.zig                     -- Module root (re-exports the public surface)
├── build.zig                    -- Build + test wiring
├── core/                        -- Pipeline types, config, client (sdk.zig)
├── entity/                      -- Per-entity clients (one file each)
├── feature/                     -- Built-in features (base, test, log)
├── utility/                     -- Utilities + the vendored voxgig struct port
└── test/                        -- Test suites
```

The public API is re-exported from `root.zig`, so `@import("sdk")` reaches
the SDK client, `Value`, and the `h` (helpers) namespace directly. Import
entity or utility modules only when needed.

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
