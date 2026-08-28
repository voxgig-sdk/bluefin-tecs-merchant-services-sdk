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
| `acquirerId` | `[]const u8` | No |  |
| `acquirerName` | `[]const u8` | No |  |
| `actualBonusPoints` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `authorizationCode` | `[]const u8` | No |  |
| `balanceAmount` | `[]const u8` | No |  |
| `cardBrand` | `[]const u8` | No |  |
| `cardNumber` | `[]const u8` | No |  |
| `clientId` | `i64` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `ecData` | `[]const u8` | No |  |
| `ecrData` | `[]const u8` | No |  |
| `emvData` | `[]const u8` | No |  |
| `exchangeFee` | `i64` | No |  |
| `exchangeRate` | `[]const u8` | No |  |
| `languageCode` | `[]const u8` | No |  |
| `merchantAddress` | `[]const u8` | No |  |
| `merchantName` | `[]const u8` | No |  |
| `merchantNumber` | `[]const u8` | No |  |
| `messageType` | `[]const u8` | No |  |
| `originalTraceNumber` | `i64` | No |  |
| `originalTransactionId` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `paymentReason` | `[]const u8` | No |  |
| `receiptFooter` | `[]const u8` | No |  |
| `receiptHeader` | `[]const u8` | No |  |
| `receiptLayout` | `i64` | No |  |
| `receiptNumber` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `serialNumber` | `[]const u8` | No |  |
| `svc` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |
| `terminalLocation` | `[]const u8` | No |  |
| `traceNumber` | `i64` | No |  |
| `transactionDate` | `[]const u8` | No |  |
| `transactionId` | `[]const u8` | No |  |
| `txType` | `[]const u8` | No |  |
| `userData` | `[]const u8` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.cancel_transaction(h.vnull()).create(h.jo(&.{
    .{ "clientId", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receiptNumber", h.vstr("example_receiptNumber") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `cardNo` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |

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
| `acquirerId` | `i64` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `templateName` | `[]const u8` | Yes |  |
| `templateType` | `[]const u8` | Yes |  |
| `templateXml` | `[]const u8` | Yes |  |
| `terminalType` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.create_product(h.vnull()).create(h.jo(&.{
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
    .{ "templateType", h.vstr("example_templateType") }, // []const u8
    .{ "templateXml", h.vstr("example_templateXml") }, // []const u8
    .{ "terminalType", h.vstr("example_terminalType") }, // []const u8
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
| `corporateUuid` | `[]const u8` | No |  |
| `deactivationReason` | `[]const u8` | Yes |  |
| `packageOrderUuid` | `[]const u8` | No |  |
| `productOrderUuid` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.deactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "deactivationReason", h.vstr("example_deactivationReason") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `clearingDateFrom` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `txCount` | `i64` | No |  |
| `txIdEnd` | `[]const u8` | No |  |
| `txIdStart` | `[]const u8` | No |  |
| `txSeqNoEnd` | `i64` | No |  |
| `txSeqNoStart` | `i64` | No |  |
| `txTotal` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.digital_services_api(h.vnull()).create(h.jo(&.{
    .{ "file_id", h.vstr("example_file_id") }, // []const u8
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `ecomData` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |
| `transactionId` | `[]const u8` | Yes |  |
| `transactionType` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.ec_data_ecom(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionId", h.vstr("example_transactionId") }, // []const u8
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `ecomPass` | `[]const u8` | No |  |
| `ecomSkey` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.ecom_parameter(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
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
| `ecrData` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |
| `transactionId` | `[]const u8` | Yes |  |
| `transactionType` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.ecr_data(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionId", h.vstr("example_transactionId") }, // []const u8
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `emvData` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |
| `transactionId` | `[]const u8` | Yes |  |
| `transactionType` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.emv_data(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionId", h.vstr("example_transactionId") }, // []const u8
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `accountNo` | `i64` | No |  |
| `additionalData` | `Value (object)` | No |  |
| `corporateUuid` | `[]const u8` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `merchantCategoryCode` | `i64` | Yes |  |
| `packageOrderUuid` | `[]const u8` | Yes |  |
| `productOrderUuid` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `sortingCode` | `i64` | No |  |
| `templateName` | `[]const u8` | Yes |  |
| `terminalIdAcq` | `[]const u8` | No |  |
| `terminalIds` | `Value (array)` | No |  |
| `vuNummer` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.enable_acquiring(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "merchantCategoryCode", h.vnum(1) }, // i64
    .{ "packageOrderUuid", h.vstr("example_packageOrderUuid") }, // []const u8
    .{ "productOrderUuid", h.vstr("example_productOrderUuid") }, // []const u8
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
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
| `merchantContractNumber` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.get_merchant_contract_number(h.vnull()).create(h.jo(&.{
    .{ "merchantContractNumber", h.vstr("example_merchantContractNumber") }, // []const u8
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `templateName` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.get_template_xml(h.vnull()).create(h.jo(&.{
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
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
| `mandatorName` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.introduce_mandator(h.vnull()).create(h.jo(&.{
    .{ "mandatorName", h.vstr("example_mandatorName") }, // []const u8
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalTemplateDescription` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.introduce_package(h.vnull()).create(h.jo(&.{
    .{ "terminalTemplateDescription", h.vstr("example_terminalTemplateDescription") }, // []const u8
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
| `kaDateTimeFrom` | `[]const u8` | No |  |
| `kaDateTimeTo` | `[]const u8` | No |  |
| `keepAliveData` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalDateTimeFrom` | `[]const u8` | No |  |
| `terminalDateTimeTo` | `[]const u8` | No |  |
| `terminalId` | `i64` | No |  |

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
| `corporateUuid` | `Value (array)` | No |  |
| `filter` | `Value (object)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminals` | `Value (array)` | No |  |

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
| `clearingDateFrom` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Value (object)` | No |  |
| `records` | `Value (array)` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.mandator_clearing_export(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `clearingDateFrom` | `[]const u8` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `[]const u8` | Yes | End date for clearing export (inclusive) |
| `fileId` | `[]const u8` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `[]const u8` | No | Optional filename template for the export file |
| `id` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `status` | `[]const u8` | No | Processing status of the export request |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.mandator_clearing_export_download(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `clearingDateFrom` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `Value (array)` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.mandator_clearing_export_summary(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `3DSecure` | `[]const u8` | No |  |
| `authorizationCode` | `[]const u8` | No |  |
| `cardBrand` | `[]const u8` | No |  |
| `clearingAmountFrom` | `[]const u8` | No |  |
| `clearingAmountTo` | `[]const u8` | No |  |
| `clearingCurrency` | `[]const u8` | No |  |
| `clearingStatus` | `[]const u8` | No |  |
| `corporateUUID` | `[]const u8` | No |  |
| `orderByTransactionDate` | `[]const u8` | No |  |
| `pagination` | `Value (object)` | No |  |
| `receiptNumber` | `[]const u8` | No |  |
| `referencedTransactionId` | `[]const u8` | No |  |
| `retrievalReferenceNumber` | `[]const u8` | No |  |
| `sourceId` | `i64` | No |  |
| `tecsengineResponseCodeFrom` | `[]const u8` | No |  |
| `tecsengineResponseCodeTo` | `[]const u8` | No |  |
| `terminalId` | `i64` | No |  |
| `traceNumber` | `[]const u8` | No |  |
| `transactionAmountFrom` | `[]const u8` | No |  |
| `transactionAmountTo` | `[]const u8` | No |  |
| `transactionDateFrom` | `[]const u8` | No |  |
| `transactionDateTo` | `[]const u8` | No |  |
| `transactionId` | `[]const u8` | No |  |
| `transactionType` | `[]const u8` | No |  |
| `wallet` | `[]const u8` | No | Filter by wallet type. |

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
| `productorderuuids` | `Value (array)` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `targetPackageorderuuid` | `[]const u8` | No |  |
| `targetProductorderuuid` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.move_tid(h.vnull()).create(h.jo(&.{
    .{ "productorderuuids", h.olist() }, // Value (array)
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
| `acquirerName` | `[]const u8` | No | Acquirer name parsed from KKG field |
| `amount` | `i64` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `[]const u8` | No | Authorization number from the gateway |
| `cardNumber` | `[]const u8` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `[]const u8` | No | Card type parsed from KKG field |
| `currency` | `[]const u8` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `[]const u8` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `[]const u8` | No | Date and time of the transaction |
| `expDate` | `[]const u8` | Yes | Card expiry date in MMYY format |
| `merchantId` | `[]const u8` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `[]const u8` | No | Original transaction ID from gateway |
| `password` | `[]const u8` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `[]const u8` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `[]const u8` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `[]const u8` | No | Terminal ID used for the transaction |
| `transactionId` | `[]const u8` | No | Transaction ID generated by the backend |
| `txtype` | `[]const u8` | Yes | Transaction type |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.payment_manual(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "cardNumber", h.vstr("example_cardNumber") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "expDate", h.vstr("example_expDate") }, // []const u8
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
| `amount` | `i64` | Yes | Transaction amount in minor units (cents) |
| `currency` | `[]const u8` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `[]const u8` | No | Device type that provided the SRED payload |
| `devicePayload` | `[]const u8` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `[]const u8` | No | Card expiry date in MMYY format |
| `mode` | `[]const u8` | No | Decryption mode |
| `panMasked` | `[]const u8` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `[]const u8` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `[]const u8` | No | Device serial number |
| `serviceCode` | `[]const u8` | No | Service code from the card |
| `terminalId` | `[]const u8` | Yes | Terminal ID - 8 digits |
| `txtype` | `[]const u8` | Yes | Transaction type |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.payment_sred(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "devicePayload", h.vstr("example_devicePayload") }, // []const u8
    .{ "terminalId", h.vstr("example_terminalId") }, // []const u8
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
| `acquirerId` | `[]const u8` | No |  |
| `acquirerName` | `[]const u8` | No |  |
| `actualBonusPoints` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `authorizationCode` | `[]const u8` | No |  |
| `balanceAmount` | `[]const u8` | No |  |
| `cardBrand` | `[]const u8` | No |  |
| `cardNumber` | `[]const u8` | No |  |
| `cardNumberReference` | `[]const u8` | Yes |  |
| `clientId` | `i64` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `ecData` | `[]const u8` | No |  |
| `ecrData` | `[]const u8` | No |  |
| `emvData` | `[]const u8` | No |  |
| `exchangeFee` | `i64` | No |  |
| `exchangeRate` | `[]const u8` | No |  |
| `languageCode` | `[]const u8` | No |  |
| `merchantAddress` | `[]const u8` | No |  |
| `merchantName` | `[]const u8` | No |  |
| `merchantNumber` | `[]const u8` | No |  |
| `messageType` | `[]const u8` | No |  |
| `originalTraceNumber` | `i64` | No |  |
| `originalTransactionId` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `paymentReason` | `[]const u8` | No |  |
| `receiptFooter` | `[]const u8` | No |  |
| `receiptHeader` | `[]const u8` | No |  |
| `receiptLayout` | `i64` | No |  |
| `receiptNumber` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `serialNumber` | `[]const u8` | No |  |
| `svc` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |
| `terminalLocation` | `[]const u8` | No |  |
| `traceNumber` | `i64` | No |  |
| `transactionDate` | `[]const u8` | No |  |
| `transactionId` | `[]const u8` | No |  |
| `transactionType` | `[]const u8` | Yes |  |
| `txType` | `[]const u8` | No |  |
| `userData` | `[]const u8` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.pre_auth_transaction_completion(h.vnull()).create(h.jo(&.{
    .{ "cardNumberReference", h.vstr("example_cardNumberReference") }, // []const u8
    .{ "clientId", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receiptNumber", h.vstr("example_receiptNumber") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `corporateUuid` | `[]const u8` | No |  |
| `packageOrderUuid` | `[]const u8` | No |  |
| `productOrderUuid` | `[]const u8` | No |  |
| `reactivationReason` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.reactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "reactivationReason", h.vstr("example_reactivationReason") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `acquirerId` | `[]const u8` | No |  |
| `acquirerName` | `[]const u8` | No |  |
| `actualBonusPoints` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `authorizationCode` | `[]const u8` | No |  |
| `balanceAmount` | `[]const u8` | No |  |
| `cardBrand` | `[]const u8` | No |  |
| `cardNumber` | `[]const u8` | No |  |
| `clientId` | `i64` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `cvc` | `[]const u8` | No |  |
| `ecData` | `[]const u8` | No |  |
| `ecrData` | `[]const u8` | No |  |
| `emvData` | `[]const u8` | No |  |
| `exchangeFee` | `i64` | No |  |
| `exchangeRate` | `[]const u8` | No |  |
| `languageCode` | `[]const u8` | No |  |
| `merchantAddress` | `[]const u8` | No |  |
| `merchantName` | `[]const u8` | No |  |
| `merchantNumber` | `[]const u8` | No |  |
| `messageType` | `[]const u8` | No |  |
| `originalTraceNumber` | `i64` | No |  |
| `originalTransactionId` | `[]const u8` | No |  |
| `password` | `[]const u8` | No |  |
| `paymentReason` | `[]const u8` | No |  |
| `receiptFooter` | `[]const u8` | No |  |
| `receiptHeader` | `[]const u8` | No |  |
| `receiptLayout` | `i64` | No |  |
| `receiptNumber` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `serialNumber` | `[]const u8` | No |  |
| `svc` | `[]const u8` | No |  |
| `terminalId` | `i64` | Yes |  |
| `terminalLocation` | `[]const u8` | No |  |
| `traceNumber` | `i64` | No |  |
| `transactionDate` | `[]const u8` | No |  |
| `transactionId` | `[]const u8` | No |  |
| `txType` | `[]const u8` | No |  |
| `userData` | `[]const u8` | No |  |

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

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.refund_transaction(h.vnull()).create(h.jo(&.{
    .{ "clientId", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receiptNumber", h.vstr("example_receiptNumber") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `corporateUuid` | `[]const u8` | Yes |  |
| `packageOrderUuid` | `[]const u8` | Yes |  |
| `partnerId` | `i64` | No |  |
| `partnerName` | `[]const u8` | No |  |
| `productOrderUuid` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `templateName` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.register_tecs_company(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
    .{ "packageOrderUuid", h.vstr("example_packageOrderUuid") }, // []const u8
    .{ "productOrderUuid", h.vstr("example_productOrderUuid") }, // []const u8
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
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
| `additionalData` | `Value (object)` | No |  |
| `corporateUuid` | `[]const u8` | Yes |  |
| `packageOrderUuid` | `[]const u8` | Yes |  |
| `productOrderUuid` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `tecsWebSecretKey` | `[]const u8` | No |  |
| `templateName` | `[]const u8` | Yes |  |
| `terminalCountryCode` | `[]const u8` | Yes |  |
| `terminalId` | `i64` | No |  |
| `terminalIdAcq` | `[]const u8` | No |  |
| `terminalLanguageCode` | `[]const u8` | Yes |  |
| `terminalLocation` | `[]const u8` | Yes |  |
| `terminalSerialNumber` | `[]const u8` | No |  |
| `tokenIOAlias` | `[]const u8` | No |  |
| `tokenIOIban` | `[]const u8` | No |  |
| `tokenIOMemberId` | `[]const u8` | No |  |
| `webShopUrl` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.register_terminal(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
    .{ "packageOrderUuid", h.vstr("example_packageOrderUuid") }, // []const u8
    .{ "productOrderUuid", h.vstr("example_productOrderUuid") }, // []const u8
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
    .{ "terminalCountryCode", h.vstr("example_terminalCountryCode") }, // []const u8
    .{ "terminalLanguageCode", h.vstr("example_terminalLanguageCode") }, // []const u8
    .{ "terminalLocation", h.vstr("example_terminalLocation") }, // []const u8
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
| `cardBrandReportData` | `Value (array)` | No |  |
| `clearingDateFrom` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `[]const u8` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `[]const u8` | Yes |  |
| `currency` | `[]const u8` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `sumOverCreditTx` | `Value (object)` | No |  |
| `sumOverDebitTx` | `Value (object)` | No |  |
| `terminalId` | `i64` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.report_data(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
    .{ "corporateId", h.vstr("example_corporateId") }, // []const u8
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
| `acquirerName` | `[]const u8` | No |  |
| `acquirerTerminalId` | `[]const u8` | No |  |
| `amount` | `i64` | No |  |
| `applicationCryptogram` | `[]const u8` | No |  |
| `authorizationCode` | `Value` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `[]const u8` | No |  |
| `cardBrand` | `[]const u8` | No |  |
| `cardEntry` | `[]const u8` | No |  |
| `cardExpiration` | `[]const u8` | No |  |
| `cardNumber` | `[]const u8` | No |  |
| `clearingAmount` | `i64` | No |  |
| `clearingBatchId` | `[]const u8` | No |  |
| `clearingCurrency` | `[]const u8` | No |  |
| `clearingDate` | `[]const u8` | No |  |
| `clearingProcessedDate` | `[]const u8` | No |  |
| `clearingStatus` | `[]const u8` | No |  |
| `clientId` | `i64` | No |  |
| `currency` | `[]const u8` | No |  |
| `cvm` | `[]const u8` | No |  |
| `ecrData` | `[]const u8` | No |  |
| `emvApplicationId` | `[]const u8` | No |  |
| `emvApplicationLabel` | `[]const u8` | No |  |
| `merchantName` | `[]const u8` | No |  |
| `merchantNumber` | `[]const u8` | No |  |
| `originalClientId` | `[]const u8` | No |  |
| `originalTerminalId` | `i64` | No |  |
| `originalTransactionId` | `[]const u8` | No |  |
| `paymentReason` | `[]const u8` | No |  |
| `receiptNumber` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseCodeFromAS` | `[]const u8` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `retrievalReferenceNumber` | `[]const u8` | No |  |
| `serviceCode` | `[]const u8` | No |  |
| `settlementStatus` | `[]const u8` | No |  |
| `sourceId` | `i64` | No |  |
| `tecsengineResponseCode` | `i64` | No |  |
| `tecsengineResponseText` | `[]const u8` | No |  |
| `terminalEndOfDayDate` | `[]const u8` | No |  |
| `terminalId` | `i64` | No |  |
| `terminalLocation` | `[]const u8` | No |  |
| `tipAmount` | `i64` | No |  |
| `traceNumber` | `i64` | No |  |
| `transactionClearingDate` | `[]const u8` | No |  |
| `transactionDate` | `[]const u8` | No |  |
| `transactionId` | `[]const u8` | No |  |
| `transactionSeqNumber` | `i64` | No |  |
| `transactionServerDate` | `[]const u8` | No |  |
| `transactionSource` | `[]const u8` | No |  |
| `transactionType` | `[]const u8` | No |  |

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
| `acqTabNexo` | `Value (object)` | No |  |
| `configVersion` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `serialNumber` | `[]const u8` | Yes |  |
| `tidSent` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.store_terminal_parameter(h.vnull()).create(h.jo(&.{
    .{ "serialNumber", h.vstr("example_serialNumber") }, // []const u8
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
| `deviceSerialNumber` | `Value (array)` | Yes |  |
| `duplicateTerminalIds` | `Value (array)` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `terminals` | `Value (array)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.terminal_id(h.vnull()).create(h.jo(&.{
    .{ "deviceSerialNumber", h.olist() }, // Value (array)
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
| `3DSecure` | `[]const u8` | No |  |
| `authorizationCode` | `[]const u8` | No |  |
| `cardBrand` | `[]const u8` | No |  |
| `clearingAmountFrom` | `[]const u8` | No |  |
| `clearingAmountTo` | `[]const u8` | No |  |
| `clearingCurrency` | `[]const u8` | No |  |
| `clearingStatus` | `[]const u8` | No |  |
| `corporateUUID` | `[]const u8` | No |  |
| `orderByTransactionDate` | `[]const u8` | No |  |
| `pagination` | `Value (object)` | No |  |
| `paymentTokenPublicId` | `[]const u8` | No |  |
| `receiptNumber` | `[]const u8` | No |  |
| `referencedTransactionId` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `retrievalReferenceNumber` | `[]const u8` | No |  |
| `sourceId` | `i64` | No |  |
| `tecsengineResponseCodeFrom` | `[]const u8` | No |  |
| `tecsengineResponseCodeTo` | `[]const u8` | No |  |
| `terminalId` | `i64` | No |  |
| `traceNumber` | `[]const u8` | No |  |
| `transactionAmountFrom` | `[]const u8` | No |  |
| `transactionAmountTo` | `[]const u8` | No |  |
| `transactionDateFrom` | `[]const u8` | No |  |
| `transactionDateTo` | `[]const u8` | No |  |
| `transactionHistories` | `Value (array)` | No |  |
| `transactionId` | `[]const u8` | No |  |
| `transactionType` | `[]const u8` | No |  |
| `wallet` | `[]const u8` | No | Filter by wallet type. |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `transactionDateFrom` | `[]const u8` | No |  |
| `transactionDateTo` | `[]const u8` | No |  |
| `transactionsCount` | `Value (array)` | No |  |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `transactionDateFrom` | `[]const u8` | No |  |
| `transactionDateTo` | `[]const u8` | No |  |
| `transactionsCount` | `Value (array)` | No |  |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `transactionDateFrom` | `[]const u8` | No |  |
| `transactionDateTo` | `[]const u8` | No |  |
| `turnovers` | `Value (array)` | No |  |

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
| `corporateUuid` | `[]const u8` | Yes |  |
| `country` | `[]const u8` | No |  |
| `merchantCategoryCode` | `[]const u8` | No |  |
| `name` | `[]const u8` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `state` | `[]const u8` | No |  |
| `street` | `[]const u8` | No |  |
| `vuNummer` | `[]const u8` | No |  |
| `zipcode` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.update_merchant(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `[]const u8` | No |  |
| `templateName` | `[]const u8` | Yes |  |
| `templateXml` | `[]const u8` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.update_template_xml(h.vnull()).create(h.jo(&.{
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
    .{ "templateXml", h.vstr("example_templateXml") }, // []const u8
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
| `appName` | `[]const u8` | No |  |
| `buildDate` | `[]const u8` | No |  |
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
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
| `idempotency` | 0.0.1 | Idempotency keys for safe retries of mutating operations |
| `log` | 0.0.1 | Structured request and response logging |
| `metrics` | 0.0.1 | Statistics capture: per-operation counters and latency |
| `paging` | 0.0.1 | Pagination signals for list operations |
| `ratelimit` | 0.0.1 | Client-side rate limiting via a token bucket |
| `retry` | 0.0.1 | Automatic retry of transient failures with exponential backoff |
| `telemetry` | 0.0.1 | Distributed tracing spans with W3C trace-context propagation |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |
| `timeout` | 0.0.1 | Per-request timeout with transport abort |


Features are activated via the `feature` option:

```zig
const client = sdk.BluefinTecsMerchantServicesSDK.new(h.jo(&.{
    .{ "feature", h.jo(&.{
        .{ "audit", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "clienttrack", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "idempotency", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "log", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "metrics", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "paging", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "ratelimit", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "retry", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "telemetry", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "test", h.jo(&.{.{ "active", h.vbool(true) }}) },
        .{ "timeout", h.jo(&.{.{ "active", h.vbool(true) }}) },
    }) },
}));
```


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### Ordering

`ratelimit`, `retry`, `timeout` wrap the transport. Each
wraps whatever is already installed, so **activation order is nesting order**:
a feature activated later sits OUTSIDE one activated earlier, and sees the call
first.

That decides behaviour, not just sequence: a feature that short-circuits the
call, such as a cache serving a hit, stops every feature nested inside it from
ever seeing that call.

`audit`, `clienttrack`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.audit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `clienttrack`

Client identity and per-request correlation headers.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `idempotency`

Idempotency keys for safe retries of mutating operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.idempotency.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `log`

Structured request and response logging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `true` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.log.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `metrics`

Statistics capture: per-operation counters and latency.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.metrics.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `paging`

Pagination signals for list operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.paging.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `ratelimit`

Client-side rate limiting via a token bucket.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.ratelimit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `retry`

Automatic retry of transient failures with exponential backoff.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.retry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `telemetry`

Distributed tracing spans with W3C trace-context propagation.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.telemetry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.

#### `timeout`

Per-request timeout with transport abort.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

