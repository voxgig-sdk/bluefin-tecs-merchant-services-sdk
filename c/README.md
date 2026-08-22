# BluefinTecsMerchantServices C SDK



The C SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic C conventions (explicit structs, function-pointer vtables, and a trailing `PNError**` out-param for errors).

The SDK exposes the API as capitalised, semantic **Entities** — for example `bluefintecsmerchantservices_cancel_transaction(client, NULL)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
C has no central package registry — a release is the git tag
(`c/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)). Build from a
source checkout with the bundled `Makefile`; the voxgig struct library is
vendored under `utility/struct`, so there are no external dependencies to
fetch:

```bash
cd c && make          # builds libsdk.a
cd c && make test     # builds + runs the test binaries
```

Link your program against `libsdk.a` and include `core/api.h`:

```bash
cc -I c/core -I c/utility/struct \
   myapp.c c/libsdk.a -lm -o myapp
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```c
#include "core/api.h"

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(1,
    "apikey", v_str(getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"))));
PNError* err = NULL;
```

### 4. Create, update, and remove

```c
Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);
// Create — returns the bare created record
voxgig_value* created = cancel_transaction->vt->create(cancel_transaction, cmap(4, "clientId", v_num(1), "currency", v_str("example_currency"), "receiptNumber", v_str("example_receiptNumber"), "terminalId", v_num(1)), NULL, &err);

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

For endpoints not covered by entity operations:

```c
PNError* err = NULL;
voxgig_value* result = sdk_direct(client, cmap(3,
    "path", v_str("/api/resource/{id}"),
    "method", v_str("GET"),
    "params", cmap(1, "id", v_str("example"))), &err);

if (voxgig_as_bool(getp(result, "ok"))) {
    printf("%lld\n", (long long)to_int(getp(result, "status")));  // 200
    printf("%s\n", voxgig_to_json(getp(result, "data")));         // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    printf("%s\n", voxgig_to_json(getp(result, "err")));
}
```

`sdk_direct()` never sets `*err` for a non-2xx response — it always returns
a result map you branch on via `getp(result, "ok")`.

### Prepare a request without sending it

```c
PNError* err = NULL;
voxgig_value* fetchdef = sdk_prepare(client, cmap(3,
    "path", v_str("/api/resource/{id}"),
    "method", v_str("DELETE"),
    "params", cmap(1, "id", v_str("example"))), &err);

printf("%s\n", get_str(fetchdef, "url"));
printf("%s\n", get_str(fetchdef, "method"));
printf("%s\n", voxgig_to_json(getp(fetchdef, "headers")));
```

### Use test mode

Create a mock client for unit testing — no server required:

```c
BluefinTecsMerchantServicesSDK* client = test_sdk(NULL, NULL);
PNError* err = NULL;

// Entity ops return the bare record and set *err on failure.
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* digital_services_api_rec = digital_services_api->vt->load(digital_services_api, NULL, NULL, &err);
// digital_services_api_rec contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own function (the same shape the test
transport uses):

```c
static voxgig_value* mock_fetch(void* ud, voxgig_value* args) {
    (void)ud; (void)args;
    return cmap(4,
        "status", v_num(200),
        "statusText", v_str("OK"),
        "headers", v_map(),
        "json", json_thunk(cmap(1, "id", v_str("mock01"))));
}

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(2,
    "base", v_str("http://localhost:8080"),
    "system", cmap(1, "fetch", vfn(mock_fetch, NULL))));
```

### Point at a different server

Override the base URL to reach a local or staging server:

```c
BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(cmap(1,
    "base", v_str("http://localhost:8080")));
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd c && make test
```


## Reference

### BluefinTecsMerchantServicesSDK

```c
#include "core/api.h"

BluefinTecsMerchantServicesSDK* client = bluefintecsmerchantservices_sdk_new(options);
```

Creates a new SDK client. `options` is a `voxgig_value*` map (`NULL` for
none) carrying any of the following keys:

| Option | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `system` | `map` | System overrides (e.g. a custom `fetch`). |

### test_sdk

```c
BluefinTecsMerchantServicesSDK* client = test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`NULL`.

### BluefinTecsMerchantServicesSDK functions

| Function | Signature | Description |
| --- | --- | --- |
| `sdk_prepare` | `(BluefinTecsMerchantServicesSDK*, fetchargs, PNError**) -> voxgig_value*` | Build an HTTP request definition without sending. |
| `sdk_direct` | `(BluefinTecsMerchantServicesSDK*, fetchargs, PNError**) -> voxgig_value*` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `bluefintecsmerchantservices_cancel_transaction` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a CancelTransaction entity instance. |
| `bluefintecsmerchantservices_check_card_black_listed` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a CheckCardBlackListed entity instance. |
| `bluefintecsmerchantservices_create_product` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a CreateProduct entity instance. |
| `bluefintecsmerchantservices_deactivate_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a DeactivateTerminal entity instance. |
| `bluefintecsmerchantservices_digital_services_api` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a DigitalServicesApi entity instance. |
| `bluefintecsmerchantservices_ec_data_ecom` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EcDataEcom entity instance. |
| `bluefintecsmerchantservices_ecom_parameter` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EcomParameter entity instance. |
| `bluefintecsmerchantservices_ecr_data` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EcrData entity instance. |
| `bluefintecsmerchantservices_emv_data` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EmvData entity instance. |
| `bluefintecsmerchantservices_enable_acquiring` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an EnableAcquiring entity instance. |
| `bluefintecsmerchantservices_get_merchant_contract_number` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a GetMerchantContractNumber entity instance. |
| `bluefintecsmerchantservices_get_template_xml` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a GetTemplateXml entity instance. |
| `bluefintecsmerchantservices_introduce_mandator` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an IntroduceMandator entity instance. |
| `bluefintecsmerchantservices_introduce_package` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an IntroducePackage entity instance. |
| `bluefintecsmerchantservices_keep_alive` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a KeepAlive entity instance. |
| `bluefintecsmerchantservices_list_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a ListTerminal entity instance. |
| `bluefintecsmerchantservices_mandator_clearing_export` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MandatorClearingExport entity instance. |
| `bluefintecsmerchantservices_mandator_clearing_export_download` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MandatorClearingExportDownload entity instance. |
| `bluefintecsmerchantservices_mandator_clearing_export_summary` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MandatorClearingExportSummary entity instance. |
| `bluefintecsmerchantservices_merchant_portal_services_api` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MerchantPortalServicesApi entity instance. |
| `bluefintecsmerchantservices_move_tid` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a MoveTid entity instance. |
| `bluefintecsmerchantservices_payment_manual` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a PaymentManual entity instance. |
| `bluefintecsmerchantservices_payment_sred` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a PaymentSred entity instance. |
| `bluefintecsmerchantservices_pre_auth_transaction_completion` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a PreAuthTransactionCompletion entity instance. |
| `bluefintecsmerchantservices_reactivate_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a ReactivateTerminal entity instance. |
| `bluefintecsmerchantservices_refund_transaction` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a RefundTransaction entity instance. |
| `bluefintecsmerchantservices_register_tecs_company` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a RegisterTecsCompany entity instance. |
| `bluefintecsmerchantservices_register_terminal` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a RegisterTerminal entity instance. |
| `bluefintecsmerchantservices_report_data` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a ReportData entity instance. |
| `bluefintecsmerchantservices_status_transaction` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a StatusTransaction entity instance. |
| `bluefintecsmerchantservices_store_terminal_parameter` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a StoreTerminalParameter entity instance. |
| `bluefintecsmerchantservices_terminal_id` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TerminalId entity instance. |
| `bluefintecsmerchantservices_transaction_history` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionHistory entity instance. |
| `bluefintecsmerchantservices_transactions_count` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionsCount entity instance. |
| `bluefintecsmerchantservices_transactions_count_card_brand` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionsCountCardBrand entity instance. |
| `bluefintecsmerchantservices_transactions_turnover` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a TransactionsTurnover entity instance. |
| `bluefintecsmerchantservices_update_merchant` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an UpdateMerchant entity instance. |
| `bluefintecsmerchantservices_update_template_xml` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create an UpdateTemplateXml entity instance. |
| `bluefintecsmerchantservices_version` | `(BluefinTecsMerchantServicesSDK*, entopts) -> Entity*` | Create a Version entity instance. |

### Entity interface (vtable)

All entities share the same `EntityVT` vtable, reached via `e->vt->...`.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(Entity*, reqmatch, ctrl, PNError**) -> voxgig_value*` | Load a single entity by match criteria. |
| `create` | `(Entity*, reqdata, ctrl, PNError**) -> voxgig_value*` | Create a new entity. |
| `data` | `(Entity*, args) -> voxgig_value*` | Get entity data (pass a map to set). |
| `matchv` | `(Entity*, args) -> voxgig_value*` | Get entity match criteria (pass a map to set). |
| `make` | `(Entity*) -> Entity*` | Create a new instance with the same options. |
| `get_name` | `(Entity*) -> const char*` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `voxgig_value` map for
single-entity ops, a List for `list`) and set `*err` to a `PNError*` on
failure. Always initialise `PNError* err = NULL;` and check it after the
call.

The `sdk_direct()` escape hatch never sets `*err` for a non-2xx response —
it returns a result map you branch on via `getp(result, "ok")`:

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

Create an instance: `Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `char*` |  |
| `acquirerName` | `char*` |  |
| `actualBonusPoints` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorizationCode` | `char*` |  |
| `balanceAmount` | `char*` |  |
| `cardBrand` | `char*` |  |
| `cardNumber` | `char*` |  |
| `clientId` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `ecData` | `char*` |  |
| `ecrData` | `char*` |  |
| `emvData` | `char*` |  |
| `exchangeFee` | `int64_t` |  |
| `exchangeRate` | `char*` |  |
| `languageCode` | `char*` |  |
| `merchantAddress` | `char*` |  |
| `merchantName` | `char*` |  |
| `merchantNumber` | `char*` |  |
| `messageType` | `char*` |  |
| `originalTraceNumber` | `int64_t` |  |
| `originalTransactionId` | `char*` |  |
| `password` | `char*` |  |
| `paymentReason` | `char*` |  |
| `receiptFooter` | `char*` |  |
| `receiptHeader` | `char*` |  |
| `receiptLayout` | `int64_t` |  |
| `receiptNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `serialNumber` | `char*` |  |
| `svc` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `char*` |  |
| `traceNumber` | `int64_t` |  |
| `transactionDate` | `char*` |  |
| `transactionId` | `char*` |  |
| `txType` | `char*` |  |
| `userData` | `char*` |  |

#### Example: Create

```c
Entity* cancel_transaction = bluefintecsmerchantservices_cancel_transaction(client, NULL);
voxgig_value* cancel_transaction_rec = cancel_transaction->vt->create(cancel_transaction, cmap(4,
    "clientId", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receiptNumber", v_str("example_receiptNumber"),  // char*
    "terminalId", v_num(1))  // int64_t
, NULL, &err);
```


### CheckCardBlackListed

Create an instance: `Entity* check_card_black_listed = bluefintecsmerchantservices_check_card_black_listed(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* check_card_black_listed = bluefintecsmerchantservices_check_card_black_listed(client, NULL);
voxgig_value* check_card_black_listed_rec = check_card_black_listed->vt->create(check_card_black_listed, NULL, NULL, &err);
```


### CreateProduct

Create an instance: `Entity* create_product = bluefintecsmerchantservices_create_product(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `int64_t` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `templateName` | `char*` |  |
| `templateType` | `char*` |  |
| `templateXml` | `char*` |  |
| `terminalType` | `char*` |  |

#### Example: Create

```c
Entity* create_product = bluefintecsmerchantservices_create_product(client, NULL);
voxgig_value* create_product_rec = create_product->vt->create(create_product, cmap(4,
    "templateName", v_str("example_templateName"),  // char*
    "templateType", v_str("example_templateType"),  // char*
    "templateXml", v_str("example_templateXml"),  // char*
    "terminalType", v_str("example_terminalType"))  // char*
, NULL, &err);
```


### DeactivateTerminal

Create an instance: `Entity* deactivate_terminal = bluefintecsmerchantservices_deactivate_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `char*` |  |
| `deactivationReason` | `char*` |  |
| `packageOrderUuid` | `char*` |  |
| `productOrderUuid` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```c
Entity* deactivate_terminal = bluefintecsmerchantservices_deactivate_terminal(client, NULL);
voxgig_value* deactivate_terminal_rec = deactivate_terminal->vt->create(deactivate_terminal, cmap(2,
    "deactivationReason", v_str("example_deactivationReason"),  // char*
    "terminalId", v_num(1))  // int64_t
, NULL, &err);
```


### DigitalServicesApi

Create an instance: `Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `txCount` | `int64_t` |  |
| `txIdEnd` | `char*` |  |
| `txIdStart` | `char*` |  |
| `txSeqNoEnd` | `int64_t` |  |
| `txSeqNoStart` | `int64_t` |  |
| `txTotal` | `int64_t` |  |

#### Example: Load

```c
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* digital_services_api_rec = digital_services_api->vt->load(digital_services_api, NULL, NULL, &err);
```

#### Example: Create

```c
Entity* digital_services_api = bluefintecsmerchantservices_digital_services_api(client, NULL);
voxgig_value* digital_services_api_rec = digital_services_api->vt->create(digital_services_api, cmap(3,
    "file_id", v_str("example_file_id"),  // char*
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
, NULL, &err);
```


### EcDataEcom

Create an instance: `Entity* ec_data_ecom = bluefintecsmerchantservices_ec_data_ecom(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `transactionId` | `char*` |  |
| `transactionType` | `char*` |  |

#### Example: Create

```c
Entity* ec_data_ecom = bluefintecsmerchantservices_ec_data_ecom(client, NULL);
voxgig_value* ec_data_ecom_rec = ec_data_ecom->vt->create(ec_data_ecom, cmap(3,
    "terminalId", v_num(1),  // int64_t
    "transactionId", v_str("example_transactionId"),  // char*
    "transactionType", v_str("example_transactionType"))  // char*
, NULL, &err);
```


### EcomParameter

Create an instance: `Entity* ecom_parameter = bluefintecsmerchantservices_ecom_parameter(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `char*` |  |
| `ecomSkey` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```c
Entity* ecom_parameter = bluefintecsmerchantservices_ecom_parameter(client, NULL);
voxgig_value* ecom_parameter_rec = ecom_parameter->vt->create(ecom_parameter, cmap(1,
    "terminalId", v_num(1))  // int64_t
, NULL, &err);
```


### EcrData

Create an instance: `Entity* ecr_data = bluefintecsmerchantservices_ecr_data(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `transactionId` | `char*` |  |
| `transactionType` | `char*` |  |

#### Example: Create

```c
Entity* ecr_data = bluefintecsmerchantservices_ecr_data(client, NULL);
voxgig_value* ecr_data_rec = ecr_data->vt->create(ecr_data, cmap(3,
    "terminalId", v_num(1),  // int64_t
    "transactionId", v_str("example_transactionId"),  // char*
    "transactionType", v_str("example_transactionType"))  // char*
, NULL, &err);
```


### EmvData

Create an instance: `Entity* emv_data = bluefintecsmerchantservices_emv_data(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `transactionId` | `char*` |  |
| `transactionType` | `char*` |  |

#### Example: Create

```c
Entity* emv_data = bluefintecsmerchantservices_emv_data(client, NULL);
voxgig_value* emv_data_rec = emv_data->vt->create(emv_data, cmap(3,
    "terminalId", v_num(1),  // int64_t
    "transactionId", v_str("example_transactionId"),  // char*
    "transactionType", v_str("example_transactionType"))  // char*
, NULL, &err);
```


### EnableAcquiring

Create an instance: `Entity* enable_acquiring = bluefintecsmerchantservices_enable_acquiring(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `int64_t` |  |
| `additionalData` | `voxgig_value* (map)` |  |
| `corporateUuid` | `char*` |  |
| `currency` | `char*` |  |
| `merchantCategoryCode` | `int64_t` |  |
| `packageOrderUuid` | `char*` |  |
| `productOrderUuid` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `sortingCode` | `int64_t` |  |
| `templateName` | `char*` |  |
| `terminalIdAcq` | `char*` |  |
| `terminalIds` | `voxgig_value* (list)` |  |
| `vuNummer` | `char*` |  |

#### Example: Create

```c
Entity* enable_acquiring = bluefintecsmerchantservices_enable_acquiring(client, NULL);
voxgig_value* enable_acquiring_rec = enable_acquiring->vt->create(enable_acquiring, cmap(6,
    "corporateUuid", v_str("example_corporateUuid"),  // char*
    "currency", v_str("example_currency"),  // char*
    "merchantCategoryCode", v_num(1),  // int64_t
    "packageOrderUuid", v_str("example_packageOrderUuid"),  // char*
    "productOrderUuid", v_str("example_productOrderUuid"),  // char*
    "templateName", v_str("example_templateName"))  // char*
, NULL, &err);
```


### GetMerchantContractNumber

Create an instance: `Entity* get_merchant_contract_number = bluefintecsmerchantservices_get_merchant_contract_number(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* get_merchant_contract_number = bluefintecsmerchantservices_get_merchant_contract_number(client, NULL);
voxgig_value* get_merchant_contract_number_rec = get_merchant_contract_number->vt->create(get_merchant_contract_number, cmap(1,
    "merchantContractNumber", v_str("example_merchantContractNumber"))  // char*
, NULL, &err);
```


### GetTemplateXml

Create an instance: `Entity* get_template_xml = bluefintecsmerchantservices_get_template_xml(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `templateName` | `char*` |  |

#### Example: Create

```c
Entity* get_template_xml = bluefintecsmerchantservices_get_template_xml(client, NULL);
voxgig_value* get_template_xml_rec = get_template_xml->vt->create(get_template_xml, cmap(1,
    "templateName", v_str("example_templateName"))  // char*
, NULL, &err);
```


### IntroduceMandator

Create an instance: `Entity* introduce_mandator = bluefintecsmerchantservices_introduce_mandator(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* introduce_mandator = bluefintecsmerchantservices_introduce_mandator(client, NULL);
voxgig_value* introduce_mandator_rec = introduce_mandator->vt->create(introduce_mandator, cmap(1,
    "mandatorName", v_str("example_mandatorName"))  // char*
, NULL, &err);
```


### IntroducePackage

Create an instance: `Entity* introduce_package = bluefintecsmerchantservices_introduce_package(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalTemplateDescription` | `char*` |  |

#### Example: Create

```c
Entity* introduce_package = bluefintecsmerchantservices_introduce_package(client, NULL);
voxgig_value* introduce_package_rec = introduce_package->vt->create(introduce_package, cmap(1,
    "terminalTemplateDescription", v_str("example_terminalTemplateDescription"))  // char*
, NULL, &err);
```


### KeepAlive

Create an instance: `Entity* keep_alive = bluefintecsmerchantservices_keep_alive(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `char*` |  |
| `kaDateTimeFrom` | `char*` |  |
| `kaDateTimeTo` | `char*` |  |
| `keepAliveData` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalDateTimeFrom` | `char*` |  |
| `terminalDateTimeTo` | `char*` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```c
Entity* keep_alive = bluefintecsmerchantservices_keep_alive(client, NULL);
voxgig_value* keep_alive_rec = keep_alive->vt->create(keep_alive, NULL, NULL, &err);
```


### ListTerminal

Create an instance: `Entity* list_terminal = bluefintecsmerchantservices_list_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `voxgig_value* (list)` |  |
| `filter` | `voxgig_value* (map)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminals` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* list_terminal = bluefintecsmerchantservices_list_terminal(client, NULL);
voxgig_value* list_terminal_rec = list_terminal->vt->create(list_terminal, NULL, NULL, &err);
```


### MandatorClearingExport

Create an instance: `Entity* mandator_clearing_export = bluefintecsmerchantservices_mandator_clearing_export(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `voxgig_value* (map)` |  |
| `records` | `voxgig_value* (list)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* mandator_clearing_export = bluefintecsmerchantservices_mandator_clearing_export(client, NULL);
voxgig_value* mandator_clearing_export_rec = mandator_clearing_export->vt->create(mandator_clearing_export, cmap(2,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
, NULL, &err);
```


### MandatorClearingExportDownload

Create an instance: `Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `char*` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `char*` | End date for clearing export (inclusive) |
| `fileId` | `char*` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `char*` | Optional filename template for the export file |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `status` | `char*` | Processing status of the export request |

#### Example: Load

```c
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
voxgig_value* mandator_clearing_export_download_rec = mandator_clearing_export_download->vt->load(mandator_clearing_export_download, cmap(1, "id", v_str("mandator_clearing_export_download_id")), NULL, &err);
```

#### Example: Create

```c
Entity* mandator_clearing_export_download = bluefintecsmerchantservices_mandator_clearing_export_download(client, NULL);
voxgig_value* mandator_clearing_export_download_rec = mandator_clearing_export_download->vt->create(mandator_clearing_export_download, cmap(2,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
, NULL, &err);
```


### MandatorClearingExportSummary

Create an instance: `Entity* mandator_clearing_export_summary = bluefintecsmerchantservices_mandator_clearing_export_summary(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `voxgig_value* (list)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* mandator_clearing_export_summary = bluefintecsmerchantservices_mandator_clearing_export_summary(client, NULL);
voxgig_value* mandator_clearing_export_summary_rec = mandator_clearing_export_summary->vt->create(mandator_clearing_export_summary, cmap(2,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"))  // char*
, NULL, &err);
```


### MerchantPortalServicesApi

Create an instance: `Entity* merchant_portal_services_api = bluefintecsmerchantservices_merchant_portal_services_api(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `char*` |  |
| `authorizationCode` | `char*` |  |
| `cardBrand` | `char*` |  |
| `clearingAmountFrom` | `char*` |  |
| `clearingAmountTo` | `char*` |  |
| `clearingCurrency` | `char*` |  |
| `clearingStatus` | `char*` |  |
| `corporateUUID` | `char*` |  |
| `orderByTransactionDate` | `char*` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `receiptNumber` | `char*` |  |
| `referencedTransactionId` | `char*` |  |
| `retrievalReferenceNumber` | `char*` |  |
| `sourceId` | `int64_t` |  |
| `tecsengineResponseCodeFrom` | `char*` |  |
| `tecsengineResponseCodeTo` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `traceNumber` | `char*` |  |
| `transactionAmountFrom` | `char*` |  |
| `transactionAmountTo` | `char*` |  |
| `transactionDateFrom` | `char*` |  |
| `transactionDateTo` | `char*` |  |
| `transactionId` | `char*` |  |
| `transactionType` | `char*` |  |
| `wallet` | `char*` | Filter by wallet type. |

#### Example: Create

```c
Entity* merchant_portal_services_api = bluefintecsmerchantservices_merchant_portal_services_api(client, NULL);
voxgig_value* merchant_portal_services_api_rec = merchant_portal_services_api->vt->create(merchant_portal_services_api, NULL, NULL, &err);
```


### MoveTid

Create an instance: `Entity* move_tid = bluefintecsmerchantservices_move_tid(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `voxgig_value* (list)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `targetPackageorderuuid` | `char*` |  |
| `targetProductorderuuid` | `char*` |  |

#### Example: Create

```c
Entity* move_tid = bluefintecsmerchantservices_move_tid(client, NULL);
voxgig_value* move_tid_rec = move_tid->vt->create(move_tid, cmap(1,
    "productorderuuids", v_list())  // voxgig_value* (list)
, NULL, &err);
```


### PaymentManual

Create an instance: `Entity* payment_manual = bluefintecsmerchantservices_payment_manual(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `char*` | Acquirer name parsed from KKG field |
| `amount` | `int64_t` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `char*` | Authorization number from the gateway |
| `cardNumber` | `char*` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `char*` | Card type parsed from KKG field |
| `currency` | `char*` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `char*` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `char*` | Date and time of the transaction |
| `expDate` | `char*` | Card expiry date in MMYY format |
| `merchantId` | `char*` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `char*` | Original transaction ID from gateway |
| `password` | `char*` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `char*` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `char*` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `char*` | Terminal ID used for the transaction |
| `transactionId` | `char*` | Transaction ID generated by the backend |
| `txtype` | `char*` | Transaction type |

#### Example: Create

```c
Entity* payment_manual = bluefintecsmerchantservices_payment_manual(client, NULL);
voxgig_value* payment_manual_rec = payment_manual->vt->create(payment_manual, cmap(5,
    "amount", v_num(1),  // int64_t
    "cardNumber", v_str("example_cardNumber"),  // char*
    "currency", v_str("example_currency"),  // char*
    "expDate", v_str("example_expDate"),  // char*
    "txtype", v_str("example_txtype"))  // char*
, NULL, &err);
```


### PaymentSred

Create an instance: `Entity* payment_sred = bluefintecsmerchantservices_payment_sred(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `int64_t` | Transaction amount in minor units (cents) |
| `currency` | `char*` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `char*` | Device type that provided the SRED payload |
| `devicePayload` | `char*` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `char*` | Card expiry date in MMYY format |
| `mode` | `char*` | Decryption mode |
| `panMasked` | `char*` | Masked PAN (first 6 and last 4 digits) |
| `password` | `char*` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `char*` | Device serial number |
| `serviceCode` | `char*` | Service code from the card |
| `terminalId` | `char*` | Terminal ID - 8 digits |
| `txtype` | `char*` | Transaction type |

#### Example: Create

```c
Entity* payment_sred = bluefintecsmerchantservices_payment_sred(client, NULL);
voxgig_value* payment_sred_rec = payment_sred->vt->create(payment_sred, cmap(5,
    "amount", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "devicePayload", v_str("example_devicePayload"),  // char*
    "terminalId", v_str("example_terminalId"),  // char*
    "txtype", v_str("example_txtype"))  // char*
, NULL, &err);
```


### PreAuthTransactionCompletion

Create an instance: `Entity* pre_auth_transaction_completion = bluefintecsmerchantservices_pre_auth_transaction_completion(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `char*` |  |
| `acquirerName` | `char*` |  |
| `actualBonusPoints` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorizationCode` | `char*` |  |
| `balanceAmount` | `char*` |  |
| `cardBrand` | `char*` |  |
| `cardNumber` | `char*` |  |
| `cardNumberReference` | `char*` |  |
| `clientId` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `ecData` | `char*` |  |
| `ecrData` | `char*` |  |
| `emvData` | `char*` |  |
| `exchangeFee` | `int64_t` |  |
| `exchangeRate` | `char*` |  |
| `languageCode` | `char*` |  |
| `merchantAddress` | `char*` |  |
| `merchantName` | `char*` |  |
| `merchantNumber` | `char*` |  |
| `messageType` | `char*` |  |
| `originalTraceNumber` | `int64_t` |  |
| `originalTransactionId` | `char*` |  |
| `password` | `char*` |  |
| `paymentReason` | `char*` |  |
| `receiptFooter` | `char*` |  |
| `receiptHeader` | `char*` |  |
| `receiptLayout` | `int64_t` |  |
| `receiptNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `serialNumber` | `char*` |  |
| `svc` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `char*` |  |
| `traceNumber` | `int64_t` |  |
| `transactionDate` | `char*` |  |
| `transactionId` | `char*` |  |
| `transactionType` | `char*` |  |
| `txType` | `char*` |  |
| `userData` | `char*` |  |

#### Example: Create

```c
Entity* pre_auth_transaction_completion = bluefintecsmerchantservices_pre_auth_transaction_completion(client, NULL);
voxgig_value* pre_auth_transaction_completion_rec = pre_auth_transaction_completion->vt->create(pre_auth_transaction_completion, cmap(6,
    "cardNumberReference", v_str("example_cardNumberReference"),  // char*
    "clientId", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receiptNumber", v_str("example_receiptNumber"),  // char*
    "terminalId", v_num(1),  // int64_t
    "transactionType", v_str("example_transactionType"))  // char*
, NULL, &err);
```


### ReactivateTerminal

Create an instance: `Entity* reactivate_terminal = bluefintecsmerchantservices_reactivate_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `char*` |  |
| `packageOrderUuid` | `char*` |  |
| `productOrderUuid` | `char*` |  |
| `reactivationReason` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```c
Entity* reactivate_terminal = bluefintecsmerchantservices_reactivate_terminal(client, NULL);
voxgig_value* reactivate_terminal_rec = reactivate_terminal->vt->create(reactivate_terminal, cmap(2,
    "reactivationReason", v_str("example_reactivationReason"),  // char*
    "terminalId", v_num(1))  // int64_t
, NULL, &err);
```


### RefundTransaction

Create an instance: `Entity* refund_transaction = bluefintecsmerchantservices_refund_transaction(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `char*` |  |
| `acquirerName` | `char*` |  |
| `actualBonusPoints` | `char*` |  |
| `amount` | `int64_t` |  |
| `authorizationCode` | `char*` |  |
| `balanceAmount` | `char*` |  |
| `cardBrand` | `char*` |  |
| `cardNumber` | `char*` |  |
| `clientId` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvc` | `char*` |  |
| `ecData` | `char*` |  |
| `ecrData` | `char*` |  |
| `emvData` | `char*` |  |
| `exchangeFee` | `int64_t` |  |
| `exchangeRate` | `char*` |  |
| `languageCode` | `char*` |  |
| `merchantAddress` | `char*` |  |
| `merchantName` | `char*` |  |
| `merchantNumber` | `char*` |  |
| `messageType` | `char*` |  |
| `originalTraceNumber` | `int64_t` |  |
| `originalTransactionId` | `char*` |  |
| `password` | `char*` |  |
| `paymentReason` | `char*` |  |
| `receiptFooter` | `char*` |  |
| `receiptHeader` | `char*` |  |
| `receiptLayout` | `int64_t` |  |
| `receiptNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `serialNumber` | `char*` |  |
| `svc` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `char*` |  |
| `traceNumber` | `int64_t` |  |
| `transactionDate` | `char*` |  |
| `transactionId` | `char*` |  |
| `txType` | `char*` |  |
| `userData` | `char*` |  |

#### Example: Create

```c
Entity* refund_transaction = bluefintecsmerchantservices_refund_transaction(client, NULL);
voxgig_value* refund_transaction_rec = refund_transaction->vt->create(refund_transaction, cmap(4,
    "clientId", v_num(1),  // int64_t
    "currency", v_str("example_currency"),  // char*
    "receiptNumber", v_str("example_receiptNumber"),  // char*
    "terminalId", v_num(1))  // int64_t
, NULL, &err);
```


### RegisterTecsCompany

Create an instance: `Entity* register_tecs_company = bluefintecsmerchantservices_register_tecs_company(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `char*` |  |
| `packageOrderUuid` | `char*` |  |
| `partnerId` | `int64_t` |  |
| `partnerName` | `char*` |  |
| `productOrderUuid` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `templateName` | `char*` |  |

#### Example: Create

```c
Entity* register_tecs_company = bluefintecsmerchantservices_register_tecs_company(client, NULL);
voxgig_value* register_tecs_company_rec = register_tecs_company->vt->create(register_tecs_company, cmap(4,
    "corporateUuid", v_str("example_corporateUuid"),  // char*
    "packageOrderUuid", v_str("example_packageOrderUuid"),  // char*
    "productOrderUuid", v_str("example_productOrderUuid"),  // char*
    "templateName", v_str("example_templateName"))  // char*
, NULL, &err);
```


### RegisterTerminal

Create an instance: `Entity* register_terminal = bluefintecsmerchantservices_register_terminal(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `voxgig_value* (map)` |  |
| `corporateUuid` | `char*` |  |
| `packageOrderUuid` | `char*` |  |
| `productOrderUuid` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `tecsWebSecretKey` | `char*` |  |
| `templateName` | `char*` |  |
| `terminalCountryCode` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `terminalIdAcq` | `char*` |  |
| `terminalLanguageCode` | `char*` |  |
| `terminalLocation` | `char*` |  |
| `terminalSerialNumber` | `char*` |  |
| `tokenIOAlias` | `char*` |  |
| `tokenIOIban` | `char*` |  |
| `tokenIOMemberId` | `char*` |  |
| `webShopUrl` | `char*` |  |

#### Example: Create

```c
Entity* register_terminal = bluefintecsmerchantservices_register_terminal(client, NULL);
voxgig_value* register_terminal_rec = register_terminal->vt->create(register_terminal, cmap(7,
    "corporateUuid", v_str("example_corporateUuid"),  // char*
    "packageOrderUuid", v_str("example_packageOrderUuid"),  // char*
    "productOrderUuid", v_str("example_productOrderUuid"),  // char*
    "templateName", v_str("example_templateName"),  // char*
    "terminalCountryCode", v_str("example_terminalCountryCode"),  // char*
    "terminalLanguageCode", v_str("example_terminalLanguageCode"),  // char*
    "terminalLocation", v_str("example_terminalLocation"))  // char*
, NULL, &err);
```


### ReportData

Create an instance: `Entity* report_data = bluefintecsmerchantservices_report_data(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `voxgig_value* (list)` |  |
| `clearingDateFrom` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `char*` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `char*` |  |
| `currency` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `sumOverCreditTx` | `voxgig_value* (map)` |  |
| `sumOverDebitTx` | `voxgig_value* (map)` |  |
| `terminalId` | `int64_t` |  |

#### Example: Create

```c
Entity* report_data = bluefintecsmerchantservices_report_data(client, NULL);
voxgig_value* report_data_rec = report_data->vt->create(report_data, cmap(4,
    "clearingDateFrom", v_str("example_clearingDateFrom"),  // char*
    "clearingDateTo", v_str("example_clearingDateTo"),  // char*
    "corporateId", v_str("example_corporateId"),  // char*
    "currency", v_str("example_currency"))  // char*
, NULL, &err);
```


### StatusTransaction

Create an instance: `Entity* status_transaction = bluefintecsmerchantservices_status_transaction(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `char*` |  |
| `acquirerTerminalId` | `char*` |  |
| `amount` | `int64_t` |  |
| `applicationCryptogram` | `char*` |  |
| `authorizationCode` | `voxgig_value*` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `char*` |  |
| `cardBrand` | `char*` |  |
| `cardEntry` | `char*` |  |
| `cardExpiration` | `char*` |  |
| `cardNumber` | `char*` |  |
| `clearingAmount` | `int64_t` |  |
| `clearingBatchId` | `char*` |  |
| `clearingCurrency` | `char*` |  |
| `clearingDate` | `char*` |  |
| `clearingProcessedDate` | `char*` |  |
| `clearingStatus` | `char*` |  |
| `clientId` | `int64_t` |  |
| `currency` | `char*` |  |
| `cvm` | `char*` |  |
| `ecrData` | `char*` |  |
| `emvApplicationId` | `char*` |  |
| `emvApplicationLabel` | `char*` |  |
| `merchantName` | `char*` |  |
| `merchantNumber` | `char*` |  |
| `originalClientId` | `char*` |  |
| `originalTerminalId` | `int64_t` |  |
| `originalTransactionId` | `char*` |  |
| `paymentReason` | `char*` |  |
| `receiptNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseCodeFromAS` | `char*` |  |
| `responseMessage` | `char*` |  |
| `retrievalReferenceNumber` | `char*` |  |
| `serviceCode` | `char*` |  |
| `settlementStatus` | `char*` |  |
| `sourceId` | `int64_t` |  |
| `tecsengineResponseCode` | `int64_t` |  |
| `tecsengineResponseText` | `char*` |  |
| `terminalEndOfDayDate` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `terminalLocation` | `char*` |  |
| `tipAmount` | `int64_t` |  |
| `traceNumber` | `int64_t` |  |
| `transactionClearingDate` | `char*` |  |
| `transactionDate` | `char*` |  |
| `transactionId` | `char*` |  |
| `transactionSeqNumber` | `int64_t` |  |
| `transactionServerDate` | `char*` |  |
| `transactionSource` | `char*` |  |
| `transactionType` | `char*` |  |

#### Example: Create

```c
Entity* status_transaction = bluefintecsmerchantservices_status_transaction(client, NULL);
voxgig_value* status_transaction_rec = status_transaction->vt->create(status_transaction, NULL, NULL, &err);
```


### StoreTerminalParameter

Create an instance: `Entity* store_terminal_parameter = bluefintecsmerchantservices_store_terminal_parameter(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `voxgig_value* (map)` |  |
| `configVersion` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `serialNumber` | `char*` |  |
| `tidSent` | `char*` |  |

#### Example: Create

```c
Entity* store_terminal_parameter = bluefintecsmerchantservices_store_terminal_parameter(client, NULL);
voxgig_value* store_terminal_parameter_rec = store_terminal_parameter->vt->create(store_terminal_parameter, cmap(1,
    "serialNumber", v_str("example_serialNumber"))  // char*
, NULL, &err);
```


### TerminalId

Create an instance: `Entity* terminal_id = bluefintecsmerchantservices_terminal_id(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `voxgig_value* (list)` |  |
| `duplicateTerminalIds` | `voxgig_value* (list)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `terminals` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* terminal_id = bluefintecsmerchantservices_terminal_id(client, NULL);
voxgig_value* terminal_id_rec = terminal_id->vt->create(terminal_id, cmap(1,
    "deviceSerialNumber", v_list())  // voxgig_value* (list)
, NULL, &err);
```


### TransactionHistory

Create an instance: `Entity* transaction_history = bluefintecsmerchantservices_transaction_history(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `char*` |  |
| `authorizationCode` | `char*` |  |
| `cardBrand` | `char*` |  |
| `clearingAmountFrom` | `char*` |  |
| `clearingAmountTo` | `char*` |  |
| `clearingCurrency` | `char*` |  |
| `clearingStatus` | `char*` |  |
| `corporateUUID` | `char*` |  |
| `orderByTransactionDate` | `char*` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `paymentTokenPublicId` | `char*` |  |
| `receiptNumber` | `char*` |  |
| `referencedTransactionId` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `retrievalReferenceNumber` | `char*` |  |
| `sourceId` | `int64_t` |  |
| `tecsengineResponseCodeFrom` | `char*` |  |
| `tecsengineResponseCodeTo` | `char*` |  |
| `terminalId` | `int64_t` |  |
| `traceNumber` | `char*` |  |
| `transactionAmountFrom` | `char*` |  |
| `transactionAmountTo` | `char*` |  |
| `transactionDateFrom` | `char*` |  |
| `transactionDateTo` | `char*` |  |
| `transactionHistories` | `voxgig_value* (list)` |  |
| `transactionId` | `char*` |  |
| `transactionType` | `char*` |  |
| `wallet` | `char*` | Filter by wallet type. |

#### Example: Create

```c
Entity* transaction_history = bluefintecsmerchantservices_transaction_history(client, NULL);
voxgig_value* transaction_history_rec = transaction_history->vt->create(transaction_history, NULL, NULL, &err);
```


### TransactionsCount

Create an instance: `Entity* transactions_count = bluefintecsmerchantservices_transactions_count(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `transactionDateFrom` | `char*` |  |
| `transactionDateTo` | `char*` |  |
| `transactionsCount` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* transactions_count = bluefintecsmerchantservices_transactions_count(client, NULL);
voxgig_value* transactions_count_rec = transactions_count->vt->create(transactions_count, NULL, NULL, &err);
```


### TransactionsCountCardBrand

Create an instance: `Entity* transactions_count_card_brand = bluefintecsmerchantservices_transactions_count_card_brand(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `transactionDateFrom` | `char*` |  |
| `transactionDateTo` | `char*` |  |
| `transactionsCount` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* transactions_count_card_brand = bluefintecsmerchantservices_transactions_count_card_brand(client, NULL);
voxgig_value* transactions_count_card_brand_rec = transactions_count_card_brand->vt->create(transactions_count_card_brand, NULL, NULL, &err);
```


### TransactionsTurnover

Create an instance: `Entity* transactions_turnover = bluefintecsmerchantservices_transactions_turnover(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `transactionDateFrom` | `char*` |  |
| `transactionDateTo` | `char*` |  |
| `turnovers` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* transactions_turnover = bluefintecsmerchantservices_transactions_turnover(client, NULL);
voxgig_value* transactions_turnover_rec = transactions_turnover->vt->create(transactions_turnover, NULL, NULL, &err);
```


### UpdateMerchant

Create an instance: `Entity* update_merchant = bluefintecsmerchantservices_update_merchant(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `char*` |  |
| `corporateUuid` | `char*` |  |
| `country` | `char*` |  |
| `merchantCategoryCode` | `char*` |  |
| `name` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `state` | `char*` |  |
| `street` | `char*` |  |
| `vuNummer` | `char*` |  |
| `zipcode` | `char*` |  |

#### Example: Create

```c
Entity* update_merchant = bluefintecsmerchantservices_update_merchant(client, NULL);
voxgig_value* update_merchant_rec = update_merchant->vt->create(update_merchant, cmap(1,
    "corporateUuid", v_str("example_corporateUuid"))  // char*
, NULL, &err);
```


### UpdateTemplateXml

Create an instance: `Entity* update_template_xml = bluefintecsmerchantservices_update_template_xml(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `templateName` | `char*` |  |
| `templateXml` | `char*` |  |

#### Example: Create

```c
Entity* update_template_xml = bluefintecsmerchantservices_update_template_xml(client, NULL);
voxgig_value* update_template_xml_rec = update_template_xml->vt->create(update_template_xml, cmap(2,
    "templateName", v_str("example_templateName"),  // char*
    "templateXml", v_str("example_templateXml"))  // char*
, NULL, &err);
```


### Version

Create an instance: `Entity* version = bluefintecsmerchantservices_version(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `char*` |  |
| `buildDate` | `char*` |  |
| `version` | `char*` |  |

#### Example: Load

```c
Entity* version = bluefintecsmerchantservices_version(client, NULL);
voxgig_value* version_rec = version->vt->load(version, NULL, NULL, &err);
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

### Data as `voxgig_value*`

The C SDK uses a single dynamic `voxgig_value*` type throughout rather than
a typed struct per entity. `voxgig_value` is the vendored voxgig struct
port (a JSON-shaped tagged union: string, number, bool, list, map, null,
undef). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `cmap` / `clist` / `v_str` / `v_num` /
`v_bool` helper builders, and read fields back with `getp` (or the typed
`get_str` / `get_bool` / `to_int`); use `to_map` to safely coerce a
value to a map.

Memory follows a retain-heavy, never-free discipline — pipeline values are
never released. This is safe (no use-after-free) and leaks are acceptable
for the short-lived SDK and test binaries.

### Error handling

Fallible functions return a `voxgig_value*` (or a struct pointer) and take a
trailing `PNError** err` out-param. On success `*err` is left `NULL`; on
failure `*err` points to a heap `PNError` carrying `code` and `msg`.
Always initialise `PNError* err = NULL;` and branch on it after each call.

### Project structure

```
c/
├── core/          -- Pipeline types, config, client (client.c), api.h + sdk.h
├── entity/        -- Per-entity implementations (one .c each)
├── feature/       -- Built-in features (base, test, log, ...)
├── utility/       -- Utilities + the vendored voxgig struct port (utility/struct)
├── tests/         -- Test binaries (each a standalone main())
└── Makefile       -- Builds libsdk.a and runs every tests/*.c
```

The public entry header is `core/api.h` — it includes `core/sdk.h` (the
umbrella runtime header) and declares each entity's constructor and SDK
accessor. Include it and link against `libsdk.a`.

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
