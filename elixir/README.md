# BluefinTecsMerchantServices Elixir SDK



The Elixir SDK for the BluefinTecsMerchantServices API — an entity-oriented client
following idiomatic, functional Elixir conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `BluefinTecsMerchantServices.cancel_transaction(sdk)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to [Hex](https://hex.pm). Install it from
the GitHub release tag (`elixir/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases))
by adding a git dependency to your `mix.exs`:

```elixir
def deps do
  [
    {:bluefin_tecs_merchant_services, git: "https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk.git", tag: "elixir/vX.Y.Z"}
  ]
end
```

Or from a local source checkout:

```elixir
def deps do
  [
    {:bluefin_tecs_merchant_services, path: "../bluefin-tecs-merchant-services-sdk/elixir"}
  ]
end
```

Then run `mix deps.get`.


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```elixir
alias BluefinTecsMerchantServices.Helpers, as: H

sdk = BluefinTecsMerchantServices.new(H.deep(%{"apikey" => System.get_env("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY")}))
```

### 4. Create, update, and remove

```elixir
cancel_transaction = BluefinTecsMerchantServices.cancel_transaction(sdk)

# Create — returns the bare created record
created = BluefinTecsMerchantServices.Entity.CancelTransaction.create(cancel_transaction, H.deep(%{"clientId" => 1, "currency" => "example_currency", "receiptNumber" => "example_receiptNumber", "terminalId" => 1}))

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

For endpoints not covered by entity operations. `direct/2` never raises —
it returns a result node you branch on with `Voxgig.Struct.getprop/2`:

```elixir
alias Voxgig.Struct, as: S
alias BluefinTecsMerchantServices.Helpers, as: H

result = BluefinTecsMerchantServices.direct(sdk, H.deep(%{
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => %{"id" => "example"}
}))

if S.getprop(result, "ok") do
  IO.inspect(S.getprop(result, "status"))  # 200
  IO.inspect(S.getprop(result, "data"))    # response body
else
  # A non-2xx response carries status + data (the error body); a
  # transport-level failure carries err instead.
  IO.inspect(S.getprop(result, "err"))
end
```

### Prepare a request without sending it

```elixir
alias BluefinTecsMerchantServices.Helpers, as: H

# prepare/2 returns the fetch definition and raises on error.
fetchdef = BluefinTecsMerchantServices.prepare(sdk, H.deep(%{
  "path" => "/api/resource/{id}",
  "method" => "DELETE",
  "params" => %{"id" => "example"}
}))

IO.inspect(Voxgig.Struct.getprop(fetchdef, "url"))
IO.inspect(Voxgig.Struct.getprop(fetchdef, "method"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```elixir
alias BluefinTecsMerchantServices.Helpers, as: H

sdk = BluefinTecsMerchantServices.test()

# Entity ops return the bare record (raise on error).
digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.load(digital_services_api, H.deep(%{}))
IO.inspect(record)
```

### Use a custom fetch function

Replace the HTTP transport with your own function. It receives `(url,
fetchdef)` and returns a `{response, error}` tuple:

```elixir
alias Voxgig.Struct, as: S
alias BluefinTecsMerchantServices.Helpers, as: H

mock_fetch = fn _url, _fetchdef ->
  response = H.deep(%{
    "status" => 200,
    "statusText" => "OK",
    "headers" => %{},
    "json" => fn -> %{"id" => "mock01"} end
  })
  {response, nil}
end

sdk = BluefinTecsMerchantServices.new(H.deep(%{
  "base" => "http://localhost:8080",
  "system" => %{"fetch" => mock_fetch}
}))
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd elixir && mix test
```


## Reference

### BluefinTecsMerchantServices

```elixir
sdk = BluefinTecsMerchantServices.new(options)
```

Creates a new SDK client. `options` is a struct value node — build one from a
native map with `BluefinTecsMerchantServices.Helpers.deep/1`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String.t()` | API key for authentication. |
| `base` | `String.t()` | Base URL of the API server. |
| `prefix` | `String.t()` | URL path prefix prepended to all requests. |
| `suffix` | `String.t()` | URL path suffix appended to all requests. |
| `feature` | `map()` | Feature activation flags. |
| `extend` | `list()` | Additional feature instances to load. |
| `system` | `map()` | System overrides (e.g. custom `fetch` function). |

### test

```elixir
sdk = BluefinTecsMerchantServices.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsMerchantServices functions

| Function | Signature | Description |
| --- | --- | --- |
| `options_map` | `(client) :: map()` | Deep copy of current SDK options. |
| `get_utility` | `(client) :: map()` | The SDK utility node. |
| `prepare` | `(client, fetchargs) :: map()` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(client, fetchargs) :: map()` | Build and send an HTTP request. Returns a result node (branch on `ok`). |
| `cancel_transaction` | `(client, entopts \\ nil) :: entity` | Create a CancelTransaction entity handle. |
| `check_card_black_listed` | `(client, entopts \\ nil) :: entity` | Create a CheckCardBlackListed entity handle. |
| `create_product` | `(client, entopts \\ nil) :: entity` | Create a CreateProduct entity handle. |
| `deactivate_terminal` | `(client, entopts \\ nil) :: entity` | Create a DeactivateTerminal entity handle. |
| `digital_services_api` | `(client, entopts \\ nil) :: entity` | Create a DigitalServicesApi entity handle. |
| `ec_data_ecom` | `(client, entopts \\ nil) :: entity` | Create an EcDataEcom entity handle. |
| `ecom_parameter` | `(client, entopts \\ nil) :: entity` | Create an EcomParameter entity handle. |
| `ecr_data` | `(client, entopts \\ nil) :: entity` | Create an EcrData entity handle. |
| `emv_data` | `(client, entopts \\ nil) :: entity` | Create an EmvData entity handle. |
| `enable_acquiring` | `(client, entopts \\ nil) :: entity` | Create an EnableAcquiring entity handle. |
| `get_merchant_contract_number` | `(client, entopts \\ nil) :: entity` | Create a GetMerchantContractNumber entity handle. |
| `get_template_xml` | `(client, entopts \\ nil) :: entity` | Create a GetTemplateXml entity handle. |
| `introduce_mandator` | `(client, entopts \\ nil) :: entity` | Create an IntroduceMandator entity handle. |
| `introduce_package` | `(client, entopts \\ nil) :: entity` | Create an IntroducePackage entity handle. |
| `keep_alive` | `(client, entopts \\ nil) :: entity` | Create a KeepAlive entity handle. |
| `list_terminal` | `(client, entopts \\ nil) :: entity` | Create a ListTerminal entity handle. |
| `mandator_clearing_export` | `(client, entopts \\ nil) :: entity` | Create a MandatorClearingExport entity handle. |
| `mandator_clearing_export_download` | `(client, entopts \\ nil) :: entity` | Create a MandatorClearingExportDownload entity handle. |
| `mandator_clearing_export_summary` | `(client, entopts \\ nil) :: entity` | Create a MandatorClearingExportSummary entity handle. |
| `merchant_portal_services_api` | `(client, entopts \\ nil) :: entity` | Create a MerchantPortalServicesApi entity handle. |
| `move_tid` | `(client, entopts \\ nil) :: entity` | Create a MoveTid entity handle. |
| `payment_manual` | `(client, entopts \\ nil) :: entity` | Create a PaymentManual entity handle. |
| `payment_sred` | `(client, entopts \\ nil) :: entity` | Create a PaymentSred entity handle. |
| `pre_auth_transaction_completion` | `(client, entopts \\ nil) :: entity` | Create a PreAuthTransactionCompletion entity handle. |
| `reactivate_terminal` | `(client, entopts \\ nil) :: entity` | Create a ReactivateTerminal entity handle. |
| `refund_transaction` | `(client, entopts \\ nil) :: entity` | Create a RefundTransaction entity handle. |
| `register_tecs_company` | `(client, entopts \\ nil) :: entity` | Create a RegisterTecsCompany entity handle. |
| `register_terminal` | `(client, entopts \\ nil) :: entity` | Create a RegisterTerminal entity handle. |
| `report_data` | `(client, entopts \\ nil) :: entity` | Create a ReportData entity handle. |
| `status_transaction` | `(client, entopts \\ nil) :: entity` | Create a StatusTransaction entity handle. |
| `store_terminal_parameter` | `(client, entopts \\ nil) :: entity` | Create a StoreTerminalParameter entity handle. |
| `terminal_id` | `(client, entopts \\ nil) :: entity` | Create a TerminalId entity handle. |
| `transaction_history` | `(client, entopts \\ nil) :: entity` | Create a TransactionHistory entity handle. |
| `transactions_count` | `(client, entopts \\ nil) :: entity` | Create a TransactionsCount entity handle. |
| `transactions_count_card_brand` | `(client, entopts \\ nil) :: entity` | Create a TransactionsCountCardBrand entity handle. |
| `transactions_turnover` | `(client, entopts \\ nil) :: entity` | Create a TransactionsTurnover entity handle. |
| `update_merchant` | `(client, entopts \\ nil) :: entity` | Create an UpdateMerchant entity handle. |
| `update_template_xml` | `(client, entopts \\ nil) :: entity` | Create an UpdateTemplateXml entity handle. |
| `version` | `(client, entopts \\ nil) :: entity` | Create a Version entity handle. |

### Entity interface

Every entity's `BluefinTecsMerchantServices.Entity.<Name>` module shares the same interface.

| Function | Signature | Description |
| --- | --- | --- |
| `load` | `(entity, reqmatch, ctrl \\ nil) :: map()` | Load a single entity by match criteria. Raises on error. |
| `create` | `(entity, reqdata, ctrl \\ nil) :: map()` | Create a new entity. Raises on error. |
| `data_get` | `(entity) :: map()` | Get entity data. |
| `data_set` | `(entity, data)` | Set entity data. |
| `match_get` | `(entity) :: map()` | Get entity match criteria. |
| `match_set` | `(entity, match)` | Set entity match criteria. |
| `make` | `(entity) :: entity` | Create a new handle with the same options. |
| `get_name` | `(entity) :: String.t()` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a value node — a map for
single-entity ops, a list for `list`) and raise a `BluefinTecsMerchantServices.Error` on
failure. Wrap calls in `try`/`rescue` to handle errors.

The `direct/2` escape hatch never raises — it returns a result node you
branch on via `Voxgig.Struct.getprop(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean()` | `true` if the HTTP status is 2xx. |
| `status` | `integer()` | HTTP status code. |
| `headers` | `map()` | Response headers. |
| `data` | `any()` | Parsed JSON response body. |

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

Every operation lives on the entity's `BluefinTecsMerchantServices.Entity.<Name>` module and
takes an entity handle built from the client:


### CancelTransaction

Create a handle: `cancel_transaction = BluefinTecsMerchantServices.cancel_transaction(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String.t()` |  |
| `acquirerName` | `String.t()` |  |
| `actualBonusPoints` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorizationCode` | `String.t()` |  |
| `balanceAmount` | `String.t()` |  |
| `cardBrand` | `String.t()` |  |
| `cardNumber` | `String.t()` |  |
| `clientId` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `ecData` | `String.t()` |  |
| `ecrData` | `String.t()` |  |
| `emvData` | `String.t()` |  |
| `exchangeFee` | `integer()` |  |
| `exchangeRate` | `String.t()` |  |
| `languageCode` | `String.t()` |  |
| `merchantAddress` | `String.t()` |  |
| `merchantName` | `String.t()` |  |
| `merchantNumber` | `String.t()` |  |
| `messageType` | `String.t()` |  |
| `originalTraceNumber` | `integer()` |  |
| `originalTransactionId` | `String.t()` |  |
| `password` | `String.t()` |  |
| `paymentReason` | `String.t()` |  |
| `receiptFooter` | `String.t()` |  |
| `receiptHeader` | `String.t()` |  |
| `receiptLayout` | `integer()` |  |
| `receiptNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `serialNumber` | `String.t()` |  |
| `svc` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `terminalLocation` | `String.t()` |  |
| `traceNumber` | `integer()` |  |
| `transactionDate` | `String.t()` |  |
| `transactionId` | `String.t()` |  |
| `txType` | `String.t()` |  |
| `userData` | `String.t()` |  |

#### Example: Create

```elixir
cancel_transaction = BluefinTecsMerchantServices.cancel_transaction(sdk)
record = BluefinTecsMerchantServices.Entity.CancelTransaction.create(cancel_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "clientId" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receiptNumber" => "example_receiptNumber",  # String.t()
  "terminalId" => 1,  # integer()
}))
```


### CheckCardBlackListed

Create a handle: `check_card_black_listed = BluefinTecsMerchantServices.check_card_black_listed(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
check_card_black_listed = BluefinTecsMerchantServices.check_card_black_listed(sdk)
record = BluefinTecsMerchantServices.Entity.CheckCardBlackListed.create(check_card_black_listed, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### CreateProduct

Create a handle: `create_product = BluefinTecsMerchantServices.create_product(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `integer()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `templateName` | `String.t()` |  |
| `templateType` | `String.t()` |  |
| `templateXml` | `String.t()` |  |
| `terminalType` | `String.t()` |  |

#### Example: Create

```elixir
create_product = BluefinTecsMerchantServices.create_product(sdk)
record = BluefinTecsMerchantServices.Entity.CreateProduct.create(create_product, BluefinTecsMerchantServices.Helpers.deep(%{
  "templateName" => "example_templateName",  # String.t()
  "templateType" => "example_templateType",  # String.t()
  "templateXml" => "example_templateXml",  # String.t()
  "terminalType" => "example_terminalType",  # String.t()
}))
```


### DeactivateTerminal

Create a handle: `deactivate_terminal = BluefinTecsMerchantServices.deactivate_terminal(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String.t()` |  |
| `deactivationReason` | `String.t()` |  |
| `packageOrderUuid` | `String.t()` |  |
| `productOrderUuid` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalId` | `integer()` |  |

#### Example: Create

```elixir
deactivate_terminal = BluefinTecsMerchantServices.deactivate_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.DeactivateTerminal.create(deactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "deactivationReason" => "example_deactivationReason",  # String.t()
  "terminalId" => 1,  # integer()
}))
```


### DigitalServicesApi

Create a handle: `digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |
| `load(entity, match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `txCount` | `integer()` |  |
| `txIdEnd` | `String.t()` |  |
| `txIdStart` | `String.t()` |  |
| `txSeqNoEnd` | `integer()` |  |
| `txSeqNoStart` | `integer()` |  |
| `txTotal` | `integer()` |  |

#### Example: Load

```elixir
digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.load(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{}))
```

#### Example: Create

```elixir
digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.create(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{
  "file_id" => "example_file_id",  # String.t()
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```


### EcDataEcom

Create a handle: `ec_data_ecom = BluefinTecsMerchantServices.ec_data_ecom(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `transactionId` | `String.t()` |  |
| `transactionType` | `String.t()` |  |

#### Example: Create

```elixir
ec_data_ecom = BluefinTecsMerchantServices.ec_data_ecom(sdk)
record = BluefinTecsMerchantServices.Entity.EcDataEcom.create(ec_data_ecom, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
  "transactionId" => "example_transactionId",  # String.t()
  "transactionType" => "example_transactionType",  # String.t()
}))
```


### EcomParameter

Create a handle: `ecom_parameter = BluefinTecsMerchantServices.ecom_parameter(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `String.t()` |  |
| `ecomSkey` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalId` | `integer()` |  |

#### Example: Create

```elixir
ecom_parameter = BluefinTecsMerchantServices.ecom_parameter(sdk)
record = BluefinTecsMerchantServices.Entity.EcomParameter.create(ecom_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
}))
```


### EcrData

Create a handle: `ecr_data = BluefinTecsMerchantServices.ecr_data(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `transactionId` | `String.t()` |  |
| `transactionType` | `String.t()` |  |

#### Example: Create

```elixir
ecr_data = BluefinTecsMerchantServices.ecr_data(sdk)
record = BluefinTecsMerchantServices.Entity.EcrData.create(ecr_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
  "transactionId" => "example_transactionId",  # String.t()
  "transactionType" => "example_transactionType",  # String.t()
}))
```


### EmvData

Create a handle: `emv_data = BluefinTecsMerchantServices.emv_data(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `transactionId` | `String.t()` |  |
| `transactionType` | `String.t()` |  |

#### Example: Create

```elixir
emv_data = BluefinTecsMerchantServices.emv_data(sdk)
record = BluefinTecsMerchantServices.Entity.EmvData.create(emv_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
  "transactionId" => "example_transactionId",  # String.t()
  "transactionType" => "example_transactionType",  # String.t()
}))
```


### EnableAcquiring

Create a handle: `enable_acquiring = BluefinTecsMerchantServices.enable_acquiring(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `integer()` |  |
| `additionalData` | `map()` |  |
| `corporateUuid` | `String.t()` |  |
| `currency` | `String.t()` |  |
| `merchantCategoryCode` | `integer()` |  |
| `packageOrderUuid` | `String.t()` |  |
| `productOrderUuid` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `sortingCode` | `integer()` |  |
| `templateName` | `String.t()` |  |
| `terminalIdAcq` | `String.t()` |  |
| `terminalIds` | `list()` |  |
| `vuNummer` | `String.t()` |  |

#### Example: Create

```elixir
enable_acquiring = BluefinTecsMerchantServices.enable_acquiring(sdk)
record = BluefinTecsMerchantServices.Entity.EnableAcquiring.create(enable_acquiring, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
  "currency" => "example_currency",  # String.t()
  "merchantCategoryCode" => 1,  # integer()
  "packageOrderUuid" => "example_packageOrderUuid",  # String.t()
  "productOrderUuid" => "example_productOrderUuid",  # String.t()
  "templateName" => "example_templateName",  # String.t()
}))
```


### GetMerchantContractNumber

Create a handle: `get_merchant_contract_number = BluefinTecsMerchantServices.get_merchant_contract_number(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
get_merchant_contract_number = BluefinTecsMerchantServices.get_merchant_contract_number(sdk)
record = BluefinTecsMerchantServices.Entity.GetMerchantContractNumber.create(get_merchant_contract_number, BluefinTecsMerchantServices.Helpers.deep(%{
  "merchantContractNumber" => "example_merchantContractNumber",  # String.t()
}))
```


### GetTemplateXml

Create a handle: `get_template_xml = BluefinTecsMerchantServices.get_template_xml(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `templateName` | `String.t()` |  |

#### Example: Create

```elixir
get_template_xml = BluefinTecsMerchantServices.get_template_xml(sdk)
record = BluefinTecsMerchantServices.Entity.GetTemplateXml.create(get_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "templateName" => "example_templateName",  # String.t()
}))
```


### IntroduceMandator

Create a handle: `introduce_mandator = BluefinTecsMerchantServices.introduce_mandator(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
introduce_mandator = BluefinTecsMerchantServices.introduce_mandator(sdk)
record = BluefinTecsMerchantServices.Entity.IntroduceMandator.create(introduce_mandator, BluefinTecsMerchantServices.Helpers.deep(%{
  "mandatorName" => "example_mandatorName",  # String.t()
}))
```


### IntroducePackage

Create a handle: `introduce_package = BluefinTecsMerchantServices.introduce_package(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalTemplateDescription` | `String.t()` |  |

#### Example: Create

```elixir
introduce_package = BluefinTecsMerchantServices.introduce_package(sdk)
record = BluefinTecsMerchantServices.Entity.IntroducePackage.create(introduce_package, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalTemplateDescription" => "example_terminalTemplateDescription",  # String.t()
}))
```


### KeepAlive

Create a handle: `keep_alive = BluefinTecsMerchantServices.keep_alive(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `String.t()` |  |
| `kaDateTimeFrom` | `String.t()` |  |
| `kaDateTimeTo` | `String.t()` |  |
| `keepAliveData` | `list()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalDateTimeFrom` | `String.t()` |  |
| `terminalDateTimeTo` | `String.t()` |  |
| `terminalId` | `integer()` |  |

#### Example: Create

```elixir
keep_alive = BluefinTecsMerchantServices.keep_alive(sdk)
record = BluefinTecsMerchantServices.Entity.KeepAlive.create(keep_alive, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### ListTerminal

Create a handle: `list_terminal = BluefinTecsMerchantServices.list_terminal(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `list()` |  |
| `filter` | `map()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminals` | `list()` |  |

#### Example: Create

```elixir
list_terminal = BluefinTecsMerchantServices.list_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.ListTerminal.create(list_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### MandatorClearingExport

Create a handle: `mandator_clearing_export = BluefinTecsMerchantServices.mandator_clearing_export(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `map()` |  |
| `records` | `list()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
mandator_clearing_export = BluefinTecsMerchantServices.mandator_clearing_export(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExport.create(mandator_clearing_export, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```


### MandatorClearingExportDownload

Create a handle: `mandator_clearing_export_download = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |
| `load(entity, match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String.t()` | End date for clearing export (inclusive) |
| `fileId` | `String.t()` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String.t()` | Optional filename template for the export file |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `status` | `String.t()` | Processing status of the export request |

#### Example: Load

```elixir
mandator_clearing_export_download = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.load(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{"id" => "mandator_clearing_export_download_id"}))
```

#### Example: Create

```elixir
mandator_clearing_export_download = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.create(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```


### MandatorClearingExportSummary

Create a handle: `mandator_clearing_export_summary = BluefinTecsMerchantServices.mandator_clearing_export_summary(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `list()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
mandator_clearing_export_summary = BluefinTecsMerchantServices.mandator_clearing_export_summary(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary.create(mandator_clearing_export_summary, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```


### MerchantPortalServicesApi

Create a handle: `merchant_portal_services_api = BluefinTecsMerchantServices.merchant_portal_services_api(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `String.t()` |  |
| `authorizationCode` | `String.t()` |  |
| `cardBrand` | `String.t()` |  |
| `clearingAmountFrom` | `String.t()` |  |
| `clearingAmountTo` | `String.t()` |  |
| `clearingCurrency` | `String.t()` |  |
| `clearingStatus` | `String.t()` |  |
| `corporateUUID` | `String.t()` |  |
| `orderByTransactionDate` | `String.t()` |  |
| `pagination` | `map()` |  |
| `receiptNumber` | `String.t()` |  |
| `referencedTransactionId` | `String.t()` |  |
| `retrievalReferenceNumber` | `String.t()` |  |
| `sourceId` | `integer()` |  |
| `tecsengineResponseCodeFrom` | `String.t()` |  |
| `tecsengineResponseCodeTo` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `traceNumber` | `String.t()` |  |
| `transactionAmountFrom` | `String.t()` |  |
| `transactionAmountTo` | `String.t()` |  |
| `transactionDateFrom` | `String.t()` |  |
| `transactionDateTo` | `String.t()` |  |
| `transactionId` | `String.t()` |  |
| `transactionType` | `String.t()` |  |
| `wallet` | `String.t()` | Filter by wallet type. |

#### Example: Create

```elixir
merchant_portal_services_api = BluefinTecsMerchantServices.merchant_portal_services_api(sdk)
record = BluefinTecsMerchantServices.Entity.MerchantPortalServicesApi.create(merchant_portal_services_api, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### MoveTid

Create a handle: `move_tid = BluefinTecsMerchantServices.move_tid(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `list()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `targetPackageorderuuid` | `String.t()` |  |
| `targetProductorderuuid` | `String.t()` |  |

#### Example: Create

```elixir
move_tid = BluefinTecsMerchantServices.move_tid(sdk)
record = BluefinTecsMerchantServices.Entity.MoveTid.create(move_tid, BluefinTecsMerchantServices.Helpers.deep(%{
  "productorderuuids" => [],  # list()
}))
```


### PaymentManual

Create a handle: `payment_manual = BluefinTecsMerchantServices.payment_manual(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String.t()` | Acquirer name parsed from KKG field |
| `amount` | `integer()` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `String.t()` | Authorization number from the gateway |
| `cardNumber` | `String.t()` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `String.t()` | Card type parsed from KKG field |
| `currency` | `String.t()` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `String.t()` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `String.t()` | Date and time of the transaction |
| `expDate` | `String.t()` | Card expiry date in MMYY format |
| `merchantId` | `String.t()` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `String.t()` | Original transaction ID from gateway |
| `password` | `String.t()` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `String.t()` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `String.t()` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `String.t()` | Terminal ID used for the transaction |
| `transactionId` | `String.t()` | Transaction ID generated by the backend |
| `txtype` | `String.t()` | Transaction type |

#### Example: Create

```elixir
payment_manual = BluefinTecsMerchantServices.payment_manual(sdk)
record = BluefinTecsMerchantServices.Entity.PaymentManual.create(payment_manual, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "cardNumber" => "example_cardNumber",  # String.t()
  "currency" => "example_currency",  # String.t()
  "expDate" => "example_expDate",  # String.t()
  "txtype" => "example_txtype",  # String.t()
}))
```


### PaymentSred

Create a handle: `payment_sred = BluefinTecsMerchantServices.payment_sred(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `integer()` | Transaction amount in minor units (cents) |
| `currency` | `String.t()` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `String.t()` | Device type that provided the SRED payload |
| `devicePayload` | `String.t()` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `String.t()` | Card expiry date in MMYY format |
| `mode` | `String.t()` | Decryption mode |
| `panMasked` | `String.t()` | Masked PAN (first 6 and last 4 digits) |
| `password` | `String.t()` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `String.t()` | Device serial number |
| `serviceCode` | `String.t()` | Service code from the card |
| `terminalId` | `String.t()` | Terminal ID - 8 digits |
| `txtype` | `String.t()` | Transaction type |

#### Example: Create

```elixir
payment_sred = BluefinTecsMerchantServices.payment_sred(sdk)
record = BluefinTecsMerchantServices.Entity.PaymentSred.create(payment_sred, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "devicePayload" => "example_devicePayload",  # String.t()
  "terminalId" => "example_terminalId",  # String.t()
  "txtype" => "example_txtype",  # String.t()
}))
```


### PreAuthTransactionCompletion

Create a handle: `pre_auth_transaction_completion = BluefinTecsMerchantServices.pre_auth_transaction_completion(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String.t()` |  |
| `acquirerName` | `String.t()` |  |
| `actualBonusPoints` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorizationCode` | `String.t()` |  |
| `balanceAmount` | `String.t()` |  |
| `cardBrand` | `String.t()` |  |
| `cardNumber` | `String.t()` |  |
| `cardNumberReference` | `String.t()` |  |
| `clientId` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `ecData` | `String.t()` |  |
| `ecrData` | `String.t()` |  |
| `emvData` | `String.t()` |  |
| `exchangeFee` | `integer()` |  |
| `exchangeRate` | `String.t()` |  |
| `languageCode` | `String.t()` |  |
| `merchantAddress` | `String.t()` |  |
| `merchantName` | `String.t()` |  |
| `merchantNumber` | `String.t()` |  |
| `messageType` | `String.t()` |  |
| `originalTraceNumber` | `integer()` |  |
| `originalTransactionId` | `String.t()` |  |
| `password` | `String.t()` |  |
| `paymentReason` | `String.t()` |  |
| `receiptFooter` | `String.t()` |  |
| `receiptHeader` | `String.t()` |  |
| `receiptLayout` | `integer()` |  |
| `receiptNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `serialNumber` | `String.t()` |  |
| `svc` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `terminalLocation` | `String.t()` |  |
| `traceNumber` | `integer()` |  |
| `transactionDate` | `String.t()` |  |
| `transactionId` | `String.t()` |  |
| `transactionType` | `String.t()` |  |
| `txType` | `String.t()` |  |
| `userData` | `String.t()` |  |

#### Example: Create

```elixir
pre_auth_transaction_completion = BluefinTecsMerchantServices.pre_auth_transaction_completion(sdk)
record = BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion.create(pre_auth_transaction_completion, BluefinTecsMerchantServices.Helpers.deep(%{
  "cardNumberReference" => "example_cardNumberReference",  # String.t()
  "clientId" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receiptNumber" => "example_receiptNumber",  # String.t()
  "terminalId" => 1,  # integer()
  "transactionType" => "example_transactionType",  # String.t()
}))
```


### ReactivateTerminal

Create a handle: `reactivate_terminal = BluefinTecsMerchantServices.reactivate_terminal(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String.t()` |  |
| `packageOrderUuid` | `String.t()` |  |
| `productOrderUuid` | `String.t()` |  |
| `reactivationReason` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminalId` | `integer()` |  |

#### Example: Create

```elixir
reactivate_terminal = BluefinTecsMerchantServices.reactivate_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.ReactivateTerminal.create(reactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "reactivationReason" => "example_reactivationReason",  # String.t()
  "terminalId" => 1,  # integer()
}))
```


### RefundTransaction

Create a handle: `refund_transaction = BluefinTecsMerchantServices.refund_transaction(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `String.t()` |  |
| `acquirerName` | `String.t()` |  |
| `actualBonusPoints` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorizationCode` | `String.t()` |  |
| `balanceAmount` | `String.t()` |  |
| `cardBrand` | `String.t()` |  |
| `cardNumber` | `String.t()` |  |
| `clientId` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `ecData` | `String.t()` |  |
| `ecrData` | `String.t()` |  |
| `emvData` | `String.t()` |  |
| `exchangeFee` | `integer()` |  |
| `exchangeRate` | `String.t()` |  |
| `languageCode` | `String.t()` |  |
| `merchantAddress` | `String.t()` |  |
| `merchantName` | `String.t()` |  |
| `merchantNumber` | `String.t()` |  |
| `messageType` | `String.t()` |  |
| `originalTraceNumber` | `integer()` |  |
| `originalTransactionId` | `String.t()` |  |
| `password` | `String.t()` |  |
| `paymentReason` | `String.t()` |  |
| `receiptFooter` | `String.t()` |  |
| `receiptHeader` | `String.t()` |  |
| `receiptLayout` | `integer()` |  |
| `receiptNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `serialNumber` | `String.t()` |  |
| `svc` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `terminalLocation` | `String.t()` |  |
| `traceNumber` | `integer()` |  |
| `transactionDate` | `String.t()` |  |
| `transactionId` | `String.t()` |  |
| `txType` | `String.t()` |  |
| `userData` | `String.t()` |  |

#### Example: Create

```elixir
refund_transaction = BluefinTecsMerchantServices.refund_transaction(sdk)
record = BluefinTecsMerchantServices.Entity.RefundTransaction.create(refund_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "clientId" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receiptNumber" => "example_receiptNumber",  # String.t()
  "terminalId" => 1,  # integer()
}))
```


### RegisterTecsCompany

Create a handle: `register_tecs_company = BluefinTecsMerchantServices.register_tecs_company(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `String.t()` |  |
| `packageOrderUuid` | `String.t()` |  |
| `partnerId` | `integer()` |  |
| `partnerName` | `String.t()` |  |
| `productOrderUuid` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `templateName` | `String.t()` |  |

#### Example: Create

```elixir
register_tecs_company = BluefinTecsMerchantServices.register_tecs_company(sdk)
record = BluefinTecsMerchantServices.Entity.RegisterTecsCompany.create(register_tecs_company, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
  "packageOrderUuid" => "example_packageOrderUuid",  # String.t()
  "productOrderUuid" => "example_productOrderUuid",  # String.t()
  "templateName" => "example_templateName",  # String.t()
}))
```


### RegisterTerminal

Create a handle: `register_terminal = BluefinTecsMerchantServices.register_terminal(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `map()` |  |
| `corporateUuid` | `String.t()` |  |
| `packageOrderUuid` | `String.t()` |  |
| `productOrderUuid` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `tecsWebSecretKey` | `String.t()` |  |
| `templateName` | `String.t()` |  |
| `terminalCountryCode` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `terminalIdAcq` | `String.t()` |  |
| `terminalLanguageCode` | `String.t()` |  |
| `terminalLocation` | `String.t()` |  |
| `terminalSerialNumber` | `String.t()` |  |
| `tokenIOAlias` | `String.t()` |  |
| `tokenIOIban` | `String.t()` |  |
| `tokenIOMemberId` | `String.t()` |  |
| `webShopUrl` | `String.t()` |  |

#### Example: Create

```elixir
register_terminal = BluefinTecsMerchantServices.register_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.RegisterTerminal.create(register_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
  "packageOrderUuid" => "example_packageOrderUuid",  # String.t()
  "productOrderUuid" => "example_productOrderUuid",  # String.t()
  "templateName" => "example_templateName",  # String.t()
  "terminalCountryCode" => "example_terminalCountryCode",  # String.t()
  "terminalLanguageCode" => "example_terminalLanguageCode",  # String.t()
  "terminalLocation" => "example_terminalLocation",  # String.t()
}))
```


### ReportData

Create a handle: `report_data = BluefinTecsMerchantServices.report_data(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `list()` |  |
| `clearingDateFrom` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String.t()` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String.t()` |  |
| `currency` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `sumOverCreditTx` | `map()` |  |
| `sumOverDebitTx` | `map()` |  |
| `terminalId` | `integer()` |  |

#### Example: Create

```elixir
report_data = BluefinTecsMerchantServices.report_data(sdk)
record = BluefinTecsMerchantServices.Entity.ReportData.create(report_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
  "corporateId" => "example_corporateId",  # String.t()
  "currency" => "example_currency",  # String.t()
}))
```


### StatusTransaction

Create a handle: `status_transaction = BluefinTecsMerchantServices.status_transaction(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `String.t()` |  |
| `acquirerTerminalId` | `String.t()` |  |
| `amount` | `integer()` |  |
| `applicationCryptogram` | `String.t()` |  |
| `authorizationCode` | `String.t() | nil` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String.t()` |  |
| `cardBrand` | `String.t()` |  |
| `cardEntry` | `String.t()` |  |
| `cardExpiration` | `String.t()` |  |
| `cardNumber` | `String.t()` |  |
| `clearingAmount` | `integer()` |  |
| `clearingBatchId` | `String.t()` |  |
| `clearingCurrency` | `String.t()` |  |
| `clearingDate` | `String.t()` |  |
| `clearingProcessedDate` | `String.t()` |  |
| `clearingStatus` | `String.t()` |  |
| `clientId` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvm` | `String.t()` |  |
| `ecrData` | `String.t()` |  |
| `emvApplicationId` | `String.t()` |  |
| `emvApplicationLabel` | `String.t()` |  |
| `merchantName` | `String.t()` |  |
| `merchantNumber` | `String.t()` |  |
| `originalClientId` | `String.t()` |  |
| `originalTerminalId` | `integer()` |  |
| `originalTransactionId` | `String.t()` |  |
| `paymentReason` | `String.t()` |  |
| `receiptNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseCodeFromAS` | `String.t()` |  |
| `responseMessage` | `String.t()` |  |
| `retrievalReferenceNumber` | `String.t()` |  |
| `serviceCode` | `String.t()` |  |
| `settlementStatus` | `String.t()` |  |
| `sourceId` | `integer()` |  |
| `tecsengineResponseCode` | `integer()` |  |
| `tecsengineResponseText` | `String.t()` |  |
| `terminalEndOfDayDate` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `terminalLocation` | `String.t()` |  |
| `tipAmount` | `integer()` |  |
| `traceNumber` | `integer()` |  |
| `transactionClearingDate` | `String.t()` |  |
| `transactionDate` | `String.t()` |  |
| `transactionId` | `String.t()` |  |
| `transactionSeqNumber` | `integer()` |  |
| `transactionServerDate` | `String.t()` |  |
| `transactionSource` | `String.t()` |  |
| `transactionType` | `String.t()` |  |

#### Example: Create

```elixir
status_transaction = BluefinTecsMerchantServices.status_transaction(sdk)
record = BluefinTecsMerchantServices.Entity.StatusTransaction.create(status_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### StoreTerminalParameter

Create a handle: `store_terminal_parameter = BluefinTecsMerchantServices.store_terminal_parameter(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `map()` |  |
| `configVersion` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `serialNumber` | `String.t()` |  |
| `tidSent` | `String.t()` |  |

#### Example: Create

```elixir
store_terminal_parameter = BluefinTecsMerchantServices.store_terminal_parameter(sdk)
record = BluefinTecsMerchantServices.Entity.StoreTerminalParameter.create(store_terminal_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "serialNumber" => "example_serialNumber",  # String.t()
}))
```


### TerminalId

Create a handle: `terminal_id = BluefinTecsMerchantServices.terminal_id(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `list()` |  |
| `duplicateTerminalIds` | `list()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `terminals` | `list()` |  |

#### Example: Create

```elixir
terminal_id = BluefinTecsMerchantServices.terminal_id(sdk)
record = BluefinTecsMerchantServices.Entity.TerminalId.create(terminal_id, BluefinTecsMerchantServices.Helpers.deep(%{
  "deviceSerialNumber" => [],  # list()
}))
```


### TransactionHistory

Create a handle: `transaction_history = BluefinTecsMerchantServices.transaction_history(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `String.t()` |  |
| `authorizationCode` | `String.t()` |  |
| `cardBrand` | `String.t()` |  |
| `clearingAmountFrom` | `String.t()` |  |
| `clearingAmountTo` | `String.t()` |  |
| `clearingCurrency` | `String.t()` |  |
| `clearingStatus` | `String.t()` |  |
| `corporateUUID` | `String.t()` |  |
| `orderByTransactionDate` | `String.t()` |  |
| `pagination` | `map()` |  |
| `paymentTokenPublicId` | `String.t()` |  |
| `receiptNumber` | `String.t()` |  |
| `referencedTransactionId` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `retrievalReferenceNumber` | `String.t()` |  |
| `sourceId` | `integer()` |  |
| `tecsengineResponseCodeFrom` | `String.t()` |  |
| `tecsengineResponseCodeTo` | `String.t()` |  |
| `terminalId` | `integer()` |  |
| `traceNumber` | `String.t()` |  |
| `transactionAmountFrom` | `String.t()` |  |
| `transactionAmountTo` | `String.t()` |  |
| `transactionDateFrom` | `String.t()` |  |
| `transactionDateTo` | `String.t()` |  |
| `transactionHistories` | `list()` |  |
| `transactionId` | `String.t()` |  |
| `transactionType` | `String.t()` |  |
| `wallet` | `String.t()` | Filter by wallet type. |

#### Example: Create

```elixir
transaction_history = BluefinTecsMerchantServices.transaction_history(sdk)
record = BluefinTecsMerchantServices.Entity.TransactionHistory.create(transaction_history, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### TransactionsCount

Create a handle: `transactions_count = BluefinTecsMerchantServices.transactions_count(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `transactionDateFrom` | `String.t()` |  |
| `transactionDateTo` | `String.t()` |  |
| `transactionsCount` | `list()` |  |

#### Example: Create

```elixir
transactions_count = BluefinTecsMerchantServices.transactions_count(sdk)
record = BluefinTecsMerchantServices.Entity.TransactionsCount.create(transactions_count, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### TransactionsCountCardBrand

Create a handle: `transactions_count_card_brand = BluefinTecsMerchantServices.transactions_count_card_brand(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `transactionDateFrom` | `String.t()` |  |
| `transactionDateTo` | `String.t()` |  |
| `transactionsCount` | `list()` |  |

#### Example: Create

```elixir
transactions_count_card_brand = BluefinTecsMerchantServices.transactions_count_card_brand(sdk)
record = BluefinTecsMerchantServices.Entity.TransactionsCountCardBrand.create(transactions_count_card_brand, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### TransactionsTurnover

Create a handle: `transactions_turnover = BluefinTecsMerchantServices.transactions_turnover(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `transactionDateFrom` | `String.t()` |  |
| `transactionDateTo` | `String.t()` |  |
| `turnovers` | `list()` |  |

#### Example: Create

```elixir
transactions_turnover = BluefinTecsMerchantServices.transactions_turnover(sdk)
record = BluefinTecsMerchantServices.Entity.TransactionsTurnover.create(transactions_turnover, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```


### UpdateMerchant

Create a handle: `update_merchant = BluefinTecsMerchantServices.update_merchant(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String.t()` |  |
| `corporateUuid` | `String.t()` |  |
| `country` | `String.t()` |  |
| `merchantCategoryCode` | `String.t()` |  |
| `name` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `state` | `String.t()` |  |
| `street` | `String.t()` |  |
| `vuNummer` | `String.t()` |  |
| `zipcode` | `String.t()` |  |

#### Example: Create

```elixir
update_merchant = BluefinTecsMerchantServices.update_merchant(sdk)
record = BluefinTecsMerchantServices.Entity.UpdateMerchant.create(update_merchant, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
}))
```


### UpdateTemplateXml

Create a handle: `update_template_xml = BluefinTecsMerchantServices.update_template_xml(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `templateName` | `String.t()` |  |
| `templateXml` | `String.t()` |  |

#### Example: Create

```elixir
update_template_xml = BluefinTecsMerchantServices.update_template_xml(sdk)
record = BluefinTecsMerchantServices.Entity.UpdateTemplateXml.create(update_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "templateName" => "example_templateName",  # String.t()
  "templateXml" => "example_templateXml",  # String.t()
}))
```


### Version

Create a handle: `version = BluefinTecsMerchantServices.version(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `load(entity, match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String.t()` |  |
| `buildDate` | `String.t()` |  |
| `version` | `String.t()` |  |

#### Example: Load

```elixir
version = BluefinTecsMerchantServices.version(sdk)
record = BluefinTecsMerchantServices.Entity.Version.load(version, BluefinTecsMerchantServices.Helpers.deep(%{}))
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

### Data as struct value nodes

The Elixir SDK models every runtime object — clients, contexts, results and
record data — as reference-stable struct value nodes from the vendored
`Voxgig.Struct` library rather than as compile-time structs. This mirrors
the dynamic nature of the API and lets a feature hook mutate a shared node
that every later pipeline stage observes — the immutable-Elixir way to honour
the shared-mutable hook contract.

Build inputs from native Elixir maps with `BluefinTecsMerchantServices.Helpers.deep/1`,
and read fields off results with `Voxgig.Struct.getprop/2`.

### Module structure

```
elixir/
├── lib/
│   ├── bluefin-tecs-merchant-services.ex                 -- Main SDK module (entity factories)
│   ├── config.ex                 -- Resolved configuration
│   ├── features.ex               -- Feature factory
│   ├── pipeline.ex               -- Operation pipeline
│   └── bluefin-tecs-merchant-services/
│       ├── context.ex            -- Operation context
│       ├── entity_base.ex        -- Shared entity behaviour
│       ├── error.ex              -- SDK error type
│       ├── feature.ex            -- Built-in features
│       ├── helpers.ex            -- Value helpers (deep/1, ...)
│       ├── json.ex               -- JSON encode/decode
│       └── utility.ex            -- Utility functions
│   └── entity/                   -- Per-entity modules
├── mix.exs                       -- Package manifest
└── test/                         -- ExUnit suites
```

The main module `BluefinTecsMerchantServices` exposes the SDK constructors and one entity
factory function per entity. Call an operation on the matching
`BluefinTecsMerchantServices.Entity.<Name>` module.

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
