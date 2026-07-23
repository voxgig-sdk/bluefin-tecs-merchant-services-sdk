# BluefinTecsMerchantServices Zig SDK Reference

Complete API reference for the BluefinTecsMerchantServices Zig SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```zig
const sdk = @import("sdk");
const h = sdk.h;

const client = sdk.BluefinTecsMerchantServicesSDK.new(options);
```

Create a new SDK client instance. `options` is a `Value` map
(`h.vnull()` for none).

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

#### `test_sdk(testopts: Value, sdkopts: Value) *BluefinTecsMerchantServicesSDK`

Create a test client with mock features active. Both arguments may be
`h.vnull()`.

```zig
const client = sdk.test_sdk(h.vnull(), h.vnull());
```


### Instance Methods

#### `cancel_transaction(entopts: Value) *CancelTransactionEntity`

Create a new `CancelTransactionEntity` instance. Pass `h.vnull()` for no
initial options.

#### `check_card_black_listed(entopts: Value) *CheckCardBlackListedEntity`

Create a new `CheckCardBlackListedEntity` instance. Pass `h.vnull()` for no
initial options.

#### `create_product(entopts: Value) *CreateProductEntity`

Create a new `CreateProductEntity` instance. Pass `h.vnull()` for no
initial options.

#### `deactivate_terminal(entopts: Value) *DeactivateTerminalEntity`

Create a new `DeactivateTerminalEntity` instance. Pass `h.vnull()` for no
initial options.

#### `digital_services_api(entopts: Value) *DigitalServicesApiEntity`

Create a new `DigitalServicesApiEntity` instance. Pass `h.vnull()` for no
initial options.

#### `ec_data_ecom(entopts: Value) *EcDataEcomEntity`

Create a new `EcDataEcomEntity` instance. Pass `h.vnull()` for no
initial options.

#### `ecom_parameter(entopts: Value) *EcomParameterEntity`

Create a new `EcomParameterEntity` instance. Pass `h.vnull()` for no
initial options.

#### `ecr_data(entopts: Value) *EcrDataEntity`

Create a new `EcrDataEntity` instance. Pass `h.vnull()` for no
initial options.

#### `emv_data(entopts: Value) *EmvDataEntity`

Create a new `EmvDataEntity` instance. Pass `h.vnull()` for no
initial options.

#### `enable_acquiring(entopts: Value) *EnableAcquiringEntity`

Create a new `EnableAcquiringEntity` instance. Pass `h.vnull()` for no
initial options.

#### `get_merchant_contract_number(entopts: Value) *GetMerchantContractNumberEntity`

Create a new `GetMerchantContractNumberEntity` instance. Pass `h.vnull()` for no
initial options.

#### `get_template_xml(entopts: Value) *GetTemplateXmlEntity`

Create a new `GetTemplateXmlEntity` instance. Pass `h.vnull()` for no
initial options.

#### `introduce_mandator(entopts: Value) *IntroduceMandatorEntity`

Create a new `IntroduceMandatorEntity` instance. Pass `h.vnull()` for no
initial options.

#### `introduce_package(entopts: Value) *IntroducePackageEntity`

Create a new `IntroducePackageEntity` instance. Pass `h.vnull()` for no
initial options.

#### `keep_alive(entopts: Value) *KeepAliveEntity`

Create a new `KeepAliveEntity` instance. Pass `h.vnull()` for no
initial options.

#### `list_terminal(entopts: Value) *ListTerminalEntity`

Create a new `ListTerminalEntity` instance. Pass `h.vnull()` for no
initial options.

#### `mandator_clearing_export(entopts: Value) *MandatorClearingExportEntity`

Create a new `MandatorClearingExportEntity` instance. Pass `h.vnull()` for no
initial options.

#### `mandator_clearing_export_download(entopts: Value) *MandatorClearingExportDownloadEntity`

Create a new `MandatorClearingExportDownloadEntity` instance. Pass `h.vnull()` for no
initial options.

#### `mandator_clearing_export_summary(entopts: Value) *MandatorClearingExportSummaryEntity`

Create a new `MandatorClearingExportSummaryEntity` instance. Pass `h.vnull()` for no
initial options.

#### `merchant_portal_services_api(entopts: Value) *MerchantPortalServicesApiEntity`

Create a new `MerchantPortalServicesApiEntity` instance. Pass `h.vnull()` for no
initial options.

#### `move_tid(entopts: Value) *MoveTidEntity`

Create a new `MoveTidEntity` instance. Pass `h.vnull()` for no
initial options.

#### `payment_manual(entopts: Value) *PaymentManualEntity`

Create a new `PaymentManualEntity` instance. Pass `h.vnull()` for no
initial options.

#### `payment_sred(entopts: Value) *PaymentSredEntity`

Create a new `PaymentSredEntity` instance. Pass `h.vnull()` for no
initial options.

#### `pre_auth_transaction_completion(entopts: Value) *PreAuthTransactionCompletionEntity`

Create a new `PreAuthTransactionCompletionEntity` instance. Pass `h.vnull()` for no
initial options.

#### `reactivate_terminal(entopts: Value) *ReactivateTerminalEntity`

Create a new `ReactivateTerminalEntity` instance. Pass `h.vnull()` for no
initial options.

#### `refund_transaction(entopts: Value) *RefundTransactionEntity`

Create a new `RefundTransactionEntity` instance. Pass `h.vnull()` for no
initial options.

#### `register_tecs_company(entopts: Value) *RegisterTecsCompanyEntity`

Create a new `RegisterTecsCompanyEntity` instance. Pass `h.vnull()` for no
initial options.

#### `register_terminal(entopts: Value) *RegisterTerminalEntity`

Create a new `RegisterTerminalEntity` instance. Pass `h.vnull()` for no
initial options.

#### `report_data(entopts: Value) *ReportDataEntity`

Create a new `ReportDataEntity` instance. Pass `h.vnull()` for no
initial options.

#### `status_transaction(entopts: Value) *StatusTransactionEntity`

Create a new `StatusTransactionEntity` instance. Pass `h.vnull()` for no
initial options.

#### `store_terminal_parameter(entopts: Value) *StoreTerminalParameterEntity`

Create a new `StoreTerminalParameterEntity` instance. Pass `h.vnull()` for no
initial options.

#### `terminal_id(entopts: Value) *TerminalIdEntity`

Create a new `TerminalIdEntity` instance. Pass `h.vnull()` for no
initial options.

#### `transaction_history(entopts: Value) *TransactionHistoryEntity`

Create a new `TransactionHistoryEntity` instance. Pass `h.vnull()` for no
initial options.

#### `transactions_count(entopts: Value) *TransactionsCountEntity`

Create a new `TransactionsCountEntity` instance. Pass `h.vnull()` for no
initial options.

#### `transactions_count_card_brand(entopts: Value) *TransactionsCountCardBrandEntity`

Create a new `TransactionsCountCardBrandEntity` instance. Pass `h.vnull()` for no
initial options.

#### `transactions_turnover(entopts: Value) *TransactionsTurnoverEntity`

Create a new `TransactionsTurnoverEntity` instance. Pass `h.vnull()` for no
initial options.

#### `update_merchant(entopts: Value) *UpdateMerchantEntity`

Create a new `UpdateMerchantEntity` instance. Pass `h.vnull()` for no
initial options.

#### `update_template_xml(entopts: Value) *UpdateTemplateXmlEntity`

Create a new `UpdateTemplateXmlEntity` instance. Pass `h.vnull()` for no
initial options.

#### `version(entopts: Value) *VersionEntity`

Create a new `VersionEntity` instance. Pass `h.vnull()` for no
initial options.

#### `options_map() Value`

Return a deep copy of the current SDK options.

#### `get_utility() *Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs: Value) Value`

Make a direct HTTP request to any API endpoint. Returns a result `Value`
map with `ok`, `status`, `headers`, and `data` (or `err` on failure).
This escape hatch returns a map even on a non-2xx response — branch on
`h.get_bool(result, "ok")`.

**Parameters (`fetchargs` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

#### `prepare(fetchargs: Value) E!Value`

Prepare a fetch definition without sending. Returns the fetchdef (use
`catch`/`try` to handle the error union).


---

## CancelTransactionEntity

```zig
const cancel_transaction = client.cancel_transaction(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `[]const u8` | No |  |
| `acquirer_name` | `[]const u8` | No |  |
| `actual_bonus_point` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `authorization_code` | `[]const u8` | No |  |
| `balance_amount` | `[]const u8` | No |  |
| `card_brand` | `[]const u8` | No |  |
| `card_number` | `[]const u8` | No |  |
| `client_id` | `i64` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `ec_data` | `[]const u8` | No |  |
| `ecr_data` | `[]const u8` | No |  |
| `emv_data` | `[]const u8` | No |  |
| `exchange_fee` | `i64` | No |  |
| `exchange_rate` | `[]const u8` | No |  |
| `language_code` | `[]const u8` | No |  |
| `merchant_address` | `[]const u8` | No |  |
| `merchant_name` | `[]const u8` | No |  |
| `merchant_number` | `[]const u8` | No |  |
| `message_type` | `[]const u8` | No |  |
| `original_trace_number` | `i64` | No |  |
| `original_transaction_id` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `payment_reason` | `[]const u8` | No |  |
| `receipt_footer` | `[]const u8` | No |  |
| `receipt_header` | `[]const u8` | No |  |
| `receipt_layout` | `i64` | No |  |
| `receipt_number` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `serial_number` | `[]const u8` | No |  |
| `svc` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `terminal_location` | `[]const u8` | No |  |
| `trace_number` | `i64` | No |  |
| `transaction_date` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `tx_type` | `[]const u8` | No |  |
| `user_data` | `[]const u8` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.cancel_transaction(h.vnull()).create(h.jo(&.{
    .{ "client_id", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receipt_number", h.vstr("example_receipt_number") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## CheckCardBlackListedEntity

```zig
const check_card_black_listed = client.check_card_black_listed(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.check_card_black_listed(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## CreateProductEntity

```zig
const create_product = client.create_product(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `i64` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `template_name` | `[]const u8` | Yes |  |
| `template_type` | `[]const u8` | Yes |  |
| `template_xml` | `[]const u8` | Yes |  |
| `terminal_type` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.create_product(h.vnull()).create(h.jo(&.{
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
    .{ "template_type", h.vstr("example_template_type") }, // []const u8
    .{ "template_xml", h.vstr("example_template_xml") }, // []const u8
    .{ "terminal_type", h.vstr("example_terminal_type") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## DeactivateTerminalEntity

```zig
const deactivate_terminal = client.deactivate_terminal(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `[]const u8` | No |  |
| `deactivation_reason` | `[]const u8` | Yes |  |
| `package_order_uuid` | `[]const u8` | No |  |
| `product_order_uuid` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.deactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "deactivation_reason", h.vstr("example_deactivation_reason") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## DigitalServicesApiEntity

```zig
const digital_services_api = client.digital_services_api(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `[]const u8` | Yes |  |
| `clearing_date_to` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `tx_count` | `i64` | No |  |
| `tx_id_end` | `[]const u8` | No |  |
| `tx_id_start` | `[]const u8` | No |  |
| `tx_seq_no_end` | `i64` | No |  |
| `tx_seq_no_start` | `i64` | No |  |
| `tx_total` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.digital_services_api(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

#### `load(reqmatch: Value, ctrl: Value) OpResult`

Load a single entity matching the given criteria. `.ok` carries the entity data, `.err` the branded error.

```zig
switch (client.digital_services_api(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## EcDataEcomEntity

```zig
const ec_data_ecom = client.ec_data_ecom(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `transaction_id` | `[]const u8` | Yes |  |
| `transaction_type` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.ec_data_ecom(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_id", h.vstr("example_transaction_id") }, // []const u8
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## EcomParameterEntity

```zig
const ecom_parameter = client.ecom_parameter(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `[]const u8` | No |  |
| `ecom_skey` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.ecom_parameter(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## EcrDataEntity

```zig
const ecr_data = client.ecr_data(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `transaction_id` | `[]const u8` | Yes |  |
| `transaction_type` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.ecr_data(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_id", h.vstr("example_transaction_id") }, // []const u8
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## EmvDataEntity

```zig
const emv_data = client.emv_data(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `transaction_id` | `[]const u8` | Yes |  |
| `transaction_type` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.emv_data(h.vnull()).create(h.jo(&.{
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_id", h.vstr("example_transaction_id") }, // []const u8
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## EnableAcquiringEntity

```zig
const enable_acquiring = client.enable_acquiring(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `i64` | No |  |
| `additional_data` | `Value (object)` | No |  |
| `corporate_uuid` | `[]const u8` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `merchant_category_code` | `i64` | Yes |  |
| `package_order_uuid` | `[]const u8` | Yes |  |
| `product_order_uuid` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sorting_code` | `i64` | No |  |
| `template_name` | `[]const u8` | Yes |  |
| `terminal_id` | `Value (array)` | No |  |
| `terminal_id_acq` | `[]const u8` | No |  |
| `vu_nummer` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.enable_acquiring(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "merchant_category_code", h.vnum(1) }, // i64
    .{ "package_order_uuid", h.vstr("example_package_order_uuid") }, // []const u8
    .{ "product_order_uuid", h.vstr("example_product_order_uuid") }, // []const u8
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## GetMerchantContractNumberEntity

```zig
const get_merchant_contract_number = client.get_merchant_contract_number(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.get_merchant_contract_number(h.vnull()).create(h.jo(&.{
    .{ "merchant_contract_number", h.vstr("example_merchant_contract_number") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## GetTemplateXmlEntity

```zig
const get_template_xml = client.get_template_xml(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `template_name` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.get_template_xml(h.vnull()).create(h.jo(&.{
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## IntroduceMandatorEntity

```zig
const introduce_mandator = client.introduce_mandator(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.introduce_mandator(h.vnull()).create(h.jo(&.{
    .{ "mandator_name", h.vstr("example_mandator_name") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## IntroducePackageEntity

```zig
const introduce_package = client.introduce_package(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_template_description` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.introduce_package(h.vnull()).create(h.jo(&.{
    .{ "terminal_template_description", h.vstr("example_terminal_template_description") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## KeepAliveEntity

```zig
const keep_alive = client.keep_alive(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `[]const u8` | No |  |
| `ka_date_time_from` | `[]const u8` | No |  |
| `ka_date_time_to` | `[]const u8` | No |  |
| `keep_alive_data` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_date_time_from` | `[]const u8` | No |  |
| `terminal_date_time_to` | `[]const u8` | No |  |
| `terminal_id` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.keep_alive(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## ListTerminalEntity

```zig
const list_terminal = client.list_terminal(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `Value (array)` | No |  |
| `filter` | `Value (object)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal` | `Value (array)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.list_terminal(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## MandatorClearingExportEntity

```zig
const mandator_clearing_export = client.mandator_clearing_export(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `[]const u8` | Yes |  |
| `clearing_date_to` | `[]const u8` | Yes |  |
| `pagination` | `Value (object)` | No |  |
| `record` | `Value (array)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.mandator_clearing_export(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```zig
const mandator_clearing_export_download = client.mandator_clearing_export_download(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `[]const u8` | Yes |  |
| `clearing_date_to` | `[]const u8` | Yes |  |
| `file_id` | `[]const u8` | No |  |
| `filename_template` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `status` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.mandator_clearing_export_download(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

#### `load(reqmatch: Value, ctrl: Value) OpResult`

Load a single entity matching the given criteria. `.ok` carries the entity data, `.err` the branded error.

```zig
switch (client.mandator_clearing_export_download(h.vnull()).load(h.jo(&.{.{ "id", h.vstr("mandator_clearing_export_download_id") }}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```zig
const mandator_clearing_export_summary = client.mandator_clearing_export_summary(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `[]const u8` | Yes |  |
| `clearing_date_to` | `[]const u8` | Yes |  |
| `record` | `Value (array)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.mandator_clearing_export_summary(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```zig
const merchant_portal_services_api = client.merchant_portal_services_api(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `[]const u8` | No |  |
| `authorization_code` | `[]const u8` | No |  |
| `card_brand` | `[]const u8` | No |  |
| `clearing_amount_from` | `[]const u8` | No |  |
| `clearing_amount_to` | `[]const u8` | No |  |
| `clearing_currency` | `[]const u8` | No |  |
| `clearing_status` | `[]const u8` | No |  |
| `corporate_uuid` | `[]const u8` | No |  |
| `order_by_transaction_date` | `[]const u8` | No |  |
| `pagination` | `Value (object)` | No |  |
| `receipt_number` | `[]const u8` | No |  |
| `referenced_transaction_id` | `[]const u8` | No |  |
| `retrieval_reference_number` | `[]const u8` | No |  |
| `source_id` | `i64` | No |  |
| `tecsengine_response_code_from` | `[]const u8` | No |  |
| `tecsengine_response_code_to` | `[]const u8` | No |  |
| `terminal_id` | `i64` | No |  |
| `trace_number` | `[]const u8` | No |  |
| `transaction_amount_from` | `[]const u8` | No |  |
| `transaction_amount_to` | `[]const u8` | No |  |
| `transaction_date_from` | `[]const u8` | No |  |
| `transaction_date_to` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `transaction_type` | `[]const u8` | No |  |
| `wallet` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.merchant_portal_services_api(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## MoveTidEntity

```zig
const move_tid = client.move_tid(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `Value (array)` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `target_packageorderuuid` | `[]const u8` | No |  |
| `target_productorderuuid` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.move_tid(h.vnull()).create(h.jo(&.{
    .{ "productorderuuid", h.olist() }, // Value (array)
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## PaymentManualEntity

```zig
const payment_manual = client.payment_manual(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `[]const u8` | No |  |
| `amount` | `i64` | Yes |  |
| `authorization_number` | `[]const u8` | No |  |
| `card_number` | `[]const u8` | Yes |  |
| `card_type` | `[]const u8` | No |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `date_time_tx` | `[]const u8` | No |  |
| `exp_date` | `[]const u8` | Yes |  |
| `merchant_id` | `[]const u8` | No |  |
| `original_transaction_id` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `response_code` | `[]const u8` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `txtype` | `[]const u8` | Yes |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.payment_manual(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "card_number", h.vstr("example_card_number") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "exp_date", h.vstr("example_exp_date") }, // []const u8
    .{ "txtype", h.vstr("example_txtype") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## PaymentSredEntity

```zig
const payment_sred = client.payment_sred(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `[]const u8` | No |  |
| `amount` | `i64` | Yes |  |
| `authorization_number` | `[]const u8` | No |  |
| `card_type` | `[]const u8` | No |  |
| `currency` | `[]const u8` | Yes |  |
| `date_time_tx` | `[]const u8` | No |  |
| `device_payload` | `[]const u8` | Yes |  |
| `merchant_id` | `[]const u8` | No |  |
| `original_transaction_id` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `response_code` | `[]const u8` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sred` | `Value (object)` | No |  |
| `terminal_id` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `txtype` | `[]const u8` | Yes |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.payment_sred(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "device_payload", h.vstr("example_device_payload") }, // []const u8
    .{ "txtype", h.vstr("example_txtype") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```zig
const pre_auth_transaction_completion = client.pre_auth_transaction_completion(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `[]const u8` | No |  |
| `acquirer_name` | `[]const u8` | No |  |
| `actual_bonus_point` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `authorization_code` | `[]const u8` | No |  |
| `balance_amount` | `[]const u8` | No |  |
| `card_brand` | `[]const u8` | No |  |
| `card_number` | `[]const u8` | No |  |
| `card_number_reference` | `[]const u8` | Yes |  |
| `client_id` | `i64` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `ec_data` | `[]const u8` | No |  |
| `ecr_data` | `[]const u8` | No |  |
| `emv_data` | `[]const u8` | No |  |
| `exchange_fee` | `i64` | No |  |
| `exchange_rate` | `[]const u8` | No |  |
| `language_code` | `[]const u8` | No |  |
| `merchant_address` | `[]const u8` | No |  |
| `merchant_name` | `[]const u8` | No |  |
| `merchant_number` | `[]const u8` | No |  |
| `message_type` | `[]const u8` | No |  |
| `original_trace_number` | `i64` | No |  |
| `original_transaction_id` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `payment_reason` | `[]const u8` | No |  |
| `receipt_footer` | `[]const u8` | No |  |
| `receipt_header` | `[]const u8` | No |  |
| `receipt_layout` | `i64` | No |  |
| `receipt_number` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `serial_number` | `[]const u8` | No |  |
| `svc` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `terminal_location` | `[]const u8` | No |  |
| `trace_number` | `i64` | No |  |
| `transaction_date` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `transaction_type` | `[]const u8` | Yes |  |
| `tx_type` | `[]const u8` | No |  |
| `user_data` | `[]const u8` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.pre_auth_transaction_completion(h.vnull()).create(h.jo(&.{
    .{ "card_number_reference", h.vstr("example_card_number_reference") }, // []const u8
    .{ "client_id", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receipt_number", h.vstr("example_receipt_number") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
    .{ "transaction_type", h.vstr("example_transaction_type") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## ReactivateTerminalEntity

```zig
const reactivate_terminal = client.reactivate_terminal(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `[]const u8` | No |  |
| `package_order_uuid` | `[]const u8` | No |  |
| `product_order_uuid` | `[]const u8` | No |  |
| `reactivation_reason` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.reactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "reactivation_reason", h.vstr("example_reactivation_reason") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## RefundTransactionEntity

```zig
const refund_transaction = client.refund_transaction(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `[]const u8` | No |  |
| `acquirer_name` | `[]const u8` | No |  |
| `actual_bonus_point` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `authorization_code` | `[]const u8` | No |  |
| `balance_amount` | `[]const u8` | No |  |
| `card_brand` | `[]const u8` | No |  |
| `card_number` | `[]const u8` | No |  |
| `client_id` | `i64` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `ec_data` | `[]const u8` | No |  |
| `ecr_data` | `[]const u8` | No |  |
| `emv_data` | `[]const u8` | No |  |
| `exchange_fee` | `i64` | No |  |
| `exchange_rate` | `[]const u8` | No |  |
| `language_code` | `[]const u8` | No |  |
| `merchant_address` | `[]const u8` | No |  |
| `merchant_name` | `[]const u8` | No |  |
| `merchant_number` | `[]const u8` | No |  |
| `message_type` | `[]const u8` | No |  |
| `original_trace_number` | `i64` | No |  |
| `original_transaction_id` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `payment_reason` | `[]const u8` | No |  |
| `receipt_footer` | `[]const u8` | No |  |
| `receipt_header` | `[]const u8` | No |  |
| `receipt_layout` | `i64` | No |  |
| `receipt_number` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `serial_number` | `[]const u8` | No |  |
| `svc` | `[]const u8` | No |  |
| `terminal_id` | `i64` | Yes |  |
| `terminal_location` | `[]const u8` | No |  |
| `trace_number` | `i64` | No |  |
| `transaction_date` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `tx_type` | `[]const u8` | No |  |
| `user_data` | `[]const u8` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.refund_transaction(h.vnull()).create(h.jo(&.{
    .{ "client_id", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receipt_number", h.vstr("example_receipt_number") }, // []const u8
    .{ "terminal_id", h.vnum(1) }, // i64
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## RegisterTecsCompanyEntity

```zig
const register_tecs_company = client.register_tecs_company(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `[]const u8` | Yes |  |
| `package_order_uuid` | `[]const u8` | Yes |  |
| `partner_id` | `i64` | No |  |
| `partner_name` | `[]const u8` | No |  |
| `product_order_uuid` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `template_name` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.register_tecs_company(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
    .{ "package_order_uuid", h.vstr("example_package_order_uuid") }, // []const u8
    .{ "product_order_uuid", h.vstr("example_product_order_uuid") }, // []const u8
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## RegisterTerminalEntity

```zig
const register_terminal = client.register_terminal(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `Value (object)` | No |  |
| `corporate_uuid` | `[]const u8` | Yes |  |
| `package_order_uuid` | `[]const u8` | Yes |  |
| `product_order_uuid` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `tecs_web_secret_key` | `[]const u8` | No |  |
| `template_name` | `[]const u8` | Yes |  |
| `terminal_country_code` | `[]const u8` | Yes |  |
| `terminal_id` | `i64` | No |  |
| `terminal_id_acq` | `[]const u8` | No |  |
| `terminal_language_code` | `[]const u8` | Yes |  |
| `terminal_location` | `[]const u8` | Yes |  |
| `terminal_serial_number` | `[]const u8` | No |  |
| `token_io_alia` | `[]const u8` | No |  |
| `token_io_iban` | `[]const u8` | No |  |
| `token_io_member_id` | `[]const u8` | No |  |
| `web_shop_url` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

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
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## ReportDataEntity

```zig
const report_data = client.report_data(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `Value (array)` | No |  |
| `clearing_date_from` | `[]const u8` | Yes |  |
| `clearing_date_to` | `[]const u8` | Yes |  |
| `corporate_id` | `[]const u8` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sum_over_credit_tx` | `Value (object)` | No |  |
| `sum_over_debit_tx` | `Value (object)` | No |  |
| `terminal_id` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.report_data(h.vnull()).create(h.jo(&.{
    .{ "clearing_date_from", h.vstr("example_clearing_date_from") }, // []const u8
    .{ "clearing_date_to", h.vstr("example_clearing_date_to") }, // []const u8
    .{ "corporate_id", h.vstr("example_corporate_id") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## StatusTransactionEntity

```zig
const status_transaction = client.status_transaction(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `[]const u8` | No |  |
| `acquirer_terminal_id` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `application_cryptogram` | `[]const u8` | No |  |
| `authorization_code` | `Value` | No |  |
| `authorization_date` | `[]const u8` | No |  |
| `card_brand` | `[]const u8` | No |  |
| `card_entry` | `[]const u8` | No |  |
| `card_expiration` | `[]const u8` | No |  |
| `card_number` | `[]const u8` | No |  |
| `clearing_amount` | `i64` | No |  |
| `clearing_batch_id` | `[]const u8` | No |  |
| `clearing_currency` | `[]const u8` | No |  |
| `clearing_date` | `[]const u8` | No |  |
| `clearing_processed_date` | `[]const u8` | No |  |
| `clearing_status` | `[]const u8` | No |  |
| `client_id` | `i64` | No |  |
| `currency` | `[]const u8` | No |  |
| `cvm` | `[]const u8` | No |  |
| `ecr_data` | `[]const u8` | No |  |
| `emv_application_id` | `[]const u8` | No |  |
| `emv_application_label` | `[]const u8` | No |  |
| `merchant_name` | `[]const u8` | No |  |
| `merchant_number` | `[]const u8` | No |  |
| `original_client_id` | `[]const u8` | No |  |
| `original_terminal_id` | `i64` | No |  |
| `original_transaction_id` | `[]const u8` | No |  |
| `payment_reason` | `[]const u8` | No |  |
| `receipt_number` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_code_from_a` | `[]const u8` | No |  |
| `response_message` | `[]const u8` | No |  |
| `retrieval_reference_number` | `[]const u8` | No |  |
| `service_code` | `[]const u8` | No |  |
| `settlement_status` | `[]const u8` | No |  |
| `source_id` | `i64` | No |  |
| `tecsengine_response_code` | `i64` | No |  |
| `tecsengine_response_text` | `[]const u8` | No |  |
| `terminal_end_of_day_date` | `[]const u8` | No |  |
| `terminal_id` | `i64` | No |  |
| `terminal_location` | `[]const u8` | No |  |
| `tip_amount` | `i64` | No |  |
| `trace_number` | `i64` | No |  |
| `transaction_clearing_date` | `[]const u8` | No |  |
| `transaction_date` | `[]const u8` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `transaction_seq_number` | `i64` | No |  |
| `transaction_server_date` | `[]const u8` | No |  |
| `transaction_source` | `[]const u8` | No |  |
| `transaction_type` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.status_transaction(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## StoreTerminalParameterEntity

```zig
const store_terminal_parameter = client.store_terminal_parameter(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `Value (object)` | No |  |
| `config_version` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `serial_number` | `[]const u8` | Yes |  |
| `tid_sent` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.store_terminal_parameter(h.vnull()).create(h.jo(&.{
    .{ "serial_number", h.vstr("example_serial_number") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## TerminalIdEntity

```zig
const terminal_id = client.terminal_id(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `Value (array)` | Yes |  |
| `duplicate_terminal_id` | `Value (array)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `terminal` | `Value (array)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.terminal_id(h.vnull()).create(h.jo(&.{
    .{ "device_serial_number", h.olist() }, // Value (array)
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## TransactionHistoryEntity

```zig
const transaction_history = client.transaction_history(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `[]const u8` | No |  |
| `authorization_code` | `[]const u8` | No |  |
| `card_brand` | `[]const u8` | No |  |
| `clearing_amount_from` | `[]const u8` | No |  |
| `clearing_amount_to` | `[]const u8` | No |  |
| `clearing_currency` | `[]const u8` | No |  |
| `clearing_status` | `[]const u8` | No |  |
| `corporate_uuid` | `[]const u8` | No |  |
| `order_by_transaction_date` | `[]const u8` | No |  |
| `pagination` | `Value (object)` | No |  |
| `payment_token_public_id` | `[]const u8` | No |  |
| `receipt_number` | `[]const u8` | No |  |
| `referenced_transaction_id` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `retrieval_reference_number` | `[]const u8` | No |  |
| `source_id` | `i64` | No |  |
| `tecsengine_response_code_from` | `[]const u8` | No |  |
| `tecsengine_response_code_to` | `[]const u8` | No |  |
| `terminal_id` | `i64` | No |  |
| `trace_number` | `[]const u8` | No |  |
| `transaction_amount_from` | `[]const u8` | No |  |
| `transaction_amount_to` | `[]const u8` | No |  |
| `transaction_date_from` | `[]const u8` | No |  |
| `transaction_date_to` | `[]const u8` | No |  |
| `transaction_history` | `Value (array)` | No |  |
| `transaction_id` | `[]const u8` | No |  |
| `transaction_type` | `[]const u8` | No |  |
| `wallet` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.transaction_history(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## TransactionsCountEntity

```zig
const transactions_count = client.transactions_count(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `transaction_date_from` | `[]const u8` | No |  |
| `transaction_date_to` | `[]const u8` | No |  |
| `transactions_count` | `Value (array)` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.transactions_count(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```zig
const transactions_count_card_brand = client.transactions_count_card_brand(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `transaction_date_from` | `[]const u8` | No |  |
| `transaction_date_to` | `[]const u8` | No |  |
| `transactions_count` | `Value (array)` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.transactions_count_card_brand(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## TransactionsTurnoverEntity

```zig
const transactions_turnover = client.transactions_turnover(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `transaction_date_from` | `[]const u8` | No |  |
| `transaction_date_to` | `[]const u8` | No |  |
| `turnover` | `Value (array)` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.transactions_turnover(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## UpdateMerchantEntity

```zig
const update_merchant = client.update_merchant(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `[]const u8` | No |  |
| `corporate_uuid` | `[]const u8` | Yes |  |
| `country` | `[]const u8` | No |  |
| `merchant_category_code` | `[]const u8` | No |  |
| `name` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `state` | `[]const u8` | No |  |
| `street` | `[]const u8` | No |  |
| `vu_nummer` | `[]const u8` | No |  |
| `zipcode` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.update_merchant(h.vnull()).create(h.jo(&.{
    .{ "corporate_uuid", h.vstr("example_corporate_uuid") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## UpdateTemplateXmlEntity

```zig
const update_template_xml = client.update_template_xml(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `template_name` | `[]const u8` | Yes |  |
| `template_xml` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.update_template_xml(h.vnull()).create(h.jo(&.{
    .{ "template_name", h.vstr("example_template_name") }, // []const u8
    .{ "template_xml", h.vstr("example_template_xml") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## VersionEntity

```zig
const version = client.version(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `[]const u8` | No |  |
| `build_date` | `[]const u8` | No |  |
| `version` | `[]const u8` | No |  |

### Operations

#### `load(reqmatch: Value, ctrl: Value) OpResult`

Load a single entity matching the given criteria. `.ok` carries the entity data, `.err` the branded error.

```zig
switch (client.version(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```zig
const client = sdk.BluefinTecsMerchantServicesSDK.new(h.jo(&.{
    .{ "feature", h.jo(&.{
        .{ "test", h.jo(&.{.{ "active", h.vbool(true) }}) },
    }) },
}));
```

