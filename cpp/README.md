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
Value created = client->cancel_transaction()->create(vmap({{"clientId", Value(1)}, {"currency", Value("example_currency")}, {"receiptNumber", Value("example_receiptNumber")}, {"terminalId", Value(1)}}), Value::undef());

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

Create an instance: `auto cancel_transaction = client->cancel_transaction();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `std::string` |  |
| `acquirerName` | `std::string` |  |
| `actualBonusPoints` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorizationCode` | `std::string` |  |
| `balanceAmount` | `std::string` |  |
| `cardBrand` | `std::string` |  |
| `cardNumber` | `std::string` |  |
| `clientId` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `ecData` | `std::string` |  |
| `ecrData` | `std::string` |  |
| `emvData` | `std::string` |  |
| `exchangeFee` | `int64_t` |  |
| `exchangeRate` | `std::string` |  |
| `languageCode` | `std::string` |  |
| `merchantAddress` | `std::string` |  |
| `merchantName` | `std::string` |  |
| `merchantNumber` | `std::string` |  |
| `messageType` | `std::string` |  |
| `originalTraceNumber` | `int64_t` |  |
| `originalTransactionId` | `std::string` |  |
| `password` | `std::string` |  |
| `paymentReason` | `std::string` |  |
| `receiptFooter` | `std::string` |  |
| `receiptHeader` | `std::string` |  |
| `receiptLayout` | `int64_t` |  |
| `receiptNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `serialNumber` | `std::string` |  |
| `svc` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `std::string` |  |
| `traceNumber` | `int64_t` |  |
| `transactionDate` | `std::string` |  |
| `transactionId` | `std::string` |  |
| `txType` | `std::string` |  |
| `userData` | `std::string` |  |

#### Example: Create

```cpp
Value cancel_transaction = client->cancel_transaction()->create(vmap({
    {"clientId", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receiptNumber", Value("example_receiptNumber")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `cardNo` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

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
| `acquirerId` | `int64_t` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `templateName` | `std::string` |  |
| `templateType` | `std::string` |  |
| `templateXml` | `std::string` |  |
| `terminalType` | `std::string` |  |

#### Example: Create

```cpp
Value create_product = client->create_product()->create(vmap({
    {"templateName", Value("example_templateName")},  // std::string
    {"templateType", Value("example_templateType")},  // std::string
    {"templateXml", Value("example_templateXml")},  // std::string
    {"terminalType", Value("example_terminalType")},  // std::string
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
| `corporateUuid` | `std::string` |  |
| `deactivationReason` | `std::string` |  |
| `packageOrderUuid` | `std::string` |  |
| `productOrderUuid` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```cpp
Value deactivate_terminal = client->deactivate_terminal()->create(vmap({
    {"deactivationReason", Value("example_deactivationReason")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `clearingDateFrom` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `txCount` | `int64_t` |  |
| `txIdEnd` | `std::string` |  |
| `txIdStart` | `std::string` |  |
| `txSeqNoEnd` | `int64_t` |  |
| `txSeqNoStart` | `int64_t` |  |
| `txTotal` | `int64_t` |  |

#### Example: Load

```cpp
Value digital_services_api = client->digital_services_api()->load(Value::undef(), Value::undef());
```

#### Example: Create

```cpp
Value digital_services_api = client->digital_services_api()->create(vmap({
    {"file_id", Value("example_file_id")},  // std::string
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `ecomData` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `transactionId` | `std::string` |  |
| `transactionType` | `std::string` |  |

#### Example: Create

```cpp
Value ec_data_ecom = client->ec_data_ecom()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
    {"transactionId", Value("example_transactionId")},  // std::string
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `ecomPass` | `std::string` |  |
| `ecomSkey` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```cpp
Value ecom_parameter = client->ecom_parameter()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
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
| `ecrData` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `transactionId` | `std::string` |  |
| `transactionType` | `std::string` |  |

#### Example: Create

```cpp
Value ecr_data = client->ecr_data()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
    {"transactionId", Value("example_transactionId")},  // std::string
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `emvData` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `transactionId` | `std::string` |  |
| `transactionType` | `std::string` |  |

#### Example: Create

```cpp
Value emv_data = client->emv_data()->create(vmap({
    {"terminalId", Value(1)},  // int64_t
    {"transactionId", Value("example_transactionId")},  // std::string
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `accountNo` | `int64_t` |  |
| `additionalData` | `std::map<std::string, Value>` |  |
| `corporateUuid` | `std::string` |  |
| `currency` | `std::string` |  |
| `merchantCategoryCode` | `int64_t` |  |
| `packageOrderUuid` | `std::string` |  |
| `productOrderUuid` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `sortingCode` | `int64_t` |  |
| `templateName` | `std::string` |  |
| `terminalIdAcq` | `std::string` |  |
| `terminalIds` | `std::vector<Value>` |  |
| `vuNummer` | `std::string` |  |

#### Example: Create

```cpp
Value enable_acquiring = client->enable_acquiring()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"merchantCategoryCode", Value(1)},  // int64_t
    {"packageOrderUuid", Value("example_packageOrderUuid")},  // std::string
    {"productOrderUuid", Value("example_productOrderUuid")},  // std::string
    {"templateName", Value("example_templateName")},  // std::string
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
| `merchantContractNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value get_merchant_contract_number = client->get_merchant_contract_number()->create(vmap({
    {"merchantContractNumber", Value("example_merchantContractNumber")},  // std::string
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
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `templateName` | `std::string` |  |

#### Example: Create

```cpp
Value get_template_xml = client->get_template_xml()->create(vmap({
    {"templateName", Value("example_templateName")},  // std::string
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
| `mandatorName` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value introduce_mandator = client->introduce_mandator()->create(vmap({
    {"mandatorName", Value("example_mandatorName")},  // std::string
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
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalTemplateDescription` | `std::string` |  |

#### Example: Create

```cpp
Value introduce_package = client->introduce_package()->create(vmap({
    {"terminalTemplateDescription", Value("example_terminalTemplateDescription")},  // std::string
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
| `kaDateTimeFrom` | `std::string` |  |
| `kaDateTimeTo` | `std::string` |  |
| `keepAliveData` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalDateTimeFrom` | `std::string` |  |
| `terminalDateTimeTo` | `std::string` |  |
| `terminalId` | `int64_t` |  |

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
| `corporateUuid` | `std::vector<Value>` |  |
| `filter` | `std::map<std::string, Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminals` | `std::vector<Value>` |  |

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
| `clearingDateFrom` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `std::map<std::string, Value>` |  |
| `records` | `std::vector<Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value mandator_clearing_export = client->mandator_clearing_export()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `clearingDateFrom` | `std::string` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `std::string` | End date for clearing export (inclusive) |
| `fileId` | `std::string` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `std::string` | Optional filename template for the export file |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `status` | `std::string` | Processing status of the export request |

#### Example: Load

```cpp
Value mandator_clearing_export_download = client->mandator_clearing_export_download()->load(vmap({{"id", Value("mandator_clearing_export_download_id")}}), Value::undef());
```

#### Example: Create

```cpp
Value mandator_clearing_export_download = client->mandator_clearing_export_download()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `clearingDateFrom` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `std::vector<Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value mandator_clearing_export_summary = client->mandator_clearing_export_summary()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
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
| `3DSecure` | `std::string` |  |
| `authorizationCode` | `std::string` |  |
| `cardBrand` | `std::string` |  |
| `clearingAmountFrom` | `std::string` |  |
| `clearingAmountTo` | `std::string` |  |
| `clearingCurrency` | `std::string` |  |
| `clearingStatus` | `std::string` |  |
| `corporateUUID` | `std::string` |  |
| `orderByTransactionDate` | `std::string` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `receiptNumber` | `std::string` |  |
| `referencedTransactionId` | `std::string` |  |
| `retrievalReferenceNumber` | `std::string` |  |
| `sourceId` | `int64_t` |  |
| `tecsengineResponseCodeFrom` | `std::string` |  |
| `tecsengineResponseCodeTo` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `traceNumber` | `std::string` |  |
| `transactionAmountFrom` | `std::string` |  |
| `transactionAmountTo` | `std::string` |  |
| `transactionDateFrom` | `std::string` |  |
| `transactionDateTo` | `std::string` |  |
| `transactionId` | `std::string` |  |
| `transactionType` | `std::string` |  |
| `wallet` | `std::string` | Filter by wallet type. |

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
| `productorderuuids` | `std::vector<Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `targetPackageorderuuid` | `std::string` |  |
| `targetProductorderuuid` | `std::string` |  |

#### Example: Create

```cpp
Value move_tid = client->move_tid()->create(vmap({
    {"productorderuuids", vlist()},  // std::vector<Value>
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
| `acquirerName` | `std::string` | Acquirer name parsed from KKG field |
| `amount` | `int64_t` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `std::string` | Authorization number from the gateway |
| `cardNumber` | `std::string` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `std::string` | Card type parsed from KKG field |
| `currency` | `std::string` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `std::string` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `std::string` | Date and time of the transaction |
| `expDate` | `std::string` | Card expiry date in MMYY format |
| `merchantId` | `std::string` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `std::string` | Original transaction ID from gateway |
| `password` | `std::string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `std::string` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `std::string` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `std::string` | Terminal ID used for the transaction |
| `transactionId` | `std::string` | Transaction ID generated by the backend |
| `txtype` | `std::string` | Transaction type |

#### Example: Create

```cpp
Value payment_manual = client->payment_manual()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"cardNumber", Value("example_cardNumber")},  // std::string
    {"currency", Value("example_currency")},  // std::string
    {"expDate", Value("example_expDate")},  // std::string
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
| `amount` | `int64_t` | Transaction amount in minor units (cents) |
| `currency` | `std::string` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `std::string` | Device type that provided the SRED payload |
| `devicePayload` | `std::string` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `std::string` | Card expiry date in MMYY format |
| `mode` | `std::string` | Decryption mode |
| `panMasked` | `std::string` | Masked PAN (first 6 and last 4 digits) |
| `password` | `std::string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `std::string` | Device serial number |
| `serviceCode` | `std::string` | Service code from the card |
| `terminalId` | `std::string` | Terminal ID - 8 digits |
| `txtype` | `std::string` | Transaction type |

#### Example: Create

```cpp
Value payment_sred = client->payment_sred()->create(vmap({
    {"amount", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"devicePayload", Value("example_devicePayload")},  // std::string
    {"terminalId", Value("example_terminalId")},  // std::string
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
| `acquirerId` | `std::string` |  |
| `acquirerName` | `std::string` |  |
| `actualBonusPoints` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorizationCode` | `std::string` |  |
| `balanceAmount` | `std::string` |  |
| `cardBrand` | `std::string` |  |
| `cardNumber` | `std::string` |  |
| `cardNumberReference` | `std::string` |  |
| `clientId` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `ecData` | `std::string` |  |
| `ecrData` | `std::string` |  |
| `emvData` | `std::string` |  |
| `exchangeFee` | `int64_t` |  |
| `exchangeRate` | `std::string` |  |
| `languageCode` | `std::string` |  |
| `merchantAddress` | `std::string` |  |
| `merchantName` | `std::string` |  |
| `merchantNumber` | `std::string` |  |
| `messageType` | `std::string` |  |
| `originalTraceNumber` | `int64_t` |  |
| `originalTransactionId` | `std::string` |  |
| `password` | `std::string` |  |
| `paymentReason` | `std::string` |  |
| `receiptFooter` | `std::string` |  |
| `receiptHeader` | `std::string` |  |
| `receiptLayout` | `int64_t` |  |
| `receiptNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `serialNumber` | `std::string` |  |
| `svc` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `std::string` |  |
| `traceNumber` | `int64_t` |  |
| `transactionDate` | `std::string` |  |
| `transactionId` | `std::string` |  |
| `transactionType` | `std::string` |  |
| `txType` | `std::string` |  |
| `userData` | `std::string` |  |

#### Example: Create

```cpp
Value pre_auth_transaction_completion = client->pre_auth_transaction_completion()->create(vmap({
    {"cardNumberReference", Value("example_cardNumberReference")},  // std::string
    {"clientId", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receiptNumber", Value("example_receiptNumber")},  // std::string
    {"terminalId", Value(1)},  // int64_t
    {"transactionType", Value("example_transactionType")},  // std::string
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
| `corporateUuid` | `std::string` |  |
| `packageOrderUuid` | `std::string` |  |
| `productOrderUuid` | `std::string` |  |
| `reactivationReason` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```cpp
Value reactivate_terminal = client->reactivate_terminal()->create(vmap({
    {"reactivationReason", Value("example_reactivationReason")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `acquirerId` | `std::string` |  |
| `acquirerName` | `std::string` |  |
| `actualBonusPoints` | `std::string` |  |
| `amount` | `int64_t` |  |
| `authorizationCode` | `std::string` |  |
| `balanceAmount` | `std::string` |  |
| `cardBrand` | `std::string` |  |
| `cardNumber` | `std::string` |  |
| `clientId` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvc` | `std::string` |  |
| `ecData` | `std::string` |  |
| `ecrData` | `std::string` |  |
| `emvData` | `std::string` |  |
| `exchangeFee` | `int64_t` |  |
| `exchangeRate` | `std::string` |  |
| `languageCode` | `std::string` |  |
| `merchantAddress` | `std::string` |  |
| `merchantName` | `std::string` |  |
| `merchantNumber` | `std::string` |  |
| `messageType` | `std::string` |  |
| `originalTraceNumber` | `int64_t` |  |
| `originalTransactionId` | `std::string` |  |
| `password` | `std::string` |  |
| `paymentReason` | `std::string` |  |
| `receiptFooter` | `std::string` |  |
| `receiptHeader` | `std::string` |  |
| `receiptLayout` | `int64_t` |  |
| `receiptNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `serialNumber` | `std::string` |  |
| `svc` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `std::string` |  |
| `traceNumber` | `int64_t` |  |
| `transactionDate` | `std::string` |  |
| `transactionId` | `std::string` |  |
| `txType` | `std::string` |  |
| `userData` | `std::string` |  |

#### Example: Create

```cpp
Value refund_transaction = client->refund_transaction()->create(vmap({
    {"clientId", Value(1)},  // int64_t
    {"currency", Value("example_currency")},  // std::string
    {"receiptNumber", Value("example_receiptNumber")},  // std::string
    {"terminalId", Value(1)},  // int64_t
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
| `corporateUuid` | `std::string` |  |
| `packageOrderUuid` | `std::string` |  |
| `partnerId` | `int64_t` |  |
| `partnerName` | `std::string` |  |
| `productOrderUuid` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `templateName` | `std::string` |  |

#### Example: Create

```cpp
Value register_tecs_company = client->register_tecs_company()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
    {"packageOrderUuid", Value("example_packageOrderUuid")},  // std::string
    {"productOrderUuid", Value("example_productOrderUuid")},  // std::string
    {"templateName", Value("example_templateName")},  // std::string
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
| `additionalData` | `std::map<std::string, Value>` |  |
| `corporateUuid` | `std::string` |  |
| `packageOrderUuid` | `std::string` |  |
| `productOrderUuid` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `tecsWebSecretKey` | `std::string` |  |
| `templateName` | `std::string` |  |
| `terminalCountryCode` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `terminalIdAcq` | `std::string` |  |
| `terminalLanguageCode` | `std::string` |  |
| `terminalLocation` | `std::string` |  |
| `terminalSerialNumber` | `std::string` |  |
| `tokenIOAlias` | `std::string` |  |
| `tokenIOIban` | `std::string` |  |
| `tokenIOMemberId` | `std::string` |  |
| `webShopUrl` | `std::string` |  |

#### Example: Create

```cpp
Value register_terminal = client->register_terminal()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
    {"packageOrderUuid", Value("example_packageOrderUuid")},  // std::string
    {"productOrderUuid", Value("example_productOrderUuid")},  // std::string
    {"templateName", Value("example_templateName")},  // std::string
    {"terminalCountryCode", Value("example_terminalCountryCode")},  // std::string
    {"terminalLanguageCode", Value("example_terminalLanguageCode")},  // std::string
    {"terminalLocation", Value("example_terminalLocation")},  // std::string
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
| `cardBrandReportData` | `std::vector<Value>` |  |
| `clearingDateFrom` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `std::string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `std::string` |  |
| `currency` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `sumOverCreditTx` | `std::map<std::string, Value>` |  |
| `sumOverDebitTx` | `std::map<std::string, Value>` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```cpp
Value report_data = client->report_data()->create(vmap({
    {"clearingDateFrom", Value("example_clearingDateFrom")},  // std::string
    {"clearingDateTo", Value("example_clearingDateTo")},  // std::string
    {"corporateId", Value("example_corporateId")},  // std::string
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
| `acquirerName` | `std::string` |  |
| `acquirerTerminalId` | `std::string` |  |
| `amount` | `int64_t` |  |
| `applicationCryptogram` | `std::string` |  |
| `authorizationCode` | `Value` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `std::string` |  |
| `cardBrand` | `std::string` |  |
| `cardEntry` | `std::string` |  |
| `cardExpiration` | `std::string` |  |
| `cardNumber` | `std::string` |  |
| `clearingAmount` | `int64_t` |  |
| `clearingBatchId` | `std::string` |  |
| `clearingCurrency` | `std::string` |  |
| `clearingDate` | `std::string` |  |
| `clearingProcessedDate` | `std::string` |  |
| `clearingStatus` | `std::string` |  |
| `clientId` | `int64_t` |  |
| `currency` | `std::string` |  |
| `cvm` | `std::string` |  |
| `ecrData` | `std::string` |  |
| `emvApplicationId` | `std::string` |  |
| `emvApplicationLabel` | `std::string` |  |
| `merchantName` | `std::string` |  |
| `merchantNumber` | `std::string` |  |
| `originalClientId` | `std::string` |  |
| `originalTerminalId` | `int64_t` |  |
| `originalTransactionId` | `std::string` |  |
| `paymentReason` | `std::string` |  |
| `receiptNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseCodeFromAS` | `std::string` |  |
| `responseMessage` | `std::string` |  |
| `retrievalReferenceNumber` | `std::string` |  |
| `serviceCode` | `std::string` |  |
| `settlementStatus` | `std::string` |  |
| `sourceId` | `int64_t` |  |
| `tecsengineResponseCode` | `int64_t` |  |
| `tecsengineResponseText` | `std::string` |  |
| `terminalEndOfDayDate` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `std::string` |  |
| `tipAmount` | `int64_t` |  |
| `traceNumber` | `int64_t` |  |
| `transactionClearingDate` | `std::string` |  |
| `transactionDate` | `std::string` |  |
| `transactionId` | `std::string` |  |
| `transactionSeqNumber` | `int64_t` |  |
| `transactionServerDate` | `std::string` |  |
| `transactionSource` | `std::string` |  |
| `transactionType` | `std::string` |  |

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
| `acqTabNexo` | `std::map<std::string, Value>` |  |
| `configVersion` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `serialNumber` | `std::string` |  |
| `tidSent` | `std::string` |  |

#### Example: Create

```cpp
Value store_terminal_parameter = client->store_terminal_parameter()->create(vmap({
    {"serialNumber", Value("example_serialNumber")},  // std::string
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
| `deviceSerialNumber` | `std::vector<Value>` |  |
| `duplicateTerminalIds` | `std::vector<Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `terminals` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value terminal_id = client->terminal_id()->create(vmap({
    {"deviceSerialNumber", vlist()},  // std::vector<Value>
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
| `3DSecure` | `std::string` |  |
| `authorizationCode` | `std::string` |  |
| `cardBrand` | `std::string` |  |
| `clearingAmountFrom` | `std::string` |  |
| `clearingAmountTo` | `std::string` |  |
| `clearingCurrency` | `std::string` |  |
| `clearingStatus` | `std::string` |  |
| `corporateUUID` | `std::string` |  |
| `orderByTransactionDate` | `std::string` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `paymentTokenPublicId` | `std::string` |  |
| `receiptNumber` | `std::string` |  |
| `referencedTransactionId` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `retrievalReferenceNumber` | `std::string` |  |
| `sourceId` | `int64_t` |  |
| `tecsengineResponseCodeFrom` | `std::string` |  |
| `tecsengineResponseCodeTo` | `std::string` |  |
| `terminalId` | `int64_t` |  |
| `traceNumber` | `std::string` |  |
| `transactionAmountFrom` | `std::string` |  |
| `transactionAmountTo` | `std::string` |  |
| `transactionDateFrom` | `std::string` |  |
| `transactionDateTo` | `std::string` |  |
| `transactionHistories` | `std::vector<Value>` |  |
| `transactionId` | `std::string` |  |
| `transactionType` | `std::string` |  |
| `wallet` | `std::string` | Filter by wallet type. |

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
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `transactionDateFrom` | `std::string` |  |
| `transactionDateTo` | `std::string` |  |
| `transactionsCount` | `std::vector<Value>` |  |

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
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `transactionDateFrom` | `std::string` |  |
| `transactionDateTo` | `std::string` |  |
| `transactionsCount` | `std::vector<Value>` |  |

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
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `transactionDateFrom` | `std::string` |  |
| `transactionDateTo` | `std::string` |  |
| `turnovers` | `std::vector<Value>` |  |

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
| `corporateUuid` | `std::string` |  |
| `country` | `std::string` |  |
| `merchantCategoryCode` | `std::string` |  |
| `name` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `state` | `std::string` |  |
| `street` | `std::string` |  |
| `vuNummer` | `std::string` |  |
| `zipcode` | `std::string` |  |

#### Example: Create

```cpp
Value update_merchant = client->update_merchant()->create(vmap({
    {"corporateUuid", Value("example_corporateUuid")},  // std::string
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
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `templateName` | `std::string` |  |
| `templateXml` | `std::string` |  |

#### Example: Create

```cpp
Value update_template_xml = client->update_template_xml()->create(vmap({
    {"templateName", Value("example_templateName")},  // std::string
    {"templateXml", Value("example_templateXml")},  // std::string
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
| `appName` | `std::string` |  |
| `buildDate` | `std::string` |  |
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
