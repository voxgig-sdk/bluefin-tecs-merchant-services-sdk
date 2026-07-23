# BluefinTecsMerchantServices C++ SDK



The C++ SDK for the BluefinTecsMerchantServices API — a header-only,
entity-oriented client following idiomatic modern C++ (C++17) conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client->cancel_transaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low. Every value flows through a single dynamic
`sdk::Value` type (a JSON-like variant), so there is no schema-driven code to
regenerate when the API changes.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
The C++ SDK is **header-only** — there is no package to install
from a registry. Vendor the `cpp/` directory into your project (or add the
repository as a git submodule) and put it on your compiler's include path.
Releases are cut as the git tag `cpp/vX.Y.Z` (see
[Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)).

```bash
# Add the SDK as a submodule (or copy the cpp/ directory into your tree).
git submodule add <repo-url> third_party/bluefintecsmerchantservices-sdk
```

Then include the umbrella header and compile with C++17:

```cpp
#include "core/sdk.hpp"
```

```bash
g++ -std=c++17 -Ithird_party/bluefintecsmerchantservices-sdk/cpp your_app.cpp -o your_app
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```cpp
#include <cstdlib>
#include "core/sdk.hpp"

using namespace sdk;

const char* apikey = std::getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY");
auto client = std::make_shared<BluefinTecsMerchantServicesSDK>(vmap({
    {"apikey", Value(apikey ? apikey : "")},
}));
```

### 4. Create, update, and remove

```cpp
// Create — returns the bare created record.
Value created = client->cancel_transaction()->create(vmap({{"client_id", Value(1)}, {"currency", Value("example_currency")}, {"receipt_number", Value("example_receipt_number")}, {"terminal_id", Value(1)}}), Value::undef());

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

```cpp
Value result = client->direct(vmap({
    {"path", Value("/api/resource/{id}")},
    {"method", Value("GET")},
    {"params", vmap({{"id", Value("example")}})},
}));

if (getp(result, "ok") == Value(true)) {
  std::cout << Helpers::toInt(getp(result, "status")) << std::endl;  // 200
  std::cout << Struct::jsonify(getp(result, "data")) << std::endl;   // response body
} else {
  // A non-2xx response carries status + data (the error body); a
  // transport-level failure carries err instead. Only one is present.
  std::cerr << Helpers::toInt(getp(result, "status")) << " "
            << Struct::jsonify(getp(result, "err")) << std::endl;
}
```

`direct()` is the escape hatch: it never throws — branch on
`getp(result, "ok")`.

### Prepare a request without sending it

```cpp
// prepare() returns the fetch definition and throws on error.
Value fetchdef = client->prepare(vmap({
    {"path", Value("/api/resource/{id}")},
    {"method", Value("DELETE")},
    {"params", vmap({{"id", Value("example")}})},
}));

std::cout << Struct::stringify(getp(fetchdef, "url")) << std::endl;
std::cout << Struct::stringify(getp(fetchdef, "method")) << std::endl;
std::cout << Struct::jsonify(getp(fetchdef, "headers")) << std::endl;
```

### Use test mode

Create a mock client for unit testing — no server required. The test
feature installs an in-memory mock transport:

```cpp
auto client = BluefinTecsMerchantServicesSDK::testSDK();

// Entity ops return the bare record and throw on error.
Value digital_services_api = client->digital_services_api()->load(Value::undef(), Value::undef());
// digital_services_api contains the mock response record
std::cout << Struct::jsonify(digital_services_api) << std::endl;
```

You can seed the mock store by passing test options — see the generated
`test/` suite for worked examples.

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then build and run the test suite:

```bash
cd cpp && make test
```


## Reference

### BluefinTecsMerchantServicesSDK

```cpp
#include "core/sdk.hpp"

using namespace sdk;

auto client = std::make_shared<BluefinTecsMerchantServicesSDK>(options);
```

Creates a new SDK client. `options` is an `sdk::Value` map.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `std::string` | API key for authentication. |
| `base` | `std::string` | Base URL of the API server. |
| `prefix` | `std::string` | URL path prefix prepended to all requests. |
| `suffix` | `std::string` | URL path suffix appended to all requests. |
| `feature` | `Value` | Feature activation flags. |
| `system` | `Value` | System overrides. |

### testSDK

```cpp
auto client = BluefinTecsMerchantServicesSDK::testSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`Value::undef()`; a no-arg `BluefinTecsMerchantServicesSDK::testSDK()` overload is
also provided.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> Value` | Deep copy of current SDK options. |
| `getUtility` | `() -> UtilityPtr` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> Value` | Build an HTTP request definition without sending. Throws on error. |
| `direct` | `(fetchargs) -> Value` | Build and send an HTTP request. Returns a result Value (branch on `ok`). |
| `cancel_transaction` | `(entopts) -> std::shared_ptr<CancelTransactionEntity>` | Create a CancelTransaction entity instance. |
| `check_card_black_listed` | `(entopts) -> std::shared_ptr<CheckCardBlackListedEntity>` | Create a CheckCardBlackListed entity instance. |
| `create_product` | `(entopts) -> std::shared_ptr<CreateProductEntity>` | Create a CreateProduct entity instance. |
| `deactivate_terminal` | `(entopts) -> std::shared_ptr<DeactivateTerminalEntity>` | Create a DeactivateTerminal entity instance. |
| `digital_services_api` | `(entopts) -> std::shared_ptr<DigitalServicesApiEntity>` | Create a DigitalServicesApi entity instance. |
| `ec_data_ecom` | `(entopts) -> std::shared_ptr<EcDataEcomEntity>` | Create an EcDataEcom entity instance. |
| `ecom_parameter` | `(entopts) -> std::shared_ptr<EcomParameterEntity>` | Create an EcomParameter entity instance. |
| `ecr_data` | `(entopts) -> std::shared_ptr<EcrDataEntity>` | Create an EcrData entity instance. |
| `emv_data` | `(entopts) -> std::shared_ptr<EmvDataEntity>` | Create an EmvData entity instance. |
| `enable_acquiring` | `(entopts) -> std::shared_ptr<EnableAcquiringEntity>` | Create an EnableAcquiring entity instance. |
| `get_merchant_contract_number` | `(entopts) -> std::shared_ptr<GetMerchantContractNumberEntity>` | Create a GetMerchantContractNumber entity instance. |
| `get_template_xml` | `(entopts) -> std::shared_ptr<GetTemplateXmlEntity>` | Create a GetTemplateXml entity instance. |
| `introduce_mandator` | `(entopts) -> std::shared_ptr<IntroduceMandatorEntity>` | Create an IntroduceMandator entity instance. |
| `introduce_package` | `(entopts) -> std::shared_ptr<IntroducePackageEntity>` | Create an IntroducePackage entity instance. |
| `keep_alive` | `(entopts) -> std::shared_ptr<KeepAliveEntity>` | Create a KeepAlive entity instance. |
| `list_terminal` | `(entopts) -> std::shared_ptr<ListTerminalEntity>` | Create a ListTerminal entity instance. |
| `mandator_clearing_export` | `(entopts) -> std::shared_ptr<MandatorClearingExportEntity>` | Create a MandatorClearingExport entity instance. |
| `mandator_clearing_export_download` | `(entopts) -> std::shared_ptr<MandatorClearingExportDownloadEntity>` | Create a MandatorClearingExportDownload entity instance. |
| `mandator_clearing_export_summary` | `(entopts) -> std::shared_ptr<MandatorClearingExportSummaryEntity>` | Create a MandatorClearingExportSummary entity instance. |
| `merchant_portal_services_api` | `(entopts) -> std::shared_ptr<MerchantPortalServicesApiEntity>` | Create a MerchantPortalServicesApi entity instance. |
| `move_tid` | `(entopts) -> std::shared_ptr<MoveTidEntity>` | Create a MoveTid entity instance. |
| `payment_manual` | `(entopts) -> std::shared_ptr<PaymentManualEntity>` | Create a PaymentManual entity instance. |
| `payment_sred` | `(entopts) -> std::shared_ptr<PaymentSredEntity>` | Create a PaymentSred entity instance. |
| `pre_auth_transaction_completion` | `(entopts) -> std::shared_ptr<PreAuthTransactionCompletionEntity>` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivate_terminal` | `(entopts) -> std::shared_ptr<ReactivateTerminalEntity>` | Create a ReactivateTerminal entity instance. |
| `refund_transaction` | `(entopts) -> std::shared_ptr<RefundTransactionEntity>` | Create a RefundTransaction entity instance. |
| `register_tecs_company` | `(entopts) -> std::shared_ptr<RegisterTecsCompanyEntity>` | Create a RegisterTecsCompany entity instance. |
| `register_terminal` | `(entopts) -> std::shared_ptr<RegisterTerminalEntity>` | Create a RegisterTerminal entity instance. |
| `report_data` | `(entopts) -> std::shared_ptr<ReportDataEntity>` | Create a ReportData entity instance. |
| `status_transaction` | `(entopts) -> std::shared_ptr<StatusTransactionEntity>` | Create a StatusTransaction entity instance. |
| `store_terminal_parameter` | `(entopts) -> std::shared_ptr<StoreTerminalParameterEntity>` | Create a StoreTerminalParameter entity instance. |
| `terminal_id` | `(entopts) -> std::shared_ptr<TerminalIdEntity>` | Create a TerminalId entity instance. |
| `transaction_history` | `(entopts) -> std::shared_ptr<TransactionHistoryEntity>` | Create a TransactionHistory entity instance. |
| `transactions_count` | `(entopts) -> std::shared_ptr<TransactionsCountEntity>` | Create a TransactionsCount entity instance. |
| `transactions_count_card_brand` | `(entopts) -> std::shared_ptr<TransactionsCountCardBrandEntity>` | Create a TransactionsCountCardBrand entity instance. |
| `transactions_turnover` | `(entopts) -> std::shared_ptr<TransactionsTurnoverEntity>` | Create a TransactionsTurnover entity instance. |
| `update_merchant` | `(entopts) -> std::shared_ptr<UpdateMerchantEntity>` | Create an UpdateMerchant entity instance. |
| `update_template_xml` | `(entopts) -> std::shared_ptr<UpdateTemplateXmlEntity>` | Create an UpdateTemplateXml entity instance. |
| `version` | `(entopts) -> std::shared_ptr<VersionEntity>` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> Value` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, ctrl) -> Value` | Create a new entity. Throws on error. |
| `data` | `(arg) -> Value` | Get (no arg) or set (with arg) entity data. |
| `match` | `(arg) -> Value` | Get (no arg) or set (with arg) entity match criteria. |
| `make` | `() -> EntityPtr` | Create a new instance with the same options. |
| `getName` | `() -> std::string` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a map `Value` for
single-entity ops, a list `Value` for `list`) and throw
`sdk::SdkErrorPtr` on error. Wrap calls in `try`/`catch` to handle
failures.

The `direct()` escape hatch never throws — it returns a result `Value`
you branch on via `getp(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Value` | Response headers. |
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

Create an instance: `auto cancel_transaction = client->cancel_transaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `std::string` |  |
| `acquirer_name` | `std::string` |  |
| `actual_bonus_point` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorization_code` | `std::string` |  |
| `balance_amount` | `std::string` |  |
| `card_brand` | `std::string` |  |
| `card_number` | `std::string` |  |
| `client_id` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `ec_data` | `std::string` |  |
| `ecr_data` | `std::string` |  |
| `emv_data` | `std::string` |  |
| `exchange_fee` | `int64_t` |  |
| `exchange_rate` | `std::string` |  |
| `language_code` | `std::string` |  |
| `merchant_address` | `std::string` |  |
| `merchant_name` | `std::string` |  |
| `merchant_number` | `std::string` |  |
| `message_type` | `std::string` |  |
| `original_trace_number` | `int64_t` |  |
| `original_transaction_id` | `std::string` |  |
| `password` | `std::string` |  |
| `payment_reason` | `std::string` |  |
| `receipt_footer` | `std::string` |  |
| `receipt_header` | `std::string` |  |
| `receipt_layout` | `int64_t` |  |
| `receipt_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `serial_number` | `std::string` |  |
| `svc` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `std::string` |  |
| `trace_number` | `int64_t` |  |
| `transaction_date` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `tx_type` | `std::string` |  |
| `user_data` | `std::string` |  |

#### Example: Create

```cpp
Value cancel_transaction = client->cancel_transaction()->create(vmap({
    {"client_id", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receipt_number", Value("example_receipt_number")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```


### CheckCardBlackListed

Create an instance: `auto check_card_black_listed = client->check_card_black_listed();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value check_card_black_listed = client->check_card_black_listed()->create(vmap({
}), Value::undef());
```


### CreateProduct

Create an instance: `auto create_product = client->create_product();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `int64_t` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `template_name` | `std::string` |  |
| `template_type` | `std::string` |  |
| `template_xml` | `std::string` |  |
| `terminal_type` | `std::string` |  |

#### Example: Create

```cpp
Value create_product = client->create_product()->create(vmap({
    {"template_name", Value("example_template_name")},  // std::string
    {"template_type", Value("example_template_type")},  // std::string
    {"template_xml", Value("example_template_xml")},  // std::string
    {"terminal_type", Value("example_terminal_type")},  // std::string
}), Value::undef());
```


### DeactivateTerminal

Create an instance: `auto deactivate_terminal = client->deactivate_terminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `std::string` |  |
| `deactivation_reason` | `std::string` |  |
| `package_order_uuid` | `std::string` |  |
| `product_order_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```cpp
Value deactivate_terminal = client->deactivate_terminal()->create(vmap({
    {"deactivation_reason", Value("example_deactivation_reason")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```


### DigitalServicesApi

Create an instance: `auto digital_services_api = client->digital_services_api();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |
| `load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `std::string` |  |
| `clearing_date_to` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `tx_count` | `int64_t` |  |
| `tx_id_end` | `std::string` |  |
| `tx_id_start` | `std::string` |  |
| `tx_seq_no_end` | `int64_t` |  |
| `tx_seq_no_start` | `int64_t` |  |
| `tx_total` | `int64_t` |  |

#### Example: Load

```cpp
Value digital_services_api = client->digital_services_api()->load(Value::undef(), Value::undef());
```

#### Example: Create

```cpp
Value digital_services_api = client->digital_services_api()->create(vmap({
}), Value::undef());
```


### EcDataEcom

Create an instance: `auto ec_data_ecom = client->ec_data_ecom();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `transaction_id` | `std::string` |  |
| `transaction_type` | `std::string` |  |

#### Example: Create

```cpp
Value ec_data_ecom = client->ec_data_ecom()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_id", Value("example_transaction_id")},  // std::string
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```


### EcomParameter

Create an instance: `auto ecom_parameter = client->ecom_parameter();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `std::string` |  |
| `ecom_skey` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```cpp
Value ecom_parameter = client->ecom_parameter()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```


### EcrData

Create an instance: `auto ecr_data = client->ecr_data();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `transaction_id` | `std::string` |  |
| `transaction_type` | `std::string` |  |

#### Example: Create

```cpp
Value ecr_data = client->ecr_data()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_id", Value("example_transaction_id")},  // std::string
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```


### EmvData

Create an instance: `auto emv_data = client->emv_data();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `transaction_id` | `std::string` |  |
| `transaction_type` | `std::string` |  |

#### Example: Create

```cpp
Value emv_data = client->emv_data()->create(vmap({
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_id", Value("example_transaction_id")},  // std::string
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```


### EnableAcquiring

Create an instance: `auto enable_acquiring = client->enable_acquiring();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `int64_t` |  |
| `additional_data` | `std::map<std::string, Value>` |  |
| `corporate_uuid` | `std::string` |  |
| `currency` | `std::string` |  |
| `merchant_category_code` | `int64_t` |  |
| `package_order_uuid` | `std::string` |  |
| `product_order_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `sorting_code` | `int64_t` |  |
| `template_name` | `std::string` |  |
| `terminal_id` | `std::vector<Value>` |  |
| `terminal_id_acq` | `std::string` |  |
| `vu_nummer` | `std::string` |  |

#### Example: Create

```cpp
Value enable_acquiring = client->enable_acquiring()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"merchant_category_code", Value(1)},  // int64_t
    {"package_order_uuid", Value("example_package_order_uuid")},  // std::string
    {"product_order_uuid", Value("example_product_order_uuid")},  // std::string
    {"template_name", Value("example_template_name")},  // std::string
}), Value::undef());
```


### GetMerchantContractNumber

Create an instance: `auto get_merchant_contract_number = client->get_merchant_contract_number();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value get_merchant_contract_number = client->get_merchant_contract_number()->create(vmap({
    {"merchant_contract_number", Value("example_merchant_contract_number")},  // std::string
}), Value::undef());
```


### GetTemplateXml

Create an instance: `auto get_template_xml = client->get_template_xml();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `template_name` | `std::string` |  |

#### Example: Create

```cpp
Value get_template_xml = client->get_template_xml()->create(vmap({
    {"template_name", Value("example_template_name")},  // std::string
}), Value::undef());
```


### IntroduceMandator

Create an instance: `auto introduce_mandator = client->introduce_mandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value introduce_mandator = client->introduce_mandator()->create(vmap({
    {"mandator_name", Value("example_mandator_name")},  // std::string
}), Value::undef());
```


### IntroducePackage

Create an instance: `auto introduce_package = client->introduce_package();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_template_description` | `std::string` |  |

#### Example: Create

```cpp
Value introduce_package = client->introduce_package()->create(vmap({
    {"terminal_template_description", Value("example_terminal_template_description")},  // std::string
}), Value::undef());
```


### KeepAlive

Create an instance: `auto keep_alive = client->keep_alive();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `std::string` |  |
| `ka_date_time_from` | `std::string` |  |
| `ka_date_time_to` | `std::string` |  |
| `keep_alive_data` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_date_time_from` | `std::string` |  |
| `terminal_date_time_to` | `std::string` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```cpp
Value keep_alive = client->keep_alive()->create(vmap({
}), Value::undef());
```


### ListTerminal

Create an instance: `auto list_terminal = client->list_terminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `std::vector<Value>` |  |
| `filter` | `std::map<std::string, Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value list_terminal = client->list_terminal()->create(vmap({
}), Value::undef());
```


### MandatorClearingExport

Create an instance: `auto mandator_clearing_export = client->mandator_clearing_export();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `std::string` |  |
| `clearing_date_to` | `std::string` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `record` | `std::vector<Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value mandator_clearing_export = client->mandator_clearing_export()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
}), Value::undef());
```


### MandatorClearingExportDownload

Create an instance: `auto mandator_clearing_export_download = client->mandator_clearing_export_download();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |
| `load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `std::string` |  |
| `clearing_date_to` | `std::string` |  |
| `file_id` | `std::string` |  |
| `filename_template` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `status` | `std::string` |  |

#### Example: Load

```cpp
Value mandator_clearing_export_download = client->mandator_clearing_export_download()->load(vmap({{"id", Value("mandator_clearing_export_download_id")}}), Value::undef());
```

#### Example: Create

```cpp
Value mandator_clearing_export_download = client->mandator_clearing_export_download()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
}), Value::undef());
```


### MandatorClearingExportSummary

Create an instance: `auto mandator_clearing_export_summary = client->mandator_clearing_export_summary();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `std::string` |  |
| `clearing_date_to` | `std::string` |  |
| `record` | `std::vector<Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value mandator_clearing_export_summary = client->mandator_clearing_export_summary()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
}), Value::undef());
```


### MerchantPortalServicesApi

Create an instance: `auto merchant_portal_services_api = client->merchant_portal_services_api();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `std::string` |  |
| `authorization_code` | `std::string` |  |
| `card_brand` | `std::string` |  |
| `clearing_amount_from` | `std::string` |  |
| `clearing_amount_to` | `std::string` |  |
| `clearing_currency` | `std::string` |  |
| `clearing_status` | `std::string` |  |
| `corporate_uuid` | `std::string` |  |
| `order_by_transaction_date` | `std::string` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `receipt_number` | `std::string` |  |
| `referenced_transaction_id` | `std::string` |  |
| `retrieval_reference_number` | `std::string` |  |
| `source_id` | `int64_t` |  |
| `tecsengine_response_code_from` | `std::string` |  |
| `tecsengine_response_code_to` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `trace_number` | `std::string` |  |
| `transaction_amount_from` | `std::string` |  |
| `transaction_amount_to` | `std::string` |  |
| `transaction_date_from` | `std::string` |  |
| `transaction_date_to` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `transaction_type` | `std::string` |  |
| `wallet` | `std::string` |  |

#### Example: Create

```cpp
Value merchant_portal_services_api = client->merchant_portal_services_api()->create(vmap({
}), Value::undef());
```


### MoveTid

Create an instance: `auto move_tid = client->move_tid();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `std::vector<Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `target_packageorderuuid` | `std::string` |  |
| `target_productorderuuid` | `std::string` |  |

#### Example: Create

```cpp
Value move_tid = client->move_tid()->create(vmap({
    {"productorderuuid", vlist()},  // std::vector<Value>
}), Value::undef());
```


### PaymentManual

Create an instance: `auto payment_manual = client->payment_manual();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorization_number` | `std::string` |  |
| `card_number` | `std::string` |  |
| `card_type` | `std::string` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `date_time_tx` | `std::string` |  |
| `exp_date` | `std::string` |  |
| `merchant_id` | `std::string` |  |
| `original_transaction_id` | `std::string` |  |
| `password` | `std::string` |  |
| `response_code` | `std::string` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `txtype` | `std::string` |  |

#### Example: Create

```cpp
Value payment_manual = client->payment_manual()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"card_number", Value("example_card_number")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"exp_date", Value("example_exp_date")},  // std::string
    {"txtype", Value("example_txtype")},  // std::string
}), Value::undef());
```


### PaymentSred

Create an instance: `auto payment_sred = client->payment_sred();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorization_number` | `std::string` |  |
| `card_type` | `std::string` |  |
| `currency` | `std::string` |  |
| `date_time_tx` | `std::string` |  |
| `device_payload` | `std::string` |  |
| `merchant_id` | `std::string` |  |
| `original_transaction_id` | `std::string` |  |
| `password` | `std::string` |  |
| `response_code` | `std::string` |  |
| `response_message` | `std::string` |  |
| `sred` | `std::map<std::string, Value>` |  |
| `terminal_id` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `txtype` | `std::string` |  |

#### Example: Create

```cpp
Value payment_sred = client->payment_sred()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"device_payload", Value("example_device_payload")},  // std::string
    {"txtype", Value("example_txtype")},  // std::string
}), Value::undef());
```


### PreAuthTransactionCompletion

Create an instance: `auto pre_auth_transaction_completion = client->pre_auth_transaction_completion();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `std::string` |  |
| `acquirer_name` | `std::string` |  |
| `actual_bonus_point` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorization_code` | `std::string` |  |
| `balance_amount` | `std::string` |  |
| `card_brand` | `std::string` |  |
| `card_number` | `std::string` |  |
| `card_number_reference` | `std::string` |  |
| `client_id` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `ec_data` | `std::string` |  |
| `ecr_data` | `std::string` |  |
| `emv_data` | `std::string` |  |
| `exchange_fee` | `int64_t` |  |
| `exchange_rate` | `std::string` |  |
| `language_code` | `std::string` |  |
| `merchant_address` | `std::string` |  |
| `merchant_name` | `std::string` |  |
| `merchant_number` | `std::string` |  |
| `message_type` | `std::string` |  |
| `original_trace_number` | `int64_t` |  |
| `original_transaction_id` | `std::string` |  |
| `password` | `std::string` |  |
| `payment_reason` | `std::string` |  |
| `receipt_footer` | `std::string` |  |
| `receipt_header` | `std::string` |  |
| `receipt_layout` | `int64_t` |  |
| `receipt_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `serial_number` | `std::string` |  |
| `svc` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `std::string` |  |
| `trace_number` | `int64_t` |  |
| `transaction_date` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `transaction_type` | `std::string` |  |
| `tx_type` | `std::string` |  |
| `user_data` | `std::string` |  |

#### Example: Create

```cpp
Value pre_auth_transaction_completion = client->pre_auth_transaction_completion()->create(vmap({
    {"card_number_reference", Value("example_card_number_reference")},  // std::string
    {"client_id", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receipt_number", Value("example_receipt_number")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
    {"transaction_type", Value("example_transaction_type")},  // std::string
}), Value::undef());
```


### ReactivateTerminal

Create an instance: `auto reactivate_terminal = client->reactivate_terminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `std::string` |  |
| `package_order_uuid` | `std::string` |  |
| `product_order_uuid` | `std::string` |  |
| `reactivation_reason` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```cpp
Value reactivate_terminal = client->reactivate_terminal()->create(vmap({
    {"reactivation_reason", Value("example_reactivation_reason")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```


### RefundTransaction

Create an instance: `auto refund_transaction = client->refund_transaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `std::string` |  |
| `acquirer_name` | `std::string` |  |
| `actual_bonus_point` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorization_code` | `std::string` |  |
| `balance_amount` | `std::string` |  |
| `card_brand` | `std::string` |  |
| `card_number` | `std::string` |  |
| `client_id` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `ec_data` | `std::string` |  |
| `ecr_data` | `std::string` |  |
| `emv_data` | `std::string` |  |
| `exchange_fee` | `int64_t` |  |
| `exchange_rate` | `std::string` |  |
| `language_code` | `std::string` |  |
| `merchant_address` | `std::string` |  |
| `merchant_name` | `std::string` |  |
| `merchant_number` | `std::string` |  |
| `message_type` | `std::string` |  |
| `original_trace_number` | `int64_t` |  |
| `original_transaction_id` | `std::string` |  |
| `password` | `std::string` |  |
| `payment_reason` | `std::string` |  |
| `receipt_footer` | `std::string` |  |
| `receipt_header` | `std::string` |  |
| `receipt_layout` | `int64_t` |  |
| `receipt_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `serial_number` | `std::string` |  |
| `svc` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `std::string` |  |
| `trace_number` | `int64_t` |  |
| `transaction_date` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `tx_type` | `std::string` |  |
| `user_data` | `std::string` |  |

#### Example: Create

```cpp
Value refund_transaction = client->refund_transaction()->create(vmap({
    {"client_id", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receipt_number", Value("example_receipt_number")},  // std::string
    {"terminal_id", Value(1)},  // int64_t
}), Value::undef());
```


### RegisterTecsCompany

Create an instance: `auto register_tecs_company = client->register_tecs_company();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `std::string` |  |
| `package_order_uuid` | `std::string` |  |
| `partner_id` | `int64_t` |  |
| `partner_name` | `std::string` |  |
| `product_order_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `template_name` | `std::string` |  |

#### Example: Create

```cpp
Value register_tecs_company = client->register_tecs_company()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
    {"package_order_uuid", Value("example_package_order_uuid")},  // std::string
    {"product_order_uuid", Value("example_product_order_uuid")},  // std::string
    {"template_name", Value("example_template_name")},  // std::string
}), Value::undef());
```


### RegisterTerminal

Create an instance: `auto register_terminal = client->register_terminal();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `std::map<std::string, Value>` |  |
| `corporate_uuid` | `std::string` |  |
| `package_order_uuid` | `std::string` |  |
| `product_order_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `tecs_web_secret_key` | `std::string` |  |
| `template_name` | `std::string` |  |
| `terminal_country_code` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_id_acq` | `std::string` |  |
| `terminal_language_code` | `std::string` |  |
| `terminal_location` | `std::string` |  |
| `terminal_serial_number` | `std::string` |  |
| `token_io_alia` | `std::string` |  |
| `token_io_iban` | `std::string` |  |
| `token_io_member_id` | `std::string` |  |
| `web_shop_url` | `std::string` |  |

#### Example: Create

```cpp
Value register_terminal = client->register_terminal()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
    {"package_order_uuid", Value("example_package_order_uuid")},  // std::string
    {"product_order_uuid", Value("example_product_order_uuid")},  // std::string
    {"template_name", Value("example_template_name")},  // std::string
    {"terminal_country_code", Value("example_terminal_country_code")},  // std::string
    {"terminal_language_code", Value("example_terminal_language_code")},  // std::string
    {"terminal_location", Value("example_terminal_location")},  // std::string
}), Value::undef());
```


### ReportData

Create an instance: `auto report_data = client->report_data();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `std::vector<Value>` |  |
| `clearing_date_from` | `std::string` |  |
| `clearing_date_to` | `std::string` |  |
| `corporate_id` | `std::string` |  |
| `currency` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `sum_over_credit_tx` | `std::map<std::string, Value>` |  |
| `sum_over_debit_tx` | `std::map<std::string, Value>` |  |
| `terminal_id` | `int64_t` |  |

#### Example: Create

```cpp
Value report_data = client->report_data()->create(vmap({
    {"clearing_date_from", Value("example_clearing_date_from")},  // std::string
    {"clearing_date_to", Value("example_clearing_date_to")},  // std::string
    {"corporate_id", Value("example_corporate_id")},  // std::string
    {"currency", Value("example_currency")},  // std::string
}), Value::undef());
```


### StatusTransaction

Create an instance: `auto status_transaction = client->status_transaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `std::string` |  |
| `acquirer_terminal_id` | `std::string` |  |
| `amount` | `int64_t` |  |
| `application_cryptogram` | `std::string` |  |
| `authorization_code` | `Value` |  |
| `authorization_date` | `std::string` |  |
| `card_brand` | `std::string` |  |
| `card_entry` | `std::string` |  |
| `card_expiration` | `std::string` |  |
| `card_number` | `std::string` |  |
| `clearing_amount` | `int64_t` |  |
| `clearing_batch_id` | `std::string` |  |
| `clearing_currency` | `std::string` |  |
| `clearing_date` | `std::string` |  |
| `clearing_processed_date` | `std::string` |  |
| `clearing_status` | `std::string` |  |
| `client_id` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvm` | `std::string` |  |
| `ecr_data` | `std::string` |  |
| `emv_application_id` | `std::string` |  |
| `emv_application_label` | `std::string` |  |
| `merchant_name` | `std::string` |  |
| `merchant_number` | `std::string` |  |
| `original_client_id` | `std::string` |  |
| `original_terminal_id` | `int64_t` |  |
| `original_transaction_id` | `std::string` |  |
| `payment_reason` | `std::string` |  |
| `receipt_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_code_from_a` | `std::string` |  |
| `response_message` | `std::string` |  |
| `retrieval_reference_number` | `std::string` |  |
| `service_code` | `std::string` |  |
| `settlement_status` | `std::string` |  |
| `source_id` | `int64_t` |  |
| `tecsengine_response_code` | `int64_t` |  |
| `tecsengine_response_text` | `std::string` |  |
| `terminal_end_of_day_date` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `terminal_location` | `std::string` |  |
| `tip_amount` | `int64_t` |  |
| `trace_number` | `int64_t` |  |
| `transaction_clearing_date` | `std::string` |  |
| `transaction_date` | `std::string` |  |
| `transaction_id` | `std::string` |  |
| `transaction_seq_number` | `int64_t` |  |
| `transaction_server_date` | `std::string` |  |
| `transaction_source` | `std::string` |  |
| `transaction_type` | `std::string` |  |

#### Example: Create

```cpp
Value status_transaction = client->status_transaction()->create(vmap({
}), Value::undef());
```


### StoreTerminalParameter

Create an instance: `auto store_terminal_parameter = client->store_terminal_parameter();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `std::map<std::string, Value>` |  |
| `config_version` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `serial_number` | `std::string` |  |
| `tid_sent` | `std::string` |  |

#### Example: Create

```cpp
Value store_terminal_parameter = client->store_terminal_parameter()->create(vmap({
    {"serial_number", Value("example_serial_number")},  // std::string
}), Value::undef());
```


### TerminalId

Create an instance: `auto terminal_id = client->terminal_id();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `std::vector<Value>` |  |
| `duplicate_terminal_id` | `std::vector<Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `terminal` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value terminal_id = client->terminal_id()->create(vmap({
    {"device_serial_number", vlist()},  // std::vector<Value>
}), Value::undef());
```


### TransactionHistory

Create an instance: `auto transaction_history = client->transaction_history();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3_d_secure` | `std::string` |  |
| `authorization_code` | `std::string` |  |
| `card_brand` | `std::string` |  |
| `clearing_amount_from` | `std::string` |  |
| `clearing_amount_to` | `std::string` |  |
| `clearing_currency` | `std::string` |  |
| `clearing_status` | `std::string` |  |
| `corporate_uuid` | `std::string` |  |
| `order_by_transaction_date` | `std::string` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `payment_token_public_id` | `std::string` |  |
| `receipt_number` | `std::string` |  |
| `referenced_transaction_id` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `retrieval_reference_number` | `std::string` |  |
| `source_id` | `int64_t` |  |
| `tecsengine_response_code_from` | `std::string` |  |
| `tecsengine_response_code_to` | `std::string` |  |
| `terminal_id` | `int64_t` |  |
| `trace_number` | `std::string` |  |
| `transaction_amount_from` | `std::string` |  |
| `transaction_amount_to` | `std::string` |  |
| `transaction_date_from` | `std::string` |  |
| `transaction_date_to` | `std::string` |  |
| `transaction_history` | `std::vector<Value>` |  |
| `transaction_id` | `std::string` |  |
| `transaction_type` | `std::string` |  |
| `wallet` | `std::string` |  |

#### Example: Create

```cpp
Value transaction_history = client->transaction_history()->create(vmap({
}), Value::undef());
```


### TransactionsCount

Create an instance: `auto transactions_count = client->transactions_count();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `transaction_date_from` | `std::string` |  |
| `transaction_date_to` | `std::string` |  |
| `transactions_count` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value transactions_count = client->transactions_count()->create(vmap({
}), Value::undef());
```


### TransactionsCountCardBrand

Create an instance: `auto transactions_count_card_brand = client->transactions_count_card_brand();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `transaction_date_from` | `std::string` |  |
| `transaction_date_to` | `std::string` |  |
| `transactions_count` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value transactions_count_card_brand = client->transactions_count_card_brand()->create(vmap({
}), Value::undef());
```


### TransactionsTurnover

Create an instance: `auto transactions_turnover = client->transactions_turnover();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `transaction_date_from` | `std::string` |  |
| `transaction_date_to` | `std::string` |  |
| `turnover` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value transactions_turnover = client->transactions_turnover()->create(vmap({
}), Value::undef());
```


### UpdateMerchant

Create an instance: `auto update_merchant = client->update_merchant();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `std::string` |  |
| `corporate_uuid` | `std::string` |  |
| `country` | `std::string` |  |
| `merchant_category_code` | `std::string` |  |
| `name` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `state` | `std::string` |  |
| `street` | `std::string` |  |
| `vu_nummer` | `std::string` |  |
| `zipcode` | `std::string` |  |

#### Example: Create

```cpp
Value update_merchant = client->update_merchant()->create(vmap({
    {"corporate_uuid", Value("example_corporate_uuid")},  // std::string
}), Value::undef());
```


### UpdateTemplateXml

Create an instance: `auto update_template_xml = client->update_template_xml();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `template_name` | `std::string` |  |
| `template_xml` | `std::string` |  |

#### Example: Create

```cpp
Value update_template_xml = client->update_template_xml()->create(vmap({
    {"template_name", Value("example_template_name")},  // std::string
    {"template_xml", Value("example_template_xml")},  // std::string
}), Value::undef());
```


### Version

Create an instance: `auto version = client->version();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `std::string` |  |
| `build_date` | `std::string` |  |
| `version` | `std::string` |  |

#### Example: Load

```cpp
Value version = client->version()->load(Value::undef(), Value::undef());
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

The C++ SDK uses a single dynamic `sdk::Value` type (a JSON-like variant
over string / number / bool / list / map) throughout rather than generated
typed structs. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema changes.

Build maps with `sdk::vmap({{"key", sdk::Value("v")}})` and lists with
`sdk::vlist({...})`; read fields back with `sdk::getp(value, "key")`. Use
`sdk::to_map()` to safely coerce a value that should be a map, and
`sdk::Struct::jsonify(value)` to render it as JSON.

### Directory structure

```
cpp/
├── core/                        -- Runtime type graph, config, generated client
├── entity/                      -- Per-entity client headers
├── feature/                     -- Built-in features (Base, Test, Log, ...)
├── utility/                     -- Operation pipeline + vendored struct library
├── test/                        -- Test suites
├── Makefile                     -- Build & run the tests (C++17)
└── VERSION                      -- SDK version
```

Include the umbrella header `core/sdk.hpp` to pull in the whole SDK: the
runtime types, the pipeline utilities, the vendored struct, the generated
config, the per-entity clients and the generated `BluefinTecsMerchantServicesSDK`
client class. Everything lives in the `sdk` namespace.

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
