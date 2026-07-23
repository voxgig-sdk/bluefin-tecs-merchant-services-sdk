# BluefinTecsMerchantServices Haskell SDK



The Haskell SDK for the BluefinTecsMerchantServices API — an entity-oriented client following idiomatic Haskell conventions (pure functions, explicit `IO`, and the dependency-free vendored `Value` struct model).

The SDK exposes the API as capitalised, semantic **Entities** — for example `cancel_transaction sdk VNoval` — each
carrying a small, uniform set of operations (`eLoad`, `eCreate`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Hackage. Install it from the GitHub
release tag (`haskell/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout. The runtime has no third-party dependencies (only the
GHC boot libraries: `base`, `containers`, `array`, `time`), so the
bundled Makefile drives stock GHC with no cabal solve:

```bash
cd haskell && make test
```

A `.cabal` file is also generated for use with `cabal`/`stack`:

```bash
cd haskell && cabal build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```haskell
import System.Environment (lookupEnv)
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..), emptyMap)
import SdkHelpers (jo)

main :: IO ()
main = do
  mkey <- lookupEnv "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"
  opts <- jo [("apikey", maybe VNoval VStr mkey)]
  sdk <- Sdk.newSdk opts
```

Entity operations raise on error (via `Control.Exception.throwIO`) and
return the bare result `Value`. Wrap a call in `Control.Exception.try`
to recover from failures.

### 4. Create, update, and remove

```haskell
  createEnt <- Sdk.cancel_transaction sdk VNoval
  d <- jo [("client_id", VNum 1), ("currency", VStr "example_currency"), ("receipt_number", VStr "example_receipt_number"), ("terminal_id", VNum 1)]
  cctrl <- emptyMap
  created <- Sdk.eCreate createEnt d cctrl
  print created
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

For endpoints not covered by entity accessors, use `direct` — it never
raises and returns a result `Value` you branch on via its `ok` field:

```haskell
import qualified SdkClient as Sdk
import qualified SdkFeatures as F
import VoxgigStruct (Value (..))
import SdkHelpers (jo, getp)

main :: IO ()
main = do
  sdk <- Sdk.newSdk0
  params <- jo [("id", VStr "example")]
  args <- jo [("path", VStr "/api/resource/{id}"), ("method", VStr "GET"), ("params", params)]
  result <- F.direct sdk args
  ok <- getp result "ok"
  case ok of
    VBool True -> do
      status <- getp result "status"   -- e.g. VNum 200
      body <- getp result "data"       -- the response body
      print (status, body)
    _ -> do
      -- A non-2xx response carries status + data (the error body); a
      -- transport-level failure carries err instead.
      status <- getp result "status"
      err <- getp result "err"
      print (status, err)
```

### Prepare a request without sending it

```haskell
import qualified SdkClient as Sdk
import qualified SdkFeatures as F
import VoxgigStruct (Value (..))
import SdkHelpers (jo, getp)

main :: IO ()
main = do
  sdk <- Sdk.newSdk0
  params <- jo [("id", VStr "example")]
  args <- jo [("path", VStr "/api/resource/{id}"), ("method", VStr "DELETE"), ("params", params)]
  -- prepare returns the fetch definition and raises on error.
  fetchdef <- F.prepare sdk args
  url <- getp fetchdef "url"
  method <- getp fetchdef "method"
  print (url, method)
```

### Use test mode

Create a mock client for unit testing — no server required:

```haskell
import qualified SdkClient as Sdk
import qualified SdkFeatures as F
import VoxgigStruct (Value (..), emptyMap)
import SdkHelpers (jo)

main :: IO ()
main = do
  sdk <- Sdk.testSdk0
  ent <- Sdk.digital_services_api sdk VNoval
  arg <- emptyMap
  ctrl <- emptyMap
  -- Entity ops return the bare record and raise on error.
  digital_services_api <- Sdk.eLoad ent arg ctrl
  print digital_services_api
```

### Use a custom fetch function

Replace the HTTP transport with your own `VFunc` under `system.fetch`:

```haskell
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..))
import SdkHelpers (jo, jsonThunk)

customClient :: IO Sdk.Client
customClient = do
  let mockFetch = VFunc (\_ _ _ _ -> do
        body <- jo [("id", VStr "mock01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk body)])
  sys <- jo [("fetch", mockFetch)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  Sdk.newSdk opts
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run the suite (stock GHC, no third-party dependencies):

```bash
cd haskell && make test
```


## Reference

### Client constructors

```haskell
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..))
import SdkHelpers (jo)

makeClient :: IO Sdk.Client
makeClient = do
  opts <- jo [("base", VStr "https://api.example.com")]
  Sdk.newSdk opts
```

`newSdk :: Value -> IO Client` constructs a client from an options map;
`newSdk0 :: IO Client` is the no-argument convenience form.

| Option (map key) | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `headers` | `Value` | Custom headers for all requests. |
| `feature` | `Value` | Feature activation flags. |
| `system` | `Value` | System overrides (e.g. custom `fetch` function). |

### Test client

```haskell
client <- Sdk.testSdk testopts sdkopts
```

`testSdk :: Value -> Value -> IO Client` constructs a test-mode client with
mock transport (`testSdk0 :: IO Client` for the no-argument form). Pass
`VNoval` for defaults.

### Client functions

| Function | Signature | Description |
| --- | --- | --- |
| `newSdk` | `Value -> IO Client` | Construct a live client from options. |
| `newSdk0` | `IO Client` | Construct a live client with defaults. |
| `testSdk` | `Value -> Value -> IO Client` | Construct a test-mode client. |
| `prepare` | `Client -> Value -> IO Value` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `Client -> Value -> IO Value` | Build and send an HTTP request. Returns a result `Value` (branch on `ok`). |
| `cancel_transaction` | `Client -> Value -> IO Entity` | Create a CancelTransaction entity instance. |
| `check_card_black_listed` | `Client -> Value -> IO Entity` | Create a CheckCardBlackListed entity instance. |
| `create_product` | `Client -> Value -> IO Entity` | Create a CreateProduct entity instance. |
| `deactivate_terminal` | `Client -> Value -> IO Entity` | Create a DeactivateTerminal entity instance. |
| `digital_services_api` | `Client -> Value -> IO Entity` | Create a DigitalServicesApi entity instance. |
| `ec_data_ecom` | `Client -> Value -> IO Entity` | Create an EcDataEcom entity instance. |
| `ecom_parameter` | `Client -> Value -> IO Entity` | Create an EcomParameter entity instance. |
| `ecr_data` | `Client -> Value -> IO Entity` | Create an EcrData entity instance. |
| `emv_data` | `Client -> Value -> IO Entity` | Create an EmvData entity instance. |
| `enable_acquiring` | `Client -> Value -> IO Entity` | Create an EnableAcquiring entity instance. |
| `get_merchant_contract_number` | `Client -> Value -> IO Entity` | Create a GetMerchantContractNumber entity instance. |
| `get_template_xml` | `Client -> Value -> IO Entity` | Create a GetTemplateXml entity instance. |
| `introduce_mandator` | `Client -> Value -> IO Entity` | Create an IntroduceMandator entity instance. |
| `introduce_package` | `Client -> Value -> IO Entity` | Create an IntroducePackage entity instance. |
| `keep_alive` | `Client -> Value -> IO Entity` | Create a KeepAlive entity instance. |
| `list_terminal` | `Client -> Value -> IO Entity` | Create a ListTerminal entity instance. |
| `mandator_clearing_export` | `Client -> Value -> IO Entity` | Create a MandatorClearingExport entity instance. |
| `mandator_clearing_export_download` | `Client -> Value -> IO Entity` | Create a MandatorClearingExportDownload entity instance. |
| `mandator_clearing_export_summary` | `Client -> Value -> IO Entity` | Create a MandatorClearingExportSummary entity instance. |
| `merchant_portal_services_api` | `Client -> Value -> IO Entity` | Create a MerchantPortalServicesApi entity instance. |
| `move_tid` | `Client -> Value -> IO Entity` | Create a MoveTid entity instance. |
| `payment_manual` | `Client -> Value -> IO Entity` | Create a PaymentManual entity instance. |
| `payment_sred` | `Client -> Value -> IO Entity` | Create a PaymentSred entity instance. |
| `pre_auth_transaction_completion` | `Client -> Value -> IO Entity` | Create a PreAuthTransactionCompletion entity instance. |
| `reactivate_terminal` | `Client -> Value -> IO Entity` | Create a ReactivateTerminal entity instance. |
| `refund_transaction` | `Client -> Value -> IO Entity` | Create a RefundTransaction entity instance. |
| `register_tecs_company` | `Client -> Value -> IO Entity` | Create a RegisterTecsCompany entity instance. |
| `register_terminal` | `Client -> Value -> IO Entity` | Create a RegisterTerminal entity instance. |
| `report_data` | `Client -> Value -> IO Entity` | Create a ReportData entity instance. |
| `status_transaction` | `Client -> Value -> IO Entity` | Create a StatusTransaction entity instance. |
| `store_terminal_parameter` | `Client -> Value -> IO Entity` | Create a StoreTerminalParameter entity instance. |
| `terminal_id` | `Client -> Value -> IO Entity` | Create a TerminalId entity instance. |
| `transaction_history` | `Client -> Value -> IO Entity` | Create a TransactionHistory entity instance. |
| `transactions_count` | `Client -> Value -> IO Entity` | Create a TransactionsCount entity instance. |
| `transactions_count_card_brand` | `Client -> Value -> IO Entity` | Create a TransactionsCountCardBrand entity instance. |
| `transactions_turnover` | `Client -> Value -> IO Entity` | Create a TransactionsTurnover entity instance. |
| `update_merchant` | `Client -> Value -> IO Entity` | Create an UpdateMerchant entity instance. |
| `update_template_xml` | `Client -> Value -> IO Entity` | Create an UpdateTemplateXml entity instance. |
| `version` | `Client -> Value -> IO Entity` | Create a Version entity instance. |

### Entity interface

All entities share the same record interface (fields of the `Entity` type).

| Field | Signature | Description |
| --- | --- | --- |
| `eLoad` | `Value -> Value -> IO Value` | Load a single entity by match criteria. Raises on error. |
| `eCreate` | `Value -> Value -> IO Value` | Create a new entity. Raises on error. |
| `eDataGet` | `IO Value` | Get entity data. |
| `eDataSet` | `Value -> IO ()` | Set entity data. |
| `eStream` | `String -> Value -> Value -> IO [Value]` | Run an op as a lazy stream of items. |
| `eMake` | `IO Entity` | Create a new instance with the same options. |
| `eName` | `String` | The entity name. |

### Result shape

Entity operations return the bare result `Value` (a map for single-entity
ops, a list for `eList`) and raise on error. Wrap calls in
`Control.Exception.try` to handle failures.

The `direct` escape hatch never raises — it returns a result `Value`
you branch on via its `ok` field (read with `getp result "ok"`):

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `True` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `Value` | Response headers. |
| `data` | `Value` | Parsed JSON response body. |

On error, `ok` is `False` and `err` carries the error value.

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

Create an instance: `cancel_transaction <- Sdk.cancel_transaction sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.cancel_transaction sdk VNoval
  d <- jo
    [ ("client_id", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receipt_number", VStr "example_receipt_number")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  cancel_transaction <- Sdk.eCreate ent d ctrl
```


### CheckCardBlackListed

Create an instance: `check_card_black_listed <- Sdk.check_card_black_listed sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.check_card_black_listed sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  check_card_black_listed <- Sdk.eCreate ent d ctrl
```


### CreateProduct

Create an instance: `create_product <- Sdk.create_product sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `Int` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_type` | `String` |  |
| `template_xml` | `String` |  |
| `terminal_type` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.create_product sdk VNoval
  d <- jo
    [ ("template_name", VStr "example_template_name")   -- String
    , ("template_type", VStr "example_template_type")   -- String
    , ("template_xml", VStr "example_template_xml")   -- String
    , ("terminal_type", VStr "example_terminal_type")   -- String
    ]
  ctrl <- emptyMap
  create_product <- Sdk.eCreate ent d ctrl
```


### DeactivateTerminal

Create an instance: `deactivate_terminal <- Sdk.deactivate_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `deactivation_reason` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.deactivate_terminal sdk VNoval
  d <- jo
    [ ("deactivation_reason", VStr "example_deactivation_reason")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  deactivate_terminal <- Sdk.eCreate ent d ctrl
```


### DigitalServicesApi

Create an instance: `digital_services_api <- Sdk.digital_services_api sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |
| `eLoad ent match ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `tx_count` | `Int` |  |
| `tx_id_end` | `String` |  |
| `tx_id_start` | `String` |  |
| `tx_seq_no_end` | `Int` |  |
| `tx_seq_no_start` | `Int` |  |
| `tx_total` | `Int` |  |

#### Example: Load

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  digital_services_api <- Sdk.eLoad ent match ctrl
```

#### Example: Create

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  digital_services_api <- Sdk.eCreate ent d ctrl
```


### EcDataEcom

Create an instance: `ec_data_ecom <- Sdk.ec_data_ecom sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.ec_data_ecom sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    , ("transaction_id", VStr "example_transaction_id")   -- String
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  ec_data_ecom <- Sdk.eCreate ent d ctrl
```


### EcomParameter

Create an instance: `ecom_parameter <- Sdk.ecom_parameter sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `String` |  |
| `ecom_skey` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.ecom_parameter sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  ecom_parameter <- Sdk.eCreate ent d ctrl
```


### EcrData

Create an instance: `ecr_data <- Sdk.ecr_data sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.ecr_data sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    , ("transaction_id", VStr "example_transaction_id")   -- String
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  ecr_data <- Sdk.eCreate ent d ctrl
```


### EmvData

Create an instance: `emv_data <- Sdk.emv_data sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.emv_data sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    , ("transaction_id", VStr "example_transaction_id")   -- String
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  emv_data <- Sdk.eCreate ent d ctrl
```


### EnableAcquiring

Create an instance: `enable_acquiring <- Sdk.enable_acquiring sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `Int` |  |
| `additional_data` | `Value` |  |
| `corporate_uuid` | `String` |  |
| `currency` | `String` |  |
| `merchant_category_code` | `Int` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sorting_code` | `Int` |  |
| `template_name` | `String` |  |
| `terminal_id` | `[Value]` |  |
| `terminal_id_acq` | `String` |  |
| `vu_nummer` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.enable_acquiring sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("merchant_category_code", VNum 1)   -- Int
    , ("package_order_uuid", VStr "example_package_order_uuid")   -- String
    , ("product_order_uuid", VStr "example_product_order_uuid")   -- String
    , ("template_name", VStr "example_template_name")   -- String
    ]
  ctrl <- emptyMap
  enable_acquiring <- Sdk.eCreate ent d ctrl
```


### GetMerchantContractNumber

Create an instance: `get_merchant_contract_number <- Sdk.get_merchant_contract_number sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.get_merchant_contract_number sdk VNoval
  d <- jo
    [ ("merchant_contract_number", VStr "example_merchant_contract_number")   -- String
    ]
  ctrl <- emptyMap
  get_merchant_contract_number <- Sdk.eCreate ent d ctrl
```


### GetTemplateXml

Create an instance: `get_template_xml <- Sdk.get_template_xml sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.get_template_xml sdk VNoval
  d <- jo
    [ ("template_name", VStr "example_template_name")   -- String
    ]
  ctrl <- emptyMap
  get_template_xml <- Sdk.eCreate ent d ctrl
```


### IntroduceMandator

Create an instance: `introduce_mandator <- Sdk.introduce_mandator sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.introduce_mandator sdk VNoval
  d <- jo
    [ ("mandator_name", VStr "example_mandator_name")   -- String
    ]
  ctrl <- emptyMap
  introduce_mandator <- Sdk.eCreate ent d ctrl
```


### IntroducePackage

Create an instance: `introduce_package <- Sdk.introduce_package sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_template_description` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.introduce_package sdk VNoval
  d <- jo
    [ ("terminal_template_description", VStr "example_terminal_template_description")   -- String
    ]
  ctrl <- emptyMap
  introduce_package <- Sdk.eCreate ent d ctrl
```


### KeepAlive

Create an instance: `keep_alive <- Sdk.keep_alive sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `ka_date_time_from` | `String` |  |
| `ka_date_time_to` | `String` |  |
| `keep_alive_data` | `[Value]` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_date_time_from` | `String` |  |
| `terminal_date_time_to` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.keep_alive sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  keep_alive <- Sdk.eCreate ent d ctrl
```


### ListTerminal

Create an instance: `list_terminal <- Sdk.list_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `[Value]` |  |
| `filter` | `Value` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.list_terminal sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  list_terminal <- Sdk.eCreate ent d ctrl
```


### MandatorClearingExport

Create an instance: `mandator_clearing_export <- Sdk.mandator_clearing_export sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `pagination` | `Value` |  |
| `record` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.mandator_clearing_export sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    ]
  ctrl <- emptyMap
  mandator_clearing_export <- Sdk.eCreate ent d ctrl
```


### MandatorClearingExportDownload

Create an instance: `mandator_clearing_export_download <- Sdk.mandator_clearing_export_download sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |
| `eLoad ent match ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `file_id` | `String` |  |
| `filename_template` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `status` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  match <- jo [("id", VStr "mandator_clearing_export_download_id")]
  ctrl <- emptyMap
  mandator_clearing_export_download <- Sdk.eLoad ent match ctrl
```

#### Example: Create

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    ]
  ctrl <- emptyMap
  mandator_clearing_export_download <- Sdk.eCreate ent d ctrl
```


### MandatorClearingExportSummary

Create an instance: `mandator_clearing_export_summary <- Sdk.mandator_clearing_export_summary sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `record` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.mandator_clearing_export_summary sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    ]
  ctrl <- emptyMap
  mandator_clearing_export_summary <- Sdk.eCreate ent d ctrl
```


### MerchantPortalServicesApi

Create an instance: `merchant_portal_services_api <- Sdk.merchant_portal_services_api sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

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
| `pagination` | `Value` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `Int` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `Int` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.merchant_portal_services_api sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  merchant_portal_services_api <- Sdk.eCreate ent d ctrl
```


### MoveTid

Create an instance: `move_tid <- Sdk.move_tid sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `target_packageorderuuid` | `String` |  |
| `target_productorderuuid` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.move_tid sdk VNoval
  d <- jo
    [ ("productorderuuid", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  move_tid <- Sdk.eCreate ent d ctrl
```


### PaymentManual

Create an instance: `payment_manual <- Sdk.payment_manual sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `Int` |  |
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

```haskell
  ent <- Sdk.payment_manual sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("card_number", VStr "example_card_number")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("exp_date", VStr "example_exp_date")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  payment_manual <- Sdk.eCreate ent d ctrl
```


### PaymentSred

Create an instance: `payment_sred <- Sdk.payment_sred sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `amount` | `Int` |  |
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
| `sred` | `Value` |  |
| `terminal_id` | `String` |  |
| `transaction_id` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.payment_sred sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("device_payload", VStr "example_device_payload")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  payment_sred <- Sdk.eCreate ent d ctrl
```


### PreAuthTransactionCompletion

Create an instance: `pre_auth_transaction_completion <- Sdk.pre_auth_transaction_completion sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `card_number_reference` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.pre_auth_transaction_completion sdk VNoval
  d <- jo
    [ ("card_number_reference", VStr "example_card_number_reference")   -- String
    , ("client_id", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receipt_number", VStr "example_receipt_number")   -- String
    , ("terminal_id", VNum 1)   -- Int
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  pre_auth_transaction_completion <- Sdk.eCreate ent d ctrl
```


### ReactivateTerminal

Create an instance: `reactivate_terminal <- Sdk.reactivate_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `reactivation_reason` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.reactivate_terminal sdk VNoval
  d <- jo
    [ ("reactivation_reason", VStr "example_reactivation_reason")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  reactivate_terminal <- Sdk.eCreate ent d ctrl
```


### RefundTransaction

Create an instance: `refund_transaction <- Sdk.refund_transaction sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `String` |  |
| `acquirer_name` | `String` |  |
| `actual_bonus_point` | `String` |  |
| `amount` | `Int` |  |
| `authorization_code` | `String` |  |
| `balance_amount` | `String` |  |
| `card_brand` | `String` |  |
| `card_number` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ec_data` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_data` | `String` |  |
| `exchange_fee` | `Int` |  |
| `exchange_rate` | `String` |  |
| `language_code` | `String` |  |
| `merchant_address` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `message_type` | `String` |  |
| `original_trace_number` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `password` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_footer` | `String` |  |
| `receipt_header` | `String` |  |
| `receipt_layout` | `Int` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `svc` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `trace_number` | `Int` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `tx_type` | `String` |  |
| `user_data` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.refund_transaction sdk VNoval
  d <- jo
    [ ("client_id", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receipt_number", VStr "example_receipt_number")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  refund_transaction <- Sdk.eCreate ent d ctrl
```


### RegisterTecsCompany

Create an instance: `register_tecs_company <- Sdk.register_tecs_company sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `partner_id` | `Int` |  |
| `partner_name` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.register_tecs_company sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    , ("package_order_uuid", VStr "example_package_order_uuid")   -- String
    , ("product_order_uuid", VStr "example_product_order_uuid")   -- String
    , ("template_name", VStr "example_template_name")   -- String
    ]
  ctrl <- emptyMap
  register_tecs_company <- Sdk.eCreate ent d ctrl
```


### RegisterTerminal

Create an instance: `register_terminal <- Sdk.register_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `Value` |  |
| `corporate_uuid` | `String` |  |
| `package_order_uuid` | `String` |  |
| `product_order_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `tecs_web_secret_key` | `String` |  |
| `template_name` | `String` |  |
| `terminal_country_code` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_id_acq` | `String` |  |
| `terminal_language_code` | `String` |  |
| `terminal_location` | `String` |  |
| `terminal_serial_number` | `String` |  |
| `token_io_alia` | `String` |  |
| `token_io_iban` | `String` |  |
| `token_io_member_id` | `String` |  |
| `web_shop_url` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.register_terminal sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    , ("package_order_uuid", VStr "example_package_order_uuid")   -- String
    , ("product_order_uuid", VStr "example_product_order_uuid")   -- String
    , ("template_name", VStr "example_template_name")   -- String
    , ("terminal_country_code", VStr "example_terminal_country_code")   -- String
    , ("terminal_language_code", VStr "example_terminal_language_code")   -- String
    , ("terminal_location", VStr "example_terminal_location")   -- String
    ]
  ctrl <- emptyMap
  register_terminal <- Sdk.eCreate ent d ctrl
```


### ReportData

Create an instance: `report_data <- Sdk.report_data sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `[Value]` |  |
| `clearing_date_from` | `String` |  |
| `clearing_date_to` | `String` |  |
| `corporate_id` | `String` |  |
| `currency` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sum_over_credit_tx` | `Value` |  |
| `sum_over_debit_tx` | `Value` |  |
| `terminal_id` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.report_data sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    , ("corporate_id", VStr "example_corporate_id")   -- String
    , ("currency", VStr "example_currency")   -- String
    ]
  ctrl <- emptyMap
  report_data <- Sdk.eCreate ent d ctrl
```


### StatusTransaction

Create an instance: `status_transaction <- Sdk.status_transaction sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `String` |  |
| `acquirer_terminal_id` | `String` |  |
| `amount` | `Int` |  |
| `application_cryptogram` | `String` |  |
| `authorization_code` | `Value` |  |
| `authorization_date` | `String` |  |
| `card_brand` | `String` |  |
| `card_entry` | `String` |  |
| `card_expiration` | `String` |  |
| `card_number` | `String` |  |
| `clearing_amount` | `Int` |  |
| `clearing_batch_id` | `String` |  |
| `clearing_currency` | `String` |  |
| `clearing_date` | `String` |  |
| `clearing_processed_date` | `String` |  |
| `clearing_status` | `String` |  |
| `client_id` | `Int` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecr_data` | `String` |  |
| `emv_application_id` | `String` |  |
| `emv_application_label` | `String` |  |
| `merchant_name` | `String` |  |
| `merchant_number` | `String` |  |
| `original_client_id` | `String` |  |
| `original_terminal_id` | `Int` |  |
| `original_transaction_id` | `String` |  |
| `payment_reason` | `String` |  |
| `receipt_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_code_from_a` | `String` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `service_code` | `String` |  |
| `settlement_status` | `String` |  |
| `source_id` | `Int` |  |
| `tecsengine_response_code` | `Int` |  |
| `tecsengine_response_text` | `String` |  |
| `terminal_end_of_day_date` | `String` |  |
| `terminal_id` | `Int` |  |
| `terminal_location` | `String` |  |
| `tip_amount` | `Int` |  |
| `trace_number` | `Int` |  |
| `transaction_clearing_date` | `String` |  |
| `transaction_date` | `String` |  |
| `transaction_id` | `String` |  |
| `transaction_seq_number` | `Int` |  |
| `transaction_server_date` | `String` |  |
| `transaction_source` | `String` |  |
| `transaction_type` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.status_transaction sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  status_transaction <- Sdk.eCreate ent d ctrl
```


### StoreTerminalParameter

Create an instance: `store_terminal_parameter <- Sdk.store_terminal_parameter sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `Value` |  |
| `config_version` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `serial_number` | `String` |  |
| `tid_sent` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.store_terminal_parameter sdk VNoval
  d <- jo
    [ ("serial_number", VStr "example_serial_number")   -- String
    ]
  ctrl <- emptyMap
  store_terminal_parameter <- Sdk.eCreate ent d ctrl
```


### TerminalId

Create an instance: `terminal_id <- Sdk.terminal_id sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `[Value]` |  |
| `duplicate_terminal_id` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `terminal` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.terminal_id sdk VNoval
  d <- jo
    [ ("device_serial_number", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  terminal_id <- Sdk.eCreate ent d ctrl
```


### TransactionHistory

Create an instance: `transaction_history <- Sdk.transaction_history sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

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
| `pagination` | `Value` |  |
| `payment_token_public_id` | `String` |  |
| `receipt_number` | `String` |  |
| `referenced_transaction_id` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `retrieval_reference_number` | `String` |  |
| `source_id` | `Int` |  |
| `tecsengine_response_code_from` | `String` |  |
| `tecsengine_response_code_to` | `String` |  |
| `terminal_id` | `Int` |  |
| `trace_number` | `String` |  |
| `transaction_amount_from` | `String` |  |
| `transaction_amount_to` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transaction_history` | `[Value]` |  |
| `transaction_id` | `String` |  |
| `transaction_type` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.transaction_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transaction_history <- Sdk.eCreate ent d ctrl
```


### TransactionsCount

Create an instance: `transactions_count <- Sdk.transactions_count sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.transactions_count sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transactions_count <- Sdk.eCreate ent d ctrl
```


### TransactionsCountCardBrand

Create an instance: `transactions_count_card_brand <- Sdk.transactions_count_card_brand sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `transactions_count` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.transactions_count_card_brand sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transactions_count_card_brand <- Sdk.eCreate ent d ctrl
```


### TransactionsTurnover

Create an instance: `transactions_turnover <- Sdk.transactions_turnover sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `transaction_date_from` | `String` |  |
| `transaction_date_to` | `String` |  |
| `turnover` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.transactions_turnover sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transactions_turnover <- Sdk.eCreate ent d ctrl
```


### UpdateMerchant

Create an instance: `update_merchant <- Sdk.update_merchant sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporate_uuid` | `String` |  |
| `country` | `String` |  |
| `merchant_category_code` | `String` |  |
| `name` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vu_nummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.update_merchant sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    ]
  ctrl <- emptyMap
  update_merchant <- Sdk.eCreate ent d ctrl
```


### UpdateTemplateXml

Create an instance: `update_template_xml <- Sdk.update_template_xml sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `template_name` | `String` |  |
| `template_xml` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.update_template_xml sdk VNoval
  d <- jo
    [ ("template_name", VStr "example_template_name")   -- String
    , ("template_xml", VStr "example_template_xml")   -- String
    ]
  ctrl <- emptyMap
  update_template_xml <- Sdk.eCreate ent d ctrl
```


### Version

Create an instance: `version <- Sdk.version sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eLoad ent match ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.version sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  version <- Sdk.eLoad ent match ctrl
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

### Data as struct Values

The Haskell SDK models every API record as the dynamic `Value` type (from
the vendored `VoxgigStruct` module) rather than bespoke Haskell records.
This mirrors the dynamic nature of the API and keeps the SDK flexible — no
new datatypes or code generation are needed when the API schema changes.

Build request maps with `jo [(key, value)]` and read fields back with
`getp value "field"`; scalars are the `VStr` / `VNum` / `VBool`
constructors, and `VNoval` stands for an absent property.

### Module structure

```
haskell/
├── src/
│   ├── VoxgigStruct.hs   -- vendored dependency-free struct library (Value)
│   ├── Vregex.hs         -- vendored regex support
│   ├── SdkTypes.hs       -- core types (Client, Entity, Feature)
│   ├── SdkHelpers.hs     -- helper functions (jo, getp, ...)
│   ├── SdkRuntime.hs     -- the generic operation pipeline
│   ├── SdkFeatures.hs    -- built-in features + makeEntity
│   ├── SdkConfig.hs      -- generated API configuration + feature factory
│   └── SdkClient.hs      -- generated public client (newSdk, entity accessors)
├── test/                 -- test suites
├── Makefile              -- stock-GHC build/test (no third-party deps)
└── bluefintecsmerchantservices-sdk.cabal      -- package manifest (for Hackage)
```

The public module (`SdkClient`) exports the SDK constructors (`newSdk`,
`testSdk`) and one accessor per entity. Import `VoxgigStruct` for the
`Value` constructors and `SdkHelpers` for `jo` / `getp`.

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
