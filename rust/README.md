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
let created = client.cancel_transaction(Value::Noval).create(jo(vec![("clientId", Value::Num(1.0)), ("currency", Value::str("example_currency")), ("receiptNumber", Value::str("example_receiptNumber")), ("terminalId", Value::Num(1.0))]), Value::Noval).unwrap();

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

Create an instance: `let cancel_transaction = client.cancel_transaction(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `i64` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `i64` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `i64` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `i64` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `i64` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `i64` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```rust
let cancel_transaction = client.cancel_transaction(Value::Noval).create(jo(vec![
    ("clientId", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receiptNumber", Value::str("example_receiptNumber")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `cardNo` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `acquirerId` | `i64` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateType` | `String` |  |
| `templateXml` | `String` |  |
| `terminalType` | `String` |  |

#### Example: Create

```rust
let create_product = client.create_product(Value::Noval).create(jo(vec![
    ("templateName", Value::str("example_templateName")),  // String
    ("templateType", Value::str("example_templateType")),  // String
    ("templateXml", Value::str("example_templateXml")),  // String
    ("terminalType", Value::str("example_terminalType")),  // String
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
| `corporateUuid` | `String` |  |
| `deactivationReason` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```rust
let deactivate_terminal = client.deactivate_terminal(Value::Noval).create(jo(vec![
    ("deactivationReason", Value::str("example_deactivationReason")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `txCount` | `i64` |  |
| `txIdEnd` | `String` |  |
| `txIdStart` | `String` |  |
| `txSeqNoEnd` | `i64` |  |
| `txSeqNoStart` | `i64` |  |
| `txTotal` | `i64` |  |

#### Example: Load

```rust
let digital_services_api = client.digital_services_api(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

#### Example: Create

```rust
let digital_services_api = client.digital_services_api(Value::Noval).create(jo(vec![
    ("file_id", Value::str("example_file_id")),  // String
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `ecomData` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `i64` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```rust
let ec_data_ecom = client.ec_data_ecom(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionId", Value::str("example_transactionId")),  // String
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `ecomPass` | `String` |  |
| `ecomSkey` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```rust
let ecom_parameter = client.ecom_parameter(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
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
| `ecrData` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `i64` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```rust
let ecr_data = client.ecr_data(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionId", Value::str("example_transactionId")),  // String
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `emvData` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `i64` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```rust
let emv_data = client.emv_data(Value::Noval).create(jo(vec![
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionId", Value::str("example_transactionId")),  // String
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `accountNo` | `i64` |  |
| `additionalData` | `std::collections::HashMap<String, Value>` |  |
| `corporateUuid` | `String` |  |
| `currency` | `String` |  |
| `merchantCategoryCode` | `i64` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `sortingCode` | `i64` |  |
| `templateName` | `String` |  |
| `terminalIdAcq` | `String` |  |
| `terminalIds` | `Vec<Value>` |  |
| `vuNummer` | `String` |  |

#### Example: Create

```rust
let enable_acquiring = client.enable_acquiring(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("merchantCategoryCode", Value::Num(1.0)),  // i64
    ("packageOrderUuid", Value::str("example_packageOrderUuid")),  // String
    ("productOrderUuid", Value::str("example_productOrderUuid")),  // String
    ("templateName", Value::str("example_templateName")),  // String
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
| `merchantContractNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let get_merchant_contract_number = client.get_merchant_contract_number(Value::Noval).create(jo(vec![
    ("merchantContractNumber", Value::str("example_merchantContractNumber")),  // String
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```rust
let get_template_xml = client.get_template_xml(Value::Noval).create(jo(vec![
    ("templateName", Value::str("example_templateName")),  // String
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
| `mandatorName` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let introduce_mandator = client.introduce_mandator(Value::Noval).create(jo(vec![
    ("mandatorName", Value::str("example_mandatorName")),  // String
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalTemplateDescription` | `String` |  |

#### Example: Create

```rust
let introduce_package = client.introduce_package(Value::Noval).create(jo(vec![
    ("terminalTemplateDescription", Value::str("example_terminalTemplateDescription")),  // String
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
| `kaDateTimeFrom` | `String` |  |
| `kaDateTimeTo` | `String` |  |
| `keepAliveData` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalDateTimeFrom` | `String` |  |
| `terminalDateTimeTo` | `String` |  |
| `terminalId` | `i64` |  |

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
| `corporateUuid` | `Vec<Value>` |  |
| `filter` | `std::collections::HashMap<String, Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminals` | `Vec<Value>` |  |

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
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `records` | `Vec<Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let mandator_clearing_export = client.mandator_clearing_export(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `clearingDateFrom` | `String` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | End date for clearing export (inclusive) |
| `fileId` | `String` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | Optional filename template for the export file |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `status` | `String` | Processing status of the export request |

#### Example: Load

```rust
let mandator_clearing_export_download = client.mandator_clearing_export_download(Value::Noval).load(jo(vec![("id", Value::str("mandator_clearing_export_download_id"))]), Value::Noval).unwrap();
```

#### Example: Create

```rust
let mandator_clearing_export_download = client.mandator_clearing_export_download(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `Vec<Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let mandator_clearing_export_summary = client.mandator_clearing_export_summary(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
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
| `3DSecure` | `String` |  |
| `authorizationCode` | `String` |  |
| `cardBrand` | `String` |  |
| `clearingAmountFrom` | `String` |  |
| `clearingAmountTo` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingStatus` | `String` |  |
| `corporateUUID` | `String` |  |
| `orderByTransactionDate` | `String` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `i64` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `i64` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

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
| `productorderuuids` | `Vec<Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `targetPackageorderuuid` | `String` |  |
| `targetProductorderuuid` | `String` |  |

#### Example: Create

```rust
let move_tid = client.move_tid(Value::Noval).create(jo(vec![
    ("productorderuuids", Value::empty_list()),  // Vec<Value>
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
| `acquirerName` | `String` | Acquirer name parsed from KKG field |
| `amount` | `i64` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `String` | Authorization number from the gateway |
| `cardNumber` | `String` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `String` | Card type parsed from KKG field |
| `currency` | `String` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `String` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `String` | Date and time of the transaction |
| `expDate` | `String` | Card expiry date in MMYY format |
| `merchantId` | `String` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `String` | Original transaction ID from gateway |
| `password` | `String` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `String` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `String` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `String` | Terminal ID used for the transaction |
| `transactionId` | `String` | Transaction ID generated by the backend |
| `txtype` | `String` | Transaction type |

#### Example: Create

```rust
let payment_manual = client.payment_manual(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("cardNumber", Value::str("example_cardNumber")),  // String
    ("currency", Value::str("example_currency")),  // String
    ("expDate", Value::str("example_expDate")),  // String
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
| `amount` | `i64` | Transaction amount in minor units (cents) |
| `currency` | `String` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `String` | Device type that provided the SRED payload |
| `devicePayload` | `String` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `String` | Card expiry date in MMYY format |
| `mode` | `String` | Decryption mode |
| `panMasked` | `String` | Masked PAN (first 6 and last 4 digits) |
| `password` | `String` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `String` | Device serial number |
| `serviceCode` | `String` | Service code from the card |
| `terminalId` | `String` | Terminal ID - 8 digits |
| `txtype` | `String` | Transaction type |

#### Example: Create

```rust
let payment_sred = client.payment_sred(Value::Noval).create(jo(vec![
    ("amount", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("devicePayload", Value::str("example_devicePayload")),  // String
    ("terminalId", Value::str("example_terminalId")),  // String
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
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `i64` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `cardNumberReference` | `String` |  |
| `clientId` | `i64` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `i64` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `i64` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `i64` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `i64` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```rust
let pre_auth_transaction_completion = client.pre_auth_transaction_completion(Value::Noval).create(jo(vec![
    ("cardNumberReference", Value::str("example_cardNumberReference")),  // String
    ("clientId", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receiptNumber", Value::str("example_receiptNumber")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
    ("transactionType", Value::str("example_transactionType")),  // String
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
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `reactivationReason` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```rust
let reactivate_terminal = client.reactivate_terminal(Value::Noval).create(jo(vec![
    ("reactivationReason", Value::str("example_reactivationReason")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `i64` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `i64` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `i64` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `i64` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `i64` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `i64` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```rust
let refund_transaction = client.refund_transaction(Value::Noval).create(jo(vec![
    ("clientId", Value::Num(1.0)),  // i64
    ("currency", Value::str("example_currency")),  // String
    ("receiptNumber", Value::str("example_receiptNumber")),  // String
    ("terminalId", Value::Num(1.0)),  // i64
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
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `partnerId` | `i64` |  |
| `partnerName` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```rust
let register_tecs_company = client.register_tecs_company(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
    ("packageOrderUuid", Value::str("example_packageOrderUuid")),  // String
    ("productOrderUuid", Value::str("example_productOrderUuid")),  // String
    ("templateName", Value::str("example_templateName")),  // String
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
| `additionalData` | `std::collections::HashMap<String, Value>` |  |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `tecsWebSecretKey` | `String` |  |
| `templateName` | `String` |  |
| `terminalCountryCode` | `String` |  |
| `terminalId` | `i64` |  |
| `terminalIdAcq` | `String` |  |
| `terminalLanguageCode` | `String` |  |
| `terminalLocation` | `String` |  |
| `terminalSerialNumber` | `String` |  |
| `tokenIOAlias` | `String` |  |
| `tokenIOIban` | `String` |  |
| `tokenIOMemberId` | `String` |  |
| `webShopUrl` | `String` |  |

#### Example: Create

```rust
let register_terminal = client.register_terminal(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
    ("packageOrderUuid", Value::str("example_packageOrderUuid")),  // String
    ("productOrderUuid", Value::str("example_productOrderUuid")),  // String
    ("templateName", Value::str("example_templateName")),  // String
    ("terminalCountryCode", Value::str("example_terminalCountryCode")),  // String
    ("terminalLanguageCode", Value::str("example_terminalLanguageCode")),  // String
    ("terminalLocation", Value::str("example_terminalLocation")),  // String
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
| `cardBrandReportData` | `Vec<Value>` |  |
| `clearingDateFrom` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` |  |
| `currency` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `sumOverCreditTx` | `std::collections::HashMap<String, Value>` |  |
| `sumOverDebitTx` | `std::collections::HashMap<String, Value>` |  |
| `terminalId` | `i64` |  |

#### Example: Create

```rust
let report_data = client.report_data(Value::Noval).create(jo(vec![
    ("clearingDateFrom", Value::str("example_clearingDateFrom")),  // String
    ("clearingDateTo", Value::str("example_clearingDateTo")),  // String
    ("corporateId", Value::str("example_corporateId")),  // String
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
| `acquirerName` | `String` |  |
| `acquirerTerminalId` | `String` |  |
| `amount` | `i64` |  |
| `applicationCryptogram` | `String` |  |
| `authorizationCode` | `Value` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` |  |
| `cardBrand` | `String` |  |
| `cardEntry` | `String` |  |
| `cardExpiration` | `String` |  |
| `cardNumber` | `String` |  |
| `clearingAmount` | `i64` |  |
| `clearingBatchId` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingDate` | `String` |  |
| `clearingProcessedDate` | `String` |  |
| `clearingStatus` | `String` |  |
| `clientId` | `i64` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecrData` | `String` |  |
| `emvApplicationId` | `String` |  |
| `emvApplicationLabel` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `originalClientId` | `String` |  |
| `originalTerminalId` | `i64` |  |
| `originalTransactionId` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseCodeFromAS` | `String` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `serviceCode` | `String` |  |
| `settlementStatus` | `String` |  |
| `sourceId` | `i64` |  |
| `tecsengineResponseCode` | `i64` |  |
| `tecsengineResponseText` | `String` |  |
| `terminalEndOfDayDate` | `String` |  |
| `terminalId` | `i64` |  |
| `terminalLocation` | `String` |  |
| `tipAmount` | `i64` |  |
| `traceNumber` | `i64` |  |
| `transactionClearingDate` | `String` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionSeqNumber` | `i64` |  |
| `transactionServerDate` | `String` |  |
| `transactionSource` | `String` |  |
| `transactionType` | `String` |  |

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
| `acqTabNexo` | `std::collections::HashMap<String, Value>` |  |
| `configVersion` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `tidSent` | `String` |  |

#### Example: Create

```rust
let store_terminal_parameter = client.store_terminal_parameter(Value::Noval).create(jo(vec![
    ("serialNumber", Value::str("example_serialNumber")),  // String
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
| `deviceSerialNumber` | `Vec<Value>` |  |
| `duplicateTerminalIds` | `Vec<Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `terminals` | `Vec<Value>` |  |

#### Example: Create

```rust
let terminal_id = client.terminal_id(Value::Noval).create(jo(vec![
    ("deviceSerialNumber", Value::empty_list()),  // Vec<Value>
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
| `3DSecure` | `String` |  |
| `authorizationCode` | `String` |  |
| `cardBrand` | `String` |  |
| `clearingAmountFrom` | `String` |  |
| `clearingAmountTo` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingStatus` | `String` |  |
| `corporateUUID` | `String` |  |
| `orderByTransactionDate` | `String` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `paymentTokenPublicId` | `String` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `i64` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `i64` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionHistories` | `Vec<Value>` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` | Filter by wallet type. |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `Vec<Value>` |  |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `Vec<Value>` |  |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `turnovers` | `Vec<Value>` |  |

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
| `corporateUuid` | `String` |  |
| `country` | `String` |  |
| `merchantCategoryCode` | `String` |  |
| `name` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vuNummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```rust
let update_merchant = client.update_merchant(Value::Noval).create(jo(vec![
    ("corporateUuid", Value::str("example_corporateUuid")),  // String
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateXml` | `String` |  |

#### Example: Create

```rust
let update_template_xml = client.update_template_xml(Value::Noval).create(jo(vec![
    ("templateName", Value::str("example_templateName")),  // String
    ("templateXml", Value::str("example_templateXml")),  // String
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
| `appName` | `String` |  |
| `buildDate` | `String` |  |
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
