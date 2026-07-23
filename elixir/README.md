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
created = BluefinTecsMerchantServices.Entity.CancelTransaction.create(cancel_transaction, H.deep(%{"client_id" => 1, "currency" => "example_currency", "receipt_number" => "example_receipt_number", "terminal_id" => 1}))

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
| `acquirer_id` | `String.t()` |  |
| `acquirer_name` | `String.t()` |  |
| `actual_bonus_point` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorization_code` | `String.t()` |  |
| `balance_amount` | `String.t()` |  |
| `card_brand` | `String.t()` |  |
| `card_number` | `String.t()` |  |
| `client_id` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `ec_data` | `String.t()` |  |
| `ecr_data` | `String.t()` |  |
| `emv_data` | `String.t()` |  |
| `exchange_fee` | `integer()` |  |
| `exchange_rate` | `String.t()` |  |
| `language_code` | `String.t()` |  |
| `merchant_address` | `String.t()` |  |
| `merchant_name` | `String.t()` |  |
| `merchant_number` | `String.t()` |  |
| `message_type` | `String.t()` |  |
| `original_trace_number` | `integer()` |  |
| `original_transaction_id` | `String.t()` |  |
| `password` | `String.t()` |  |
| `payment_reason` | `String.t()` |  |
| `receipt_footer` | `String.t()` |  |
| `receipt_header` | `String.t()` |  |
| `receipt_layout` | `integer()` |  |
| `receipt_number` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `serial_number` | `String.t()` |  |
| `svc` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `terminal_location` | `String.t()` |  |
| `trace_number` | `integer()` |  |
| `transaction_date` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `tx_type` | `String.t()` |  |
| `user_data` | `String.t()` |  |

#### Example: Create

```elixir
cancel_transaction = BluefinTecsMerchantServices.cancel_transaction(sdk)
record = BluefinTecsMerchantServices.Entity.CancelTransaction.create(cancel_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "client_id" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receipt_number" => "example_receipt_number",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `card_no` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |

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
| `acquirer_id` | `integer()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `template_name` | `String.t()` |  |
| `template_type` | `String.t()` |  |
| `template_xml` | `String.t()` |  |
| `terminal_type` | `String.t()` |  |

#### Example: Create

```elixir
create_product = BluefinTecsMerchantServices.create_product(sdk)
record = BluefinTecsMerchantServices.Entity.CreateProduct.create(create_product, BluefinTecsMerchantServices.Helpers.deep(%{
  "template_name" => "example_template_name",  # String.t()
  "template_type" => "example_template_type",  # String.t()
  "template_xml" => "example_template_xml",  # String.t()
  "terminal_type" => "example_terminal_type",  # String.t()
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
| `corporate_uuid` | `String.t()` |  |
| `deactivation_reason` | `String.t()` |  |
| `package_order_uuid` | `String.t()` |  |
| `product_order_uuid` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `integer()` |  |

#### Example: Create

```elixir
deactivate_terminal = BluefinTecsMerchantServices.deactivate_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.DeactivateTerminal.create(deactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "deactivation_reason" => "example_deactivation_reason",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `clearing_date_from` | `String.t()` |  |
| `clearing_date_to` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `tx_count` | `integer()` |  |
| `tx_id_end` | `String.t()` |  |
| `tx_id_start` | `String.t()` |  |
| `tx_seq_no_end` | `integer()` |  |
| `tx_seq_no_start` | `integer()` |  |
| `tx_total` | `integer()` |  |

#### Example: Load

```elixir
digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.load(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{}))
```

#### Example: Create

```elixir
digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.create(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{
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
| `ecom_data` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |

#### Example: Create

```elixir
ec_data_ecom = BluefinTecsMerchantServices.ec_data_ecom(sdk)
record = BluefinTecsMerchantServices.Entity.EcDataEcom.create(ec_data_ecom, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
  "transaction_id" => "example_transaction_id",  # String.t()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `ecom_pass` | `String.t()` |  |
| `ecom_skey` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `integer()` |  |

#### Example: Create

```elixir
ecom_parameter = BluefinTecsMerchantServices.ecom_parameter(sdk)
record = BluefinTecsMerchantServices.Entity.EcomParameter.create(ecom_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
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
| `ecr_data` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |

#### Example: Create

```elixir
ecr_data = BluefinTecsMerchantServices.ecr_data(sdk)
record = BluefinTecsMerchantServices.Entity.EcrData.create(ecr_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
  "transaction_id" => "example_transaction_id",  # String.t()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `emv_data` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |

#### Example: Create

```elixir
emv_data = BluefinTecsMerchantServices.emv_data(sdk)
record = BluefinTecsMerchantServices.Entity.EmvData.create(emv_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
  "transaction_id" => "example_transaction_id",  # String.t()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `account_no` | `integer()` |  |
| `additional_data` | `map()` |  |
| `corporate_uuid` | `String.t()` |  |
| `currency` | `String.t()` |  |
| `merchant_category_code` | `integer()` |  |
| `package_order_uuid` | `String.t()` |  |
| `product_order_uuid` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `sorting_code` | `integer()` |  |
| `template_name` | `String.t()` |  |
| `terminal_id` | `list()` |  |
| `terminal_id_acq` | `String.t()` |  |
| `vu_nummer` | `String.t()` |  |

#### Example: Create

```elixir
enable_acquiring = BluefinTecsMerchantServices.enable_acquiring(sdk)
record = BluefinTecsMerchantServices.Entity.EnableAcquiring.create(enable_acquiring, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
  "currency" => "example_currency",  # String.t()
  "merchant_category_code" => 1,  # integer()
  "package_order_uuid" => "example_package_order_uuid",  # String.t()
  "product_order_uuid" => "example_product_order_uuid",  # String.t()
  "template_name" => "example_template_name",  # String.t()
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
| `merchant_contract_number` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |

#### Example: Create

```elixir
get_merchant_contract_number = BluefinTecsMerchantServices.get_merchant_contract_number(sdk)
record = BluefinTecsMerchantServices.Entity.GetMerchantContractNumber.create(get_merchant_contract_number, BluefinTecsMerchantServices.Helpers.deep(%{
  "merchant_contract_number" => "example_merchant_contract_number",  # String.t()
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
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `template_name` | `String.t()` |  |

#### Example: Create

```elixir
get_template_xml = BluefinTecsMerchantServices.get_template_xml(sdk)
record = BluefinTecsMerchantServices.Entity.GetTemplateXml.create(get_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "template_name" => "example_template_name",  # String.t()
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
| `mandator_name` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |

#### Example: Create

```elixir
introduce_mandator = BluefinTecsMerchantServices.introduce_mandator(sdk)
record = BluefinTecsMerchantServices.Entity.IntroduceMandator.create(introduce_mandator, BluefinTecsMerchantServices.Helpers.deep(%{
  "mandator_name" => "example_mandator_name",  # String.t()
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
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_template_description` | `String.t()` |  |

#### Example: Create

```elixir
introduce_package = BluefinTecsMerchantServices.introduce_package(sdk)
record = BluefinTecsMerchantServices.Entity.IntroducePackage.create(introduce_package, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_template_description" => "example_terminal_template_description",  # String.t()
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
| `ka_date_time_from` | `String.t()` |  |
| `ka_date_time_to` | `String.t()` |  |
| `keep_alive_data` | `list()` |  |
| `pagination` | `map()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_date_time_from` | `String.t()` |  |
| `terminal_date_time_to` | `String.t()` |  |
| `terminal_id` | `integer()` |  |

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
| `corporate_uuid` | `list()` |  |
| `filter` | `map()` |  |
| `pagination` | `map()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal` | `list()` |  |

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
| `clearing_date_from` | `String.t()` |  |
| `clearing_date_to` | `String.t()` |  |
| `pagination` | `map()` |  |
| `record` | `list()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |

#### Example: Create

```elixir
mandator_clearing_export = BluefinTecsMerchantServices.mandator_clearing_export(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExport.create(mandator_clearing_export, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
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
| `clearing_date_from` | `String.t()` |  |
| `clearing_date_to` | `String.t()` |  |
| `file_id` | `String.t()` |  |
| `filename_template` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `status` | `String.t()` |  |

#### Example: Load

```elixir
mandator_clearing_export_download = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.load(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{"id" => "mandator_clearing_export_download_id"}))
```

#### Example: Create

```elixir
mandator_clearing_export_download = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.create(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
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
| `clearing_date_from` | `String.t()` |  |
| `clearing_date_to` | `String.t()` |  |
| `record` | `list()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |

#### Example: Create

```elixir
mandator_clearing_export_summary = BluefinTecsMerchantServices.mandator_clearing_export_summary(sdk)
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary.create(mandator_clearing_export_summary, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
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
| `3_d_secure` | `String.t()` |  |
| `authorization_code` | `String.t()` |  |
| `card_brand` | `String.t()` |  |
| `clearing_amount_from` | `String.t()` |  |
| `clearing_amount_to` | `String.t()` |  |
| `clearing_currency` | `String.t()` |  |
| `clearing_status` | `String.t()` |  |
| `corporate_uuid` | `String.t()` |  |
| `order_by_transaction_date` | `String.t()` |  |
| `pagination` | `map()` |  |
| `receipt_number` | `String.t()` |  |
| `referenced_transaction_id` | `String.t()` |  |
| `retrieval_reference_number` | `String.t()` |  |
| `source_id` | `integer()` |  |
| `tecsengine_response_code_from` | `String.t()` |  |
| `tecsengine_response_code_to` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `trace_number` | `String.t()` |  |
| `transaction_amount_from` | `String.t()` |  |
| `transaction_amount_to` | `String.t()` |  |
| `transaction_date_from` | `String.t()` |  |
| `transaction_date_to` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |
| `wallet` | `String.t()` |  |

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
| `productorderuuid` | `list()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `target_packageorderuuid` | `String.t()` |  |
| `target_productorderuuid` | `String.t()` |  |

#### Example: Create

```elixir
move_tid = BluefinTecsMerchantServices.move_tid(sdk)
record = BluefinTecsMerchantServices.Entity.MoveTid.create(move_tid, BluefinTecsMerchantServices.Helpers.deep(%{
  "productorderuuid" => [],  # list()
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
| `acquirer_name` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorization_number` | `String.t()` |  |
| `card_number` | `String.t()` |  |
| `card_type` | `String.t()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `date_time_tx` | `String.t()` |  |
| `exp_date` | `String.t()` |  |
| `merchant_id` | `String.t()` |  |
| `original_transaction_id` | `String.t()` |  |
| `password` | `String.t()` |  |
| `response_code` | `String.t()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `txtype` | `String.t()` |  |

#### Example: Create

```elixir
payment_manual = BluefinTecsMerchantServices.payment_manual(sdk)
record = BluefinTecsMerchantServices.Entity.PaymentManual.create(payment_manual, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "card_number" => "example_card_number",  # String.t()
  "currency" => "example_currency",  # String.t()
  "exp_date" => "example_exp_date",  # String.t()
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
| `acquirer_name` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorization_number` | `String.t()` |  |
| `card_type` | `String.t()` |  |
| `currency` | `String.t()` |  |
| `date_time_tx` | `String.t()` |  |
| `device_payload` | `String.t()` |  |
| `merchant_id` | `String.t()` |  |
| `original_transaction_id` | `String.t()` |  |
| `password` | `String.t()` |  |
| `response_code` | `String.t()` |  |
| `response_message` | `String.t()` |  |
| `sred` | `map()` |  |
| `terminal_id` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `txtype` | `String.t()` |  |

#### Example: Create

```elixir
payment_sred = BluefinTecsMerchantServices.payment_sred(sdk)
record = BluefinTecsMerchantServices.Entity.PaymentSred.create(payment_sred, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "device_payload" => "example_device_payload",  # String.t()
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
| `acquirer_id` | `String.t()` |  |
| `acquirer_name` | `String.t()` |  |
| `actual_bonus_point` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorization_code` | `String.t()` |  |
| `balance_amount` | `String.t()` |  |
| `card_brand` | `String.t()` |  |
| `card_number` | `String.t()` |  |
| `card_number_reference` | `String.t()` |  |
| `client_id` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `ec_data` | `String.t()` |  |
| `ecr_data` | `String.t()` |  |
| `emv_data` | `String.t()` |  |
| `exchange_fee` | `integer()` |  |
| `exchange_rate` | `String.t()` |  |
| `language_code` | `String.t()` |  |
| `merchant_address` | `String.t()` |  |
| `merchant_name` | `String.t()` |  |
| `merchant_number` | `String.t()` |  |
| `message_type` | `String.t()` |  |
| `original_trace_number` | `integer()` |  |
| `original_transaction_id` | `String.t()` |  |
| `password` | `String.t()` |  |
| `payment_reason` | `String.t()` |  |
| `receipt_footer` | `String.t()` |  |
| `receipt_header` | `String.t()` |  |
| `receipt_layout` | `integer()` |  |
| `receipt_number` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `serial_number` | `String.t()` |  |
| `svc` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `terminal_location` | `String.t()` |  |
| `trace_number` | `integer()` |  |
| `transaction_date` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |
| `tx_type` | `String.t()` |  |
| `user_data` | `String.t()` |  |

#### Example: Create

```elixir
pre_auth_transaction_completion = BluefinTecsMerchantServices.pre_auth_transaction_completion(sdk)
record = BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion.create(pre_auth_transaction_completion, BluefinTecsMerchantServices.Helpers.deep(%{
  "card_number_reference" => "example_card_number_reference",  # String.t()
  "client_id" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receipt_number" => "example_receipt_number",  # String.t()
  "terminal_id" => 1,  # integer()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `corporate_uuid` | `String.t()` |  |
| `package_order_uuid` | `String.t()` |  |
| `product_order_uuid` | `String.t()` |  |
| `reactivation_reason` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal_id` | `integer()` |  |

#### Example: Create

```elixir
reactivate_terminal = BluefinTecsMerchantServices.reactivate_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.ReactivateTerminal.create(reactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "reactivation_reason" => "example_reactivation_reason",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `acquirer_id` | `String.t()` |  |
| `acquirer_name` | `String.t()` |  |
| `actual_bonus_point` | `String.t()` |  |
| `amount` | `integer()` |  |
| `authorization_code` | `String.t()` |  |
| `balance_amount` | `String.t()` |  |
| `card_brand` | `String.t()` |  |
| `card_number` | `String.t()` |  |
| `client_id` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvc` | `String.t()` |  |
| `ec_data` | `String.t()` |  |
| `ecr_data` | `String.t()` |  |
| `emv_data` | `String.t()` |  |
| `exchange_fee` | `integer()` |  |
| `exchange_rate` | `String.t()` |  |
| `language_code` | `String.t()` |  |
| `merchant_address` | `String.t()` |  |
| `merchant_name` | `String.t()` |  |
| `merchant_number` | `String.t()` |  |
| `message_type` | `String.t()` |  |
| `original_trace_number` | `integer()` |  |
| `original_transaction_id` | `String.t()` |  |
| `password` | `String.t()` |  |
| `payment_reason` | `String.t()` |  |
| `receipt_footer` | `String.t()` |  |
| `receipt_header` | `String.t()` |  |
| `receipt_layout` | `integer()` |  |
| `receipt_number` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `serial_number` | `String.t()` |  |
| `svc` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `terminal_location` | `String.t()` |  |
| `trace_number` | `integer()` |  |
| `transaction_date` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `tx_type` | `String.t()` |  |
| `user_data` | `String.t()` |  |

#### Example: Create

```elixir
refund_transaction = BluefinTecsMerchantServices.refund_transaction(sdk)
record = BluefinTecsMerchantServices.Entity.RefundTransaction.create(refund_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "client_id" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receipt_number" => "example_receipt_number",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `corporate_uuid` | `String.t()` |  |
| `package_order_uuid` | `String.t()` |  |
| `partner_id` | `integer()` |  |
| `partner_name` | `String.t()` |  |
| `product_order_uuid` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `template_name` | `String.t()` |  |

#### Example: Create

```elixir
register_tecs_company = BluefinTecsMerchantServices.register_tecs_company(sdk)
record = BluefinTecsMerchantServices.Entity.RegisterTecsCompany.create(register_tecs_company, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
  "package_order_uuid" => "example_package_order_uuid",  # String.t()
  "product_order_uuid" => "example_product_order_uuid",  # String.t()
  "template_name" => "example_template_name",  # String.t()
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
| `additional_data` | `map()` |  |
| `corporate_uuid` | `String.t()` |  |
| `package_order_uuid` | `String.t()` |  |
| `product_order_uuid` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `tecs_web_secret_key` | `String.t()` |  |
| `template_name` | `String.t()` |  |
| `terminal_country_code` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `terminal_id_acq` | `String.t()` |  |
| `terminal_language_code` | `String.t()` |  |
| `terminal_location` | `String.t()` |  |
| `terminal_serial_number` | `String.t()` |  |
| `token_io_alia` | `String.t()` |  |
| `token_io_iban` | `String.t()` |  |
| `token_io_member_id` | `String.t()` |  |
| `web_shop_url` | `String.t()` |  |

#### Example: Create

```elixir
register_terminal = BluefinTecsMerchantServices.register_terminal(sdk)
record = BluefinTecsMerchantServices.Entity.RegisterTerminal.create(register_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
  "package_order_uuid" => "example_package_order_uuid",  # String.t()
  "product_order_uuid" => "example_product_order_uuid",  # String.t()
  "template_name" => "example_template_name",  # String.t()
  "terminal_country_code" => "example_terminal_country_code",  # String.t()
  "terminal_language_code" => "example_terminal_language_code",  # String.t()
  "terminal_location" => "example_terminal_location",  # String.t()
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
| `card_brand_report_data` | `list()` |  |
| `clearing_date_from` | `String.t()` |  |
| `clearing_date_to` | `String.t()` |  |
| `corporate_id` | `String.t()` |  |
| `currency` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `sum_over_credit_tx` | `map()` |  |
| `sum_over_debit_tx` | `map()` |  |
| `terminal_id` | `integer()` |  |

#### Example: Create

```elixir
report_data = BluefinTecsMerchantServices.report_data(sdk)
record = BluefinTecsMerchantServices.Entity.ReportData.create(report_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
  "corporate_id" => "example_corporate_id",  # String.t()
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
| `acquirer_name` | `String.t()` |  |
| `acquirer_terminal_id` | `String.t()` |  |
| `amount` | `integer()` |  |
| `application_cryptogram` | `String.t()` |  |
| `authorization_code` | `String.t() | nil` |  |
| `authorization_date` | `String.t()` |  |
| `card_brand` | `String.t()` |  |
| `card_entry` | `String.t()` |  |
| `card_expiration` | `String.t()` |  |
| `card_number` | `String.t()` |  |
| `clearing_amount` | `integer()` |  |
| `clearing_batch_id` | `String.t()` |  |
| `clearing_currency` | `String.t()` |  |
| `clearing_date` | `String.t()` |  |
| `clearing_processed_date` | `String.t()` |  |
| `clearing_status` | `String.t()` |  |
| `client_id` | `integer()` |  |
| `currency` | `String.t()` |  |
| `cvm` | `String.t()` |  |
| `ecr_data` | `String.t()` |  |
| `emv_application_id` | `String.t()` |  |
| `emv_application_label` | `String.t()` |  |
| `merchant_name` | `String.t()` |  |
| `merchant_number` | `String.t()` |  |
| `original_client_id` | `String.t()` |  |
| `original_terminal_id` | `integer()` |  |
| `original_transaction_id` | `String.t()` |  |
| `payment_reason` | `String.t()` |  |
| `receipt_number` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_code_from_a` | `String.t()` |  |
| `response_message` | `String.t()` |  |
| `retrieval_reference_number` | `String.t()` |  |
| `service_code` | `String.t()` |  |
| `settlement_status` | `String.t()` |  |
| `source_id` | `integer()` |  |
| `tecsengine_response_code` | `integer()` |  |
| `tecsengine_response_text` | `String.t()` |  |
| `terminal_end_of_day_date` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `terminal_location` | `String.t()` |  |
| `tip_amount` | `integer()` |  |
| `trace_number` | `integer()` |  |
| `transaction_clearing_date` | `String.t()` |  |
| `transaction_date` | `String.t()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_seq_number` | `integer()` |  |
| `transaction_server_date` | `String.t()` |  |
| `transaction_source` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |

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
| `acq_tab_nexo` | `map()` |  |
| `config_version` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `serial_number` | `String.t()` |  |
| `tid_sent` | `String.t()` |  |

#### Example: Create

```elixir
store_terminal_parameter = BluefinTecsMerchantServices.store_terminal_parameter(sdk)
record = BluefinTecsMerchantServices.Entity.StoreTerminalParameter.create(store_terminal_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "serial_number" => "example_serial_number",  # String.t()
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
| `device_serial_number` | `list()` |  |
| `duplicate_terminal_id` | `list()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `terminal` | `list()` |  |

#### Example: Create

```elixir
terminal_id = BluefinTecsMerchantServices.terminal_id(sdk)
record = BluefinTecsMerchantServices.Entity.TerminalId.create(terminal_id, BluefinTecsMerchantServices.Helpers.deep(%{
  "device_serial_number" => [],  # list()
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
| `3_d_secure` | `String.t()` |  |
| `authorization_code` | `String.t()` |  |
| `card_brand` | `String.t()` |  |
| `clearing_amount_from` | `String.t()` |  |
| `clearing_amount_to` | `String.t()` |  |
| `clearing_currency` | `String.t()` |  |
| `clearing_status` | `String.t()` |  |
| `corporate_uuid` | `String.t()` |  |
| `order_by_transaction_date` | `String.t()` |  |
| `pagination` | `map()` |  |
| `payment_token_public_id` | `String.t()` |  |
| `receipt_number` | `String.t()` |  |
| `referenced_transaction_id` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `retrieval_reference_number` | `String.t()` |  |
| `source_id` | `integer()` |  |
| `tecsengine_response_code_from` | `String.t()` |  |
| `tecsengine_response_code_to` | `String.t()` |  |
| `terminal_id` | `integer()` |  |
| `trace_number` | `String.t()` |  |
| `transaction_amount_from` | `String.t()` |  |
| `transaction_amount_to` | `String.t()` |  |
| `transaction_date_from` | `String.t()` |  |
| `transaction_date_to` | `String.t()` |  |
| `transaction_history` | `list()` |  |
| `transaction_id` | `String.t()` |  |
| `transaction_type` | `String.t()` |  |
| `wallet` | `String.t()` |  |

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
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `transaction_date_from` | `String.t()` |  |
| `transaction_date_to` | `String.t()` |  |
| `transactions_count` | `list()` |  |

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
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `transaction_date_from` | `String.t()` |  |
| `transaction_date_to` | `String.t()` |  |
| `transactions_count` | `list()` |  |

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
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `transaction_date_from` | `String.t()` |  |
| `transaction_date_to` | `String.t()` |  |
| `turnover` | `list()` |  |

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
| `corporate_uuid` | `String.t()` |  |
| `country` | `String.t()` |  |
| `merchant_category_code` | `String.t()` |  |
| `name` | `String.t()` |  |
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `state` | `String.t()` |  |
| `street` | `String.t()` |  |
| `vu_nummer` | `String.t()` |  |
| `zipcode` | `String.t()` |  |

#### Example: Create

```elixir
update_merchant = BluefinTecsMerchantServices.update_merchant(sdk)
record = BluefinTecsMerchantServices.Entity.UpdateMerchant.create(update_merchant, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
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
| `response_code` | `integer()` |  |
| `response_message` | `String.t()` |  |
| `template_name` | `String.t()` |  |
| `template_xml` | `String.t()` |  |

#### Example: Create

```elixir
update_template_xml = BluefinTecsMerchantServices.update_template_xml(sdk)
record = BluefinTecsMerchantServices.Entity.UpdateTemplateXml.create(update_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "template_name" => "example_template_name",  # String.t()
  "template_xml" => "example_template_xml",  # String.t()
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
| `app_name` | `String.t()` |  |
| `build_date` | `String.t()` |  |
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
