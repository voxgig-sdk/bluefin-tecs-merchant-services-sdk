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
switch (client.cancel_transaction(h.vnull()).create(h.jo(&.{.{ "clientId", h.vnum(1) }, .{ "currency", h.vstr("example_currency") }, .{ "receiptNumber", h.vstr("example_receiptNumber") }, .{ "terminalId", h.vnum(1) }}), h.vnull())) {
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
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `cardNo` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateType` |  |
| `templateXml` |  |
| `terminalType` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `deactivationReason` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` |  |
| `responseMessage` |  |
| `txCount` |  |
| `txIdEnd` |  |
| `txIdStart` |  |
| `txSeqNoEnd` |  |
| `txSeqNoStart` |  |
| `txTotal` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `ecomData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecomPass` |  |
| `ecomSkey` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `ecrData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `emvData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `accountNo` |  |
| `additionalData` |  |
| `corporateUuid` |  |
| `currency` |  |
| `merchantCategoryCode` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sortingCode` |  |
| `templateName` |  |
| `terminalIdAcq` |  |
| `terminalIds` |  |
| `vuNummer` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchantContractNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalTemplateDescription` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `hwserialno` |  |
| `kaDateTimeFrom` |  |
| `kaDateTimeTo` |  |
| `keepAliveData` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalDateTimeFrom` |  |
| `terminalDateTimeTo` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `filter` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` |  |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Start date for clearing export (inclusive) |
| `clearingDateTo` | End date for clearing export (inclusive) |
| `fileId` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | Optional filename template for the export file |
| `id` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `status` | Processing status of the export request |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `3DSecure` |  |
| `authorizationCode` |  |
| `cardBrand` |  |
| `clearingAmountFrom` |  |
| `clearingAmountTo` |  |
| `clearingCurrency` |  |
| `clearingStatus` |  |
| `corporateUUID` |  |
| `orderByTransactionDate` |  |
| `pagination` |  |
| `receiptNumber` |  |
| `referencedTransactionId` |  |
| `retrievalReferenceNumber` |  |
| `sourceId` |  |
| `tecsengineResponseCodeFrom` |  |
| `tecsengineResponseCodeTo` |  |
| `terminalId` |  |
| `traceNumber` |  |
| `transactionAmountFrom` |  |
| `transactionAmountTo` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionId` |  |
| `transactionType` |  |
| `wallet` | Filter by wallet type. |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuids` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `targetPackageorderuuid` |  |
| `targetProductorderuuid` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `acquirerName` | Acquirer name parsed from KKG field |
| `amount` | Transaction amount in minor units (cents) |
| `authorizationNumber` | Authorization number from the gateway |
| `cardNumber` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | Card type parsed from KKG field |
| `currency` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | Date and time of the transaction |
| `expDate` | Card expiry date in MMYY format |
| `merchantId` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | Original transaction ID from gateway |
| `password` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | Response code - 00 for success, otherwise error code |
| `responseMessage` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | Terminal ID used for the transaction |
| `transactionId` | Transaction ID generated by the backend |
| `txtype` | Transaction type |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `amount` | Transaction amount in minor units (cents) |
| `currency` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | Device type that provided the SRED payload |
| `devicePayload` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | Card expiry date in MMYY format |
| `mode` | Decryption mode |
| `panMasked` | Masked PAN (first 6 and last 4 digits) |
| `password` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | Device serial number |
| `serviceCode` | Service code from the card |
| `terminalId` | Terminal ID - 8 digits |
| `txtype` | Transaction type |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `cardNumberReference` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `transactionType` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `reactivationReason` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `partnerId` |  |
| `partnerName` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `additionalData` |  |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `tecsWebSecretKey` |  |
| `templateName` |  |
| `terminalCountryCode` |  |
| `terminalId` |  |
| `terminalIdAcq` |  |
| `terminalLanguageCode` |  |
| `terminalLocation` |  |
| `terminalSerialNumber` |  |
| `tokenIOAlias` |  |
| `tokenIOIban` |  |
| `tokenIOMemberId` |  |
| `webShopUrl` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `cardBrandReportData` |  |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` |  |
| `currency` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sumOverCreditTx` |  |
| `sumOverDebitTx` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `acquirerName` |  |
| `acquirerTerminalId` |  |
| `amount` |  |
| `applicationCryptogram` |  |
| `authorizationCode` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` |  |
| `cardBrand` |  |
| `cardEntry` |  |
| `cardExpiration` |  |
| `cardNumber` |  |
| `clearingAmount` |  |
| `clearingBatchId` |  |
| `clearingCurrency` |  |
| `clearingDate` |  |
| `clearingProcessedDate` |  |
| `clearingStatus` |  |
| `clientId` |  |
| `currency` |  |
| `cvm` |  |
| `ecrData` |  |
| `emvApplicationId` |  |
| `emvApplicationLabel` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `originalClientId` |  |
| `originalTerminalId` |  |
| `originalTransactionId` |  |
| `paymentReason` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseCodeFromAS` |  |
| `responseMessage` |  |
| `retrievalReferenceNumber` |  |
| `serviceCode` |  |
| `settlementStatus` |  |
| `sourceId` |  |
| `tecsengineResponseCode` |  |
| `tecsengineResponseText` |  |
| `terminalEndOfDayDate` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `tipAmount` |  |
| `traceNumber` |  |
| `transactionClearingDate` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `transactionSeqNumber` |  |
| `transactionServerDate` |  |
| `transactionSource` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `acqTabNexo` |  |
| `configVersion` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `tidSent` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `deviceSerialNumber` |  |
| `duplicateTerminalIds` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `3DSecure` |  |
| `authorizationCode` |  |
| `cardBrand` |  |
| `clearingAmountFrom` |  |
| `clearingAmountTo` |  |
| `clearingCurrency` |  |
| `clearingStatus` |  |
| `corporateUUID` |  |
| `orderByTransactionDate` |  |
| `pagination` |  |
| `paymentTokenPublicId` |  |
| `receiptNumber` |  |
| `referencedTransactionId` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `retrievalReferenceNumber` |  |
| `sourceId` |  |
| `tecsengineResponseCodeFrom` |  |
| `tecsengineResponseCodeTo` |  |
| `terminalId` |  |
| `traceNumber` |  |
| `transactionAmountFrom` |  |
| `transactionAmountTo` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionHistories` |  |
| `transactionId` |  |
| `transactionType` |  |
| `wallet` | Filter by wallet type. |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionsCount` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionsCount` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `turnovers` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `city` |  |
| `corporateUuid` |  |
| `country` |  |
| `merchantCategoryCode` |  |
| `name` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `state` |  |
| `street` |  |
| `vuNummer` |  |
| `zipcode` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateXml` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
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
| `acquirerId` | `[]const u8` |  |
| `acquirerName` | `[]const u8` |  |
| `actualBonusPoints` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorizationCode` | `[]const u8` |  |
| `balanceAmount` | `[]const u8` |  |
| `cardBrand` | `[]const u8` |  |
| `cardNumber` | `[]const u8` |  |
| `clientId` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `ecData` | `[]const u8` |  |
| `ecrData` | `[]const u8` |  |
| `emvData` | `[]const u8` |  |
| `exchangeFee` | `i64` |  |
| `exchangeRate` | `[]const u8` |  |
| `languageCode` | `[]const u8` |  |
| `merchantAddress` | `[]const u8` |  |
| `merchantName` | `[]const u8` |  |
| `merchantNumber` | `[]const u8` |  |
| `messageType` | `[]const u8` |  |
| `originalTraceNumber` | `i64` |  |
| `originalTransactionId` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `paymentReason` | `[]const u8` |  |
| `receiptFooter` | `[]const u8` |  |
| `receiptHeader` | `[]const u8` |  |
| `receiptLayout` | `i64` |  |
| `receiptNumber` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `serialNumber` | `[]const u8` |  |
| `svc` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `[]const u8` |  |
| `traceNumber` | `i64` |  |
| `transactionDate` | `[]const u8` |  |
| `transactionId` | `[]const u8` |  |
| `txType` | `[]const u8` |  |
| `userData` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.cancel_transaction(h.vnull()).create(h.jo(&.{
    .{ "clientId", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receiptNumber", h.vstr("example_receiptNumber") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `cardNo` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |

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
| `acquirerId` | `i64` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `templateName` | `[]const u8` |  |
| `templateType` | `[]const u8` |  |
| `templateXml` | `[]const u8` |  |
| `terminalType` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.create_product(h.vnull()).create(h.jo(&.{
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
    .{ "templateType", h.vstr("example_templateType") }, // []const u8
    .{ "templateXml", h.vstr("example_templateXml") }, // []const u8
    .{ "terminalType", h.vstr("example_terminalType") }, // []const u8
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
| `corporateUuid` | `[]const u8` |  |
| `deactivationReason` | `[]const u8` |  |
| `packageOrderUuid` | `[]const u8` |  |
| `productOrderUuid` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```zig
switch (client.deactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "deactivationReason", h.vstr("example_deactivationReason") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `clearingDateFrom` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `txCount` | `i64` |  |
| `txIdEnd` | `[]const u8` |  |
| `txIdStart` | `[]const u8` |  |
| `txSeqNoEnd` | `i64` |  |
| `txSeqNoStart` | `i64` |  |
| `txTotal` | `i64` |  |

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
    .{ "file_id", h.vstr("example_file_id") }, // []const u8
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `ecomData` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `transactionId` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.ec_data_ecom(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionId", h.vstr("example_transactionId") }, // []const u8
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `ecomPass` | `[]const u8` |  |
| `ecomSkey` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```zig
switch (client.ecom_parameter(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
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
| `ecrData` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `transactionId` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.ecr_data(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionId", h.vstr("example_transactionId") }, // []const u8
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `emvData` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `transactionId` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.emv_data(h.vnull()).create(h.jo(&.{
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionId", h.vstr("example_transactionId") }, // []const u8
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `accountNo` | `i64` |  |
| `additionalData` | `Value (object)` |  |
| `corporateUuid` | `[]const u8` |  |
| `currency` | `[]const u8` |  |
| `merchantCategoryCode` | `i64` |  |
| `packageOrderUuid` | `[]const u8` |  |
| `productOrderUuid` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `sortingCode` | `i64` |  |
| `templateName` | `[]const u8` |  |
| `terminalIdAcq` | `[]const u8` |  |
| `terminalIds` | `Value (array)` |  |
| `vuNummer` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.enable_acquiring(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "merchantCategoryCode", h.vnum(1) }, // i64
    .{ "packageOrderUuid", h.vstr("example_packageOrderUuid") }, // []const u8
    .{ "productOrderUuid", h.vstr("example_productOrderUuid") }, // []const u8
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
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
| `merchantContractNumber` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.get_merchant_contract_number(h.vnull()).create(h.jo(&.{
    .{ "merchantContractNumber", h.vstr("example_merchantContractNumber") }, // []const u8
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
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `templateName` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.get_template_xml(h.vnull()).create(h.jo(&.{
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
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
| `mandatorName` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.introduce_mandator(h.vnull()).create(h.jo(&.{
    .{ "mandatorName", h.vstr("example_mandatorName") }, // []const u8
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
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalTemplateDescription` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.introduce_package(h.vnull()).create(h.jo(&.{
    .{ "terminalTemplateDescription", h.vstr("example_terminalTemplateDescription") }, // []const u8
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
| `kaDateTimeFrom` | `[]const u8` |  |
| `kaDateTimeTo` | `[]const u8` |  |
| `keepAliveData` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalDateTimeFrom` | `[]const u8` |  |
| `terminalDateTimeTo` | `[]const u8` |  |
| `terminalId` | `i64` |  |

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
| `corporateUuid` | `Value (array)` |  |
| `filter` | `Value (object)` |  |
| `pagination` | `Value (object)` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminals` | `Value (array)` |  |

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
| `clearingDateFrom` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Value (object)` |  |
| `records` | `Value (array)` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.mandator_clearing_export(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `clearingDateFrom` | `[]const u8` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `[]const u8` | End date for clearing export (inclusive) |
| `fileId` | `[]const u8` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `[]const u8` | Optional filename template for the export file |
| `id` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `status` | `[]const u8` | Processing status of the export request |

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
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `clearingDateFrom` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `Value (array)` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.mandator_clearing_export_summary(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
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
| `3DSecure` | `[]const u8` |  |
| `authorizationCode` | `[]const u8` |  |
| `cardBrand` | `[]const u8` |  |
| `clearingAmountFrom` | `[]const u8` |  |
| `clearingAmountTo` | `[]const u8` |  |
| `clearingCurrency` | `[]const u8` |  |
| `clearingStatus` | `[]const u8` |  |
| `corporateUUID` | `[]const u8` |  |
| `orderByTransactionDate` | `[]const u8` |  |
| `pagination` | `Value (object)` |  |
| `receiptNumber` | `[]const u8` |  |
| `referencedTransactionId` | `[]const u8` |  |
| `retrievalReferenceNumber` | `[]const u8` |  |
| `sourceId` | `i64` |  |
| `tecsengineResponseCodeFrom` | `[]const u8` |  |
| `tecsengineResponseCodeTo` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `traceNumber` | `[]const u8` |  |
| `transactionAmountFrom` | `[]const u8` |  |
| `transactionAmountTo` | `[]const u8` |  |
| `transactionDateFrom` | `[]const u8` |  |
| `transactionDateTo` | `[]const u8` |  |
| `transactionId` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |
| `wallet` | `[]const u8` | Filter by wallet type. |

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
| `productorderuuids` | `Value (array)` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `targetPackageorderuuid` | `[]const u8` |  |
| `targetProductorderuuid` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.move_tid(h.vnull()).create(h.jo(&.{
    .{ "productorderuuids", h.olist() }, // Value (array)
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
| `acquirerName` | `[]const u8` | Acquirer name parsed from KKG field |
| `amount` | `i64` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `[]const u8` | Authorization number from the gateway |
| `cardNumber` | `[]const u8` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `[]const u8` | Card type parsed from KKG field |
| `currency` | `[]const u8` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `[]const u8` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `[]const u8` | Date and time of the transaction |
| `expDate` | `[]const u8` | Card expiry date in MMYY format |
| `merchantId` | `[]const u8` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `[]const u8` | Original transaction ID from gateway |
| `password` | `[]const u8` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `[]const u8` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `[]const u8` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `[]const u8` | Terminal ID used for the transaction |
| `transactionId` | `[]const u8` | Transaction ID generated by the backend |
| `txtype` | `[]const u8` | Transaction type |

#### Example: Create

```zig
switch (client.payment_manual(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "cardNumber", h.vstr("example_cardNumber") }, // []const u8
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "expDate", h.vstr("example_expDate") }, // []const u8
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
| `amount` | `i64` | Transaction amount in minor units (cents) |
| `currency` | `[]const u8` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `[]const u8` | Device type that provided the SRED payload |
| `devicePayload` | `[]const u8` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `[]const u8` | Card expiry date in MMYY format |
| `mode` | `[]const u8` | Decryption mode |
| `panMasked` | `[]const u8` | Masked PAN (first 6 and last 4 digits) |
| `password` | `[]const u8` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `[]const u8` | Device serial number |
| `serviceCode` | `[]const u8` | Service code from the card |
| `terminalId` | `[]const u8` | Terminal ID - 8 digits |
| `txtype` | `[]const u8` | Transaction type |

#### Example: Create

```zig
switch (client.payment_sred(h.vnull()).create(h.jo(&.{
    .{ "amount", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "devicePayload", h.vstr("example_devicePayload") }, // []const u8
    .{ "terminalId", h.vstr("example_terminalId") }, // []const u8
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
| `acquirerId` | `[]const u8` |  |
| `acquirerName` | `[]const u8` |  |
| `actualBonusPoints` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorizationCode` | `[]const u8` |  |
| `balanceAmount` | `[]const u8` |  |
| `cardBrand` | `[]const u8` |  |
| `cardNumber` | `[]const u8` |  |
| `cardNumberReference` | `[]const u8` |  |
| `clientId` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `ecData` | `[]const u8` |  |
| `ecrData` | `[]const u8` |  |
| `emvData` | `[]const u8` |  |
| `exchangeFee` | `i64` |  |
| `exchangeRate` | `[]const u8` |  |
| `languageCode` | `[]const u8` |  |
| `merchantAddress` | `[]const u8` |  |
| `merchantName` | `[]const u8` |  |
| `merchantNumber` | `[]const u8` |  |
| `messageType` | `[]const u8` |  |
| `originalTraceNumber` | `i64` |  |
| `originalTransactionId` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `paymentReason` | `[]const u8` |  |
| `receiptFooter` | `[]const u8` |  |
| `receiptHeader` | `[]const u8` |  |
| `receiptLayout` | `i64` |  |
| `receiptNumber` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `serialNumber` | `[]const u8` |  |
| `svc` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `[]const u8` |  |
| `traceNumber` | `i64` |  |
| `transactionDate` | `[]const u8` |  |
| `transactionId` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |
| `txType` | `[]const u8` |  |
| `userData` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.pre_auth_transaction_completion(h.vnull()).create(h.jo(&.{
    .{ "cardNumberReference", h.vstr("example_cardNumberReference") }, // []const u8
    .{ "clientId", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receiptNumber", h.vstr("example_receiptNumber") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
    .{ "transactionType", h.vstr("example_transactionType") }, // []const u8
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
| `corporateUuid` | `[]const u8` |  |
| `packageOrderUuid` | `[]const u8` |  |
| `productOrderUuid` | `[]const u8` |  |
| `reactivationReason` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```zig
switch (client.reactivate_terminal(h.vnull()).create(h.jo(&.{
    .{ "reactivationReason", h.vstr("example_reactivationReason") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `acquirerId` | `[]const u8` |  |
| `acquirerName` | `[]const u8` |  |
| `actualBonusPoints` | `[]const u8` |  |
| `amount` | `i64` |  |
| `authorizationCode` | `[]const u8` |  |
| `balanceAmount` | `[]const u8` |  |
| `cardBrand` | `[]const u8` |  |
| `cardNumber` | `[]const u8` |  |
| `clientId` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvc` | `[]const u8` |  |
| `ecData` | `[]const u8` |  |
| `ecrData` | `[]const u8` |  |
| `emvData` | `[]const u8` |  |
| `exchangeFee` | `i64` |  |
| `exchangeRate` | `[]const u8` |  |
| `languageCode` | `[]const u8` |  |
| `merchantAddress` | `[]const u8` |  |
| `merchantName` | `[]const u8` |  |
| `merchantNumber` | `[]const u8` |  |
| `messageType` | `[]const u8` |  |
| `originalTraceNumber` | `i64` |  |
| `originalTransactionId` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `paymentReason` | `[]const u8` |  |
| `receiptFooter` | `[]const u8` |  |
| `receiptHeader` | `[]const u8` |  |
| `receiptLayout` | `i64` |  |
| `receiptNumber` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `serialNumber` | `[]const u8` |  |
| `svc` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `[]const u8` |  |
| `traceNumber` | `i64` |  |
| `transactionDate` | `[]const u8` |  |
| `transactionId` | `[]const u8` |  |
| `txType` | `[]const u8` |  |
| `userData` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.refund_transaction(h.vnull()).create(h.jo(&.{
    .{ "clientId", h.vnum(1) }, // i64
    .{ "currency", h.vstr("example_currency") }, // []const u8
    .{ "receiptNumber", h.vstr("example_receiptNumber") }, // []const u8
    .{ "terminalId", h.vnum(1) }, // i64
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
| `corporateUuid` | `[]const u8` |  |
| `packageOrderUuid` | `[]const u8` |  |
| `partnerId` | `i64` |  |
| `partnerName` | `[]const u8` |  |
| `productOrderUuid` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `templateName` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.register_tecs_company(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
    .{ "packageOrderUuid", h.vstr("example_packageOrderUuid") }, // []const u8
    .{ "productOrderUuid", h.vstr("example_productOrderUuid") }, // []const u8
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
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
| `additionalData` | `Value (object)` |  |
| `corporateUuid` | `[]const u8` |  |
| `packageOrderUuid` | `[]const u8` |  |
| `productOrderUuid` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `tecsWebSecretKey` | `[]const u8` |  |
| `templateName` | `[]const u8` |  |
| `terminalCountryCode` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `terminalIdAcq` | `[]const u8` |  |
| `terminalLanguageCode` | `[]const u8` |  |
| `terminalLocation` | `[]const u8` |  |
| `terminalSerialNumber` | `[]const u8` |  |
| `tokenIOAlias` | `[]const u8` |  |
| `tokenIOIban` | `[]const u8` |  |
| `tokenIOMemberId` | `[]const u8` |  |
| `webShopUrl` | `[]const u8` |  |

#### Example: Create

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
| `cardBrandReportData` | `Value (array)` |  |
| `clearingDateFrom` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `[]const u8` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `[]const u8` |  |
| `currency` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `sumOverCreditTx` | `Value (object)` |  |
| `sumOverDebitTx` | `Value (object)` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```zig
switch (client.report_data(h.vnull()).create(h.jo(&.{
    .{ "clearingDateFrom", h.vstr("example_clearingDateFrom") }, // []const u8
    .{ "clearingDateTo", h.vstr("example_clearingDateTo") }, // []const u8
    .{ "corporateId", h.vstr("example_corporateId") }, // []const u8
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
| `acquirerName` | `[]const u8` |  |
| `acquirerTerminalId` | `[]const u8` |  |
| `amount` | `i64` |  |
| `applicationCryptogram` | `[]const u8` |  |
| `authorizationCode` | `Value` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `[]const u8` |  |
| `cardBrand` | `[]const u8` |  |
| `cardEntry` | `[]const u8` |  |
| `cardExpiration` | `[]const u8` |  |
| `cardNumber` | `[]const u8` |  |
| `clearingAmount` | `i64` |  |
| `clearingBatchId` | `[]const u8` |  |
| `clearingCurrency` | `[]const u8` |  |
| `clearingDate` | `[]const u8` |  |
| `clearingProcessedDate` | `[]const u8` |  |
| `clearingStatus` | `[]const u8` |  |
| `clientId` | `i64` |  |
| `currency` | `[]const u8` |  |
| `cvm` | `[]const u8` |  |
| `ecrData` | `[]const u8` |  |
| `emvApplicationId` | `[]const u8` |  |
| `emvApplicationLabel` | `[]const u8` |  |
| `merchantName` | `[]const u8` |  |
| `merchantNumber` | `[]const u8` |  |
| `originalClientId` | `[]const u8` |  |
| `originalTerminalId` | `i64` |  |
| `originalTransactionId` | `[]const u8` |  |
| `paymentReason` | `[]const u8` |  |
| `receiptNumber` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseCodeFromAS` | `[]const u8` |  |
| `responseMessage` | `[]const u8` |  |
| `retrievalReferenceNumber` | `[]const u8` |  |
| `serviceCode` | `[]const u8` |  |
| `settlementStatus` | `[]const u8` |  |
| `sourceId` | `i64` |  |
| `tecsengineResponseCode` | `i64` |  |
| `tecsengineResponseText` | `[]const u8` |  |
| `terminalEndOfDayDate` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `[]const u8` |  |
| `tipAmount` | `i64` |  |
| `traceNumber` | `i64` |  |
| `transactionClearingDate` | `[]const u8` |  |
| `transactionDate` | `[]const u8` |  |
| `transactionId` | `[]const u8` |  |
| `transactionSeqNumber` | `i64` |  |
| `transactionServerDate` | `[]const u8` |  |
| `transactionSource` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |

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
| `acqTabNexo` | `Value (object)` |  |
| `configVersion` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `serialNumber` | `[]const u8` |  |
| `tidSent` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.store_terminal_parameter(h.vnull()).create(h.jo(&.{
    .{ "serialNumber", h.vstr("example_serialNumber") }, // []const u8
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
| `deviceSerialNumber` | `Value (array)` |  |
| `duplicateTerminalIds` | `Value (array)` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `terminals` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.terminal_id(h.vnull()).create(h.jo(&.{
    .{ "deviceSerialNumber", h.olist() }, // Value (array)
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
| `3DSecure` | `[]const u8` |  |
| `authorizationCode` | `[]const u8` |  |
| `cardBrand` | `[]const u8` |  |
| `clearingAmountFrom` | `[]const u8` |  |
| `clearingAmountTo` | `[]const u8` |  |
| `clearingCurrency` | `[]const u8` |  |
| `clearingStatus` | `[]const u8` |  |
| `corporateUUID` | `[]const u8` |  |
| `orderByTransactionDate` | `[]const u8` |  |
| `pagination` | `Value (object)` |  |
| `paymentTokenPublicId` | `[]const u8` |  |
| `receiptNumber` | `[]const u8` |  |
| `referencedTransactionId` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `retrievalReferenceNumber` | `[]const u8` |  |
| `sourceId` | `i64` |  |
| `tecsengineResponseCodeFrom` | `[]const u8` |  |
| `tecsengineResponseCodeTo` | `[]const u8` |  |
| `terminalId` | `i64` |  |
| `traceNumber` | `[]const u8` |  |
| `transactionAmountFrom` | `[]const u8` |  |
| `transactionAmountTo` | `[]const u8` |  |
| `transactionDateFrom` | `[]const u8` |  |
| `transactionDateTo` | `[]const u8` |  |
| `transactionHistories` | `Value (array)` |  |
| `transactionId` | `[]const u8` |  |
| `transactionType` | `[]const u8` |  |
| `wallet` | `[]const u8` | Filter by wallet type. |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `transactionDateFrom` | `[]const u8` |  |
| `transactionDateTo` | `[]const u8` |  |
| `transactionsCount` | `Value (array)` |  |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `transactionDateFrom` | `[]const u8` |  |
| `transactionDateTo` | `[]const u8` |  |
| `transactionsCount` | `Value (array)` |  |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `transactionDateFrom` | `[]const u8` |  |
| `transactionDateTo` | `[]const u8` |  |
| `turnovers` | `Value (array)` |  |

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
| `corporateUuid` | `[]const u8` |  |
| `country` | `[]const u8` |  |
| `merchantCategoryCode` | `[]const u8` |  |
| `name` | `[]const u8` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `state` | `[]const u8` |  |
| `street` | `[]const u8` |  |
| `vuNummer` | `[]const u8` |  |
| `zipcode` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.update_merchant(h.vnull()).create(h.jo(&.{
    .{ "corporateUuid", h.vstr("example_corporateUuid") }, // []const u8
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
| `responseCode` | `i64` |  |
| `responseMessage` | `[]const u8` |  |
| `templateName` | `[]const u8` |  |
| `templateXml` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.update_template_xml(h.vnull()).create(h.jo(&.{
    .{ "templateName", h.vstr("example_templateName") }, // []const u8
    .{ "templateXml", h.vstr("example_templateXml") }, // []const u8
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
| `appName` | `[]const u8` |  |
| `buildDate` | `[]const u8` |  |
| `version` | `[]const u8` |  |

#### Example: Load

```zig
switch (client.version(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |version| std.debug.print("{s}\n", .{h.stringify(version)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

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
