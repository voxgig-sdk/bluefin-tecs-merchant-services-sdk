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
  d <- jo [("clientId", VNum 1), ("currency", VStr "example_currency"), ("receiptNumber", VStr "example_receiptNumber"), ("terminalId", VNum 1)]
  cctrl <- emptyMap
  created <- Sdk.eCreate createEnt d cctrl
  print =<< Sdk.eDataGet created
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
| `eLoad` | `Value -> Value -> IO Entity` | Load a single entity by match criteria. Resolves to the entity. Raises on error. |
| `eCreate` | `Value -> Value -> IO Entity` | Create a new entity. Resolves to the entity. Raises on error. |
| `eDataGet` | `IO Value` | Get entity data. |
| `eDataSet` | `Value -> IO ()` | Set entity data. |
| `eStream` | `String -> Value -> Value -> IO [Value]` | Run an op as a lazy stream of items. |
| `eMake` | `IO Entity` | Create a new instance with the same options. |
| `eName` | `String` | The entity name. |

### Result shape

Entity operations resolve to the ENTITY, not the raw record — `eList` to
one entity per record — and raise on error. The record is reached through
`eDataGet`, which returns the entity's data container. `eRemove` resolves to
the entity marked deleted (`eDeleted`); it keeps the data it held. Wrap calls
in `Control.Exception.try` to handle failures.

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

Create an instance: `cancel_transaction <- Sdk.cancel_transaction sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.cancel_transaction sdk VNoval
  d <- jo
    [ ("clientId", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receiptNumber", VStr "example_receiptNumber")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  cancel_transaction <- Sdk.eCreate ent d ctrl
  cancel_transactionData <- Sdk.eDataGet cancel_transaction
```


### CheckCardBlackListed

Create an instance: `check_card_black_listed <- Sdk.check_card_black_listed sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.check_card_black_listed sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  check_card_black_listed <- Sdk.eCreate ent d ctrl
  check_card_black_listedData <- Sdk.eDataGet check_card_black_listed
```


### CreateProduct

Create an instance: `create_product <- Sdk.create_product sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `Int` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateType` | `String` |  |
| `templateXml` | `String` |  |
| `terminalType` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.create_product sdk VNoval
  d <- jo
    [ ("templateName", VStr "example_templateName")   -- String
    , ("templateType", VStr "example_templateType")   -- String
    , ("templateXml", VStr "example_templateXml")   -- String
    , ("terminalType", VStr "example_terminalType")   -- String
    ]
  ctrl <- emptyMap
  create_product <- Sdk.eCreate ent d ctrl
  create_productData <- Sdk.eDataGet create_product
```


### DeactivateTerminal

Create an instance: `deactivate_terminal <- Sdk.deactivate_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `deactivationReason` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.deactivate_terminal sdk VNoval
  d <- jo
    [ ("deactivationReason", VStr "example_deactivationReason")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  deactivate_terminal <- Sdk.eCreate ent d ctrl
  deactivate_terminalData <- Sdk.eDataGet deactivate_terminal
```


### DigitalServicesApi

Create an instance: `digital_services_api <- Sdk.digital_services_api sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |
| `eLoad ent match ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` |  |
| `clearingDateTo` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `txCount` | `Int` |  |
| `txIdEnd` | `String` |  |
| `txIdStart` | `String` |  |
| `txSeqNoEnd` | `Int` |  |
| `txSeqNoStart` | `Int` |  |
| `txTotal` | `Int` |  |

#### Example: Load

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  digital_services_api <- Sdk.eLoad ent match ctrl
  -- The op resolves to the ENTITY; the record is inside it.
  digital_services_apiData <- Sdk.eDataGet digital_services_api
```

#### Example: Create

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  digital_services_api <- Sdk.eCreate ent d ctrl
  digital_services_apiData <- Sdk.eDataGet digital_services_api
```


### EcDataEcom

Create an instance: `ec_data_ecom <- Sdk.ec_data_ecom sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.ec_data_ecom sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    , ("transactionId", VStr "example_transactionId")   -- String
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  ec_data_ecom <- Sdk.eCreate ent d ctrl
  ec_data_ecomData <- Sdk.eDataGet ec_data_ecom
```


### EcomParameter

Create an instance: `ecom_parameter <- Sdk.ecom_parameter sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `String` |  |
| `ecomSkey` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.ecom_parameter sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  ecom_parameter <- Sdk.eCreate ent d ctrl
  ecom_parameterData <- Sdk.eDataGet ecom_parameter
```


### EcrData

Create an instance: `ecr_data <- Sdk.ecr_data sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.ecr_data sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    , ("transactionId", VStr "example_transactionId")   -- String
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  ecr_data <- Sdk.eCreate ent d ctrl
  ecr_dataData <- Sdk.eDataGet ecr_data
```


### EmvData

Create an instance: `emv_data <- Sdk.emv_data sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.emv_data sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    , ("transactionId", VStr "example_transactionId")   -- String
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  emv_data <- Sdk.eCreate ent d ctrl
  emv_dataData <- Sdk.eDataGet emv_data
```


### EnableAcquiring

Create an instance: `enable_acquiring <- Sdk.enable_acquiring sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `Int` |  |
| `additionalData` | `Value` |  |
| `corporateUuid` | `String` |  |
| `currency` | `String` |  |
| `merchantCategoryCode` | `Int` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sortingCode` | `Int` |  |
| `templateName` | `String` |  |
| `terminalIdAcq` | `String` |  |
| `terminalIds` | `[Value]` |  |
| `vuNummer` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.enable_acquiring sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("merchantCategoryCode", VNum 1)   -- Int
    , ("packageOrderUuid", VStr "example_packageOrderUuid")   -- String
    , ("productOrderUuid", VStr "example_productOrderUuid")   -- String
    , ("templateName", VStr "example_templateName")   -- String
    ]
  ctrl <- emptyMap
  enable_acquiring <- Sdk.eCreate ent d ctrl
  enable_acquiringData <- Sdk.eDataGet enable_acquiring
```


### GetMerchantContractNumber

Create an instance: `get_merchant_contract_number <- Sdk.get_merchant_contract_number sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.get_merchant_contract_number sdk VNoval
  d <- jo
    [ ("merchantContractNumber", VStr "example_merchantContractNumber")   -- String
    ]
  ctrl <- emptyMap
  get_merchant_contract_number <- Sdk.eCreate ent d ctrl
  get_merchant_contract_numberData <- Sdk.eDataGet get_merchant_contract_number
```


### GetTemplateXml

Create an instance: `get_template_xml <- Sdk.get_template_xml sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.get_template_xml sdk VNoval
  d <- jo
    [ ("templateName", VStr "example_templateName")   -- String
    ]
  ctrl <- emptyMap
  get_template_xml <- Sdk.eCreate ent d ctrl
  get_template_xmlData <- Sdk.eDataGet get_template_xml
```


### IntroduceMandator

Create an instance: `introduce_mandator <- Sdk.introduce_mandator sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.introduce_mandator sdk VNoval
  d <- jo
    [ ("mandatorName", VStr "example_mandatorName")   -- String
    ]
  ctrl <- emptyMap
  introduce_mandator <- Sdk.eCreate ent d ctrl
  introduce_mandatorData <- Sdk.eDataGet introduce_mandator
```


### IntroducePackage

Create an instance: `introduce_package <- Sdk.introduce_package sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalTemplateDescription` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.introduce_package sdk VNoval
  d <- jo
    [ ("terminalTemplateDescription", VStr "example_terminalTemplateDescription")   -- String
    ]
  ctrl <- emptyMap
  introduce_package <- Sdk.eCreate ent d ctrl
  introduce_packageData <- Sdk.eDataGet introduce_package
```


### KeepAlive

Create an instance: `keep_alive <- Sdk.keep_alive sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String` |  |
| `kaDateTimeFrom` | `String` |  |
| `kaDateTimeTo` | `String` |  |
| `keepAliveData` | `[Value]` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalDateTimeFrom` | `String` |  |
| `terminalDateTimeTo` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.keep_alive sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  keep_alive <- Sdk.eCreate ent d ctrl
  keep_aliveData <- Sdk.eDataGet keep_alive
```


### ListTerminal

Create an instance: `list_terminal <- Sdk.list_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `[Value]` |  |
| `filter` | `Value` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminals` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.list_terminal sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  list_terminal <- Sdk.eCreate ent d ctrl
  list_terminalData <- Sdk.eDataGet list_terminal
```


### MandatorClearingExport

Create an instance: `mandator_clearing_export <- Sdk.mandator_clearing_export sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` |  |
| `clearingDateTo` | `String` |  |
| `pagination` | `Value` |  |
| `records` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.mandator_clearing_export sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  mandator_clearing_export <- Sdk.eCreate ent d ctrl
  mandator_clearing_exportData <- Sdk.eDataGet mandator_clearing_export
```


### MandatorClearingExportDownload

Create an instance: `mandator_clearing_export_download <- Sdk.mandator_clearing_export_download sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |
| `eLoad ent match ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` |  |
| `clearingDateTo` | `String` |  |
| `fileId` | `String` |  |
| `filenameTemplate` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `status` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  match <- jo [("id", VStr "mandator_clearing_export_download_id")]
  ctrl <- emptyMap
  mandator_clearing_export_download <- Sdk.eLoad ent match ctrl
  -- The op resolves to the ENTITY; the record is inside it.
  mandator_clearing_export_downloadData <- Sdk.eDataGet mandator_clearing_export_download
```

#### Example: Create

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  mandator_clearing_export_download <- Sdk.eCreate ent d ctrl
  mandator_clearing_export_downloadData <- Sdk.eDataGet mandator_clearing_export_download
```


### MandatorClearingExportSummary

Create an instance: `mandator_clearing_export_summary <- Sdk.mandator_clearing_export_summary sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String` |  |
| `clearingDateTo` | `String` |  |
| `records` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.mandator_clearing_export_summary sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  mandator_clearing_export_summary <- Sdk.eCreate ent d ctrl
  mandator_clearing_export_summaryData <- Sdk.eDataGet mandator_clearing_export_summary
```


### MerchantPortalServicesApi

Create an instance: `merchant_portal_services_api <- Sdk.merchant_portal_services_api sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

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
| `pagination` | `Value` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `Int` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `Int` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.merchant_portal_services_api sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  merchant_portal_services_api <- Sdk.eCreate ent d ctrl
  merchant_portal_services_apiData <- Sdk.eDataGet merchant_portal_services_api
```


### MoveTid

Create an instance: `move_tid <- Sdk.move_tid sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `targetPackageorderuuid` | `String` |  |
| `targetProductorderuuid` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.move_tid sdk VNoval
  d <- jo
    [ ("productorderuuids", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  move_tid <- Sdk.eCreate ent d ctrl
  move_tidData <- Sdk.eDataGet move_tid
```


### PaymentManual

Create an instance: `payment_manual <- Sdk.payment_manual sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` |  |
| `amount` | `Int` |  |
| `authorizationNumber` | `String` |  |
| `cardNumber` | `String` |  |
| `cardType` | `String` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `dateTimeTx` | `String` |  |
| `expDate` | `String` |  |
| `merchantId` | `String` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `responseCode` | `String` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `String` |  |
| `transactionId` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.payment_manual sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("cardNumber", VStr "example_cardNumber")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("expDate", VStr "example_expDate")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  payment_manual <- Sdk.eCreate ent d ctrl
  payment_manualData <- Sdk.eDataGet payment_manual
```


### PaymentSred

Create an instance: `payment_sred <- Sdk.payment_sred sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `Int` |  |
| `currency` | `String` |  |
| `device` | `String` |  |
| `devicePayload` | `String` |  |
| `expDate` | `String` |  |
| `mode` | `String` |  |
| `panMasked` | `String` |  |
| `password` | `String` |  |
| `serial` | `String` |  |
| `serviceCode` | `String` |  |
| `terminalId` | `String` |  |
| `txtype` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.payment_sred sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("devicePayload", VStr "example_devicePayload")   -- String
    , ("terminalId", VStr "example_terminalId")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  payment_sred <- Sdk.eCreate ent d ctrl
  payment_sredData <- Sdk.eDataGet payment_sred
```


### PreAuthTransactionCompletion

Create an instance: `pre_auth_transaction_completion <- Sdk.pre_auth_transaction_completion sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `cardNumberReference` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.pre_auth_transaction_completion sdk VNoval
  d <- jo
    [ ("cardNumberReference", VStr "example_cardNumberReference")   -- String
    , ("clientId", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receiptNumber", VStr "example_receiptNumber")   -- String
    , ("terminalId", VNum 1)   -- Int
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  pre_auth_transaction_completion <- Sdk.eCreate ent d ctrl
  pre_auth_transaction_completionData <- Sdk.eDataGet pre_auth_transaction_completion
```


### ReactivateTerminal

Create an instance: `reactivate_terminal <- Sdk.reactivate_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `reactivationReason` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.reactivate_terminal sdk VNoval
  d <- jo
    [ ("reactivationReason", VStr "example_reactivationReason")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  reactivate_terminal <- Sdk.eCreate ent d ctrl
  reactivate_terminalData <- Sdk.eDataGet reactivate_terminal
```


### RefundTransaction

Create an instance: `refund_transaction <- Sdk.refund_transaction sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String` |  |
| `acquirerName` | `String` |  |
| `actualBonusPoints` | `String` |  |
| `amount` | `Int` |  |
| `authorizationCode` | `String` |  |
| `balanceAmount` | `String` |  |
| `cardBrand` | `String` |  |
| `cardNumber` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvc` | `String` |  |
| `ecData` | `String` |  |
| `ecrData` | `String` |  |
| `emvData` | `String` |  |
| `exchangeFee` | `Int` |  |
| `exchangeRate` | `String` |  |
| `languageCode` | `String` |  |
| `merchantAddress` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `messageType` | `String` |  |
| `originalTraceNumber` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `password` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptFooter` | `String` |  |
| `receiptHeader` | `String` |  |
| `receiptLayout` | `Int` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `svc` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `traceNumber` | `Int` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `txType` | `String` |  |
| `userData` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.refund_transaction sdk VNoval
  d <- jo
    [ ("clientId", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receiptNumber", VStr "example_receiptNumber")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  refund_transaction <- Sdk.eCreate ent d ctrl
  refund_transactionData <- Sdk.eDataGet refund_transaction
```


### RegisterTecsCompany

Create an instance: `register_tecs_company <- Sdk.register_tecs_company sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `partnerId` | `Int` |  |
| `partnerName` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.register_tecs_company sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    , ("packageOrderUuid", VStr "example_packageOrderUuid")   -- String
    , ("productOrderUuid", VStr "example_productOrderUuid")   -- String
    , ("templateName", VStr "example_templateName")   -- String
    ]
  ctrl <- emptyMap
  register_tecs_company <- Sdk.eCreate ent d ctrl
  register_tecs_companyData <- Sdk.eDataGet register_tecs_company
```


### RegisterTerminal

Create an instance: `register_terminal <- Sdk.register_terminal sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `Value` |  |
| `corporateUuid` | `String` |  |
| `packageOrderUuid` | `String` |  |
| `productOrderUuid` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `tecsWebSecretKey` | `String` |  |
| `templateName` | `String` |  |
| `terminalCountryCode` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalIdAcq` | `String` |  |
| `terminalLanguageCode` | `String` |  |
| `terminalLocation` | `String` |  |
| `terminalSerialNumber` | `String` |  |
| `tokenIOAlias` | `String` |  |
| `tokenIOIban` | `String` |  |
| `tokenIOMemberId` | `String` |  |
| `webShopUrl` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.register_terminal sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    , ("packageOrderUuid", VStr "example_packageOrderUuid")   -- String
    , ("productOrderUuid", VStr "example_productOrderUuid")   -- String
    , ("templateName", VStr "example_templateName")   -- String
    , ("terminalCountryCode", VStr "example_terminalCountryCode")   -- String
    , ("terminalLanguageCode", VStr "example_terminalLanguageCode")   -- String
    , ("terminalLocation", VStr "example_terminalLocation")   -- String
    ]
  ctrl <- emptyMap
  register_terminal <- Sdk.eCreate ent d ctrl
  register_terminalData <- Sdk.eDataGet register_terminal
```


### ReportData

Create an instance: `report_data <- Sdk.report_data sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `[Value]` |  |
| `clearingDateFrom` | `String` |  |
| `clearingDateTo` | `String` |  |
| `corporateId` | `String` |  |
| `currency` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sumOverCreditTx` | `Value` |  |
| `sumOverDebitTx` | `Value` |  |
| `terminalId` | `Int` |  |

#### Example: Create

```haskell
  ent <- Sdk.report_data sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    , ("corporateId", VStr "example_corporateId")   -- String
    , ("currency", VStr "example_currency")   -- String
    ]
  ctrl <- emptyMap
  report_data <- Sdk.eCreate ent d ctrl
  report_dataData <- Sdk.eDataGet report_data
```


### StatusTransaction

Create an instance: `status_transaction <- Sdk.status_transaction sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String` |  |
| `acquirerTerminalId` | `String` |  |
| `amount` | `Int` |  |
| `applicationCryptogram` | `String` |  |
| `authorizationCode` | `Value` |  |
| `authorizationDate` | `String` |  |
| `cardBrand` | `String` |  |
| `cardEntry` | `String` |  |
| `cardExpiration` | `String` |  |
| `cardNumber` | `String` |  |
| `clearingAmount` | `Int` |  |
| `clearingBatchId` | `String` |  |
| `clearingCurrency` | `String` |  |
| `clearingDate` | `String` |  |
| `clearingProcessedDate` | `String` |  |
| `clearingStatus` | `String` |  |
| `clientId` | `Int` |  |
| `currency` | `String` |  |
| `cvm` | `String` |  |
| `ecrData` | `String` |  |
| `emvApplicationId` | `String` |  |
| `emvApplicationLabel` | `String` |  |
| `merchantName` | `String` |  |
| `merchantNumber` | `String` |  |
| `originalClientId` | `String` |  |
| `originalTerminalId` | `Int` |  |
| `originalTransactionId` | `String` |  |
| `paymentReason` | `String` |  |
| `receiptNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseCodeFromAS` | `String` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `serviceCode` | `String` |  |
| `settlementStatus` | `String` |  |
| `sourceId` | `Int` |  |
| `tecsengineResponseCode` | `Int` |  |
| `tecsengineResponseText` | `String` |  |
| `terminalEndOfDayDate` | `String` |  |
| `terminalId` | `Int` |  |
| `terminalLocation` | `String` |  |
| `tipAmount` | `Int` |  |
| `traceNumber` | `Int` |  |
| `transactionClearingDate` | `String` |  |
| `transactionDate` | `String` |  |
| `transactionId` | `String` |  |
| `transactionSeqNumber` | `Int` |  |
| `transactionServerDate` | `String` |  |
| `transactionSource` | `String` |  |
| `transactionType` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.status_transaction sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  status_transaction <- Sdk.eCreate ent d ctrl
  status_transactionData <- Sdk.eDataGet status_transaction
```


### StoreTerminalParameter

Create an instance: `store_terminal_parameter <- Sdk.store_terminal_parameter sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `Value` |  |
| `configVersion` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `serialNumber` | `String` |  |
| `tidSent` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.store_terminal_parameter sdk VNoval
  d <- jo
    [ ("serialNumber", VStr "example_serialNumber")   -- String
    ]
  ctrl <- emptyMap
  store_terminal_parameter <- Sdk.eCreate ent d ctrl
  store_terminal_parameterData <- Sdk.eDataGet store_terminal_parameter
```


### TerminalId

Create an instance: `terminal_id <- Sdk.terminal_id sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `[Value]` |  |
| `duplicateTerminalIds` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `terminals` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.terminal_id sdk VNoval
  d <- jo
    [ ("deviceSerialNumber", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  terminal_id <- Sdk.eCreate ent d ctrl
  terminal_idData <- Sdk.eDataGet terminal_id
```


### TransactionHistory

Create an instance: `transaction_history <- Sdk.transaction_history sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

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
| `pagination` | `Value` |  |
| `paymentTokenPublicId` | `String` |  |
| `receiptNumber` | `String` |  |
| `referencedTransactionId` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `retrievalReferenceNumber` | `String` |  |
| `sourceId` | `Int` |  |
| `tecsengineResponseCodeFrom` | `String` |  |
| `tecsengineResponseCodeTo` | `String` |  |
| `terminalId` | `Int` |  |
| `traceNumber` | `String` |  |
| `transactionAmountFrom` | `String` |  |
| `transactionAmountTo` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionHistories` | `[Value]` |  |
| `transactionId` | `String` |  |
| `transactionType` | `String` |  |
| `wallet` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.transaction_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transaction_history <- Sdk.eCreate ent d ctrl
  transaction_historyData <- Sdk.eDataGet transaction_history
```


### TransactionsCount

Create an instance: `transactions_count <- Sdk.transactions_count sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.transactions_count sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transactions_count <- Sdk.eCreate ent d ctrl
  transactions_countData <- Sdk.eDataGet transactions_count
```


### TransactionsCountCardBrand

Create an instance: `transactions_count_card_brand <- Sdk.transactions_count_card_brand sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `transactionsCount` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.transactions_count_card_brand sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transactions_count_card_brand <- Sdk.eCreate ent d ctrl
  transactions_count_card_brandData <- Sdk.eDataGet transactions_count_card_brand
```


### TransactionsTurnover

Create an instance: `transactions_turnover <- Sdk.transactions_turnover sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `transactionDateFrom` | `String` |  |
| `transactionDateTo` | `String` |  |
| `turnovers` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.transactions_turnover sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  transactions_turnover <- Sdk.eCreate ent d ctrl
  transactions_turnoverData <- Sdk.eDataGet transactions_turnover
```


### UpdateMerchant

Create an instance: `update_merchant <- Sdk.update_merchant sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `corporateUuid` | `String` |  |
| `country` | `String` |  |
| `merchantCategoryCode` | `String` |  |
| `name` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street` | `String` |  |
| `vuNummer` | `String` |  |
| `zipcode` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.update_merchant sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    ]
  ctrl <- emptyMap
  update_merchant <- Sdk.eCreate ent d ctrl
  update_merchantData <- Sdk.eDataGet update_merchant
```


### UpdateTemplateXml

Create an instance: `update_template_xml <- Sdk.update_template_xml sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `templateName` | `String` |  |
| `templateXml` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.update_template_xml sdk VNoval
  d <- jo
    [ ("templateName", VStr "example_templateName")   -- String
    , ("templateXml", VStr "example_templateXml")   -- String
    ]
  ctrl <- emptyMap
  update_template_xml <- Sdk.eCreate ent d ctrl
  update_template_xmlData <- Sdk.eDataGet update_template_xml
```


### Version

Create an instance: `version <- Sdk.version sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eLoad ent match ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.version sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  version <- Sdk.eLoad ent match ctrl
  -- The op resolves to the ENTITY; the record is inside it.
  versionData <- Sdk.eDataGet version
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
