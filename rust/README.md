# BluefinTecsMerchantServices Rust SDK



The Rust SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Rust conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.cancel_transaction(Value::Noval)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This crate is not yet published to crates.io. Depend on it from the GitHub
release tag (`rust/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout by adding it to your `Cargo.toml`:

```toml
[dependencies]
# From a source checkout:
voxgig-bluefin-tecs-merchant-services-sdk = { path = "../rust" }

# Or from the git release tag:
# voxgig-bluefin-tecs-merchant-services-sdk = { git = "<repo-url>", tag = "rust/vX.Y.Z" }
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```rust
use bluefin_tecs_merchant_services_sdk::{getp, jo, BluefinTecsMerchantServicesSDK, Value};

let client = BluefinTecsMerchantServicesSDK::new(jo(vec![
    ("apikey", Value::str(std::env::var("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY").unwrap_or_default())),
]));
```

### 4. Create, update, and remove

```rust
// Create — returns the bare created record
let created = client.cancel_transaction(Value::Noval).create(jo(vec![("client_id", Value::Num(1.0)), ("currency", Value::str("example_currency")), ("receipt_number", Value::str("example_receipt_number")), ("terminal_id", Value::Num(1.0))]), Value::Noval).unwrap();

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

```rust
let result = client.direct(jo(vec![
    ("path", Value::str("/api/resource/{id}")),
    ("method", Value::str("GET")),
    ("params", jo(vec![("id", Value::str("example"))])),
])).unwrap();

if getp(&result, "ok") == Value::Bool(true) {
    println!("{:?}", getp(&result, "status"));  // 200
    println!("{:?}", getp(&result, "data"));    // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    println!("{:?} {:?}", getp(&result, "status"), getp(&result, "err"));
}
```

### Prepare a request without sending it

```rust
// prepare() returns the fetch definition on Ok and Err on failure.
let fetchdef = client.prepare(jo(vec![
    ("path", Value::str("/api/resource/{id}")),
    ("method", Value::str("DELETE")),
    ("params", jo(vec![("id", Value::str("example"))])),
])).unwrap();

println!("{:?}", getp(&fetchdef, "url"));
println!("{:?}", getp(&fetchdef, "method"));
println!("{:?}", getp(&fetchdef, "headers"));
```

### Use test mode

Create a mock client for unit testing — no server required:

```rust
let client = test_sdk(Value::Noval, Value::Noval);

// Entity ops return the bare record on Ok and Err on failure.
let digital_services_api = client.digital_services_api(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
// digital_services_api contains the mock response record
```

### Point at a different server

Override the base URL to reach a local or staging server:

```rust
let client = BluefinTecsMerchantServicesSDK::new(jo(vec![
    ("base", Value::str("http://localhost:8080")),
]));
```

### Run live tests

Create a `.env.local` file at the crate root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd rust && cargo test
```


## Reference

### BluefinTecsMerchantServicesSDK

```rust
use bluefin_tecs_merchant_services_sdk::{BluefinTecsMerchantServicesSDK, Value};

let client = BluefinTecsMerchantServicesSDK::new(options);
```

Creates a new SDK client. `options` is a `Value` map (`Value::Noval` for
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

```rust
use bluefin_tecs_merchant_services_sdk::{test_sdk, Value};

let client = test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`Value::Noval`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> Value` | Deep copy of the current SDK options. |
| `get_utility` | `() -> Rc<Utility>` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs: Value) -> Result<Value, BluefinTecsMerchantServicesError>` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs: Value) -> Result<Value, BluefinTecsMerchantServicesError>` | Build and send an HTTP request. `Ok` is a result map (branch on `ok`). |
| `cancel_transaction` | `(entopts: Value) -> Rc<CancelTransactionEntity>` | Create a CancelTransaction entity instance. |
| `check_card_black_listed` | `(entopts: Value) -> Rc<CheckCardBlackListedEntity>` | Create a CheckCardBlackListed entity instance. |
| `create_product` | `(entopts: Value) -> Rc<CreateProductEntity>` | Create a CreateProduct entity instance. |
| `deactivate_terminal` | `(entopts: Value) -> Rc<DeactivateTerminalEntity>` | Create a DeactivateTerminal entity instance. |
| `digital_services_api` | `(entopts: Value) -> Rc<DigitalServicesApiEntity>` | Create a DigitalServicesApi entity instance. |
| `ec_data_ecom` | `(entopts: Value) -> Rc<EcDataEcomEntity>` | Create an EcDataEcom entity instance. |
| `ecom_parameter` | `(entopts: Value) -> Rc<EcomParameterEntity>` | Create an EcomParameter entity instance. |
| `ecr_data` | `(entopts: Value) -> Rc<EcrDataEntity>` | Create an EcrData entity instance. |
| `emv_data` | `(entopts: Value) -> Rc<EmvDataEntity>` | Create an EmvData entity instance. |
| `enable_acquiring` | `(entopts: Value) -> Rc<EnableAcquiringEntity>` | Create an EnableAcquiring entity instance. |
| `get_merchant_contract_number` | `(entopts: Value) -> Rc<GetMerchantContractNumberEntity>` | Create a GetMerchantContractNumber entity instance. |
| `get_template_xml` | `(entopts: Value) -> Rc<GetTemplateXmlEntity>` | Create a GetTemplateXml entity instance. |
| `introduce_mandator` | `(entopts: Value) -> Rc<IntroduceMandatorEntity>` | Create an IntroduceMandator entity instance. |
| `introduce_package` | `(entopts: Value) -> Rc<IntroducePackageEntity>` | Create an IntroducePackage entity instance. |
| `keep_alive` | `(entopts: Value) -> Rc<KeepAliveEntity>` | Create a KeepAlive entity instance. |
| `list_terminal` | `(entopts: Value) -> Rc<ListTerminalEntity>` | Create a ListTerminal entity instance. |
| `mandator_clearing_export` | `(entopts: Value) -> Rc<MandatorClearingExportEntity>` | Create a MandatorClearingExport entity instance. |
| `mandator_clearing_export_download` | `(entopts: Value) -> Rc<MandatorClearingExportDownloadEntity>` | Create a MandatorClearingExportDownload entity instance. |
| `mandator_clearing_export_summary` | `(entopts: Value) -> Rc<MandatorClearingExportSummaryEntity>` | Create a MandatorClearingExportSummary entity instance. |
| `merchant_portal_services_api` | `(entopts: Value) -> Rc<MerchantPortalServicesApiEntity>` | Create a MerchantPortalServicesApi entity instance. |
| `move_tid` | `(entopts: Value) -> Rc<MoveTidEntity>` | Create a MoveTid entity instance. |
| `payment_manual` | `(entopts: Value) -> Rc<PaymentManualEntity>` | Create a PaymentManual entity instance. |
| `payment_sred` | `(entopts: Value) -> Rc<PaymentSredEntity>` | Create a PaymentSred entity instance. |
| `pre_auth_transaction_completion` | `(entopts: Value) -> Rc<PreAuthTransactionCompletionEntity>` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivate_terminal` | `(entopts: Value) -> Rc<ReactivateTerminalEntity>` | Create a ReactivateTerminal entity instance. |
| `refund_transaction` | `(entopts: Value) -> Rc<RefundTransactionEntity>` | Create a RefundTransaction entity instance. |
| `register_tecs_company` | `(entopts: Value) -> Rc<RegisterTecsCompanyEntity>` | Create a RegisterTecsCompany entity instance. |
| `register_terminal` | `(entopts: Value) -> Rc<RegisterTerminalEntity>` | Create a RegisterTerminal entity instance. |
| `report_data` | `(entopts: Value) -> Rc<ReportDataEntity>` | Create a ReportData entity instance. |
| `status_transaction` | `(entopts: Value) -> Rc<StatusTransactionEntity>` | Create a StatusTransaction entity instance. |
| `store_terminal_parameter` | `(entopts: Value) -> Rc<StoreTerminalParameterEntity>` | Create a StoreTerminalParameter entity instance. |
| `terminal_id` | `(entopts: Value) -> Rc<TerminalIdEntity>` | Create a TerminalId entity instance. |
| `transaction_history` | `(entopts: Value) -> Rc<TransactionHistoryEntity>` | Create a TransactionHistory entity instance. |
| `transactions_count` | `(entopts: Value) -> Rc<TransactionsCountEntity>` | Create a TransactionsCount entity instance. |
| `transactions_count_card_brand` | `(entopts: Value) -> Rc<TransactionsCountCardBrandEntity>` | Create a TransactionsCountCardBrand entity instance. |
| `transactions_turnover` | `(entopts: Value) -> Rc<TransactionsTurnoverEntity>` | Create a TransactionsTurnover entity instance. |
| `update_merchant` | `(entopts: Value) -> Rc<UpdateMerchantEntity>` | Create an UpdateMerchant entity instance. |
| `update_template_xml` | `(entopts: Value) -> Rc<UpdateTemplateXmlEntity>` | Create an UpdateTemplateXml entity instance. |
| `version` | `(entopts: Value) -> Rc<VersionEntity>` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>` | Load a single entity by match criteria. |
| `create` | `(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsMerchantServicesError>` | Create a new entity. |
| `data` | `(args: Option<&Value>) -> Value` | Get entity data (pass `Some(&map)` to set). |
| `matchv` | `(args: Option<&Value>) -> Value` | Get entity match criteria (pass `Some(&map)` to set). |
| `make` | `() -> Rc<dyn Entity>` | Create a new instance with the same options. |
| `get_name` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return `Result<Value, BluefinTecsMerchantServicesError>` — the
bare result data on `Ok` (a `Value::Map` for single-entity ops, a
`Value::List` for `list`) and the branded error on `Err`.

The `direct()` escape hatch resolves to `Ok` even on a non-2xx response —
it returns a result `Value::Map` you branch on via `getp(&result, "ok")`:

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

Create an instance: `let cancel_transaction = client.cancel_transaction(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `i64` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `i64` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `i64` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `i64` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `i64` |  |
| `receipt_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `i64` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```rust
let cancel_transaction = client.cancel_transaction(Value::Noval).create(jo(vec![
    ("client_id", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receipt_number", Value::str("example_receipt_number")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```


### CheckCardBlackListed

Create an instance: `let check_card_black_listed = client.check_card_black_listed(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let check_card_black_listed = client.check_card_black_listed(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### CreateProduct

Create an instance: `let create_product = client.create_product(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `i64` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_type` | `String` |  |
| `template_xml` | `String` |  |
| `terminal_type` | `String` |  |

#### Example: Create

```rust
let create_product = client.create_product(Value::Noval).create(jo(vec![
    ("template_name", Value::str("example_template_name")),  // String
    ("template_type", Value::str("example_template_type")),  // String
    ("template_xml", Value::str("example_template_xml")),  // String
    ("terminal_type", Value::str("example_terminal_type")),  // String
]), Value::Noval).unwrap();
```


### DeactivateTerminal

Create an instance: `let deactivate_terminal = client.deactivate_terminal(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `deactivation_reason` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```rust
let deactivate_terminal = client.deactivate_terminal(Value::Noval).create(jo(vec![
    ("deactivation_reason", Value::str("example_deactivation_reason")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```


### DigitalServicesApi

Create an instance: `let digital_services_api = client.digital_services_api(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `tx_count` | `i64` |  |
| `tx_id_end` | `String` |  |
| `tx_id_start` | `String` |  |
| `tx_seq_no_end` | `i64` |  |
| `tx_seq_no_start` | `i64` |  |
| `tx_total` | `i64` |  |

#### Example: Load

```rust
let digital_services_api = client.digital_services_api(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

#### Example: Create

```rust
let digital_services_api = client.digital_services_api(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### EcDataEcom

Create an instance: `let ec_data_ecom = client.ec_data_ecom(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_id` | `i64` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```rust
let ec_data_ecom = client.ec_data_ecom(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_id", Value::str("example_transaction_id")),  // String
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```


### EcomParameter

Create an instance: `let ecom_parameter = client.ecom_parameter(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `String` |  |
| `ecom_skey` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```rust
let ecom_parameter = client.ecom_parameter(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```


### EcrData

Create an instance: `let ecr_data = client.ecr_data(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_id` | `i64` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```rust
let ecr_data = client.ecr_data(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_id", Value::str("example_transaction_id")),  // String
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```


### EmvData

Create an instance: `let emv_data = client.emv_data(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_id` | `i64` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```rust
let emv_data = client.emv_data(Value::Noval).create(jo(vec![
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_id", Value::str("example_transaction_id")),  // String
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```


### EnableAcquiring

Create an instance: `let enable_acquiring = client.enable_acquiring(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `i64` |  |
| `additional_data` | `std::collections::HashMap<String, Value>` |  |
| `corporate_uuid` | `String` |  |
| `currency` | `String` |  |
| `merchant_category_code` | `i64` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `sorting_code` | `i64` |  |
| `template_name` | `String` |  |
| `terminal_id` | `Vec<Value>` |  |
| `terminal_id_acq` | `String` |  |
| `vu_nummer` | `String` |  |

#### Example: Create

```rust
let enable_acquiring = client.enable_acquiring(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("merchant_category_code", Value::Num(1.0)),  // i64
    ("package_order_uuid", Value::str("example_package_order_uuid")),  // String
    ("product_order_uuid", Value::str("example_product_order_uuid")),  // String
    ("template_name", Value::str("example_template_name")),  // String
]), Value::Noval).unwrap();
```


### GetMerchantContractNumber

Create an instance: `let get_merchant_contract_number = client.get_merchant_contract_number(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let get_merchant_contract_number = client.get_merchant_contract_number(Value::Noval).create(jo(vec![
    ("merchant_contract_number", Value::str("example_merchant_contract_number")),  // String
]), Value::Noval).unwrap();
```


### GetTemplateXml

Create an instance: `let get_template_xml = client.get_template_xml(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```rust
let get_template_xml = client.get_template_xml(Value::Noval).create(jo(vec![
    ("template_name", Value::str("example_template_name")),  // String
]), Value::Noval).unwrap();
```


### IntroduceMandator

Create an instance: `let introduce_mandator = client.introduce_mandator(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let introduce_mandator = client.introduce_mandator(Value::Noval).create(jo(vec![
    ("mandator_name", Value::str("example_mandator_name")),  // String
]), Value::Noval).unwrap();
```


### IntroducePackage

Create an instance: `let introduce_package = client.introduce_package(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_template_description` | `String` |  |

#### Example: Create

```rust
let introduce_package = client.introduce_package(Value::Noval).create(jo(vec![
    ("terminal_template_description", Value::str("example_terminal_template_description")),  // String
]), Value::Noval).unwrap();
```


### KeepAlive

Create an instance: `let keep_alive = client.keep_alive(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `ka_date_time_from` | `String` |  |
| `ka_date_time_to` | `String` |  |
| `keep_alive_data` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_date_time_from` | `String` |  |
| `terminal_date_time_to` | `String` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```rust
let keep_alive = client.keep_alive(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### ListTerminal

Create an instance: `let list_terminal = client.list_terminal(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `Vec<Value>` |  |
| `filter` | `std::collections::HashMap<String, Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal` | `Vec<Value>` |  |

#### Example: Create

```rust
let list_terminal = client.list_terminal(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### MandatorClearingExport

Create an instance: `let mandator_clearing_export = client.mandator_clearing_export(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `record` | `Vec<Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let mandator_clearing_export = client.mandator_clearing_export(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
]), Value::Noval).unwrap();
```


### MandatorClearingExportDownload

Create an instance: `let mandator_clearing_export_download = client.mandator_clearing_export_download(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `file_id` | `String` |  |
| `filename_template` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `status` | `String` |  |

#### Example: Load

```rust
let mandator_clearing_export_download = client.mandator_clearing_export_download(Value::Noval).load(jo(vec![("id", Value::str("mandator_clearing_export_download_id"))]), Value::Noval).unwrap();
```

#### Example: Create

```rust
let mandator_clearing_export_download = client.mandator_clearing_export_download(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
]), Value::Noval).unwrap();
```


### MandatorClearingExportSummary

Create an instance: `let mandator_clearing_export_summary = client.mandator_clearing_export_summary(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `record` | `Vec<Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let mandator_clearing_export_summary = client.mandator_clearing_export_summary(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
]), Value::Noval).unwrap();
```


### MerchantPortalServicesApi

Create an instance: `let merchant_portal_services_api = client.merchant_portal_services_api(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

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
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `i64` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `i64` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```rust
let merchant_portal_services_api = client.merchant_portal_services_api(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### MoveTid

Create an instance: `let move_tid = client.move_tid(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `Vec<Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `target_packageorderuuid` | `String` |  |
| `target_productorderuuid` | `String` |  |

#### Example: Create

```rust
let move_tid = client.move_tid(Value::Noval).create(jo(vec![
    ("productorderuuid", Value::empty_list()),  // Vec<Value>
]), Value::Noval).unwrap();
```


### PaymentManual

Create an instance: `let payment_manual = client.payment_manual(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `i64` |  |
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

```rust
let payment_manual = client.payment_manual(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("card_number", Value::str("example_card_number")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("exp_date", Value::str("example_exp_date")),  // String
    ("txtype", Value::str("example_txtype")),  // String
]), Value::Noval).unwrap();
```


### PaymentSred

Create an instance: `let payment_sred = client.payment_sred(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `i64` |  |
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
| `sred` | `std::collections::HashMap<String, Value>` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```rust
let payment_sred = client.payment_sred(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("device_payload", Value::str("example_device_payload")),  // String
    ("txtype", Value::str("example_txtype")),  // String
]), Value::Noval).unwrap();
```


### PreAuthTransactionCompletion

Create an instance: `let pre_auth_transaction_completion = client.pre_auth_transaction_completion(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `i64` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `card_number_reference` | `String` |  |
| `client_id` | `i64` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `i64` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `i64` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `i64` |  |
| `receipt_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `i64` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```rust
let pre_auth_transaction_completion = client.pre_auth_transaction_completion(Value::Noval).create(jo(vec![
    ("card_number_reference", Value::str("example_card_number_reference")),  // String
    ("client_id", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receipt_number", Value::str("example_receipt_number")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
    ("transaction_type", Value::str("example_transaction_type")),  // String
]), Value::Noval).unwrap();
```


### ReactivateTerminal

Create an instance: `let reactivate_terminal = client.reactivate_terminal(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `reactivation_reason` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```rust
let reactivate_terminal = client.reactivate_terminal(Value::Noval).create(jo(vec![
    ("reactivation_reason", Value::str("example_reactivation_reason")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```


### RefundTransaction

Create an instance: `let refund_transaction = client.refund_transaction(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `i64` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `i64` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `i64` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `i64` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `i64` |  |
| `receipt_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `i64` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```rust
let refund_transaction = client.refund_transaction(Value::Noval).create(jo(vec![
    ("client_id", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receipt_number", Value::str("example_receipt_number")),  // String
    ("terminal_id", Value::Num(1.0)),  // i64
]), Value::Noval).unwrap();
```


### RegisterTecsCompany

Create an instance: `let register_tecs_company = client.register_tecs_company(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `partner_id` | `i64` |  |
| `partner_name` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```rust
let register_tecs_company = client.register_tecs_company(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
    ("package_order_uuid", Value::str("example_package_order_uuid")),  // String
    ("product_order_uuid", Value::str("example_product_order_uuid")),  // String
    ("template_name", Value::str("example_template_name")),  // String
]), Value::Noval).unwrap();
```


### RegisterTerminal

Create an instance: `let register_terminal = client.register_terminal(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `std::collections::HashMap<String, Value>` |  |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `tecs_web_secret_key` | `String` |  |
| `template_name` | `String` |  |
| `terminal_country_code` | `String` |  |
| `terminal_id` | `i64` |  |
| `terminal_id_acq` | `String` |  |
| `terminal_language_code` | `String` |  |
| `terminal_location` | `String` |  |
| `terminal_serial_number` | `String` |  |
| `token_io_alia` | `String` |  |
| `token_io_iban` | `String` |  |
| `token_io_member_id` | `String` |  |
| `web_shop_url` | `String` |  |

#### Example: Create

```rust
let register_terminal = client.register_terminal(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
    ("package_order_uuid", Value::str("example_package_order_uuid")),  // String
    ("product_order_uuid", Value::str("example_product_order_uuid")),  // String
    ("template_name", Value::str("example_template_name")),  // String
    ("terminal_country_code", Value::str("example_terminal_country_code")),  // String
    ("terminal_language_code", Value::str("example_terminal_language_code")),  // String
    ("terminal_location", Value::str("example_terminal_location")),  // String
]), Value::Noval).unwrap();
```


### ReportData

Create an instance: `let report_data = client.report_data(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `Vec<Value>` |  |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `corporate_id` | `String` |  |
| `currency` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `sum_over_credit_tx` | `std::collections::HashMap<String, Value>` |  |
| `sum_over_debit_tx` | `std::collections::HashMap<String, Value>` |  |
| `terminal_id` | `i64` |  |

#### Example: Create

```rust
let report_data = client.report_data(Value::Noval).create(jo(vec![
    ("clearing_date_from", Value::str("example_clearing_date_from")),  // String
    ("clearing_date_to", Value::str("example_clearing_date_to")),  // String
    ("corporate_id", Value::str("example_corporate_id")),  // String
    ("currency", Value::str("example_currency")),  // String
]), Value::Noval).unwrap();
```


### StatusTransaction

Create an instance: `let status_transaction = client.status_transaction(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `acquirer_terminal_id` | `String` |  |
| `amount` | `i64` |  |
| `application_cryptogram` | `String` |  |
| `authorization_code` | `Value` |  |
| `authorization_date` | `String` |  |
| `card_brand` | `String` |  |
| `card_entry` | `String` |  |
| `card_expiration` | `String` |  |
| `card_number` | `String` |  |
| `clearing_amount` | `i64` |  |
| `clearing_batch_id` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_date` | `String` |  |
| `clearing_processed_date` | `String` |  |
| `clearing_status` | `String` |  |
| `client_id` | `i64` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_application_id` | `String` |  |
| `emv_application_label` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `original_client_id` | `String` |  |
| `original_terminal_id` | `i64` |  |
| `original_transaction_id` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_code_from_a` | `String` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `service_code` | `String` |  |
| `settlement_status` | `String` |  |
| `source_id` | `i64` |  |
| `tecsengine_response_code` | `i64` |  |
| `tecsengine_response_text` | `String` |  |
| `terminal_end_of_day_date` | `String` |  |
| `terminal_id` | `i64` |  |
| `terminal_location` | `String` |  |
| `tip_amount` | `i64` |  |
| `trace_number` | `i64` |  |
| `transaction_clearing_date` | `String` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_seq_number` | `i64` |  |
| `transaction_server_date` | `String` |  |
| `transaction_source` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```rust
let status_transaction = client.status_transaction(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### StoreTerminalParameter

Create an instance: `let store_terminal_parameter = client.store_terminal_parameter(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `std::collections::HashMap<String, Value>` |  |
| `config_version` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `tid_sent` | `String` |  |

#### Example: Create

```rust
let store_terminal_parameter = client.store_terminal_parameter(Value::Noval).create(jo(vec![
    ("serial_number", Value::str("example_serial_number")),  // String
]), Value::Noval).unwrap();
```


### TerminalId

Create an instance: `let terminal_id = client.terminal_id(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `Vec<Value>` |  |
| `duplicate_terminal_id` | `Vec<Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `terminal` | `Vec<Value>` |  |

#### Example: Create

```rust
let terminal_id = client.terminal_id(Value::Noval).create(jo(vec![
    ("device_serial_number", Value::empty_list()),  // Vec<Value>
]), Value::Noval).unwrap();
```


### TransactionHistory

Create an instance: `let transaction_history = client.transaction_history(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

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
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `payment_token_public_id` | `String` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `i64` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `i64` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_history` | `Vec<Value>` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```rust
let transaction_history = client.transaction_history(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### TransactionsCount

Create an instance: `let transactions_count = client.transactions_count(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `Vec<Value>` |  |

#### Example: Create

```rust
let transactions_count = client.transactions_count(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### TransactionsCountCardBrand

Create an instance: `let transactions_count_card_brand = client.transactions_count_card_brand(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `Vec<Value>` |  |

#### Example: Create

```rust
let transactions_count_card_brand = client.transactions_count_card_brand(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### TransactionsTurnover

Create an instance: `let transactions_turnover = client.transactions_turnover(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `turnover` | `Vec<Value>` |  |

#### Example: Create

```rust
let transactions_turnover = client.transactions_turnover(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### UpdateMerchant

Create an instance: `let update_merchant = client.update_merchant(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporate_uuid` | `String` |  |
| `country` | `String` |  |
| `merchant_category_code` | `String` |  |
| `name` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vu_nummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```rust
let update_merchant = client.update_merchant(Value::Noval).create(jo(vec![
    ("corporate_uuid", Value::str("example_corporate_uuid")),  // String
]), Value::Noval).unwrap();
```


### UpdateTemplateXml

Create an instance: `let update_template_xml = client.update_template_xml(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_xml` | `String` |  |

#### Example: Create

```rust
let update_template_xml = client.update_template_xml(Value::Noval).create(jo(vec![
    ("template_name", Value::str("example_template_name")),  // String
    ("template_xml", Value::str("example_template_xml")),  // String
]), Value::Noval).unwrap();
```


### Version

Create an instance: `let version = client.version(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```rust
let version = client.version(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
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

The Rust SDK uses a single dynamic `Value` type throughout rather than a
typed struct per entity. `Value` is the vendored voxgig struct port (a
JSON-shaped enum: `Str`, `Num`, `Bool`, `List`, `Map`, `Null`,
`Noval`). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `jo` / `ja` helpers and read fields back with
`getp`; use `to_map` to safely coerce a value to a map.

### Crate structure

```
rust/
├── lib.rs                       -- Crate root (module decls + re-exports)
├── core/                        -- Pipeline types, config, client (sdk.rs)
├── entity/                      -- Per-entity clients (one module each)
├── feature/                     -- Built-in features (base, test, log)
└── utility/                     -- Utilities + the vendored voxgig struct port
```

The public API is re-exported from the crate root, so `use bluefin_tecs_merchant_services_sdk::{...}`
reaches the SDK client, `Value`, and the `jo` / `ja` / `getp` helpers
directly. Import entity or utility modules only when needed.

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
