# BluefinTecsMerchantServices C# SDK



The C# SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic C# conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.CancelTransaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to NuGet. Install it from the GitHub
release tag (`csharp/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout — build the library and add a project reference:

```bash
cd csharp && dotnet build BluefinTecsMerchantServicesSDK.csproj
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```csharp
using BluefinTecsMerchantServicesSdk;

var client = new BluefinTecsMerchantServicesSDK(new Dictionary<string, object?>
{
    ["apikey"] = Environment.GetEnvironmentVariable("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"),
});
```

### 4. Create, update, and remove

```csharp
// Create — returns the bare created record (as object?)
var created = client.CancelTransaction().Create(new Dictionary<string, object?> { ["client_id"] = 1L, ["currency"] = "example_currency", ["receipt_number"] = "example_receipt_number", ["terminal_id"] = 1L });

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

```csharp
var result = client.Direct(new Dictionary<string, object?>
{
    ["path"] = "/api/resource/{id}",
    ["method"] = "GET",
    ["params"] = new Dictionary<string, object?> { ["id"] = "example" },
});

if (Equals(result["ok"], true))
{
    Console.WriteLine(result["status"]);  // 200
    Console.WriteLine(result["data"]);    // response body
}
else
{
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both with TryGetValue rather than indexing a key that may be absent.
    result.TryGetValue("status", out var status);
    result.TryGetValue("err", out var err);
    Console.WriteLine($"{status} {err}");
}
```

### Prepare a request without sending it

```csharp
// Prepare() returns the fetch definition and raises on error.
var fetchdef = client.Prepare(new Dictionary<string, object?>
{
    ["path"] = "/api/resource/{id}",
    ["method"] = "DELETE",
    ["params"] = new Dictionary<string, object?> { ["id"] = "example" },
});

Console.WriteLine(fetchdef["url"]);
Console.WriteLine(fetchdef["method"]);
Console.WriteLine(fetchdef["headers"]);
```

### Use test mode

Create a mock client for unit testing — no server required:

```csharp
var client = BluefinTecsMerchantServicesSDK.TestSDK(null, null);

// Entity ops return the bare record and raise on error.
var digitalServicesApi = client.DigitalServicesApi().Load(null);
// digitalServicesApi holds the mock response record
Console.WriteLine(digitalServicesApi);
```

### Use a custom fetch function

Replace the HTTP transport with your own delegate:

```csharp
Func<string, Dictionary<string, object?>, Dictionary<string, object?>> mockFetch =
    (url, init) => new Dictionary<string, object?>
    {
        ["status"] = 200,
        ["statusText"] = "OK",
        ["headers"] = new Dictionary<string, object?>(),
        ["json"] = (Func<object?>)(() => new Dictionary<string, object?> { ["id"] = "mock01" }),
    };

var client = new BluefinTecsMerchantServicesSDK(new Dictionary<string, object?>
{
    ["base"] = "http://localhost:8080",
    ["system"] = new Dictionary<string, object?>
    {
        ["fetch"] = mockFetch,
    },
});
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd csharp && dotnet test
```


## Reference

### BluefinTecsMerchantServicesSDK

```csharp
using BluefinTecsMerchantServicesSdk;

var client = new BluefinTecsMerchantServicesSDK(options);
```

Creates a new SDK client. `options` is a `Dictionary<string, object?>`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `Dictionary` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Dictionary` | System overrides (e.g. custom `fetch` delegate). |

### TestSDK

```csharp
var client = BluefinTecsMerchantServicesSDK.TestSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `OptionsMap` | `() -> Dictionary` | Deep copy of current SDK options. |
| `GetUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `Prepare` | `(fetchargs) -> Dictionary` | Build an HTTP request definition without sending. Raises on error. |
| `Direct` | `(fetchargs) -> Dictionary` | Build and send an HTTP request. Returns a result dictionary (branch on `ok`). |
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
| `Load` | `(reqmatch, ctrl) -> object?` | Load a single entity by match criteria. Raises on error. |
| `Create` | `(reqdata, ctrl) -> object?` | Create a new entity. Raises on error. |
| `Data` | `(newdata) -> object?` | Get or set entity data. |
| `Match` | `(newmatch) -> object?` | Get or set entity match criteria. |
| `Make` | `() -> IEntity` | Create a new instance with the same options. |
| `GetName` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `Dictionary` for
single-entity ops, an aggregate list for `List`) as `object?` and raise on
error. Wrap calls in `try`/`catch` to handle failures.

The `Direct()` escape hatch never raises — it returns a result
`Dictionary<string, object?>` you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Dictionary` | Response headers. |
| `data` | `object?` | Parsed JSON response body. |

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

Create an instance: `var cancelTransaction = client.CancelTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `long` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `long` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `long` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `long` |  |
| `receipt_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `long` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `long` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```csharp
var cancelTransaction = client.CancelTransaction().Create(new Dictionary<string, object?>
{
    ["client_id"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receipt_number"] = "example_receipt_number",  // string
    ["terminal_id"] = 1L,  // long
});
```


### CheckCardBlackListed

Create an instance: `var checkCardBlackListed = client.CheckCardBlackListed();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var checkCardBlackListed = client.CheckCardBlackListed().Create(new Dictionary<string, object?>
{
});
```


### CreateProduct

Create an instance: `var createProduct = client.CreateProduct();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `long` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_type` | `string` |  |
| `template_xml` | `string` |  |
| `terminal_type` | `string` |  |

#### Example: Create

```csharp
var createProduct = client.CreateProduct().Create(new Dictionary<string, object?>
{
    ["template_name"] = "example_template_name",  // string
    ["template_type"] = "example_template_type",  // string
    ["template_xml"] = "example_template_xml",  // string
    ["terminal_type"] = "example_terminal_type",  // string
});
```


### DeactivateTerminal

Create an instance: `var deactivateTerminal = client.DeactivateTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `deactivation_reason` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```csharp
var deactivateTerminal = client.DeactivateTerminal().Create(new Dictionary<string, object?>
{
    ["deactivation_reason"] = "example_deactivation_reason",  // string
    ["terminal_id"] = 1L,  // long
});
```


### DigitalServicesApi

Create an instance: `var digitalServicesApi = client.DigitalServicesApi();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `tx_count` | `long` |  |
| `tx_id_end` | `string` |  |
| `tx_id_start` | `string` |  |
| `tx_seq_no_end` | `long` |  |
| `tx_seq_no_start` | `long` |  |
| `tx_total` | `long` |  |

#### Example: Load

```csharp
var digitalServicesApi = client.DigitalServicesApi().Load(null);
```

#### Example: Create

```csharp
var digitalServicesApi = client.DigitalServicesApi().Create(new Dictionary<string, object?>
{
});
```


### EcDataEcom

Create an instance: `var ecDataEcom = client.EcDataEcom();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```csharp
var ecDataEcom = client.EcDataEcom().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
    ["transaction_id"] = "example_transaction_id",  // string
    ["transaction_type"] = "example_transaction_type",  // string
});
```


### EcomParameter

Create an instance: `var ecomParameter = client.EcomParameter();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `string` |  |
| `ecom_skey` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```csharp
var ecomParameter = client.EcomParameter().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
});
```


### EcrData

Create an instance: `var ecrData = client.EcrData();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```csharp
var ecrData = client.EcrData().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
    ["transaction_id"] = "example_transaction_id",  // string
    ["transaction_type"] = "example_transaction_type",  // string
});
```


### EmvData

Create an instance: `var emvData = client.EmvData();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```csharp
var emvData = client.EmvData().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
    ["transaction_id"] = "example_transaction_id",  // string
    ["transaction_type"] = "example_transaction_type",  // string
});
```


### EnableAcquiring

Create an instance: `var enableAcquiring = client.EnableAcquiring();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `long` |  |
| `additional_data` | `Dictionary<string, object?>` |  |
| `corporate_uuid` | `string` |  |
| `currency` | `string` |  |
| `merchant_category_code` | `long` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting_code` | `long` |  |
| `template_name` | `string` |  |
| `terminal_id` | `List<object?>` |  |
| `terminal_id_acq` | `string` |  |
| `vu_nummer` | `string` |  |

#### Example: Create

```csharp
var enableAcquiring = client.EnableAcquiring().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
    ["currency"] = "example_currency",  // string
    ["merchant_category_code"] = 1L,  // long
    ["package_order_uuid"] = "example_package_order_uuid",  // string
    ["product_order_uuid"] = "example_product_order_uuid",  // string
    ["template_name"] = "example_template_name",  // string
});
```


### GetMerchantContractNumber

Create an instance: `var getMerchantContractNumber = client.GetMerchantContractNumber();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var getMerchantContractNumber = client.GetMerchantContractNumber().Create(new Dictionary<string, object?>
{
    ["merchant_contract_number"] = "example_merchant_contract_number",  // string
});
```


### GetTemplateXml

Create an instance: `var getTemplateXml = client.GetTemplateXml();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```csharp
var getTemplateXml = client.GetTemplateXml().Create(new Dictionary<string, object?>
{
    ["template_name"] = "example_template_name",  // string
});
```


### IntroduceMandator

Create an instance: `var introduceMandator = client.IntroduceMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var introduceMandator = client.IntroduceMandator().Create(new Dictionary<string, object?>
{
    ["mandator_name"] = "example_mandator_name",  // string
});
```


### IntroducePackage

Create an instance: `var introducePackage = client.IntroducePackage();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_template_description` | `string` |  |

#### Example: Create

```csharp
var introducePackage = client.IntroducePackage().Create(new Dictionary<string, object?>
{
    ["terminal_template_description"] = "example_terminal_template_description",  // string
});
```


### KeepAlive

Create an instance: `var keepAlive = client.KeepAlive();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `ka_date_time_from` | `string` |  |
| `ka_date_time_to` | `string` |  |
| `keep_alive_data` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_date_time_from` | `string` |  |
| `terminal_date_time_to` | `string` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```csharp
var keepAlive = client.KeepAlive().Create(new Dictionary<string, object?>
{
});
```


### ListTerminal

Create an instance: `var listTerminal = client.ListTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `List<object?>` |  |
| `filter` | `Dictionary<string, object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal` | `List<object?>` |  |

#### Example: Create

```csharp
var listTerminal = client.ListTerminal().Create(new Dictionary<string, object?>
{
});
```


### MandatorClearingExport

Create an instance: `var mandatorClearingExport = client.MandatorClearingExport();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `record` | `List<object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var mandatorClearingExport = client.MandatorClearingExport().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
});
```


### MandatorClearingExportDownload

Create an instance: `var mandatorClearingExportDownload = client.MandatorClearingExportDownload();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `file_id` | `string` |  |
| `filename_template` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `status` | `string` |  |

#### Example: Load

```csharp
var mandatorClearingExportDownload = client.MandatorClearingExportDownload().Load(new Dictionary<string, object?> { ["id"] = "mandator_clearing_export_download_id" });
```

#### Example: Create

```csharp
var mandatorClearingExportDownload = client.MandatorClearingExportDownload().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
});
```


### MandatorClearingExportSummary

Create an instance: `var mandatorClearingExportSummary = client.MandatorClearingExportSummary();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `record` | `List<object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var mandatorClearingExportSummary = client.MandatorClearingExportSummary().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
});
```


### MerchantPortalServicesApi

Create an instance: `var merchantPortalServicesApi = client.MerchantPortalServicesApi();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `string` |  |
| `authorization_code` | `string` |  |
| `card_brand` | `string` |  |
| `clearing_amount_from` | `string` |  |
| `clearing_amount_to` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_status` | `string` |  |
| `corporate_uuid` | `string` |  |
| `order_by_transaction_date` | `string` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `long` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `long` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```csharp
var merchantPortalServicesApi = client.MerchantPortalServicesApi().Create(new Dictionary<string, object?>
{
});
```


### MoveTid

Create an instance: `var moveTid = client.MoveTid();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `List<object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `target_packageorderuuid` | `string` |  |
| `target_productorderuuid` | `string` |  |

#### Example: Create

```csharp
var moveTid = client.MoveTid().Create(new Dictionary<string, object?>
{
    ["productorderuuid"] = new List<object?>(),  // List<object?>
});
```


### PaymentManual

Create an instance: `var paymentManual = client.PaymentManual();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `long` |  |
| `authorization_number` | `string` |  |
| `card_number` | `string` |  |
| `card_type` | `string` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `date_time_tx` | `string` |  |
| `exp_date` | `string` |  |
| `merchant_id` | `string` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `response_code` | `string` |  |
| `response_message` | `string` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```csharp
var paymentManual = client.PaymentManual().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["card_number"] = "example_card_number",  // string
    ["currency"] = "example_currency",  // string
    ["exp_date"] = "example_exp_date",  // string
    ["txtype"] = "example_txtype",  // string
});
```


### PaymentSred

Create an instance: `var paymentSred = client.PaymentSred();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `long` |  |
| `authorization_number` | `string` |  |
| `card_type` | `string` |  |
| `currency` | `string` |  |
| `date_time_tx` | `string` |  |
| `device_payload` | `string` |  |
| `merchant_id` | `string` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `response_code` | `string` |  |
| `response_message` | `string` |  |
| `sred` | `Dictionary<string, object?>` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```csharp
var paymentSred = client.PaymentSred().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["device_payload"] = "example_device_payload",  // string
    ["txtype"] = "example_txtype",  // string
});
```


### PreAuthTransactionCompletion

Create an instance: `var preAuthTransactionCompletion = client.PreAuthTransactionCompletion();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `long` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `card_number_reference` | `string` |  |
| `client_id` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `long` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `long` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `long` |  |
| `receipt_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `long` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `long` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```csharp
var preAuthTransactionCompletion = client.PreAuthTransactionCompletion().Create(new Dictionary<string, object?>
{
    ["card_number_reference"] = "example_card_number_reference",  // string
    ["client_id"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receipt_number"] = "example_receipt_number",  // string
    ["terminal_id"] = 1L,  // long
    ["transaction_type"] = "example_transaction_type",  // string
});
```


### ReactivateTerminal

Create an instance: `var reactivateTerminal = client.ReactivateTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `reactivation_reason` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```csharp
var reactivateTerminal = client.ReactivateTerminal().Create(new Dictionary<string, object?>
{
    ["reactivation_reason"] = "example_reactivation_reason",  // string
    ["terminal_id"] = 1L,  // long
});
```


### RefundTransaction

Create an instance: `var refundTransaction = client.RefundTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `long` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `long` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `long` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `long` |  |
| `receipt_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `long` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `long` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```csharp
var refundTransaction = client.RefundTransaction().Create(new Dictionary<string, object?>
{
    ["client_id"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receipt_number"] = "example_receipt_number",  // string
    ["terminal_id"] = 1L,  // long
});
```


### RegisterTecsCompany

Create an instance: `var registerTecsCompany = client.RegisterTecsCompany();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `partner_id` | `long` |  |
| `partner_name` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```csharp
var registerTecsCompany = client.RegisterTecsCompany().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
    ["package_order_uuid"] = "example_package_order_uuid",  // string
    ["product_order_uuid"] = "example_product_order_uuid",  // string
    ["template_name"] = "example_template_name",  // string
});
```


### RegisterTerminal

Create an instance: `var registerTerminal = client.RegisterTerminal();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `Dictionary<string, object?>` |  |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `tecs_web_secret_key` | `string` |  |
| `template_name` | `string` |  |
| `terminal_country_code` | `string` |  |
| `terminal_id` | `long` |  |
| `terminal_id_acq` | `string` |  |
| `terminal_language_code` | `string` |  |
| `terminal_location` | `string` |  |
| `terminal_serial_number` | `string` |  |
| `token_io_alia` | `string` |  |
| `token_io_iban` | `string` |  |
| `token_io_member_id` | `string` |  |
| `web_shop_url` | `string` |  |

#### Example: Create

```csharp
var registerTerminal = client.RegisterTerminal().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
    ["package_order_uuid"] = "example_package_order_uuid",  // string
    ["product_order_uuid"] = "example_product_order_uuid",  // string
    ["template_name"] = "example_template_name",  // string
    ["terminal_country_code"] = "example_terminal_country_code",  // string
    ["terminal_language_code"] = "example_terminal_language_code",  // string
    ["terminal_location"] = "example_terminal_location",  // string
});
```


### ReportData

Create an instance: `var reportData = client.ReportData();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `List<object?>` |  |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `corporate_id` | `string` |  |
| `currency` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sum_over_credit_tx` | `Dictionary<string, object?>` |  |
| `sum_over_debit_tx` | `Dictionary<string, object?>` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```csharp
var reportData = client.ReportData().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
    ["corporate_id"] = "example_corporate_id",  // string
    ["currency"] = "example_currency",  // string
});
```


### StatusTransaction

Create an instance: `var statusTransaction = client.StatusTransaction();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `acquirer_terminal_id` | `string` |  |
| `amount` | `long` |  |
| `application_cryptogram` | `string` |  |
| `authorization_code` | `object?` |  |
| `authorization_date` | `string` |  |
| `card_brand` | `string` |  |
| `card_entry` | `string` |  |
| `card_expiration` | `string` |  |
| `card_number` | `string` |  |
| `clearing_amount` | `long` |  |
| `clearing_batch_id` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_date` | `string` |  |
| `clearing_processed_date` | `string` |  |
| `clearing_status` | `string` |  |
| `client_id` | `long` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_application_id` | `string` |  |
| `emv_application_label` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `original_client_id` | `string` |  |
| `original_terminal_id` | `long` |  |
| `original_transaction_id` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_number` | `string` |  |
| `response_code` | `long` |  |
| `response_code_from_a` | `string` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `service_code` | `string` |  |
| `settlement_status` | `string` |  |
| `source_id` | `long` |  |
| `tecsengine_response_code` | `long` |  |
| `tecsengine_response_text` | `string` |  |
| `terminal_end_of_day_date` | `string` |  |
| `terminal_id` | `long` |  |
| `terminal_location` | `string` |  |
| `tip_amount` | `long` |  |
| `trace_number` | `long` |  |
| `transaction_clearing_date` | `string` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_seq_number` | `long` |  |
| `transaction_server_date` | `string` |  |
| `transaction_source` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```csharp
var statusTransaction = client.StatusTransaction().Create(new Dictionary<string, object?>
{
});
```


### StoreTerminalParameter

Create an instance: `var storeTerminalParameter = client.StoreTerminalParameter();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `Dictionary<string, object?>` |  |
| `config_version` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `tid_sent` | `string` |  |

#### Example: Create

```csharp
var storeTerminalParameter = client.StoreTerminalParameter().Create(new Dictionary<string, object?>
{
    ["serial_number"] = "example_serial_number",  // string
});
```


### TerminalId

Create an instance: `var terminalId = client.TerminalId();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `List<object?>` |  |
| `duplicate_terminal_id` | `List<object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal` | `List<object?>` |  |

#### Example: Create

```csharp
var terminalId = client.TerminalId().Create(new Dictionary<string, object?>
{
    ["device_serial_number"] = new List<object?>(),  // List<object?>
});
```


### TransactionHistory

Create an instance: `var transactionHistory = client.TransactionHistory();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `string` |  |
| `authorization_code` | `string` |  |
| `card_brand` | `string` |  |
| `clearing_amount_from` | `string` |  |
| `clearing_amount_to` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_status` | `string` |  |
| `corporate_uuid` | `string` |  |
| `order_by_transaction_date` | `string` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `payment_token_public_id` | `string` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `long` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `long` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_history` | `List<object?>` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```csharp
var transactionHistory = client.TransactionHistory().Create(new Dictionary<string, object?>
{
});
```


### TransactionsCount

Create an instance: `var transactionsCount = client.TransactionsCount();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `List<object?>` |  |

#### Example: Create

```csharp
var transactionsCount = client.TransactionsCount().Create(new Dictionary<string, object?>
{
});
```


### TransactionsCountCardBrand

Create an instance: `var transactionsCountCardBrand = client.TransactionsCountCardBrand();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `List<object?>` |  |

#### Example: Create

```csharp
var transactionsCountCardBrand = client.TransactionsCountCardBrand().Create(new Dictionary<string, object?>
{
});
```


### TransactionsTurnover

Create an instance: `var transactionsTurnover = client.TransactionsTurnover();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `turnover` | `List<object?>` |  |

#### Example: Create

```csharp
var transactionsTurnover = client.TransactionsTurnover().Create(new Dictionary<string, object?>
{
});
```


### UpdateMerchant

Create an instance: `var updateMerchant = client.UpdateMerchant();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporate_uuid` | `string` |  |
| `country` | `string` |  |
| `merchant_category_code` | `string` |  |
| `name` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vu_nummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```csharp
var updateMerchant = client.UpdateMerchant().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
});
```


### UpdateTemplateXml

Create an instance: `var updateTemplateXml = client.UpdateTemplateXml();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_xml` | `string` |  |

#### Example: Create

```csharp
var updateTemplateXml = client.UpdateTemplateXml().Create(new Dictionary<string, object?>
{
    ["template_name"] = "example_template_name",  // string
    ["template_xml"] = "example_template_xml",  // string
});
```


### Version

Create an instance: `var version = client.Version();`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```csharp
var version = client.Version().Load(null);
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

### Data as dictionaries

The C# SDK uses a loose object model — `Dictionary<string, object?>`
throughout — rather than a bespoke typed class per endpoint. This mirrors
the dynamic nature of the API and keeps the SDK flexible: no regeneration is
needed when the API schema changes.

Use `Helpers.ToMapAny(value)` to safely coerce a value to a
`Dictionary<string, object?>`. A `BluefinTecsMerchantServicesTypes.cs` module of
reference `record` types is also generated for editor documentation.

### Project structure

```
csharp/
├── BluefinTecsMerchantServicesSDK.csproj    -- Library project (compiles everything except test/)
├── core/                       -- Main SDK client, config, entity base, error type
├── entity/                     -- Entity implementations
├── feature/                    -- Built-in features (Base, Test, Log, ...)
├── utility/                    -- Utility functions and the vendored struct library
└── test/                       -- xUnit test suites
```

The main client class (`BluefinTecsMerchantServicesSDK`, namespace
`BluefinTecsMerchantServicesSdk`) exposes the entity accessors. Reference entity or
utility types directly only when needed.

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
