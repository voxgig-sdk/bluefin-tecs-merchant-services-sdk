# BluefinTecsMerchantServices OCaml SDK



The OCaml SDK for the BluefinTecsMerchantServices API — an entity-oriented client
following idiomatic OCaml conventions (a dependency-free library that compiles
with the stock `ocamlc`).

The SDK exposes the API as capitalised, semantic **Entities** — for example `Sdk_client.cancel_transaction client Noval` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to the opam registry. Install it from the
GitHub release tag (`ocaml/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases))
or from a source checkout. The SDK is dependency-free and compiles with the
stock `ocamlc` — no opam packages, no dune:

```bash
cd ocaml && make build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```ocaml
open Voxgig_struct
open Sdk_helpers

let client = Sdk_client.make (jo [("apikey", Str (Sys.getenv "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"))])
```

### 4. Create, update, and remove

```ocaml
(* Create — returns the bare created record (a Map) *)
let created = (Sdk_client.cancel_transaction client Noval).e_create (jo [("client_id", (Num 1.)); ("currency", (Str "example_currency")); ("receipt_number", (Str "example_receipt_number")); ("terminal_id", (Num 1.))]) Noval in
ignore created;

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

```ocaml
let result = Sdk_client.direct client (jo [
    ("path", Str "/api/resource/{id}");
    ("method", Str "GET");
    ("params", jo [("id", Str "example")]);
]) in
(match getp result "ok" with
 | Bool true ->
   print_endline (stringify (getp result "status"));  (* 200 *)
   print_endline (stringify (getp result "data"))      (* response body *)
 | _ ->
   (* A non-2xx response carries status + data (the error body); a transport
      failure carries err instead. Read whichever is present. *)
   print_endline (stringify (getp result "status"));
   print_endline (stringify (getp result "err")))
```

### Prepare a request without sending it

```ocaml
(* prepare returns the fetch definition and raises on error. *)
let fetchdef = Sdk_client.prepare client (jo [
    ("path", Str "/api/resource/{id}");
    ("method", Str "DELETE");
    ("params", jo [("id", Str "example")]);
]) in
print_endline (stringify (getp fetchdef "url"));
print_endline (stringify (getp fetchdef "method"));
print_endline (stringify (getp fetchdef "headers"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```ocaml
let () =
  let client = Sdk_client.test () in
  (* Entity ops return the bare record and raise on error. *)
  let digital_services_api = (Sdk_client.digital_services_api client Noval).e_load (empty_map ()) Noval in
  print_endline (stringify digital_services_api)  (* the mock response record *)
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```ocaml
let mock_fetch = Func (fun _ _args _ _ ->
    jo [("status", Num 200.); ("statusText", Str "OK"); ("headers", empty_map ());
        ("json", json_thunk (jo [("id", Str "mock01")]))]) in
let client = Sdk_client.make (jo [
    ("base", Str "http://localhost:8080");
    ("system", jo [("fetch", mock_fetch)]);
]) in
ignore client
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd ocaml && make test
```


## Reference

### Sdk_client

```ocaml
open Voxgig_struct
open Sdk_helpers

let client = Sdk_client.make options
```

Creates a new SDK client from a `value` options map. Use `Sdk_client.make0 ()`
for defaults.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `extend` | `list` | Additional feature instances to load. |
| `system` | `map` | System overrides (e.g. custom `fetch` function). |

### Sdk_client.test

```ocaml
let client = Sdk_client.test_with testopts sdkopts
```

Creates a test-mode client with mock transport. Both arguments may be `Noval`
(`Sdk_client.test ()` uses defaults).

### Sdk_client functions

| Function | Signature | Description |
| --- | --- | --- |
| `make` | `value -> sdk_client` | Construct a client from options. |
| `make0` | `unit -> sdk_client` | Construct a client with defaults. |
| `prepare` | `sdk_client -> value -> value` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `sdk_client -> value -> value` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `cancel_transaction` | `sdk_client -> value -> entity_obj` | A CancelTransaction entity accessor. |
| `check_card_black_listed` | `sdk_client -> value -> entity_obj` | A CheckCardBlackListed entity accessor. |
| `create_product` | `sdk_client -> value -> entity_obj` | A CreateProduct entity accessor. |
| `deactivate_terminal` | `sdk_client -> value -> entity_obj` | A DeactivateTerminal entity accessor. |
| `digital_services_api` | `sdk_client -> value -> entity_obj` | A DigitalServicesApi entity accessor. |
| `ec_data_ecom` | `sdk_client -> value -> entity_obj` | An EcDataEcom entity accessor. |
| `ecom_parameter` | `sdk_client -> value -> entity_obj` | An EcomParameter entity accessor. |
| `ecr_data` | `sdk_client -> value -> entity_obj` | An EcrData entity accessor. |
| `emv_data` | `sdk_client -> value -> entity_obj` | An EmvData entity accessor. |
| `enable_acquiring` | `sdk_client -> value -> entity_obj` | An EnableAcquiring entity accessor. |
| `get_merchant_contract_number` | `sdk_client -> value -> entity_obj` | A GetMerchantContractNumber entity accessor. |
| `get_template_xml` | `sdk_client -> value -> entity_obj` | A GetTemplateXml entity accessor. |
| `introduce_mandator` | `sdk_client -> value -> entity_obj` | An IntroduceMandator entity accessor. |
| `introduce_package` | `sdk_client -> value -> entity_obj` | An IntroducePackage entity accessor. |
| `keep_alive` | `sdk_client -> value -> entity_obj` | A KeepAlive entity accessor. |
| `list_terminal` | `sdk_client -> value -> entity_obj` | A ListTerminal entity accessor. |
| `mandator_clearing_export` | `sdk_client -> value -> entity_obj` | A MandatorClearingExport entity accessor. |
| `mandator_clearing_export_download` | `sdk_client -> value -> entity_obj` | A MandatorClearingExportDownload entity accessor. |
| `mandator_clearing_export_summary` | `sdk_client -> value -> entity_obj` | A MandatorClearingExportSummary entity accessor. |
| `merchant_portal_services_api` | `sdk_client -> value -> entity_obj` | A MerchantPortalServicesApi entity accessor. |
| `move_tid` | `sdk_client -> value -> entity_obj` | A MoveTid entity accessor. |
| `payment_manual` | `sdk_client -> value -> entity_obj` | A PaymentManual entity accessor. |
| `payment_sred` | `sdk_client -> value -> entity_obj` | A PaymentSred entity accessor. |
| `pre_auth_transaction_completion` | `sdk_client -> value -> entity_obj` | A PreAuthTransactionCompletion entity accessor. |
| `reactivate_terminal` | `sdk_client -> value -> entity_obj` | A ReactivateTerminal entity accessor. |
| `refund_transaction` | `sdk_client -> value -> entity_obj` | A RefundTransaction entity accessor. |
| `register_tecs_company` | `sdk_client -> value -> entity_obj` | A RegisterTecsCompany entity accessor. |
| `register_terminal` | `sdk_client -> value -> entity_obj` | A RegisterTerminal entity accessor. |
| `report_data` | `sdk_client -> value -> entity_obj` | A ReportData entity accessor. |
| `status_transaction` | `sdk_client -> value -> entity_obj` | A StatusTransaction entity accessor. |
| `store_terminal_parameter` | `sdk_client -> value -> entity_obj` | A StoreTerminalParameter entity accessor. |
| `terminal_id` | `sdk_client -> value -> entity_obj` | A TerminalId entity accessor. |
| `transaction_history` | `sdk_client -> value -> entity_obj` | A TransactionHistory entity accessor. |
| `transactions_count` | `sdk_client -> value -> entity_obj` | A TransactionsCount entity accessor. |
| `transactions_count_card_brand` | `sdk_client -> value -> entity_obj` | A TransactionsCountCardBrand entity accessor. |
| `transactions_turnover` | `sdk_client -> value -> entity_obj` | A TransactionsTurnover entity accessor. |
| `update_merchant` | `sdk_client -> value -> entity_obj` | An UpdateMerchant entity accessor. |
| `update_template_xml` | `sdk_client -> value -> entity_obj` | An UpdateTemplateXml entity accessor. |
| `version` | `sdk_client -> value -> entity_obj` | A Version entity accessor. |

### Entity interface

All entities are `entity_obj` records sharing the same fields.

| Field | Signature | Description |
| --- | --- | --- |
| `e_load` | `value -> value -> value` | Load a single entity by match criteria. Raises on error. |
| `e_create` | `value -> value -> value` | Create a new entity. Raises on error. |
| `e_data_get` | `unit -> value` | Get entity data. |
| `e_data_set` | `value -> unit` | Set entity data. |
| `e_match_get` | `unit -> value` | Get entity match criteria. |
| `e_match_set` | `value -> unit` | Set entity match criteria. |
| `e_make` | `unit -> entity_obj` | Create a new instance with the same options. |
| `e_name` | `string` | The entity name. |

### Result shape

Entity operations return the bare result value (a `Map` for single-entity
ops, a `List` for `e_list`) and raise `Sdk_error.E` on error. Wrap calls
in `try`/`with` to handle failures.

The `direct` escape hatch never raises — it returns a result `value` map
you branch on via `getp result "ok"`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `Bool true` if the HTTP status is 2xx. |
| `status` | `Num` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `value` | Parsed JSON response body. |

On error, `ok` is `Bool false` and `err` carries the error value.

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

Create an instance: `let cancel_transaction = Sdk_client.cancel_transaction client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `int` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `int` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```ocaml
let cancel_transaction = (Sdk_client.cancel_transaction client Noval).e_create (jo [
    ("client_id", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receipt_number", (Str "example_receipt_number"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```


### CheckCardBlackListed

Create an instance: `let check_card_black_listed = Sdk_client.check_card_black_listed client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let check_card_black_listed = (Sdk_client.check_card_black_listed client Noval).e_create (jo [
]) Noval
```


### CreateProduct

Create an instance: `let create_product = Sdk_client.create_product client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `int` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_type` | `string` |  |
| `template_xml` | `string` |  |
| `terminal_type` | `string` |  |

#### Example: Create

```ocaml
let create_product = (Sdk_client.create_product client Noval).e_create (jo [
    ("template_name", (Str "example_template_name"));  (* string *)
    ("template_type", (Str "example_template_type"));  (* string *)
    ("template_xml", (Str "example_template_xml"));  (* string *)
    ("terminal_type", (Str "example_terminal_type"));  (* string *)
]) Noval
```


### DeactivateTerminal

Create an instance: `let deactivate_terminal = Sdk_client.deactivate_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `deactivation_reason` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```ocaml
let deactivate_terminal = (Sdk_client.deactivate_terminal client Noval).e_create (jo [
    ("deactivation_reason", (Str "example_deactivation_reason"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```


### DigitalServicesApi

Create an instance: `let digital_services_api = Sdk_client.digital_services_api client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `tx_count` | `int` |  |
| `tx_id_end` | `string` |  |
| `tx_id_start` | `string` |  |
| `tx_seq_no_end` | `int` |  |
| `tx_seq_no_start` | `int` |  |
| `tx_total` | `int` |  |

#### Example: Load

```ocaml
let digital_services_api = (Sdk_client.digital_services_api client Noval).e_load (Noval) Noval
```

#### Example: Create

```ocaml
let digital_services_api = (Sdk_client.digital_services_api client Noval).e_create (jo [
]) Noval
```


### EcDataEcom

Create an instance: `let ec_data_ecom = Sdk_client.ec_data_ecom client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```ocaml
let ec_data_ecom = (Sdk_client.ec_data_ecom client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_id", (Str "example_transaction_id"));  (* string *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```


### EcomParameter

Create an instance: `let ecom_parameter = Sdk_client.ecom_parameter client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `string` |  |
| `ecom_skey` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```ocaml
let ecom_parameter = (Sdk_client.ecom_parameter client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```


### EcrData

Create an instance: `let ecr_data = Sdk_client.ecr_data client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```ocaml
let ecr_data = (Sdk_client.ecr_data client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_id", (Str "example_transaction_id"));  (* string *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```


### EmvData

Create an instance: `let emv_data = Sdk_client.emv_data client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```ocaml
let emv_data = (Sdk_client.emv_data client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_id", (Str "example_transaction_id"));  (* string *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```


### EnableAcquiring

Create an instance: `let enable_acquiring = Sdk_client.enable_acquiring client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `int` |  |
| `additional_data` | `value map` |  |
| `corporate_uuid` | `string` |  |
| `currency` | `string` |  |
| `merchant_category_code` | `int` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sorting_code` | `int` |  |
| `template_name` | `string` |  |
| `terminal_id` | `value list` |  |
| `terminal_id_acq` | `string` |  |
| `vu_nummer` | `string` |  |

#### Example: Create

```ocaml
let enable_acquiring = (Sdk_client.enable_acquiring client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("merchant_category_code", (Num 1.));  (* int *)
    ("package_order_uuid", (Str "example_package_order_uuid"));  (* string *)
    ("product_order_uuid", (Str "example_product_order_uuid"));  (* string *)
    ("template_name", (Str "example_template_name"));  (* string *)
]) Noval
```


### GetMerchantContractNumber

Create an instance: `let get_merchant_contract_number = Sdk_client.get_merchant_contract_number client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let get_merchant_contract_number = (Sdk_client.get_merchant_contract_number client Noval).e_create (jo [
    ("merchant_contract_number", (Str "example_merchant_contract_number"));  (* string *)
]) Noval
```


### GetTemplateXml

Create an instance: `let get_template_xml = Sdk_client.get_template_xml client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```ocaml
let get_template_xml = (Sdk_client.get_template_xml client Noval).e_create (jo [
    ("template_name", (Str "example_template_name"));  (* string *)
]) Noval
```


### IntroduceMandator

Create an instance: `let introduce_mandator = Sdk_client.introduce_mandator client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let introduce_mandator = (Sdk_client.introduce_mandator client Noval).e_create (jo [
    ("mandator_name", (Str "example_mandator_name"));  (* string *)
]) Noval
```


### IntroducePackage

Create an instance: `let introduce_package = Sdk_client.introduce_package client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_template_description` | `string` |  |

#### Example: Create

```ocaml
let introduce_package = (Sdk_client.introduce_package client Noval).e_create (jo [
    ("terminal_template_description", (Str "example_terminal_template_description"));  (* string *)
]) Noval
```


### KeepAlive

Create an instance: `let keep_alive = Sdk_client.keep_alive client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `ka_date_time_from` | `string` |  |
| `ka_date_time_to` | `string` |  |
| `keep_alive_data` | `value list` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_date_time_from` | `string` |  |
| `terminal_date_time_to` | `string` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```ocaml
let keep_alive = (Sdk_client.keep_alive client Noval).e_create (jo [
]) Noval
```


### ListTerminal

Create an instance: `let list_terminal = Sdk_client.list_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `value list` |  |
| `filter` | `value map` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal` | `value list` |  |

#### Example: Create

```ocaml
let list_terminal = (Sdk_client.list_terminal client Noval).e_create (jo [
]) Noval
```


### MandatorClearingExport

Create an instance: `let mandator_clearing_export = Sdk_client.mandator_clearing_export client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `pagination` | `value map` |  |
| `record` | `value list` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let mandator_clearing_export = (Sdk_client.mandator_clearing_export client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
]) Noval
```


### MandatorClearingExportDownload

Create an instance: `let mandator_clearing_export_download = Sdk_client.mandator_clearing_export_download client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `file_id` | `string` |  |
| `filename_template` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `status` | `string` |  |

#### Example: Load

```ocaml
let mandator_clearing_export_download = (Sdk_client.mandator_clearing_export_download client Noval).e_load (jo [("id", (Str "mandator_clearing_export_download_id"))]) Noval
```

#### Example: Create

```ocaml
let mandator_clearing_export_download = (Sdk_client.mandator_clearing_export_download client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
]) Noval
```


### MandatorClearingExportSummary

Create an instance: `let mandator_clearing_export_summary = Sdk_client.mandator_clearing_export_summary client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `record` | `value list` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let mandator_clearing_export_summary = (Sdk_client.mandator_clearing_export_summary client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
]) Noval
```


### MerchantPortalServicesApi

Create an instance: `let merchant_portal_services_api = Sdk_client.merchant_portal_services_api client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

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
| `pagination` | `value map` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `int` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```ocaml
let merchant_portal_services_api = (Sdk_client.merchant_portal_services_api client Noval).e_create (jo [
]) Noval
```


### MoveTid

Create an instance: `let move_tid = Sdk_client.move_tid client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `value list` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `target_packageorderuuid` | `string` |  |
| `target_productorderuuid` | `string` |  |

#### Example: Create

```ocaml
let move_tid = (Sdk_client.move_tid client Noval).e_create (jo [
    ("productorderuuid", (empty_list ()));  (* value list *)
]) Noval
```


### PaymentManual

Create an instance: `let payment_manual = Sdk_client.payment_manual client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `int` |  |
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

```ocaml
let payment_manual = (Sdk_client.payment_manual client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("card_number", (Str "example_card_number"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("exp_date", (Str "example_exp_date"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
```


### PaymentSred

Create an instance: `let payment_sred = Sdk_client.payment_sred client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `int` |  |
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
| `sred` | `value map` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```ocaml
let payment_sred = (Sdk_client.payment_sred client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("device_payload", (Str "example_device_payload"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
```


### PreAuthTransactionCompletion

Create an instance: `let pre_auth_transaction_completion = Sdk_client.pre_auth_transaction_completion client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `int` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `card_number_reference` | `string` |  |
| `client_id` | `int` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```ocaml
let pre_auth_transaction_completion = (Sdk_client.pre_auth_transaction_completion client Noval).e_create (jo [
    ("card_number_reference", (Str "example_card_number_reference"));  (* string *)
    ("client_id", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receipt_number", (Str "example_receipt_number"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```


### ReactivateTerminal

Create an instance: `let reactivate_terminal = Sdk_client.reactivate_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `reactivation_reason` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```ocaml
let reactivate_terminal = (Sdk_client.reactivate_terminal client Noval).e_create (jo [
    ("reactivation_reason", (Str "example_reactivation_reason"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```


### RefundTransaction

Create an instance: `let refund_transaction = Sdk_client.refund_transaction client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `int` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `int` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```ocaml
let refund_transaction = (Sdk_client.refund_transaction client Noval).e_create (jo [
    ("client_id", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receipt_number", (Str "example_receipt_number"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```


### RegisterTecsCompany

Create an instance: `let register_tecs_company = Sdk_client.register_tecs_company client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `partner_id` | `int` |  |
| `partner_name` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```ocaml
let register_tecs_company = (Sdk_client.register_tecs_company client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
    ("package_order_uuid", (Str "example_package_order_uuid"));  (* string *)
    ("product_order_uuid", (Str "example_product_order_uuid"));  (* string *)
    ("template_name", (Str "example_template_name"));  (* string *)
]) Noval
```


### RegisterTerminal

Create an instance: `let register_terminal = Sdk_client.register_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `value map` |  |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `tecs_web_secret_key` | `string` |  |
| `template_name` | `string` |  |
| `terminal_country_code` | `string` |  |
| `terminal_id` | `int` |  |
| `terminal_id_acq` | `string` |  |
| `terminal_language_code` | `string` |  |
| `terminal_location` | `string` |  |
| `terminal_serial_number` | `string` |  |
| `token_io_alia` | `string` |  |
| `token_io_iban` | `string` |  |
| `token_io_member_id` | `string` |  |
| `web_shop_url` | `string` |  |

#### Example: Create

```ocaml
let register_terminal = (Sdk_client.register_terminal client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
    ("package_order_uuid", (Str "example_package_order_uuid"));  (* string *)
    ("product_order_uuid", (Str "example_product_order_uuid"));  (* string *)
    ("template_name", (Str "example_template_name"));  (* string *)
    ("terminal_country_code", (Str "example_terminal_country_code"));  (* string *)
    ("terminal_language_code", (Str "example_terminal_language_code"));  (* string *)
    ("terminal_location", (Str "example_terminal_location"));  (* string *)
]) Noval
```


### ReportData

Create an instance: `let report_data = Sdk_client.report_data client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `value list` |  |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `corporate_id` | `string` |  |
| `currency` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sum_over_credit_tx` | `value map` |  |
| `sum_over_debit_tx` | `value map` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```ocaml
let report_data = (Sdk_client.report_data client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
    ("corporate_id", (Str "example_corporate_id"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
]) Noval
```


### StatusTransaction

Create an instance: `let status_transaction = Sdk_client.status_transaction client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `acquirer_terminal_id` | `string` |  |
| `amount` | `int` |  |
| `application_cryptogram` | `string` |  |
| `authorization_code` | `value` |  |
| `authorization_date` | `string` |  |
| `card_brand` | `string` |  |
| `card_entry` | `string` |  |
| `card_expiration` | `string` |  |
| `card_number` | `string` |  |
| `clearing_amount` | `int` |  |
| `clearing_batch_id` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_date` | `string` |  |
| `clearing_processed_date` | `string` |  |
| `clearing_status` | `string` |  |
| `client_id` | `int` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_application_id` | `string` |  |
| `emv_application_label` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `original_client_id` | `string` |  |
| `original_terminal_id` | `int` |  |
| `original_transaction_id` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_number` | `string` |  |
| `response_code` | `int` |  |
| `response_code_from_a` | `string` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `service_code` | `string` |  |
| `settlement_status` | `string` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code` | `int` |  |
| `tecsengine_response_text` | `string` |  |
| `terminal_end_of_day_date` | `string` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `string` |  |
| `tip_amount` | `int` |  |
| `trace_number` | `int` |  |
| `transaction_clearing_date` | `string` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_seq_number` | `int` |  |
| `transaction_server_date` | `string` |  |
| `transaction_source` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```ocaml
let status_transaction = (Sdk_client.status_transaction client Noval).e_create (jo [
]) Noval
```


### StoreTerminalParameter

Create an instance: `let store_terminal_parameter = Sdk_client.store_terminal_parameter client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `value map` |  |
| `config_version` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `tid_sent` | `string` |  |

#### Example: Create

```ocaml
let store_terminal_parameter = (Sdk_client.store_terminal_parameter client Noval).e_create (jo [
    ("serial_number", (Str "example_serial_number"));  (* string *)
]) Noval
```


### TerminalId

Create an instance: `let terminal_id = Sdk_client.terminal_id client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `value list` |  |
| `duplicate_terminal_id` | `value list` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal` | `value list` |  |

#### Example: Create

```ocaml
let terminal_id = (Sdk_client.terminal_id client Noval).e_create (jo [
    ("device_serial_number", (empty_list ()));  (* value list *)
]) Noval
```


### TransactionHistory

Create an instance: `let transaction_history = Sdk_client.transaction_history client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

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
| `pagination` | `value map` |  |
| `payment_token_public_id` | `string` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `int` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_history` | `value list` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```ocaml
let transaction_history = (Sdk_client.transaction_history client Noval).e_create (jo [
]) Noval
```


### TransactionsCount

Create an instance: `let transactions_count = Sdk_client.transactions_count client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `value list` |  |

#### Example: Create

```ocaml
let transactions_count = (Sdk_client.transactions_count client Noval).e_create (jo [
]) Noval
```


### TransactionsCountCardBrand

Create an instance: `let transactions_count_card_brand = Sdk_client.transactions_count_card_brand client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `value list` |  |

#### Example: Create

```ocaml
let transactions_count_card_brand = (Sdk_client.transactions_count_card_brand client Noval).e_create (jo [
]) Noval
```


### TransactionsTurnover

Create an instance: `let transactions_turnover = Sdk_client.transactions_turnover client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `turnover` | `value list` |  |

#### Example: Create

```ocaml
let transactions_turnover = (Sdk_client.transactions_turnover client Noval).e_create (jo [
]) Noval
```


### UpdateMerchant

Create an instance: `let update_merchant = Sdk_client.update_merchant client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporate_uuid` | `string` |  |
| `country` | `string` |  |
| `merchant_category_code` | `string` |  |
| `name` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vu_nummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```ocaml
let update_merchant = (Sdk_client.update_merchant client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
]) Noval
```


### UpdateTemplateXml

Create an instance: `let update_template_xml = Sdk_client.update_template_xml client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_xml` | `string` |  |

#### Example: Create

```ocaml
let update_template_xml = (Sdk_client.update_template_xml client Noval).e_create (jo [
    ("template_name", (Str "example_template_name"));  (* string *)
    ("template_xml", (Str "example_template_xml"));  (* string *)
]) Noval
```


### Version

Create an instance: `let version = Sdk_client.version client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```ocaml
let version = (Sdk_client.version client Noval).e_load (Noval) Noval
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

### Data as `value`

The OCaml SDK uses a single dynamic `value` type throughout rather than a
typed record per entity. `value` is the vendored voxgig struct port (a
JSON-shaped variant: `Str`, `Num`, `Bool`, `List`, `Map`, `Null`,
`Noval`). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `jo` / `ja` helpers and read fields back with
`getp`; use `to_map` to safely coerce a value to a map.

### Module structure

```
ocaml/
├── sdk_client.ml               -- Main SDK client (constructors + accessors)
├── sdk_config.ml               -- Embedded API config + feature factory
├── sdk_error.ml                -- Branded error re-exports
├── sdk_entity_*.ml             -- Per-entity implementations (one each)
├── sdk_types.ml                -- Core pipeline types
├── sdk_helpers.ml              -- jo / ja / getp and friends
├── sdk_runtime.ml              -- Operation pipeline runner
├── sdk_features.ml             -- Built-in features (base, test, log)
├── utility/                    -- Vendored voxgig struct port
└── test/                       -- Test suites
```

The public surface lives in `Sdk_client` (the constructors and per-entity
accessors); `Sdk_helpers` carries the `jo` / `ja` / `getp` value
helpers. Open the runtime modules directly only when needed.

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
