# BluefinTecsMerchantServices Clojure SDK



The Clojure SDK for the BluefinTecsMerchantServices API — an entity-oriented client
following idiomatic Clojure conventions (plain functions, immutable data, and
the vendored `voxgig.struct` value model).

The SDK exposes the API as capitalised, semantic **Entities** — for example `(api/cancel_transaction client nil)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Clojars. Depend on it directly from the
GitHub release tag (`clojure/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)),
using a `tools.deps` git dependency:

```clojure
;; deps.edn
{:deps {bluefintecsmerchantservices/sdk
        {:git/url "https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk"
         :git/tag "clojure/vX.Y.Z"
         :git/sha "..."
         :deps/root "clojure"}}}
```

Or from a local source checkout:

```clojure
;; deps.edn
{:deps {bluefintecsmerchantservices/sdk {:local/root "../clojure"}}}
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```clojure
(require '[sdk.api :as api]
         '[sdk.entity.cancel_transaction :as e-cancel_transaction]
         '[voxgig.struct :as vs])

(def client (api/make-sdk (vs/jm "apikey" (System/getenv "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"))))
```

### 4. Create, update, and remove

```clojure
;; Create — returns the bare created record (a map)
(def created (e-cancel_transaction/create (api/cancel_transaction client nil) (vs/jm "client_id" 1 "currency" "example_currency" "receipt_number" "example_receipt_number" "terminal_id" 1) nil))

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

```clojure
(def result
  (api/direct client
    (vs/jm "path" "/api/resource/{id}"
           "method" "GET"
           "params" (vs/jm "id" "example"))))

(if (vs/getprop result "ok")
  (do
    (println (vs/getprop result "status"))  ;; 200
    (println (vs/getprop result "data")))   ;; response body
  ;; A non-2xx response carries status + data (the error body); a
  ;; transport-level failure carries err instead. Only one is present.
  (println (vs/getprop result "status") (vs/getprop result "err")))
```

### Prepare a request without sending it

```clojure
;; prepare returns the fetch definition and raises on error.
(def fetchdef
  (api/prepare client
    (vs/jm "path" "/api/resource/{id}"
           "method" "DELETE"
           "params" (vs/jm "id" "example"))))

(println (vs/getprop fetchdef "url"))
(println (vs/getprop fetchdef "method"))
(println (vs/getprop fetchdef "headers"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```clojure
(require '[sdk.api :as api]
         '[sdk.entity.digital_services_api :as e-digital_services_api]
         '[voxgig.struct :as vs])

(def client (api/test-sdk nil nil))

;; Entity ops return the bare record and raise on error.
(def digital_services_api (e-digital_services_api/load (api/digital_services_api client nil) nil nil))
;; digital_services_api contains the mock response record
(println digital_services_api)
```

### Use a custom fetch function

Replace the HTTP transport with your own function. A fetch fn takes the
URL and fetch definition and returns a `[response err]` pair; `response`
is a struct map carrying `status`, `headers`, and a `json` thunk:

```clojure
(defn mock-fetch [url fetchdef]
  [(vs/jm "status" 200
          "statusText" "OK"
          "headers" (vs/jm)
          "json" (fn [] (vs/jm "id" "mock01")))
   nil])

(def client
  (api/make-sdk
    (vs/jm "base" "http://localhost:8080"
           "system" (vs/jm "fetch" mock-fetch))))
```

### Run the test suite

The generated suite (pipeline, features, netsim, primary utility and the
vendored struct corpus) runs offline through a single `tools.deps` entry
point:

```bash
cd clojure && make test
```

To exercise the SDK against the live API, construct a client with real
credentials and call its operations directly.


## Reference

### make-sdk

```clojure
(require '[sdk.api :as api]
         '[voxgig.struct :as vs])

(def client (api/make-sdk options))
```

Creates a new SDK client. `options` is a `voxgig.struct` map (or `nil`).

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `extend` | `vector` | Additional feature atoms to load. |
| `system` | `map` | System overrides (e.g. custom `fetch` fn). |

### test-sdk

```clojure
(def client (api/test-sdk testopts sdkopts))
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### Client functions

| Function | Signature | Description |
| --- | --- | --- |
| `options-map` | `(client) -> map` | Deep copy of current SDK options. |
| `get-utility` | `(client) -> utility` | Copy of the SDK utility object. |
| `prepare` | `(client fetchargs) -> map` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(client fetchargs) -> map` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `cancel_transaction` | `(client data) -> CancelTransaction entity` | Create a CancelTransaction entity instance. |
| `check_card_black_listed` | `(client data) -> CheckCardBlackListed entity` | Create a CheckCardBlackListed entity instance. |
| `create_product` | `(client data) -> CreateProduct entity` | Create a CreateProduct entity instance. |
| `deactivate_terminal` | `(client data) -> DeactivateTerminal entity` | Create a DeactivateTerminal entity instance. |
| `digital_services_api` | `(client data) -> DigitalServicesApi entity` | Create a DigitalServicesApi entity instance. |
| `ec_data_ecom` | `(client data) -> EcDataEcom entity` | Create an EcDataEcom entity instance. |
| `ecom_parameter` | `(client data) -> EcomParameter entity` | Create an EcomParameter entity instance. |
| `ecr_data` | `(client data) -> EcrData entity` | Create an EcrData entity instance. |
| `emv_data` | `(client data) -> EmvData entity` | Create an EmvData entity instance. |
| `enable_acquiring` | `(client data) -> EnableAcquiring entity` | Create an EnableAcquiring entity instance. |
| `get_merchant_contract_number` | `(client data) -> GetMerchantContractNumber entity` | Create a GetMerchantContractNumber entity instance. |
| `get_template_xml` | `(client data) -> GetTemplateXml entity` | Create a GetTemplateXml entity instance. |
| `introduce_mandator` | `(client data) -> IntroduceMandator entity` | Create an IntroduceMandator entity instance. |
| `introduce_package` | `(client data) -> IntroducePackage entity` | Create an IntroducePackage entity instance. |
| `keep_alive` | `(client data) -> KeepAlive entity` | Create a KeepAlive entity instance. |
| `list_terminal` | `(client data) -> ListTerminal entity` | Create a ListTerminal entity instance. |
| `mandator_clearing_export` | `(client data) -> MandatorClearingExport entity` | Create a MandatorClearingExport entity instance. |
| `mandator_clearing_export_download` | `(client data) -> MandatorClearingExportDownload entity` | Create a MandatorClearingExportDownload entity instance. |
| `mandator_clearing_export_summary` | `(client data) -> MandatorClearingExportSummary entity` | Create a MandatorClearingExportSummary entity instance. |
| `merchant_portal_services_api` | `(client data) -> MerchantPortalServicesApi entity` | Create a MerchantPortalServicesApi entity instance. |
| `move_tid` | `(client data) -> MoveTid entity` | Create a MoveTid entity instance. |
| `payment_manual` | `(client data) -> PaymentManual entity` | Create a PaymentManual entity instance. |
| `payment_sred` | `(client data) -> PaymentSred entity` | Create a PaymentSred entity instance. |
| `pre_auth_transaction_completion` | `(client data) -> PreAuthTransactionCompletion entity` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivate_terminal` | `(client data) -> ReactivateTerminal entity` | Create a ReactivateTerminal entity instance. |
| `refund_transaction` | `(client data) -> RefundTransaction entity` | Create a RefundTransaction entity instance. |
| `register_tecs_company` | `(client data) -> RegisterTecsCompany entity` | Create a RegisterTecsCompany entity instance. |
| `register_terminal` | `(client data) -> RegisterTerminal entity` | Create a RegisterTerminal entity instance. |
| `report_data` | `(client data) -> ReportData entity` | Create a ReportData entity instance. |
| `status_transaction` | `(client data) -> StatusTransaction entity` | Create a StatusTransaction entity instance. |
| `store_terminal_parameter` | `(client data) -> StoreTerminalParameter entity` | Create a StoreTerminalParameter entity instance. |
| `terminal_id` | `(client data) -> TerminalId entity` | Create a TerminalId entity instance. |
| `transaction_history` | `(client data) -> TransactionHistory entity` | Create a TransactionHistory entity instance. |
| `transactions_count` | `(client data) -> TransactionsCount entity` | Create a TransactionsCount entity instance. |
| `transactions_count_card_brand` | `(client data) -> TransactionsCountCardBrand entity` | Create a TransactionsCountCardBrand entity instance. |
| `transactions_turnover` | `(client data) -> TransactionsTurnover entity` | Create a TransactionsTurnover entity instance. |
| `update_merchant` | `(client data) -> UpdateMerchant entity` | Create an UpdateMerchant entity instance. |
| `update_template_xml` | `(client data) -> UpdateTemplateXml entity` | Create an UpdateTemplateXml entity instance. |
| `version` | `(client data) -> Version entity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface. Operations are functions in the
entity namespace (`sdk.entity.<name>`); state accessors are stored on the
entity map and are called via keyword lookup.

| Member | Signature | Description |
| --- | --- | --- |
| `load` | `(ent reqmatch ctrl) -> map` | Load a single entity by match criteria. Raises on error. |
| `create` | `(ent reqdata ctrl) -> map` | Create a new entity. Raises on error. |
| `:data-get` | `() -> map` | Get entity data. |
| `:data-set` | `(data)` | Set entity data. |
| `:match-get` | `() -> map` | Get entity match criteria. |
| `:match-set` | `(match)` | Set entity match criteria. |
| `:make` | `() -> entity` | Create a new instance with the same options. |
| `:get-name` | `() -> string` | Return the entity name. |

State accessors are called by looking up the fn and applying it, e.g.
`((:data-get ent))` or `((:data-set ent) (vs/jm "k" "v"))`.

### Result shape

Entity operations return the bare result data (a `map` for single-entity
ops, a `vector` for `list`) and raise (via `ex-info`) on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct` escape hatch never raises — it returns a result `map` you
branch on via `(vs/getprop result "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean` | `true` if the HTTP status is 2xx. |
| `status` | `long` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

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

Create an instance: `(def cancel_transaction (api/cancel_transaction client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def cancel_transaction
  (e-cancel_transaction/create (api/cancel_transaction client nil)
    (vs/jm
      "client_id" 1  ;; long
      "currency" "example_currency"  ;; string
      "receipt_number" "example_receipt_number"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```


### CheckCardBlackListed

Create an instance: `(def check_card_black_listed (api/check_card_black_listed client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def check_card_black_listed
  (e-check_card_black_listed/create (api/check_card_black_listed client nil)
    (vs/jm
      )
    nil))
```


### CreateProduct

Create an instance: `(def create_product (api/create_product client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def create_product
  (e-create_product/create (api/create_product client nil)
    (vs/jm
      "template_name" "example_template_name"  ;; string
      "template_type" "example_template_type"  ;; string
      "template_xml" "example_template_xml"  ;; string
      "terminal_type" "example_terminal_type"  ;; string
      )
    nil))
```


### DeactivateTerminal

Create an instance: `(def deactivate_terminal (api/deactivate_terminal client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def deactivate_terminal
  (e-deactivate_terminal/create (api/deactivate_terminal client nil)
    (vs/jm
      "deactivation_reason" "example_deactivation_reason"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```


### DigitalServicesApi

Create an instance: `(def digital_services_api (api/digital_services_api client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |
| `(load ent match ctrl)` | Load a single entity by match criteria. |

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

```clojure
(def digital_services_api (e-digital_services_api/load (api/digital_services_api client nil) nil nil))
```

#### Example: Create

```clojure
(def digital_services_api
  (e-digital_services_api/create (api/digital_services_api client nil)
    (vs/jm
      )
    nil))
```


### EcDataEcom

Create an instance: `(def ec_data_ecom (api/ec_data_ecom client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def ec_data_ecom
  (e-ec_data_ecom/create (api/ec_data_ecom client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      "transaction_id" "example_transaction_id"  ;; string
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```


### EcomParameter

Create an instance: `(def ecom_parameter (api/ecom_parameter client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `string` |  |
| `ecom_skey` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```clojure
(def ecom_parameter
  (e-ecom_parameter/create (api/ecom_parameter client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      )
    nil))
```


### EcrData

Create an instance: `(def ecr_data (api/ecr_data client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def ecr_data
  (e-ecr_data/create (api/ecr_data client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      "transaction_id" "example_transaction_id"  ;; string
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```


### EmvData

Create an instance: `(def emv_data (api/emv_data client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def emv_data
  (e-emv_data/create (api/emv_data client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      "transaction_id" "example_transaction_id"  ;; string
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```


### EnableAcquiring

Create an instance: `(def enable_acquiring (api/enable_acquiring client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `long` |  |
| `additional_data` | `map` |  |
| `corporate_uuid` | `string` |  |
| `currency` | `string` |  |
| `merchant_category_code` | `long` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting_code` | `long` |  |
| `template_name` | `string` |  |
| `terminal_id` | `vector` |  |
| `terminal_id_acq` | `string` |  |
| `vu_nummer` | `string` |  |

#### Example: Create

```clojure
(def enable_acquiring
  (e-enable_acquiring/create (api/enable_acquiring client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      "currency" "example_currency"  ;; string
      "merchant_category_code" 1  ;; long
      "package_order_uuid" "example_package_order_uuid"  ;; string
      "product_order_uuid" "example_product_order_uuid"  ;; string
      "template_name" "example_template_name"  ;; string
      )
    nil))
```


### GetMerchantContractNumber

Create an instance: `(def get_merchant_contract_number (api/get_merchant_contract_number client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def get_merchant_contract_number
  (e-get_merchant_contract_number/create (api/get_merchant_contract_number client nil)
    (vs/jm
      "merchant_contract_number" "example_merchant_contract_number"  ;; string
      )
    nil))
```


### GetTemplateXml

Create an instance: `(def get_template_xml (api/get_template_xml client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```clojure
(def get_template_xml
  (e-get_template_xml/create (api/get_template_xml client nil)
    (vs/jm
      "template_name" "example_template_name"  ;; string
      )
    nil))
```


### IntroduceMandator

Create an instance: `(def introduce_mandator (api/introduce_mandator client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def introduce_mandator
  (e-introduce_mandator/create (api/introduce_mandator client nil)
    (vs/jm
      "mandator_name" "example_mandator_name"  ;; string
      )
    nil))
```


### IntroducePackage

Create an instance: `(def introduce_package (api/introduce_package client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_template_description` | `string` |  |

#### Example: Create

```clojure
(def introduce_package
  (e-introduce_package/create (api/introduce_package client nil)
    (vs/jm
      "terminal_template_description" "example_terminal_template_description"  ;; string
      )
    nil))
```


### KeepAlive

Create an instance: `(def keep_alive (api/keep_alive client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `ka_date_time_from` | `string` |  |
| `ka_date_time_to` | `string` |  |
| `keep_alive_data` | `vector` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal_date_time_from` | `string` |  |
| `terminal_date_time_to` | `string` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```clojure
(def keep_alive
  (e-keep_alive/create (api/keep_alive client nil)
    (vs/jm
      )
    nil))
```


### ListTerminal

Create an instance: `(def list_terminal (api/list_terminal client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `vector` |  |
| `filter` | `map` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal` | `vector` |  |

#### Example: Create

```clojure
(def list_terminal
  (e-list_terminal/create (api/list_terminal client nil)
    (vs/jm
      )
    nil))
```


### MandatorClearingExport

Create an instance: `(def mandator_clearing_export (api/mandator_clearing_export client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `pagination` | `map` |  |
| `record` | `vector` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def mandator_clearing_export
  (e-mandator_clearing_export/create (api/mandator_clearing_export client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      )
    nil))
```


### MandatorClearingExportDownload

Create an instance: `(def mandator_clearing_export_download (api/mandator_clearing_export_download client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |
| `(load ent match ctrl)` | Load a single entity by match criteria. |

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

```clojure
(def mandator_clearing_export_download (e-mandator_clearing_export_download/load (api/mandator_clearing_export_download client nil) (vs/jm "id" "mandator_clearing_export_download_id") nil))
```

#### Example: Create

```clojure
(def mandator_clearing_export_download
  (e-mandator_clearing_export_download/create (api/mandator_clearing_export_download client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      )
    nil))
```


### MandatorClearingExportSummary

Create an instance: `(def mandator_clearing_export_summary (api/mandator_clearing_export_summary client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `record` | `vector` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def mandator_clearing_export_summary
  (e-mandator_clearing_export_summary/create (api/mandator_clearing_export_summary client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      )
    nil))
```


### MerchantPortalServicesApi

Create an instance: `(def merchant_portal_services_api (api/merchant_portal_services_api client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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
| `pagination` | `map` |  |
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

```clojure
(def merchant_portal_services_api
  (e-merchant_portal_services_api/create (api/merchant_portal_services_api client nil)
    (vs/jm
      )
    nil))
```


### MoveTid

Create an instance: `(def move_tid (api/move_tid client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `vector` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `target_packageorderuuid` | `string` |  |
| `target_productorderuuid` | `string` |  |

#### Example: Create

```clojure
(def move_tid
  (e-move_tid/create (api/move_tid client nil)
    (vs/jm
      "productorderuuid" (vs/jt)  ;; vector
      )
    nil))
```


### PaymentManual

Create an instance: `(def payment_manual (api/payment_manual client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def payment_manual
  (e-payment_manual/create (api/payment_manual client nil)
    (vs/jm
      "amount" 1  ;; long
      "card_number" "example_card_number"  ;; string
      "currency" "example_currency"  ;; string
      "exp_date" "example_exp_date"  ;; string
      "txtype" "example_txtype"  ;; string
      )
    nil))
```


### PaymentSred

Create an instance: `(def payment_sred (api/payment_sred client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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
| `sred` | `map` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```clojure
(def payment_sred
  (e-payment_sred/create (api/payment_sred client nil)
    (vs/jm
      "amount" 1  ;; long
      "currency" "example_currency"  ;; string
      "device_payload" "example_device_payload"  ;; string
      "txtype" "example_txtype"  ;; string
      )
    nil))
```


### PreAuthTransactionCompletion

Create an instance: `(def pre_auth_transaction_completion (api/pre_auth_transaction_completion client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def pre_auth_transaction_completion
  (e-pre_auth_transaction_completion/create (api/pre_auth_transaction_completion client nil)
    (vs/jm
      "card_number_reference" "example_card_number_reference"  ;; string
      "client_id" 1  ;; long
      "currency" "example_currency"  ;; string
      "receipt_number" "example_receipt_number"  ;; string
      "terminal_id" 1  ;; long
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```


### ReactivateTerminal

Create an instance: `(def reactivate_terminal (api/reactivate_terminal client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def reactivate_terminal
  (e-reactivate_terminal/create (api/reactivate_terminal client nil)
    (vs/jm
      "reactivation_reason" "example_reactivation_reason"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```


### RefundTransaction

Create an instance: `(def refund_transaction (api/refund_transaction client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def refund_transaction
  (e-refund_transaction/create (api/refund_transaction client nil)
    (vs/jm
      "client_id" 1  ;; long
      "currency" "example_currency"  ;; string
      "receipt_number" "example_receipt_number"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```


### RegisterTecsCompany

Create an instance: `(def register_tecs_company (api/register_tecs_company client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def register_tecs_company
  (e-register_tecs_company/create (api/register_tecs_company client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      "package_order_uuid" "example_package_order_uuid"  ;; string
      "product_order_uuid" "example_product_order_uuid"  ;; string
      "template_name" "example_template_name"  ;; string
      )
    nil))
```


### RegisterTerminal

Create an instance: `(def register_terminal (api/register_terminal client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `map` |  |
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

```clojure
(def register_terminal
  (e-register_terminal/create (api/register_terminal client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      "package_order_uuid" "example_package_order_uuid"  ;; string
      "product_order_uuid" "example_product_order_uuid"  ;; string
      "template_name" "example_template_name"  ;; string
      "terminal_country_code" "example_terminal_country_code"  ;; string
      "terminal_language_code" "example_terminal_language_code"  ;; string
      "terminal_location" "example_terminal_location"  ;; string
      )
    nil))
```


### ReportData

Create an instance: `(def report_data (api/report_data client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `vector` |  |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `corporate_id` | `string` |  |
| `currency` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sum_over_credit_tx` | `map` |  |
| `sum_over_debit_tx` | `map` |  |
| `terminal_id` | `long` |  |

#### Example: Create

```clojure
(def report_data
  (e-report_data/create (api/report_data client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      "corporate_id" "example_corporate_id"  ;; string
      "currency" "example_currency"  ;; string
      )
    nil))
```


### StatusTransaction

Create an instance: `(def status_transaction (api/status_transaction client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `acquirer_terminal_id` | `string` |  |
| `amount` | `long` |  |
| `application_cryptogram` | `string` |  |
| `authorization_code` | `any` |  |
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

```clojure
(def status_transaction
  (e-status_transaction/create (api/status_transaction client nil)
    (vs/jm
      )
    nil))
```


### StoreTerminalParameter

Create an instance: `(def store_terminal_parameter (api/store_terminal_parameter client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `map` |  |
| `config_version` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `tid_sent` | `string` |  |

#### Example: Create

```clojure
(def store_terminal_parameter
  (e-store_terminal_parameter/create (api/store_terminal_parameter client nil)
    (vs/jm
      "serial_number" "example_serial_number"  ;; string
      )
    nil))
```


### TerminalId

Create an instance: `(def terminal_id (api/terminal_id client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `vector` |  |
| `duplicate_terminal_id` | `vector` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `terminal` | `vector` |  |

#### Example: Create

```clojure
(def terminal_id
  (e-terminal_id/create (api/terminal_id client nil)
    (vs/jm
      "device_serial_number" (vs/jt)  ;; vector
      )
    nil))
```


### TransactionHistory

Create an instance: `(def transaction_history (api/transaction_history client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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
| `pagination` | `map` |  |
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
| `transaction_history` | `vector` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```clojure
(def transaction_history
  (e-transaction_history/create (api/transaction_history client nil)
    (vs/jm
      )
    nil))
```


### TransactionsCount

Create an instance: `(def transactions_count (api/transactions_count client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `vector` |  |

#### Example: Create

```clojure
(def transactions_count
  (e-transactions_count/create (api/transactions_count client nil)
    (vs/jm
      )
    nil))
```


### TransactionsCountCardBrand

Create an instance: `(def transactions_count_card_brand (api/transactions_count_card_brand client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `vector` |  |

#### Example: Create

```clojure
(def transactions_count_card_brand
  (e-transactions_count_card_brand/create (api/transactions_count_card_brand client nil)
    (vs/jm
      )
    nil))
```


### TransactionsTurnover

Create an instance: `(def transactions_turnover (api/transactions_turnover client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `turnover` | `vector` |  |

#### Example: Create

```clojure
(def transactions_turnover
  (e-transactions_turnover/create (api/transactions_turnover client nil)
    (vs/jm
      )
    nil))
```


### UpdateMerchant

Create an instance: `(def update_merchant (api/update_merchant client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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

```clojure
(def update_merchant
  (e-update_merchant/create (api/update_merchant client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      )
    nil))
```


### UpdateTemplateXml

Create an instance: `(def update_template_xml (api/update_template_xml client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_xml` | `string` |  |

#### Example: Create

```clojure
(def update_template_xml
  (e-update_template_xml/create (api/update_template_xml client nil)
    (vs/jm
      "template_name" "example_template_name"  ;; string
      "template_xml" "example_template_xml"  ;; string
      )
    nil))
```


### Version

Create an instance: `(def version (api/version client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(load ent match ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```clojure
(def version (e-version/load (api/version client nil) nil nil))
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

### Data as struct value maps

The Clojure SDK represents API data with the vendored `voxgig.struct`
value model (ordered, Java-backed maps and lists) rather than typed
records. This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with `(vs/jm "k" v ...)` and lists with
`(vs/jt v ...)`; read values with `(vs/getprop m "k")`. Use
`(vs/ismap x)` to safely check that a value is a map.

### Namespace structure

```
clojure/
├── src/sdk/api.clj        -- public API namespace (entity accessors)
├── src/sdk/client.clj     -- client constructors (make-sdk, test-sdk)
├── src/sdk/config.clj     -- generated configuration
├── src/sdk/core.clj       -- core types, context and pipeline
├── src/sdk/features.clj   -- feature factory
├── src/sdk/entity/        -- entity namespaces (one per entity)
├── src/voxgig/struct.clj  -- vendored struct value library
└── test/                  -- test suites
```

Require `[sdk.api :as api]` for the public surface, and an entity
namespace (e.g. `[sdk.entity.bluefintecsmerchantservices :as e-bluefintecsmerchantservices]`)
only when you call its operations directly.

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
