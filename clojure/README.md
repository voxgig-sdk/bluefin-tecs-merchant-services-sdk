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
(def created (e-cancel_transaction/create (api/cancel_transaction client nil) (vs/jm "clientId" 1 "currency" "example_currency" "receiptNumber" "example_receiptNumber" "terminalId" 1) nil))

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
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
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
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `pagination` |  |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `fileId` |  |
| `filenameTemplate` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `status` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
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
| `wallet` |  |

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
| `acquirerName` |  |
| `amount` |  |
| `authorizationNumber` |  |
| `cardNumber` |  |
| `cardType` |  |
| `currency` |  |
| `cvc` |  |
| `dateTimeTx` |  |
| `expDate` |  |
| `merchantId` |  |
| `originalTransactionId` |  |
| `password` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `amount` |  |
| `currency` |  |
| `device` |  |
| `devicePayload` |  |
| `expDate` |  |
| `mode` |  |
| `panMasked` |  |
| `password` |  |
| `serial` |  |
| `serviceCode` |  |
| `terminalId` |  |
| `txtype` |  |

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
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
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
| `authorizationCode` |  |
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
| `wallet` |  |

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

Create an instance: `(def cancel_transaction (api/cancel_transaction client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `long` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `long` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `long` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `long` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `long` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```clojure
(def cancel_transaction
  (e-cancel_transaction/create (api/cancel_transaction client nil)
    (vs/jm
      "clientId" 1  ;; long
      "currency" "example_currency"  ;; string
      "receiptNumber" "example_receiptNumber"  ;; string
      "terminalId" 1  ;; long
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
| `cardNo` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `acquirerId` | `long` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateType` | `string` |  |
| `templateXml` | `string` |  |
| `terminalType` | `string` |  |

#### Example: Create

```clojure
(def create_product
  (e-create_product/create (api/create_product client nil)
    (vs/jm
      "templateName" "example_templateName"  ;; string
      "templateType" "example_templateType"  ;; string
      "templateXml" "example_templateXml"  ;; string
      "terminalType" "example_terminalType"  ;; string
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
| `corporateUuid` | `string` |  |
| `deactivationReason` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```clojure
(def deactivate_terminal
  (e-deactivate_terminal/create (api/deactivate_terminal client nil)
    (vs/jm
      "deactivationReason" "example_deactivationReason"  ;; string
      "terminalId" 1  ;; long
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
| `clearingDateFrom` | `string` |  |
| `clearingDateTo` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `txCount` | `long` |  |
| `txIdEnd` | `string` |  |
| `txIdStart` | `string` |  |
| `txSeqNoEnd` | `long` |  |
| `txSeqNoStart` | `long` |  |
| `txTotal` | `long` |  |

#### Example: Load

```clojure
(def digital_services_api (e-digital_services_api/load (api/digital_services_api client nil) nil nil))
```

#### Example: Create

```clojure
(def digital_services_api
  (e-digital_services_api/create (api/digital_services_api client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `ecomData` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```clojure
(def ec_data_ecom
  (e-ec_data_ecom/create (api/ec_data_ecom client nil)
    (vs/jm
      "terminalId" 1  ;; long
      "transactionId" "example_transactionId"  ;; string
      "transactionType" "example_transactionType"  ;; string
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
| `ecomPass` | `string` |  |
| `ecomSkey` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```clojure
(def ecom_parameter
  (e-ecom_parameter/create (api/ecom_parameter client nil)
    (vs/jm
      "terminalId" 1  ;; long
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
| `ecrData` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```clojure
(def ecr_data
  (e-ecr_data/create (api/ecr_data client nil)
    (vs/jm
      "terminalId" 1  ;; long
      "transactionId" "example_transactionId"  ;; string
      "transactionType" "example_transactionType"  ;; string
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
| `emvData` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```clojure
(def emv_data
  (e-emv_data/create (api/emv_data client nil)
    (vs/jm
      "terminalId" 1  ;; long
      "transactionId" "example_transactionId"  ;; string
      "transactionType" "example_transactionType"  ;; string
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
| `accountNo` | `long` |  |
| `additionalData` | `map` |  |
| `corporateUuid` | `string` |  |
| `currency` | `string` |  |
| `merchantCategoryCode` | `long` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `sortingCode` | `long` |  |
| `templateName` | `string` |  |
| `terminalIdAcq` | `string` |  |
| `terminalIds` | `vector` |  |
| `vuNummer` | `string` |  |

#### Example: Create

```clojure
(def enable_acquiring
  (e-enable_acquiring/create (api/enable_acquiring client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
      "currency" "example_currency"  ;; string
      "merchantCategoryCode" 1  ;; long
      "packageOrderUuid" "example_packageOrderUuid"  ;; string
      "productOrderUuid" "example_productOrderUuid"  ;; string
      "templateName" "example_templateName"  ;; string
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
| `merchantContractNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```clojure
(def get_merchant_contract_number
  (e-get_merchant_contract_number/create (api/get_merchant_contract_number client nil)
    (vs/jm
      "merchantContractNumber" "example_merchantContractNumber"  ;; string
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```clojure
(def get_template_xml
  (e-get_template_xml/create (api/get_template_xml client nil)
    (vs/jm
      "templateName" "example_templateName"  ;; string
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
| `mandatorName` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```clojure
(def introduce_mandator
  (e-introduce_mandator/create (api/introduce_mandator client nil)
    (vs/jm
      "mandatorName" "example_mandatorName"  ;; string
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalTemplateDescription` | `string` |  |

#### Example: Create

```clojure
(def introduce_package
  (e-introduce_package/create (api/introduce_package client nil)
    (vs/jm
      "terminalTemplateDescription" "example_terminalTemplateDescription"  ;; string
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
| `kaDateTimeFrom` | `string` |  |
| `kaDateTimeTo` | `string` |  |
| `keepAliveData` | `vector` |  |
| `pagination` | `map` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalDateTimeFrom` | `string` |  |
| `terminalDateTimeTo` | `string` |  |
| `terminalId` | `long` |  |

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
| `corporateUuid` | `vector` |  |
| `filter` | `map` |  |
| `pagination` | `map` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminals` | `vector` |  |

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
| `clearingDateFrom` | `string` |  |
| `clearingDateTo` | `string` |  |
| `pagination` | `map` |  |
| `records` | `vector` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```clojure
(def mandator_clearing_export
  (e-mandator_clearing_export/create (api/mandator_clearing_export client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `clearingDateFrom` | `string` |  |
| `clearingDateTo` | `string` |  |
| `fileId` | `string` |  |
| `filenameTemplate` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
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
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `clearingDateFrom` | `string` |  |
| `clearingDateTo` | `string` |  |
| `records` | `vector` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```clojure
(def mandator_clearing_export_summary
  (e-mandator_clearing_export_summary/create (api/mandator_clearing_export_summary client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `map` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `long` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `long` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
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
| `productorderuuids` | `vector` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `targetPackageorderuuid` | `string` |  |
| `targetProductorderuuid` | `string` |  |

#### Example: Create

```clojure
(def move_tid
  (e-move_tid/create (api/move_tid client nil)
    (vs/jm
      "productorderuuids" (vs/jt)  ;; vector
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
| `acquirerName` | `string` |  |
| `amount` | `long` |  |
| `authorizationNumber` | `string` |  |
| `cardNumber` | `string` |  |
| `cardType` | `string` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `dateTimeTx` | `string` |  |
| `expDate` | `string` |  |
| `merchantId` | `string` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `string` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `string` |  |
| `transactionId` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```clojure
(def payment_manual
  (e-payment_manual/create (api/payment_manual client nil)
    (vs/jm
      "amount" 1  ;; long
      "cardNumber" "example_cardNumber"  ;; string
      "currency" "example_currency"  ;; string
      "expDate" "example_expDate"  ;; string
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
| `amount` | `long` |  |
| `currency` | `string` |  |
| `device` | `string` |  |
| `devicePayload` | `string` |  |
| `expDate` | `string` |  |
| `mode` | `string` |  |
| `panMasked` | `string` |  |
| `password` | `string` |  |
| `serial` | `string` |  |
| `serviceCode` | `string` |  |
| `terminalId` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```clojure
(def payment_sred
  (e-payment_sred/create (api/payment_sred client nil)
    (vs/jm
      "amount" 1  ;; long
      "currency" "example_currency"  ;; string
      "devicePayload" "example_devicePayload"  ;; string
      "terminalId" "example_terminalId"  ;; string
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
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `long` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `cardNumberReference` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `long` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `long` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `long` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `long` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```clojure
(def pre_auth_transaction_completion
  (e-pre_auth_transaction_completion/create (api/pre_auth_transaction_completion client nil)
    (vs/jm
      "cardNumberReference" "example_cardNumberReference"  ;; string
      "clientId" 1  ;; long
      "currency" "example_currency"  ;; string
      "receiptNumber" "example_receiptNumber"  ;; string
      "terminalId" 1  ;; long
      "transactionType" "example_transactionType"  ;; string
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
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `reactivationReason` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `long` |  |

#### Example: Create

```clojure
(def reactivate_terminal
  (e-reactivate_terminal/create (api/reactivate_terminal client nil)
    (vs/jm
      "reactivationReason" "example_reactivationReason"  ;; string
      "terminalId" 1  ;; long
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
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `long` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `long` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `long` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `long` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `long` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```clojure
(def refund_transaction
  (e-refund_transaction/create (api/refund_transaction client nil)
    (vs/jm
      "clientId" 1  ;; long
      "currency" "example_currency"  ;; string
      "receiptNumber" "example_receiptNumber"  ;; string
      "terminalId" 1  ;; long
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
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `partnerId` | `long` |  |
| `partnerName` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```clojure
(def register_tecs_company
  (e-register_tecs_company/create (api/register_tecs_company client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
      "packageOrderUuid" "example_packageOrderUuid"  ;; string
      "productOrderUuid" "example_productOrderUuid"  ;; string
      "templateName" "example_templateName"  ;; string
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
| `additionalData` | `map` |  |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `tecsWebSecretKey` | `string` |  |
| `templateName` | `string` |  |
| `terminalCountryCode` | `string` |  |
| `terminalId` | `long` |  |
| `terminalIdAcq` | `string` |  |
| `terminalLanguageCode` | `string` |  |
| `terminalLocation` | `string` |  |
| `terminalSerialNumber` | `string` |  |
| `tokenIOAlias` | `string` |  |
| `tokenIOIban` | `string` |  |
| `tokenIOMemberId` | `string` |  |
| `webShopUrl` | `string` |  |

#### Example: Create

```clojure
(def register_terminal
  (e-register_terminal/create (api/register_terminal client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
      "packageOrderUuid" "example_packageOrderUuid"  ;; string
      "productOrderUuid" "example_productOrderUuid"  ;; string
      "templateName" "example_templateName"  ;; string
      "terminalCountryCode" "example_terminalCountryCode"  ;; string
      "terminalLanguageCode" "example_terminalLanguageCode"  ;; string
      "terminalLocation" "example_terminalLocation"  ;; string
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
| `cardBrandReportData` | `vector` |  |
| `clearingDateFrom` | `string` |  |
| `clearingDateTo` | `string` |  |
| `corporateId` | `string` |  |
| `currency` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `sumOverCreditTx` | `map` |  |
| `sumOverDebitTx` | `map` |  |
| `terminalId` | `long` |  |

#### Example: Create

```clojure
(def report_data
  (e-report_data/create (api/report_data client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
      "corporateId" "example_corporateId"  ;; string
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
| `acquirerName` | `string` |  |
| `acquirerTerminalId` | `string` |  |
| `amount` | `long` |  |
| `applicationCryptogram` | `string` |  |
| `authorizationCode` | `any` |  |
| `authorizationDate` | `string` |  |
| `cardBrand` | `string` |  |
| `cardEntry` | `string` |  |
| `cardExpiration` | `string` |  |
| `cardNumber` | `string` |  |
| `clearingAmount` | `long` |  |
| `clearingBatchId` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingDate` | `string` |  |
| `clearingProcessedDate` | `string` |  |
| `clearingStatus` | `string` |  |
| `clientId` | `long` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecrData` | `string` |  |
| `emvApplicationId` | `string` |  |
| `emvApplicationLabel` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `originalClientId` | `string` |  |
| `originalTerminalId` | `long` |  |
| `originalTransactionId` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseCodeFromAS` | `string` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `serviceCode` | `string` |  |
| `settlementStatus` | `string` |  |
| `sourceId` | `long` |  |
| `tecsengineResponseCode` | `long` |  |
| `tecsengineResponseText` | `string` |  |
| `terminalEndOfDayDate` | `string` |  |
| `terminalId` | `long` |  |
| `terminalLocation` | `string` |  |
| `tipAmount` | `long` |  |
| `traceNumber` | `long` |  |
| `transactionClearingDate` | `string` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionSeqNumber` | `long` |  |
| `transactionServerDate` | `string` |  |
| `transactionSource` | `string` |  |
| `transactionType` | `string` |  |

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
| `acqTabNexo` | `map` |  |
| `configVersion` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `tidSent` | `string` |  |

#### Example: Create

```clojure
(def store_terminal_parameter
  (e-store_terminal_parameter/create (api/store_terminal_parameter client nil)
    (vs/jm
      "serialNumber" "example_serialNumber"  ;; string
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
| `deviceSerialNumber` | `vector` |  |
| `duplicateTerminalIds` | `vector` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `terminals` | `vector` |  |

#### Example: Create

```clojure
(def terminal_id
  (e-terminal_id/create (api/terminal_id client nil)
    (vs/jm
      "deviceSerialNumber" (vs/jt)  ;; vector
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
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `map` |  |
| `paymentTokenPublicId` | `string` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `long` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `long` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionHistories` | `vector` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `vector` |  |

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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `vector` |  |

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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `turnovers` | `vector` |  |

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
| `corporateUuid` | `string` |  |
| `country` | `string` |  |
| `merchantCategoryCode` | `string` |  |
| `name` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vuNummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```clojure
(def update_merchant
  (e-update_merchant/create (api/update_merchant client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateXml` | `string` |  |

#### Example: Create

```clojure
(def update_template_xml
  (e-update_template_xml/create (api/update_template_xml client nil)
    (vs/jm
      "templateName" "example_templateName"  ;; string
      "templateXml" "example_templateXml"  ;; string
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
| `appName` | `string` |  |
| `buildDate` | `string` |  |
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
