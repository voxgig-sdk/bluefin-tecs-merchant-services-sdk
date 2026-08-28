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
(* Create — resolves to the ENTITY; e_data_get gives the record *)
let created = (Sdk_client.cancel_transaction client Noval).e_create (jo [("clientId", (Num 1.)); ("currency", (Str "example_currency")); ("receiptNumber", (Str "example_receiptNumber")); ("terminalId", (Num 1.))]) Noval in
print_endline (stringify (created.e_data_get ()));

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
  (* Entity ops resolve to the ENTITY and raise on error. *)
  let digital_services_api = (Sdk_client.digital_services_api client Noval).e_load (empty_map ()) Noval in
  print_endline (stringify (digital_services_api.e_data_get ()))  (* the mock response record *)
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
| `e_load` | `value -> value -> entity_obj` | Load a single entity by match criteria. Resolves to the entity. Raises on error. |
| `e_create` | `value -> value -> entity_obj` | Create a new entity. Resolves to the entity. Raises on error. |
| `e_data_get` | `unit -> value` | Get entity data. |
| `e_data_set` | `value -> unit` | Set entity data. |
| `e_match_get` | `unit -> value` | Get entity match criteria. |
| `e_match_set` | `value -> unit` | Set entity match criteria. |
| `e_make` | `unit -> entity_obj` | Create a new instance with the same options. |
| `e_name` | `string` | The entity name. |

### Result shape

Entity operations resolve to the ENTITY, not the raw record — `e_list` to
one entity per record — and raise `Sdk_error.E` on error. The record is
reached through `e_data_get`, which returns the entity's data container.
`e_remove` resolves to the entity marked deleted (`e_deleted`); it keeps the
data it held. Wrap calls in `try`/`with` to handle failures.

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
| `id` |  |
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

Create an instance: `let cancel_transaction = Sdk_client.cancel_transaction client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `int` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `int` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```ocaml
let cancel_transaction = (Sdk_client.cancel_transaction client Noval).e_create (jo [
    ("clientId", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receiptNumber", (Str "example_receiptNumber"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let cancel_transaction_data = cancel_transaction.e_data_get ()
```


### CheckCardBlackListed

Create an instance: `let check_card_black_listed = Sdk_client.check_card_black_listed client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let check_card_black_listed = (Sdk_client.check_card_black_listed client Noval).e_create (jo [
]) Noval
let check_card_black_listed_data = check_card_black_listed.e_data_get ()
```


### CreateProduct

Create an instance: `let create_product = Sdk_client.create_product client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `int` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateType` | `string` |  |
| `templateXml` | `string` |  |
| `terminalType` | `string` |  |

#### Example: Create

```ocaml
let create_product = (Sdk_client.create_product client Noval).e_create (jo [
    ("templateName", (Str "example_templateName"));  (* string *)
    ("templateType", (Str "example_templateType"));  (* string *)
    ("templateXml", (Str "example_templateXml"));  (* string *)
    ("terminalType", (Str "example_terminalType"));  (* string *)
]) Noval
let create_product_data = create_product.e_data_get ()
```


### DeactivateTerminal

Create an instance: `let deactivate_terminal = Sdk_client.deactivate_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `deactivationReason` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```ocaml
let deactivate_terminal = (Sdk_client.deactivate_terminal client Noval).e_create (jo [
    ("deactivationReason", (Str "example_deactivationReason"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let deactivate_terminal_data = deactivate_terminal.e_data_get ()
```


### DigitalServicesApi

Create an instance: `let digital_services_api = Sdk_client.digital_services_api client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `txCount` | `int` |  |
| `txIdEnd` | `string` |  |
| `txIdStart` | `string` |  |
| `txSeqNoEnd` | `int` |  |
| `txSeqNoStart` | `int` |  |
| `txTotal` | `int` |  |

#### Example: Load

```ocaml
(* The op resolves to the ENTITY; the record is inside it. *)
let digital_services_api = (Sdk_client.digital_services_api client Noval).e_load (Noval) Noval
let digital_services_api_data = digital_services_api.e_data_get ()
```

#### Example: Create

```ocaml
let digital_services_api = (Sdk_client.digital_services_api client Noval).e_create (jo [
    ("file_id", (Str "example_file_id"));  (* string *)
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let digital_services_api_data = digital_services_api.e_data_get ()
```


### EcDataEcom

Create an instance: `let ec_data_ecom = Sdk_client.ec_data_ecom client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```ocaml
let ec_data_ecom = (Sdk_client.ec_data_ecom client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
    ("transactionId", (Str "example_transactionId"));  (* string *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let ec_data_ecom_data = ec_data_ecom.e_data_get ()
```


### EcomParameter

Create an instance: `let ecom_parameter = Sdk_client.ecom_parameter client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `string` |  |
| `ecomSkey` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```ocaml
let ecom_parameter = (Sdk_client.ecom_parameter client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let ecom_parameter_data = ecom_parameter.e_data_get ()
```


### EcrData

Create an instance: `let ecr_data = Sdk_client.ecr_data client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```ocaml
let ecr_data = (Sdk_client.ecr_data client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
    ("transactionId", (Str "example_transactionId"));  (* string *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let ecr_data_data = ecr_data.e_data_get ()
```


### EmvData

Create an instance: `let emv_data = Sdk_client.emv_data client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```ocaml
let emv_data = (Sdk_client.emv_data client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
    ("transactionId", (Str "example_transactionId"));  (* string *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let emv_data_data = emv_data.e_data_get ()
```


### EnableAcquiring

Create an instance: `let enable_acquiring = Sdk_client.enable_acquiring client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `int` |  |
| `additionalData` | `value map` |  |
| `corporateUuid` | `string` |  |
| `currency` | `string` |  |
| `merchantCategoryCode` | `int` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sortingCode` | `int` |  |
| `templateName` | `string` |  |
| `terminalIdAcq` | `string` |  |
| `terminalIds` | `value list` |  |
| `vuNummer` | `string` |  |

#### Example: Create

```ocaml
let enable_acquiring = (Sdk_client.enable_acquiring client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("merchantCategoryCode", (Num 1.));  (* int *)
    ("packageOrderUuid", (Str "example_packageOrderUuid"));  (* string *)
    ("productOrderUuid", (Str "example_productOrderUuid"));  (* string *)
    ("templateName", (Str "example_templateName"));  (* string *)
]) Noval
let enable_acquiring_data = enable_acquiring.e_data_get ()
```


### GetMerchantContractNumber

Create an instance: `let get_merchant_contract_number = Sdk_client.get_merchant_contract_number client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let get_merchant_contract_number = (Sdk_client.get_merchant_contract_number client Noval).e_create (jo [
    ("merchantContractNumber", (Str "example_merchantContractNumber"));  (* string *)
]) Noval
let get_merchant_contract_number_data = get_merchant_contract_number.e_data_get ()
```


### GetTemplateXml

Create an instance: `let get_template_xml = Sdk_client.get_template_xml client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```ocaml
let get_template_xml = (Sdk_client.get_template_xml client Noval).e_create (jo [
    ("templateName", (Str "example_templateName"));  (* string *)
]) Noval
let get_template_xml_data = get_template_xml.e_data_get ()
```


### IntroduceMandator

Create an instance: `let introduce_mandator = Sdk_client.introduce_mandator client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let introduce_mandator = (Sdk_client.introduce_mandator client Noval).e_create (jo [
    ("mandatorName", (Str "example_mandatorName"));  (* string *)
]) Noval
let introduce_mandator_data = introduce_mandator.e_data_get ()
```


### IntroducePackage

Create an instance: `let introduce_package = Sdk_client.introduce_package client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalTemplateDescription` | `string` |  |

#### Example: Create

```ocaml
let introduce_package = (Sdk_client.introduce_package client Noval).e_create (jo [
    ("terminalTemplateDescription", (Str "example_terminalTemplateDescription"));  (* string *)
]) Noval
let introduce_package_data = introduce_package.e_data_get ()
```


### KeepAlive

Create an instance: `let keep_alive = Sdk_client.keep_alive client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `kaDateTimeFrom` | `string` |  |
| `kaDateTimeTo` | `string` |  |
| `keepAliveData` | `value list` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalDateTimeFrom` | `string` |  |
| `terminalDateTimeTo` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```ocaml
let keep_alive = (Sdk_client.keep_alive client Noval).e_create (jo [
]) Noval
let keep_alive_data = keep_alive.e_data_get ()
```


### ListTerminal

Create an instance: `let list_terminal = Sdk_client.list_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `value list` |  |
| `filter` | `value map` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminals` | `value list` |  |

#### Example: Create

```ocaml
let list_terminal = (Sdk_client.list_terminal client Noval).e_create (jo [
]) Noval
let list_terminal_data = list_terminal.e_data_get ()
```


### MandatorClearingExport

Create an instance: `let mandator_clearing_export = Sdk_client.mandator_clearing_export client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `value map` |  |
| `records` | `value list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let mandator_clearing_export = (Sdk_client.mandator_clearing_export client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let mandator_clearing_export_data = mandator_clearing_export.e_data_get ()
```


### MandatorClearingExportDownload

Create an instance: `let mandator_clearing_export_download = Sdk_client.mandator_clearing_export_download client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | End date for clearing export (inclusive) |
| `fileId` | `string` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | Optional filename template for the export file |
| `id` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `status` | `string` | Processing status of the export request |

#### Example: Load

```ocaml
(* The op resolves to the ENTITY; the record is inside it. *)
let mandator_clearing_export_download = (Sdk_client.mandator_clearing_export_download client Noval).e_load (jo [("id", (Str "mandator_clearing_export_download_id"))]) Noval
let mandator_clearing_export_download_data = mandator_clearing_export_download.e_data_get ()
```

#### Example: Create

```ocaml
let mandator_clearing_export_download = (Sdk_client.mandator_clearing_export_download client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let mandator_clearing_export_download_data = mandator_clearing_export_download.e_data_get ()
```


### MandatorClearingExportSummary

Create an instance: `let mandator_clearing_export_summary = Sdk_client.mandator_clearing_export_summary client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `value list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let mandator_clearing_export_summary = (Sdk_client.mandator_clearing_export_summary client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let mandator_clearing_export_summary_data = mandator_clearing_export_summary.e_data_get ()
```


### MerchantPortalServicesApi

Create an instance: `let merchant_portal_services_api = Sdk_client.merchant_portal_services_api client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

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
| `pagination` | `value map` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `int` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

#### Example: Create

```ocaml
let merchant_portal_services_api = (Sdk_client.merchant_portal_services_api client Noval).e_create (jo [
]) Noval
let merchant_portal_services_api_data = merchant_portal_services_api.e_data_get ()
```


### MoveTid

Create an instance: `let move_tid = Sdk_client.move_tid client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `value list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `targetPackageorderuuid` | `string` |  |
| `targetProductorderuuid` | `string` |  |

#### Example: Create

```ocaml
let move_tid = (Sdk_client.move_tid client Noval).e_create (jo [
    ("productorderuuids", (empty_list ()));  (* value list *)
]) Noval
let move_tid_data = move_tid.e_data_get ()
```


### PaymentManual

Create an instance: `let payment_manual = Sdk_client.payment_manual client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `string` | Acquirer name parsed from KKG field |
| `amount` | `int` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `string` | Authorization number from the gateway |
| `cardNumber` | `string` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `string` | Card type parsed from KKG field |
| `currency` | `string` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `string` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `string` | Date and time of the transaction |
| `expDate` | `string` | Card expiry date in MMYY format |
| `merchantId` | `string` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `string` | Original transaction ID from gateway |
| `password` | `string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `string` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `string` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `string` | Terminal ID used for the transaction |
| `transactionId` | `string` | Transaction ID generated by the backend |
| `txtype` | `string` | Transaction type |

#### Example: Create

```ocaml
let payment_manual = (Sdk_client.payment_manual client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("cardNumber", (Str "example_cardNumber"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("expDate", (Str "example_expDate"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
let payment_manual_data = payment_manual.e_data_get ()
```


### PaymentSred

Create an instance: `let payment_sred = Sdk_client.payment_sred client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `int` | Transaction amount in minor units (cents) |
| `currency` | `string` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `string` | Device type that provided the SRED payload |
| `devicePayload` | `string` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `string` | Card expiry date in MMYY format |
| `mode` | `string` | Decryption mode |
| `panMasked` | `string` | Masked PAN (first 6 and last 4 digits) |
| `password` | `string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `string` | Device serial number |
| `serviceCode` | `string` | Service code from the card |
| `terminalId` | `string` | Terminal ID - 8 digits |
| `txtype` | `string` | Transaction type |

#### Example: Create

```ocaml
let payment_sred = (Sdk_client.payment_sred client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("devicePayload", (Str "example_devicePayload"));  (* string *)
    ("terminalId", (Str "example_terminalId"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
let payment_sred_data = payment_sred.e_data_get ()
```


### PreAuthTransactionCompletion

Create an instance: `let pre_auth_transaction_completion = Sdk_client.pre_auth_transaction_completion client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `int` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `cardNumberReference` | `string` |  |
| `clientId` | `int` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```ocaml
let pre_auth_transaction_completion = (Sdk_client.pre_auth_transaction_completion client Noval).e_create (jo [
    ("cardNumberReference", (Str "example_cardNumberReference"));  (* string *)
    ("clientId", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receiptNumber", (Str "example_receiptNumber"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let pre_auth_transaction_completion_data = pre_auth_transaction_completion.e_data_get ()
```


### ReactivateTerminal

Create an instance: `let reactivate_terminal = Sdk_client.reactivate_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `reactivationReason` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```ocaml
let reactivate_terminal = (Sdk_client.reactivate_terminal client Noval).e_create (jo [
    ("reactivationReason", (Str "example_reactivationReason"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let reactivate_terminal_data = reactivate_terminal.e_data_get ()
```


### RefundTransaction

Create an instance: `let refund_transaction = Sdk_client.refund_transaction client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `int` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `int` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```ocaml
let refund_transaction = (Sdk_client.refund_transaction client Noval).e_create (jo [
    ("clientId", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receiptNumber", (Str "example_receiptNumber"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let refund_transaction_data = refund_transaction.e_data_get ()
```


### RegisterTecsCompany

Create an instance: `let register_tecs_company = Sdk_client.register_tecs_company client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `partnerId` | `int` |  |
| `partnerName` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```ocaml
let register_tecs_company = (Sdk_client.register_tecs_company client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
    ("packageOrderUuid", (Str "example_packageOrderUuid"));  (* string *)
    ("productOrderUuid", (Str "example_productOrderUuid"));  (* string *)
    ("templateName", (Str "example_templateName"));  (* string *)
]) Noval
let register_tecs_company_data = register_tecs_company.e_data_get ()
```


### RegisterTerminal

Create an instance: `let register_terminal = Sdk_client.register_terminal client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `value map` |  |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `tecsWebSecretKey` | `string` |  |
| `templateName` | `string` |  |
| `terminalCountryCode` | `string` |  |
| `terminalId` | `int` |  |
| `terminalIdAcq` | `string` |  |
| `terminalLanguageCode` | `string` |  |
| `terminalLocation` | `string` |  |
| `terminalSerialNumber` | `string` |  |
| `tokenIOAlias` | `string` |  |
| `tokenIOIban` | `string` |  |
| `tokenIOMemberId` | `string` |  |
| `webShopUrl` | `string` |  |

#### Example: Create

```ocaml
let register_terminal = (Sdk_client.register_terminal client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
    ("packageOrderUuid", (Str "example_packageOrderUuid"));  (* string *)
    ("productOrderUuid", (Str "example_productOrderUuid"));  (* string *)
    ("templateName", (Str "example_templateName"));  (* string *)
    ("terminalCountryCode", (Str "example_terminalCountryCode"));  (* string *)
    ("terminalLanguageCode", (Str "example_terminalLanguageCode"));  (* string *)
    ("terminalLocation", (Str "example_terminalLocation"));  (* string *)
]) Noval
let register_terminal_data = register_terminal.e_data_get ()
```


### ReportData

Create an instance: `let report_data = Sdk_client.report_data client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `value list` |  |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` |  |
| `currency` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sumOverCreditTx` | `value map` |  |
| `sumOverDebitTx` | `value map` |  |
| `terminalId` | `int` |  |

#### Example: Create

```ocaml
let report_data = (Sdk_client.report_data client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
    ("corporateId", (Str "example_corporateId"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
]) Noval
let report_data_data = report_data.e_data_get ()
```


### StatusTransaction

Create an instance: `let status_transaction = Sdk_client.status_transaction client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `string` |  |
| `acquirerTerminalId` | `string` |  |
| `amount` | `int` |  |
| `applicationCryptogram` | `string` |  |
| `authorizationCode` | `value` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `string` |  |
| `cardBrand` | `string` |  |
| `cardEntry` | `string` |  |
| `cardExpiration` | `string` |  |
| `cardNumber` | `string` |  |
| `clearingAmount` | `int` |  |
| `clearingBatchId` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingDate` | `string` |  |
| `clearingProcessedDate` | `string` |  |
| `clearingStatus` | `string` |  |
| `clientId` | `int` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecrData` | `string` |  |
| `emvApplicationId` | `string` |  |
| `emvApplicationLabel` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `originalClientId` | `string` |  |
| `originalTerminalId` | `int` |  |
| `originalTransactionId` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseCodeFromAS` | `string` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `serviceCode` | `string` |  |
| `settlementStatus` | `string` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCode` | `int` |  |
| `tecsengineResponseText` | `string` |  |
| `terminalEndOfDayDate` | `string` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `string` |  |
| `tipAmount` | `int` |  |
| `traceNumber` | `int` |  |
| `transactionClearingDate` | `string` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionSeqNumber` | `int` |  |
| `transactionServerDate` | `string` |  |
| `transactionSource` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```ocaml
let status_transaction = (Sdk_client.status_transaction client Noval).e_create (jo [
]) Noval
let status_transaction_data = status_transaction.e_data_get ()
```


### StoreTerminalParameter

Create an instance: `let store_terminal_parameter = Sdk_client.store_terminal_parameter client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `value map` |  |
| `configVersion` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `tidSent` | `string` |  |

#### Example: Create

```ocaml
let store_terminal_parameter = (Sdk_client.store_terminal_parameter client Noval).e_create (jo [
    ("serialNumber", (Str "example_serialNumber"));  (* string *)
]) Noval
let store_terminal_parameter_data = store_terminal_parameter.e_data_get ()
```


### TerminalId

Create an instance: `let terminal_id = Sdk_client.terminal_id client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `value list` |  |
| `duplicateTerminalIds` | `value list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminals` | `value list` |  |

#### Example: Create

```ocaml
let terminal_id = (Sdk_client.terminal_id client Noval).e_create (jo [
    ("deviceSerialNumber", (empty_list ()));  (* value list *)
]) Noval
let terminal_id_data = terminal_id.e_data_get ()
```


### TransactionHistory

Create an instance: `let transaction_history = Sdk_client.transaction_history client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

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
| `pagination` | `value map` |  |
| `paymentTokenPublicId` | `string` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `int` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionHistories` | `value list` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

#### Example: Create

```ocaml
let transaction_history = (Sdk_client.transaction_history client Noval).e_create (jo [
]) Noval
let transaction_history_data = transaction_history.e_data_get ()
```


### TransactionsCount

Create an instance: `let transactions_count = Sdk_client.transactions_count client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `value list` |  |

#### Example: Create

```ocaml
let transactions_count = (Sdk_client.transactions_count client Noval).e_create (jo [
]) Noval
let transactions_count_data = transactions_count.e_data_get ()
```


### TransactionsCountCardBrand

Create an instance: `let transactions_count_card_brand = Sdk_client.transactions_count_card_brand client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `value list` |  |

#### Example: Create

```ocaml
let transactions_count_card_brand = (Sdk_client.transactions_count_card_brand client Noval).e_create (jo [
]) Noval
let transactions_count_card_brand_data = transactions_count_card_brand.e_data_get ()
```


### TransactionsTurnover

Create an instance: `let transactions_turnover = Sdk_client.transactions_turnover client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `turnovers` | `value list` |  |

#### Example: Create

```ocaml
let transactions_turnover = (Sdk_client.transactions_turnover client Noval).e_create (jo [
]) Noval
let transactions_turnover_data = transactions_turnover.e_data_get ()
```


### UpdateMerchant

Create an instance: `let update_merchant = Sdk_client.update_merchant client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporateUuid` | `string` |  |
| `country` | `string` |  |
| `merchantCategoryCode` | `string` |  |
| `name` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vuNummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```ocaml
let update_merchant = (Sdk_client.update_merchant client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
]) Noval
let update_merchant_data = update_merchant.e_data_get ()
```


### UpdateTemplateXml

Create an instance: `let update_template_xml = Sdk_client.update_template_xml client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateXml` | `string` |  |

#### Example: Create

```ocaml
let update_template_xml = (Sdk_client.update_template_xml client Noval).e_create (jo [
    ("templateName", (Str "example_templateName"));  (* string *)
    ("templateXml", (Str "example_templateXml"));  (* string *)
]) Noval
let update_template_xml_data = update_template_xml.e_data_get ()
```


### Version

Create an instance: `let version = Sdk_client.version client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```ocaml
(* The op resolves to the ENTITY; the record is inside it. *)
let version = (Sdk_client.version client Noval).e_load (Noval) Noval
let version_data = version.e_data_get ()
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

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
