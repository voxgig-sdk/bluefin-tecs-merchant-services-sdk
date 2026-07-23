# BluefinTecsMerchantServices Swift SDK



The Swift SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Swift conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.CancelTransaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to a SwiftPM registry. The generated SDK
is a dependency-free SwiftPM package (Foundation only, plus the vendored
Voxgig Struct port). Depend on it from the GitHub release tag
(`swift/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) by adding it to
your `Package.swift`:

```swift
dependencies: [
    // From the git release tag:
    .package(url: "<repo-url>", exact: "0.0.1"),
],
```

Or build from a source checkout with SwiftPM:

```bash
cd swift && swift build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```swift
import BluefinTecsMerchantServicesSdk

let options = VMap()
options.entries["apikey"] = .string(
    ProcessInfo.processInfo.environment["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] ?? "")
let client = BluefinTecsMerchantServicesSDK(options)
```

### 4. Create, update, and remove

```swift
// Create — returns the bare created record (a Value)
let created = try client.CancelTransaction().create(VMap([("client_id", .int(1)), ("currency", .string("example_currency")), ("receipt_number", .string("example_receipt_number")), ("terminal_id", .int(1))]), nil)

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

```swift
let result = client.direct(VMap([
    ("path", .string("/api/resource/{id}")),
    ("method", .string("GET")),
    ("params", .map([("id", .string("example"))])),
]))

if result.entries["ok"] == .bool(true) {
    print(result.entries["status"] ?? .noval)  // 200
    print(result.entries["data"] ?? .noval)     // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // an absent key simply reads as .noval.
    print(result.entries["status"] ?? .noval, result.entries["err"] ?? .noval)
}
```

### Prepare a request without sending it

```swift
// prepare() returns the fetch definition and throws on error.
let fetchdef = try client.prepare(VMap([
    ("path", .string("/api/resource/{id}")),
    ("method", .string("DELETE")),
    ("params", .map([("id", .string("example"))])),
]))

print(fetchdef.entries["url"] ?? .noval)
print(fetchdef.entries["method"] ?? .noval)
print(fetchdef.entries["headers"] ?? .noval)
```

### Use test mode

Create a mock client for unit testing — no server required:

```swift
let client = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)

// Entity ops return the bare record and throw on error.
let digitalServicesApi = try client.DigitalServicesApi().load(nil, nil)
// digitalServicesApi holds the mock response record
print(digitalServicesApi)
```

### Use a custom fetch function

Replace the HTTP transport with your own `SystemFetch` closure:

```swift
let fetch: SystemFetch = { url, _ in
    let m = VMap()
    m.entries["status"] = .int(200)
    m.entries["statusText"] = .string("OK")
    m.entries["headers"] = .map(VMap())
    m.entries["json"] = .nat({ () -> Value in .map(VMap([("id", .string("mock01"))])) } as NativeCall0)
    return .map(m)
}

let system = VMap()
system.entries["fetch"] = .nat(fetch)
let options = VMap()
options.entries["base"] = .string("http://localhost:8080")
options.entries["system"] = .map(system)
let client = BluefinTecsMerchantServicesSDK(options)
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd swift && make test
```


## Reference

### BluefinTecsMerchantServicesSDK

```swift
let client = BluefinTecsMerchantServicesSDK(options)
```

Creates a new SDK client. `options` is a `VMap` of `Value`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `VMap` | Feature activation flags. |
| `extend` | `VList` | Additional Feature instances to load. |
| `system` | `VMap` | System overrides (e.g. custom `fetch` function). |

### testSDK

```swift
let client = BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> VMap` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) throws -> VMap` | Build an HTTP request definition without sending. Throws on error. |
| `direct` | `(fetchargs) -> VMap` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `CancelTransaction` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EcomParameter entity instance. |
| `EcrData` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EcrData entity instance. |
| `EmvData` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EmvData entity instance. |
| `EnableAcquiring` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a KeepAlive entity instance. |
| `ListTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a MoveTid entity instance. |
| `PaymentManual` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a PaymentManual entity instance. |
| `PaymentSred` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a RegisterTerminal entity instance. |
| `ReportData` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a ReportData entity instance. |
| `StatusTransaction` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TerminalId entity instance. |
| `TransactionHistory` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create an UpdateTemplateXml entity instance. |
| `Version` | `(entopts) -> BluefinTecsMerchantServicesEntityBase` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) throws -> Value` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, ctrl) throws -> Value` | Create a new entity. Throws on error. |
| `data` | `(newdata?) -> Value` | Get or set entity data. |
| `matchv` | `(newmatch?) -> Value` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `Value` map for
single-entity ops, a `Value` list for `list`) and throw on error. Wrap
calls in `do`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `VMap` you
branch on via `result.entries["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `true` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `VMap` | Response headers. |
| `data` | `Value` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

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

Create an instance: `let cancelTransaction = client.CancelTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```swift
let cancelTransaction = try client.CancelTransaction().create(VMap([
    ("client_id", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receipt_number", .string("example_receipt_number")),  // String
    ("terminal_id", .int(1))  // Int
]), nil)
```


### CheckCardBlackListed

Create an instance: `let checkCardBlackListed = client.CheckCardBlackListed()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```swift
let checkCardBlackListed = try client.CheckCardBlackListed().create(VMap([
]), nil)
```


### CreateProduct

Create an instance: `let createProduct = client.CreateProduct()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `Int` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_type` | `String` |  |
| `template_xml` | `String` |  |
| `terminal_type` | `String` |  |

#### Example: Create

```swift
let createProduct = try client.CreateProduct().create(VMap([
    ("template_name", .string("example_template_name")),  // String
    ("template_type", .string("example_template_type")),  // String
    ("template_xml", .string("example_template_xml")),  // String
    ("terminal_type", .string("example_terminal_type"))  // String
]), nil)
```


### DeactivateTerminal

Create an instance: `let deactivateTerminal = client.DeactivateTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `deactivation_reason` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```swift
let deactivateTerminal = try client.DeactivateTerminal().create(VMap([
    ("deactivation_reason", .string("example_deactivation_reason")),  // String
    ("terminal_id", .int(1))  // Int
]), nil)
```


### DigitalServicesApi

Create an instance: `let digitalServicesApi = client.DigitalServicesApi()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `tx_count` | `Int` |  |
| `tx_id_end` | `String` |  |
| `tx_id_start` | `String` |  |
| `tx_seq_no_end` | `Int` |  |
| `tx_seq_no_start` | `Int` |  |
| `tx_total` | `Int` |  |

#### Example: Load

```swift
let digitalServicesApi = try client.DigitalServicesApi().load(nil, nil)
```

#### Example: Create

```swift
let digitalServicesApi = try client.DigitalServicesApi().create(VMap([
]), nil)
```


### EcDataEcom

Create an instance: `let ecDataEcom = client.EcDataEcom()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```swift
let ecDataEcom = try client.EcDataEcom().create(VMap([
    ("terminal_id", .int(1)),  // Int
    ("transaction_id", .string("example_transaction_id")),  // String
    ("transaction_type", .string("example_transaction_type"))  // String
]), nil)
```


### EcomParameter

Create an instance: `let ecomParameter = client.EcomParameter()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `String` |  |
| `ecom_skey` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```swift
let ecomParameter = try client.EcomParameter().create(VMap([
    ("terminal_id", .int(1))  // Int
]), nil)
```


### EcrData

Create an instance: `let ecrData = client.EcrData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```swift
let ecrData = try client.EcrData().create(VMap([
    ("terminal_id", .int(1)),  // Int
    ("transaction_id", .string("example_transaction_id")),  // String
    ("transaction_type", .string("example_transaction_type"))  // String
]), nil)
```


### EmvData

Create an instance: `let emvData = client.EmvData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```swift
let emvData = try client.EmvData().create(VMap([
    ("terminal_id", .int(1)),  // Int
    ("transaction_id", .string("example_transaction_id")),  // String
    ("transaction_type", .string("example_transaction_type"))  // String
]), nil)
```


### EnableAcquiring

Create an instance: `let enableAcquiring = client.EnableAcquiring()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `Int` |  |
| `additional_data` | `VMap` |  |
| `corporate_uuid` | `String` |  |
| `currency` | `String` |  |
| `merchant_category_code` | `Int` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sorting_code` | `Int` |  |
| `template_name` | `String` |  |
| `terminal_id` | `[Value]` |  |
| `terminal_id_acq` | `String` |  |
| `vu_nummer` | `String` |  |

#### Example: Create

```swift
let enableAcquiring = try client.EnableAcquiring().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid")),  // String
    ("currency", .string("example_currency")),  // String
    ("merchant_category_code", .int(1)),  // Int
    ("package_order_uuid", .string("example_package_order_uuid")),  // String
    ("product_order_uuid", .string("example_product_order_uuid")),  // String
    ("template_name", .string("example_template_name"))  // String
]), nil)
```


### GetMerchantContractNumber

Create an instance: `let getMerchantContractNumber = client.GetMerchantContractNumber()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```swift
let getMerchantContractNumber = try client.GetMerchantContractNumber().create(VMap([
    ("merchant_contract_number", .string("example_merchant_contract_number"))  // String
]), nil)
```


### GetTemplateXml

Create an instance: `let getTemplateXml = client.GetTemplateXml()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```swift
let getTemplateXml = try client.GetTemplateXml().create(VMap([
    ("template_name", .string("example_template_name"))  // String
]), nil)
```


### IntroduceMandator

Create an instance: `let introduceMandator = client.IntroduceMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```swift
let introduceMandator = try client.IntroduceMandator().create(VMap([
    ("mandator_name", .string("example_mandator_name"))  // String
]), nil)
```


### IntroducePackage

Create an instance: `let introducePackage = client.IntroducePackage()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_template_description` | `String` |  |

#### Example: Create

```swift
let introducePackage = try client.IntroducePackage().create(VMap([
    ("terminal_template_description", .string("example_terminal_template_description"))  // String
]), nil)
```


### KeepAlive

Create an instance: `let keepAlive = client.KeepAlive()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `ka_date_time_from` | `String` |  |
| `ka_date_time_to` | `String` |  |
| `keep_alive_data` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_date_time_from` | `String` |  |
| `terminal_date_time_to` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```swift
let keepAlive = try client.KeepAlive().create(VMap([
]), nil)
```


### ListTerminal

Create an instance: `let listTerminal = client.ListTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `[Value]` |  |
| `filter` | `VMap` |  |
| `pagination` | `VMap` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal` | `[Value]` |  |

#### Example: Create

```swift
let listTerminal = try client.ListTerminal().create(VMap([
]), nil)
```


### MandatorClearingExport

Create an instance: `let mandatorClearingExport = client.MandatorClearingExport()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `pagination` | `VMap` |  |
| `record` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```swift
let mandatorClearingExport = try client.MandatorClearingExport().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to"))  // String
]), nil)
```


### MandatorClearingExportDownload

Create an instance: `let mandatorClearingExportDownload = client.MandatorClearingExportDownload()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `file_id` | `String` |  |
| `filename_template` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `status` | `String` |  |

#### Example: Load

```swift
let mandatorClearingExportDownload = try client.MandatorClearingExportDownload().load(VMap([("id", .string("mandator_clearing_export_download_id"))]), nil)
```

#### Example: Create

```swift
let mandatorClearingExportDownload = try client.MandatorClearingExportDownload().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to"))  // String
]), nil)
```


### MandatorClearingExportSummary

Create an instance: `let mandatorClearingExportSummary = client.MandatorClearingExportSummary()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `record` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```swift
let mandatorClearingExportSummary = try client.MandatorClearingExportSummary().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to"))  // String
]), nil)
```


### MerchantPortalServicesApi

Create an instance: `let merchantPortalServicesApi = client.MerchantPortalServicesApi()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `String` |  |
| `authorization_code` | `String` |  |
| `card_brand` | `String` |  |
| `clearing_amount_from` | `String` |  |
| `clearing_amount_to` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_status` | `String` |  |
| `corporate_uuid` | `String` |  |
| `order_by_transaction_date` | `String` |  |
| `pagination` | `VMap` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `Int` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `Int` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```swift
let merchantPortalServicesApi = try client.MerchantPortalServicesApi().create(VMap([
]), nil)
```


### MoveTid

Create an instance: `let moveTid = client.MoveTid()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `target_packageorderuuid` | `String` |  |
| `target_productorderuuid` | `String` |  |

#### Example: Create

```swift
let moveTid = try client.MoveTid().create(VMap([
    ("productorderuuid", .list([]))  // [Value]
]), nil)
```


### PaymentManual

Create an instance: `let paymentManual = client.PaymentManual()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `Int` |  |
| `authorization_number` | `String` |  |
| `card_number` | `String` |  |
| `card_type` | `String` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `date_time_tx` | `String` |  |
| `exp_date` | `String` |  |
| `merchant_id` | `String` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `response_code` | `String` |  |
| `response_message` | `String` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```swift
let paymentManual = try client.PaymentManual().create(VMap([
    ("amount", .int(1)),  // Int
    ("card_number", .string("example_card_number")),  // String
    ("currency", .string("example_currency")),  // String
    ("exp_date", .string("example_exp_date")),  // String
    ("txtype", .string("example_txtype"))  // String
]), nil)
```


### PaymentSred

Create an instance: `let paymentSred = client.PaymentSred()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `Int` |  |
| `authorization_number` | `String` |  |
| `card_type` | `String` |  |
| `currency` | `String` |  |
| `date_time_tx` | `String` |  |
| `device_payload` | `String` |  |
| `merchant_id` | `String` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `response_code` | `String` |  |
| `response_message` | `String` |  |
| `sred` | `VMap` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```swift
let paymentSred = try client.PaymentSred().create(VMap([
    ("amount", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("device_payload", .string("example_device_payload")),  // String
    ("txtype", .string("example_txtype"))  // String
]), nil)
```


### PreAuthTransactionCompletion

Create an instance: `let preAuthTransactionCompletion = client.PreAuthTransactionCompletion()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `card_number_reference` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```swift
let preAuthTransactionCompletion = try client.PreAuthTransactionCompletion().create(VMap([
    ("card_number_reference", .string("example_card_number_reference")),  // String
    ("client_id", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receipt_number", .string("example_receipt_number")),  // String
    ("terminal_id", .int(1)),  // Int
    ("transaction_type", .string("example_transaction_type"))  // String
]), nil)
```


### ReactivateTerminal

Create an instance: `let reactivateTerminal = client.ReactivateTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `reactivation_reason` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```swift
let reactivateTerminal = try client.ReactivateTerminal().create(VMap([
    ("reactivation_reason", .string("example_reactivation_reason")),  // String
    ("terminal_id", .int(1))  // Int
]), nil)
```


### RefundTransaction

Create an instance: `let refundTransaction = client.RefundTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```swift
let refundTransaction = try client.RefundTransaction().create(VMap([
    ("client_id", .int(1)),  // Int
    ("currency", .string("example_currency")),  // String
    ("receipt_number", .string("example_receipt_number")),  // String
    ("terminal_id", .int(1))  // Int
]), nil)
```


### RegisterTecsCompany

Create an instance: `let registerTecsCompany = client.RegisterTecsCompany()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `partner_id` | `Int` |  |
| `partner_name` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```swift
let registerTecsCompany = try client.RegisterTecsCompany().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid")),  // String
    ("package_order_uuid", .string("example_package_order_uuid")),  // String
    ("product_order_uuid", .string("example_product_order_uuid")),  // String
    ("template_name", .string("example_template_name"))  // String
]), nil)
```


### RegisterTerminal

Create an instance: `let registerTerminal = client.RegisterTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `VMap` |  |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `tecs_web_secret_key` | `String` |  |
| `template_name` | `String` |  |
| `terminal_country_code` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_id_acq` | `String` |  |
| `terminal_language_code` | `String` |  |
| `terminal_location` | `String` |  |
| `terminal_serial_number` | `String` |  |
| `token_io_alia` | `String` |  |
| `token_io_iban` | `String` |  |
| `token_io_member_id` | `String` |  |
| `web_shop_url` | `String` |  |

#### Example: Create

```swift
let registerTerminal = try client.RegisterTerminal().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid")),  // String
    ("package_order_uuid", .string("example_package_order_uuid")),  // String
    ("product_order_uuid", .string("example_product_order_uuid")),  // String
    ("template_name", .string("example_template_name")),  // String
    ("terminal_country_code", .string("example_terminal_country_code")),  // String
    ("terminal_language_code", .string("example_terminal_language_code")),  // String
    ("terminal_location", .string("example_terminal_location"))  // String
]), nil)
```


### ReportData

Create an instance: `let reportData = client.ReportData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `[Value]` |  |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `corporate_id` | `String` |  |
| `currency` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sum_over_credit_tx` | `VMap` |  |
| `sum_over_debit_tx` | `VMap` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```swift
let reportData = try client.ReportData().create(VMap([
    ("clearing_date_from", .string("example_clearing_date_from")),  // String
    ("clearing_date_to", .string("example_clearing_date_to")),  // String
    ("corporate_id", .string("example_corporate_id")),  // String
    ("currency", .string("example_currency"))  // String
]), nil)
```


### StatusTransaction

Create an instance: `let statusTransaction = client.StatusTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `acquirer_terminal_id` | `String` |  |
| `amount` | `Int` |  |
| `application_cryptogram` | `String` |  |
| `authorization_code` | `Value` |  |
| `authorization_date` | `String` |  |
| `card_brand` | `String` |  |
| `card_entry` | `String` |  |
| `card_expiration` | `String` |  |
| `card_number` | `String` |  |
| `clearing_amount` | `Int` |  |
| `clearing_batch_id` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_date` | `String` |  |
| `clearing_processed_date` | `String` |  |
| `clearing_status` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_application_id` | `String` |  |
| `emv_application_label` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `original_client_id` | `String` |  |
| `original_terminal_id` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_code_from_a` | `String` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `service_code` | `String` |  |
| `settlement_status` | `String` |  |
| `source_id` | `Int` |  |
| `tecsengine_response_code` | `Int` |  |
| `tecsengine_response_text` | `String` |  |
| `terminal_end_of_day_date` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `tip_amount` | `Int` |  |
| `trace_number` | `Int` |  |
| `transaction_clearing_date` | `String` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_seq_number` | `Int` |  |
| `transaction_server_date` | `String` |  |
| `transaction_source` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```swift
let statusTransaction = try client.StatusTransaction().create(VMap([
]), nil)
```


### StoreTerminalParameter

Create an instance: `let storeTerminalParameter = client.StoreTerminalParameter()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `VMap` |  |
| `config_version` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `tid_sent` | `String` |  |

#### Example: Create

```swift
let storeTerminalParameter = try client.StoreTerminalParameter().create(VMap([
    ("serial_number", .string("example_serial_number"))  // String
]), nil)
```


### TerminalId

Create an instance: `let terminalId = client.TerminalId()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `[Value]` |  |
| `duplicate_terminal_id` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal` | `[Value]` |  |

#### Example: Create

```swift
let terminalId = try client.TerminalId().create(VMap([
    ("device_serial_number", .list([]))  // [Value]
]), nil)
```


### TransactionHistory

Create an instance: `let transactionHistory = client.TransactionHistory()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `String` |  |
| `authorization_code` | `String` |  |
| `card_brand` | `String` |  |
| `clearing_amount_from` | `String` |  |
| `clearing_amount_to` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_status` | `String` |  |
| `corporate_uuid` | `String` |  |
| `order_by_transaction_date` | `String` |  |
| `pagination` | `VMap` |  |
| `payment_token_public_id` | `String` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `Int` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `Int` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_history` | `[Value]` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```swift
let transactionHistory = try client.TransactionHistory().create(VMap([
]), nil)
```


### TransactionsCount

Create an instance: `let transactionsCount = client.TransactionsCount()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `[Value]` |  |

#### Example: Create

```swift
let transactionsCount = try client.TransactionsCount().create(VMap([
]), nil)
```


### TransactionsCountCardBrand

Create an instance: `let transactionsCountCardBrand = client.TransactionsCountCardBrand()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `[Value]` |  |

#### Example: Create

```swift
let transactionsCountCardBrand = try client.TransactionsCountCardBrand().create(VMap([
]), nil)
```


### TransactionsTurnover

Create an instance: `let transactionsTurnover = client.TransactionsTurnover()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `turnover` | `[Value]` |  |

#### Example: Create

```swift
let transactionsTurnover = try client.TransactionsTurnover().create(VMap([
]), nil)
```


### UpdateMerchant

Create an instance: `let updateMerchant = client.UpdateMerchant()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporate_uuid` | `String` |  |
| `country` | `String` |  |
| `merchant_category_code` | `String` |  |
| `name` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vu_nummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```swift
let updateMerchant = try client.UpdateMerchant().create(VMap([
    ("corporate_uuid", .string("example_corporate_uuid"))  // String
]), nil)
```


### UpdateTemplateXml

Create an instance: `let updateTemplateXml = client.UpdateTemplateXml()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_xml` | `String` |  |

#### Example: Create

```swift
let updateTemplateXml = try client.UpdateTemplateXml().create(VMap([
    ("template_name", .string("example_template_name")),  // String
    ("template_xml", .string("example_template_xml"))  // String
]), nil)
```


### Version

Create an instance: `let version = client.Version()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```swift
let version = try client.Version().load(nil, nil)
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

### Data as loose values

The Swift SDK uses a loose object model — the vendored `Value` enum
(with `VMap` / `VList` wrappers) throughout — rather than a bespoke typed
struct per endpoint. This mirrors the dynamic nature of the API and keeps the
SDK flexible: no regeneration is needed when the API schema changes.

Use the `.asMap` / `.asList` / `.asString` accessors to safely coerce a
`Value` to a concrete Swift type (each returns `nil` on a type mismatch).
A `BluefinTecsMerchantServicesTypes.swift` file of reference `struct` types is also
generated for editor documentation.

### Project structure

```
swift/
├── Package.swift                     -- SwiftPM manifest (zero runtime deps)
├── Sources/ProjectNameSDK/
│   ├── core/                         -- Main client, config, entity base, error type
│   ├── entity/                       -- Generated entity clients
│   ├── feature/                      -- Built-in features (Base, Test, Log, ...)
│   ├── utility/                      -- Utility functions
│   └── Struct/                       -- Vendored Voxgig Struct port
└── Tests/ProjectNameSDKTests/        -- Test suites (XCTest)
```

The main client class (`BluefinTecsMerchantServicesSDK`, under `Sources/ProjectNameSDK/core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed. The SDK is dependency-free: JSON parsing is the vendored
`Struct/JSON.swift`, HTTP transport is Foundation's `URLSession`, and the
struct library is inlined under `Struct/`.

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
