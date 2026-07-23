# BluefinTecsMerchantServices Java SDK



The Java SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Java conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.cancelTransaction(null)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Maven Central. Install it from the GitHub
release tag (`java/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout — build the library with Maven:

```bash
cd java && mvn install
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```java
import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK;

Map<String, Object> options = new java.util.LinkedHashMap<>();
options.put("apikey", System.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"));
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

### 4. Create, update, and remove

```java
// Create — returns the bare created record (as Object)
Object created = client.cancelTransaction(null).create(Map.of("client_id", 1L, "currency", "example_currency", "receipt_number", "example_receipt_number", "terminal_id", 1L), null);

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

```java
Map<String, Object> result = client.direct(Map.of(
    "path", "/api/resource/{id}",
    "method", "GET",
    "params", Map.of("id", "example")));

if (Boolean.TRUE.equals(result.get("ok"))) {
    System.out.println(result.get("status"));  // 200
    System.out.println(result.get("data"));    // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both — an absent key simply reads as null.
    System.out.println(result.get("status") + " " + result.get("err"));
}
```

### Prepare a request without sending it

```java
// prepare() returns the fetch definition and raises on error.
Map<String, Object> fetchdef = client.prepare(Map.of(
    "path", "/api/resource/{id}",
    "method", "DELETE",
    "params", Map.of("id", "example")));

System.out.println(fetchdef.get("url"));
System.out.println(fetchdef.get("method"));
System.out.println(fetchdef.get("headers"));
```

### Use test mode

Create a mock client for unit testing — no server required:

```java
BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(null, null);

// Entity ops return the bare record and raise on error.
Object digitalServicesApi = client.digitalServicesApi(null).load(null, null);
// digitalServicesApi holds the mock response record
System.out.println(digitalServicesApi);
```

### Use a custom fetch function

Replace the HTTP transport with your own `BiFunction`:

```java
java.util.function.BiFunction<String, Map<String, Object>, Object> mockFetch =
    (url, init) -> {
        Map<String, Object> res = new java.util.LinkedHashMap<>();
        res.put("status", 200);
        res.put("statusText", "OK");
        res.put("headers", new java.util.LinkedHashMap<String, Object>());
        res.put("json", (java.util.function.Supplier<Object>) () ->
            Map.of("id", "mock01"));
        return res;
    };

Map<String, Object> options = new java.util.LinkedHashMap<>();
options.put("base", "http://localhost:8080");
options.put("system", Map.of("fetch", mockFetch));
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd java && mvn test
```


## Reference

### BluefinTecsMerchantServicesSDK

```java
BluefinTecsMerchantServicesSDK client = new BluefinTecsMerchantServicesSDK(options);
```

Creates a new SDK client. `options` is a `Map<String, Object>`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `Map` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Map` | System overrides (e.g. custom `fetch` function). |

### testSDK

```java
BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> Map` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> Map` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> Map` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `cancelTransaction` | `(entopts) -> SdkEntity` | Create a CancelTransaction entity instance. |
| `checkCardBlackListed` | `(entopts) -> SdkEntity` | Create a CheckCardBlackListed entity instance. |
| `createProduct` | `(entopts) -> SdkEntity` | Create a CreateProduct entity instance. |
| `deactivateTerminal` | `(entopts) -> SdkEntity` | Create a DeactivateTerminal entity instance. |
| `digitalServicesApi` | `(entopts) -> SdkEntity` | Create a DigitalServicesApi entity instance. |
| `ecDataEcom` | `(entopts) -> SdkEntity` | Create an EcDataEcom entity instance. |
| `ecomParameter` | `(entopts) -> SdkEntity` | Create an EcomParameter entity instance. |
| `ecrData` | `(entopts) -> SdkEntity` | Create an EcrData entity instance. |
| `emvData` | `(entopts) -> SdkEntity` | Create an EmvData entity instance. |
| `enableAcquiring` | `(entopts) -> SdkEntity` | Create an EnableAcquiring entity instance. |
| `getMerchantContractNumber` | `(entopts) -> SdkEntity` | Create a GetMerchantContractNumber entity instance. |
| `getTemplateXml` | `(entopts) -> SdkEntity` | Create a GetTemplateXml entity instance. |
| `introduceMandator` | `(entopts) -> SdkEntity` | Create an IntroduceMandator entity instance. |
| `introducePackage` | `(entopts) -> SdkEntity` | Create an IntroducePackage entity instance. |
| `keepAlive` | `(entopts) -> SdkEntity` | Create a KeepAlive entity instance. |
| `listTerminal` | `(entopts) -> SdkEntity` | Create a ListTerminal entity instance. |
| `mandatorClearingExport` | `(entopts) -> SdkEntity` | Create a MandatorClearingExport entity instance. |
| `mandatorClearingExportDownload` | `(entopts) -> SdkEntity` | Create a MandatorClearingExportDownload entity instance. |
| `mandatorClearingExportSummary` | `(entopts) -> SdkEntity` | Create a MandatorClearingExportSummary entity instance. |
| `merchantPortalServicesApi` | `(entopts) -> SdkEntity` | Create a MerchantPortalServicesApi entity instance. |
| `moveTid` | `(entopts) -> SdkEntity` | Create a MoveTid entity instance. |
| `paymentManual` | `(entopts) -> SdkEntity` | Create a PaymentManual entity instance. |
| `paymentSred` | `(entopts) -> SdkEntity` | Create a PaymentSred entity instance. |
| `preAuthTransactionCompletion` | `(entopts) -> SdkEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivateTerminal` | `(entopts) -> SdkEntity` | Create a ReactivateTerminal entity instance. |
| `refundTransaction` | `(entopts) -> SdkEntity` | Create a RefundTransaction entity instance. |
| `registerTecsCompany` | `(entopts) -> SdkEntity` | Create a RegisterTecsCompany entity instance. |
| `registerTerminal` | `(entopts) -> SdkEntity` | Create a RegisterTerminal entity instance. |
| `reportData` | `(entopts) -> SdkEntity` | Create a ReportData entity instance. |
| `statusTransaction` | `(entopts) -> SdkEntity` | Create a StatusTransaction entity instance. |
| `storeTerminalParameter` | `(entopts) -> SdkEntity` | Create a StoreTerminalParameter entity instance. |
| `terminalId` | `(entopts) -> SdkEntity` | Create a TerminalId entity instance. |
| `transactionHistory` | `(entopts) -> SdkEntity` | Create a TransactionHistory entity instance. |
| `transactionsCount` | `(entopts) -> SdkEntity` | Create a TransactionsCount entity instance. |
| `transactionsCountCardBrand` | `(entopts) -> SdkEntity` | Create a TransactionsCountCardBrand entity instance. |
| `transactionsTurnover` | `(entopts) -> SdkEntity` | Create a TransactionsTurnover entity instance. |
| `updateMerchant` | `(entopts) -> SdkEntity` | Create an UpdateMerchant entity instance. |
| `updateTemplateXml` | `(entopts) -> SdkEntity` | Create an UpdateTemplateXml entity instance. |
| `version` | `(entopts) -> SdkEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> Object` | Load a single entity by match criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> Object` | Create a new entity. Raises on error. |
| `data` | `(newdata...) -> Object` | Get or set entity data. |
| `match` | `(newmatch...) -> Object` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `Map` for single-entity
ops, an aggregate `List` for `list`) as `Object` and raise on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct()` escape hatch never raises — it returns a result
`Map<String, Object>` you branch on via `result.get("ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Boolean` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `Object` | Parsed JSON response body. |

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

Operations: create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `card_no` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create, load.

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

Operations: create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecom_pass` |  |
| `ecom_skey` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchant_contract_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `terminal_template_description` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create, load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuid` |  |
| `response_code` |  |
| `response_message` |  |
| `target_packageorderuuid` |  |
| `target_productorderuuid` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `device_serial_number` |  |
| `duplicate_terminal_id` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_xml` |  |

Operations: create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: load.

API path: `/public/version`



## Entities


### CancelTransaction

Create an instance: `SdkEntity cancelTransaction = client.cancelTransaction(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Long` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Long` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Long` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Long` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Long` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Long` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```java
Object cancelTransaction = client.cancelTransaction(null).create(Map.of(
    "client_id", 1L,  // Long
    "currency", "example_currency",  // String
    "receipt_number", "example_receipt_number",  // String
    "terminal_id", 1L  // Long
), null);
```


### CheckCardBlackListed

Create an instance: `SdkEntity checkCardBlackListed = client.checkCardBlackListed(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```java
Object checkCardBlackListed = client.checkCardBlackListed(null).create(Map.of(
), null);
```


### CreateProduct

Create an instance: `SdkEntity createProduct = client.createProduct(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `Long` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_type` | `String` |  |
| `template_xml` | `String` |  |
| `terminal_type` | `String` |  |

#### Example: Create

```java
Object createProduct = client.createProduct(null).create(Map.of(
    "template_name", "example_template_name",  // String
    "template_type", "example_template_type",  // String
    "template_xml", "example_template_xml",  // String
    "terminal_type", "example_terminal_type"  // String
), null);
```


### DeactivateTerminal

Create an instance: `SdkEntity deactivateTerminal = client.deactivateTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `deactivation_reason` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Long` |  |

#### Example: Create

```java
Object deactivateTerminal = client.deactivateTerminal(null).create(Map.of(
    "deactivation_reason", "example_deactivation_reason",  // String
    "terminal_id", 1L  // Long
), null);
```


### DigitalServicesApi

Create an instance: `SdkEntity digitalServicesApi = client.digitalServicesApi(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `tx_count` | `Long` |  |
| `tx_id_end` | `String` |  |
| `tx_id_start` | `String` |  |
| `tx_seq_no_end` | `Long` |  |
| `tx_seq_no_start` | `Long` |  |
| `tx_total` | `Long` |  |

#### Example: Load

```java
Object digitalServicesApi = client.digitalServicesApi(null).load(null, null);
```

#### Example: Create

```java
Object digitalServicesApi = client.digitalServicesApi(null).create(Map.of(
), null);
```


### EcDataEcom

Create an instance: `SdkEntity ecDataEcom = client.ecDataEcom(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Long` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```java
Object ecDataEcom = client.ecDataEcom(null).create(Map.of(
    "terminal_id", 1L,  // Long
    "transaction_id", "example_transaction_id",  // String
    "transaction_type", "example_transaction_type"  // String
), null);
```


### EcomParameter

Create an instance: `SdkEntity ecomParameter = client.ecomParameter(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `String` |  |
| `ecom_skey` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Long` |  |

#### Example: Create

```java
Object ecomParameter = client.ecomParameter(null).create(Map.of(
    "terminal_id", 1L  // Long
), null);
```


### EcrData

Create an instance: `SdkEntity ecrData = client.ecrData(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Long` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```java
Object ecrData = client.ecrData(null).create(Map.of(
    "terminal_id", 1L,  // Long
    "transaction_id", "example_transaction_id",  // String
    "transaction_type", "example_transaction_type"  // String
), null);
```


### EmvData

Create an instance: `SdkEntity emvData = client.emvData(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Long` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```java
Object emvData = client.emvData(null).create(Map.of(
    "terminal_id", 1L,  // Long
    "transaction_id", "example_transaction_id",  // String
    "transaction_type", "example_transaction_type"  // String
), null);
```


### EnableAcquiring

Create an instance: `SdkEntity enableAcquiring = client.enableAcquiring(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `Long` |  |
| `additional_data` | `Map<String, Object>` |  |
| `corporate_uuid` | `String` |  |
| `currency` | `String` |  |
| `merchant_category_code` | `Long` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `sorting_code` | `Long` |  |
| `template_name` | `String` |  |
| `terminal_id` | `List<Object>` |  |
| `terminal_id_acq` | `String` |  |
| `vu_nummer` | `String` |  |

#### Example: Create

```java
Object enableAcquiring = client.enableAcquiring(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid",  // String
    "currency", "example_currency",  // String
    "merchant_category_code", 1L,  // Long
    "package_order_uuid", "example_package_order_uuid",  // String
    "product_order_uuid", "example_product_order_uuid",  // String
    "template_name", "example_template_name"  // String
), null);
```


### GetMerchantContractNumber

Create an instance: `SdkEntity getMerchantContractNumber = client.getMerchantContractNumber(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```java
Object getMerchantContractNumber = client.getMerchantContractNumber(null).create(Map.of(
    "merchant_contract_number", "example_merchant_contract_number"  // String
), null);
```


### GetTemplateXml

Create an instance: `SdkEntity getTemplateXml = client.getTemplateXml(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```java
Object getTemplateXml = client.getTemplateXml(null).create(Map.of(
    "template_name", "example_template_name"  // String
), null);
```


### IntroduceMandator

Create an instance: `SdkEntity introduceMandator = client.introduceMandator(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```java
Object introduceMandator = client.introduceMandator(null).create(Map.of(
    "mandator_name", "example_mandator_name"  // String
), null);
```


### IntroducePackage

Create an instance: `SdkEntity introducePackage = client.introducePackage(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_template_description` | `String` |  |

#### Example: Create

```java
Object introducePackage = client.introducePackage(null).create(Map.of(
    "terminal_template_description", "example_terminal_template_description"  // String
), null);
```


### KeepAlive

Create an instance: `SdkEntity keepAlive = client.keepAlive(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `ka_date_time_from` | `String` |  |
| `ka_date_time_to` | `String` |  |
| `keep_alive_data` | `List<Object>` |  |
| `pagination` | `Map<String, Object>` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_date_time_from` | `String` |  |
| `terminal_date_time_to` | `String` |  |
| `terminal_id` | `Long` |  |

#### Example: Create

```java
Object keepAlive = client.keepAlive(null).create(Map.of(
), null);
```


### ListTerminal

Create an instance: `SdkEntity listTerminal = client.listTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `List<Object>` |  |
| `filter` | `Map<String, Object>` |  |
| `pagination` | `Map<String, Object>` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal` | `List<Object>` |  |

#### Example: Create

```java
Object listTerminal = client.listTerminal(null).create(Map.of(
), null);
```


### MandatorClearingExport

Create an instance: `SdkEntity mandatorClearingExport = client.mandatorClearingExport(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `pagination` | `Map<String, Object>` |  |
| `record` | `List<Object>` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```java
Object mandatorClearingExport = client.mandatorClearingExport(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to"  // String
), null);
```


### MandatorClearingExportDownload

Create an instance: `SdkEntity mandatorClearingExportDownload = client.mandatorClearingExportDownload(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `file_id` | `String` |  |
| `filename_template` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `status` | `String` |  |

#### Example: Load

```java
Object mandatorClearingExportDownload = client.mandatorClearingExportDownload(null).load(Map.of("id", "mandator_clearing_export_download_id"), null);
```

#### Example: Create

```java
Object mandatorClearingExportDownload = client.mandatorClearingExportDownload(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to"  // String
), null);
```


### MandatorClearingExportSummary

Create an instance: `SdkEntity mandatorClearingExportSummary = client.mandatorClearingExportSummary(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `record` | `List<Object>` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```java
Object mandatorClearingExportSummary = client.mandatorClearingExportSummary(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to"  // String
), null);
```


### MerchantPortalServicesApi

Create an instance: `SdkEntity merchantPortalServicesApi = client.merchantPortalServicesApi(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

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
| `pagination` | `Map<String, Object>` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `Long` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `Long` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```java
Object merchantPortalServicesApi = client.merchantPortalServicesApi(null).create(Map.of(
), null);
```


### MoveTid

Create an instance: `SdkEntity moveTid = client.moveTid(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `List<Object>` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `target_packageorderuuid` | `String` |  |
| `target_productorderuuid` | `String` |  |

#### Example: Create

```java
Object moveTid = client.moveTid(null).create(Map.of(
    "productorderuuid", List.of()  // List<Object>
), null);
```


### PaymentManual

Create an instance: `SdkEntity paymentManual = client.paymentManual(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `Long` |  |
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

```java
Object paymentManual = client.paymentManual(null).create(Map.of(
    "amount", 1L,  // Long
    "card_number", "example_card_number",  // String
    "currency", "example_currency",  // String
    "exp_date", "example_exp_date",  // String
    "txtype", "example_txtype"  // String
), null);
```


### PaymentSred

Create an instance: `SdkEntity paymentSred = client.paymentSred(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `Long` |  |
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
| `sred` | `Map<String, Object>` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```java
Object paymentSred = client.paymentSred(null).create(Map.of(
    "amount", 1L,  // Long
    "currency", "example_currency",  // String
    "device_payload", "example_device_payload",  // String
    "txtype", "example_txtype"  // String
), null);
```


### PreAuthTransactionCompletion

Create an instance: `SdkEntity preAuthTransactionCompletion = client.preAuthTransactionCompletion(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Long` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `card_number_reference` | `String` |  |
| `client_id` | `Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Long` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Long` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Long` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Long` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Long` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```java
Object preAuthTransactionCompletion = client.preAuthTransactionCompletion(null).create(Map.of(
    "card_number_reference", "example_card_number_reference",  // String
    "client_id", 1L,  // Long
    "currency", "example_currency",  // String
    "receipt_number", "example_receipt_number",  // String
    "terminal_id", 1L,  // Long
    "transaction_type", "example_transaction_type"  // String
), null);
```


### ReactivateTerminal

Create an instance: `SdkEntity reactivateTerminal = client.reactivateTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `reactivation_reason` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Long` |  |

#### Example: Create

```java
Object reactivateTerminal = client.reactivateTerminal(null).create(Map.of(
    "reactivation_reason", "example_reactivation_reason",  // String
    "terminal_id", 1L  // Long
), null);
```


### RefundTransaction

Create an instance: `SdkEntity refundTransaction = client.refundTransaction(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Long` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `Long` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Long` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Long` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Long` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Long` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Long` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```java
Object refundTransaction = client.refundTransaction(null).create(Map.of(
    "client_id", 1L,  // Long
    "currency", "example_currency",  // String
    "receipt_number", "example_receipt_number",  // String
    "terminal_id", 1L  // Long
), null);
```


### RegisterTecsCompany

Create an instance: `SdkEntity registerTecsCompany = client.registerTecsCompany(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `partner_id` | `Long` |  |
| `partner_name` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```java
Object registerTecsCompany = client.registerTecsCompany(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid",  // String
    "package_order_uuid", "example_package_order_uuid",  // String
    "product_order_uuid", "example_product_order_uuid",  // String
    "template_name", "example_template_name"  // String
), null);
```


### RegisterTerminal

Create an instance: `SdkEntity registerTerminal = client.registerTerminal(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `Map<String, Object>` |  |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `tecs_web_secret_key` | `String` |  |
| `template_name` | `String` |  |
| `terminal_country_code` | `String` |  |
| `terminal_id` | `Long` |  |
| `terminal_id_acq` | `String` |  |
| `terminal_language_code` | `String` |  |
| `terminal_location` | `String` |  |
| `terminal_serial_number` | `String` |  |
| `token_io_alia` | `String` |  |
| `token_io_iban` | `String` |  |
| `token_io_member_id` | `String` |  |
| `web_shop_url` | `String` |  |

#### Example: Create

```java
Object registerTerminal = client.registerTerminal(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid",  // String
    "package_order_uuid", "example_package_order_uuid",  // String
    "product_order_uuid", "example_product_order_uuid",  // String
    "template_name", "example_template_name",  // String
    "terminal_country_code", "example_terminal_country_code",  // String
    "terminal_language_code", "example_terminal_language_code",  // String
    "terminal_location", "example_terminal_location"  // String
), null);
```


### ReportData

Create an instance: `SdkEntity reportData = client.reportData(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `List<Object>` |  |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `corporate_id` | `String` |  |
| `currency` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `sum_over_credit_tx` | `Map<String, Object>` |  |
| `sum_over_debit_tx` | `Map<String, Object>` |  |
| `terminal_id` | `Long` |  |

#### Example: Create

```java
Object reportData = client.reportData(null).create(Map.of(
    "clearing_date_from", "example_clearing_date_from",  // String
    "clearing_date_to", "example_clearing_date_to",  // String
    "corporate_id", "example_corporate_id",  // String
    "currency", "example_currency"  // String
), null);
```


### StatusTransaction

Create an instance: `SdkEntity statusTransaction = client.statusTransaction(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `acquirer_terminal_id` | `String` |  |
| `amount` | `Long` |  |
| `application_cryptogram` | `String` |  |
| `authorization_code` | `Object` |  |
| `authorization_date` | `String` |  |
| `card_brand` | `String` |  |
| `card_entry` | `String` |  |
| `card_expiration` | `String` |  |
| `card_number` | `String` |  |
| `clearing_amount` | `Long` |  |
| `clearing_batch_id` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_date` | `String` |  |
| `clearing_processed_date` | `String` |  |
| `clearing_status` | `String` |  |
| `client_id` | `Long` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_application_id` | `String` |  |
| `emv_application_label` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `original_client_id` | `String` |  |
| `original_terminal_id` | `Long` |  |
| `original_transaction_id` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Long` |  |
| `response_code_from_a` | `String` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `service_code` | `String` |  |
| `settlement_status` | `String` |  |
| `source_id` | `Long` |  |
| `tecsengine_response_code` | `Long` |  |
| `tecsengine_response_text` | `String` |  |
| `terminal_end_of_day_date` | `String` |  |
| `terminal_id` | `Long` |  |
| `terminal_location` | `String` |  |
| `tip_amount` | `Long` |  |
| `trace_number` | `Long` |  |
| `transaction_clearing_date` | `String` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_seq_number` | `Long` |  |
| `transaction_server_date` | `String` |  |
| `transaction_source` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```java
Object statusTransaction = client.statusTransaction(null).create(Map.of(
), null);
```


### StoreTerminalParameter

Create an instance: `SdkEntity storeTerminalParameter = client.storeTerminalParameter(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `Map<String, Object>` |  |
| `config_version` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `tid_sent` | `String` |  |

#### Example: Create

```java
Object storeTerminalParameter = client.storeTerminalParameter(null).create(Map.of(
    "serial_number", "example_serial_number"  // String
), null);
```


### TerminalId

Create an instance: `SdkEntity terminalId = client.terminalId(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `List<Object>` |  |
| `duplicate_terminal_id` | `List<Object>` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `terminal` | `List<Object>` |  |

#### Example: Create

```java
Object terminalId = client.terminalId(null).create(Map.of(
    "device_serial_number", List.of()  // List<Object>
), null);
```


### TransactionHistory

Create an instance: `SdkEntity transactionHistory = client.transactionHistory(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

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
| `pagination` | `Map<String, Object>` |  |
| `payment_token_public_id` | `String` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `Long` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `Long` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_history` | `List<Object>` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```java
Object transactionHistory = client.transactionHistory(null).create(Map.of(
), null);
```


### TransactionsCount

Create an instance: `SdkEntity transactionsCount = client.transactionsCount(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `List<Object>` |  |

#### Example: Create

```java
Object transactionsCount = client.transactionsCount(null).create(Map.of(
), null);
```


### TransactionsCountCardBrand

Create an instance: `SdkEntity transactionsCountCardBrand = client.transactionsCountCardBrand(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `List<Object>` |  |

#### Example: Create

```java
Object transactionsCountCardBrand = client.transactionsCountCardBrand(null).create(Map.of(
), null);
```


### TransactionsTurnover

Create an instance: `SdkEntity transactionsTurnover = client.transactionsTurnover(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `turnover` | `List<Object>` |  |

#### Example: Create

```java
Object transactionsTurnover = client.transactionsTurnover(null).create(Map.of(
), null);
```


### UpdateMerchant

Create an instance: `SdkEntity updateMerchant = client.updateMerchant(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporate_uuid` | `String` |  |
| `country` | `String` |  |
| `merchant_category_code` | `String` |  |
| `name` | `String` |  |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vu_nummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```java
Object updateMerchant = client.updateMerchant(null).create(Map.of(
    "corporate_uuid", "example_corporate_uuid"  // String
), null);
```


### UpdateTemplateXml

Create an instance: `SdkEntity updateTemplateXml = client.updateTemplateXml(null);`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Long` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_xml` | `String` |  |

#### Example: Create

```java
Object updateTemplateXml = client.updateTemplateXml(null).create(Map.of(
    "template_name", "example_template_name",  // String
    "template_xml", "example_template_xml"  // String
), null);
```


### Version

Create an instance: `SdkEntity version = client.version(null);`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```java
Object version = client.version(null).load(null, null);
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

### Data as maps

The Java SDK uses a loose object model — `Map<String, Object>` throughout —
rather than a bespoke typed class per endpoint. This mirrors the dynamic
nature of the API and keeps the SDK flexible: no regeneration is needed when
the API schema changes.

Use `Helpers.toMapAny(value)` to safely coerce a value to a
`Map<String, Object>`. A `BluefinTecsMerchantServicesTypes.java` module of reference
`record` types is also generated for editor documentation.

### Project structure

```
java/
├── pom.xml                     -- Maven project (compiles core/, utility/, feature/, entity/)
├── core/                       -- Main SDK client, config, entity base, error type
├── entity/                     -- Entity implementations
├── feature/                    -- Built-in features (Base, Test, Log, ...)
├── utility/                    -- Utility functions and the vendored struct library
└── test/                       -- JUnit test suites
```

The main client class (`BluefinTecsMerchantServicesSDK`, package `voxgig.bluefintecsmerchantservicessdk.core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed.

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
