# BluefinTecsMerchantServices Lua SDK



The Lua SDK for the BluefinTecsMerchantServices API — an entity-oriented client using Lua conventions.

It exposes the API as capitalised, semantic **Entities** — e.g. `client:CancelTransaction()` — each with the same small set of operations (`load`, `create`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to LuaRocks. Install it from the
GitHub release tag (`lua/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)),
or add the source directory to your `LUA_PATH`:

```bash
export LUA_PATH="path/to/lua/?.lua;path/to/lua/?/init.lua;;"
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```lua
local sdk = require("bluefin-tecs-merchant-services_sdk")

local client = sdk.new({
  apikey = os.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"),
})
```

### 4. Create, update, and remove

```lua
-- Create
local created, err = client:CancelTransaction():create({ client_id = 1, currency = "example_currency", receipt_number = "example_receipt_number", terminal_id = 1 })
if err then error(err) end

```


## Error handling

Entity operations return `(value, err)`. Check `err` before using
the value:

```lua
local digitalservicesapi, err = client:DigitalServicesApi():load()
if err then error(err) end
```

`direct` follows the same `(value, err)` convention:

```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example_id" },
})
if err then error(err) end
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
if err then error(err) end

if result["ok"] then
  print(result["status"])  -- 200
  print(result["data"])    -- response body
end
```

### Prepare a request without sending it

```lua
local fetchdef, err = client:prepare({
  path = "/api/resource/{id}",
  method = "DELETE",
  params = { id = "example" },
})
if err then error(err) end

print(fetchdef["url"])
print(fetchdef["method"])
print(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```lua
local client = sdk.test()

local result, err = client:DigitalServicesApi():load()
-- result is the returned data; err is set on failure
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```lua
local function mock_fetch(url, init)
  return {
    status = 200,
    statusText = "OK",
    headers = {},
    json = function()
      return { id = "mock01" }
    end,
  }, nil
end

local client = sdk.new({
  base = "http://localhost:8080",
  system = {
    fetch = mock_fetch,
  },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd lua && busted test/
```


## Reference

### BluefinTecsMerchantServicesSDK

```lua
local sdk = require("bluefin-tecs-merchant-services_sdk")
local client = sdk.new(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `table` | Feature activation flags. |
| `extend` | `table` | Additional Feature instances to load. |
| `system` | `table` | System overrides (e.g. custom `fetch` function). |

### test

```lua
local client = sdk.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> table` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> table, err` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs) -> table, err` | Build and send an HTTP request. |
| `CancelTransaction` | `(data) -> CancelTransactionEntity` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `(data) -> CheckCardBlackListedEntity` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `(data) -> CreateProductEntity` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `(data) -> DeactivateTerminalEntity` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `(data) -> DigitalServicesApiEntity` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `(data) -> EcDataEcomEntity` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `(data) -> EcomParameterEntity` | Create an EcomParameter entity instance. |
| `EcrData` | `(data) -> EcrDataEntity` | Create an EcrData entity instance. |
| `EmvData` | `(data) -> EmvDataEntity` | Create an EmvData entity instance. |
| `EnableAcquiring` | `(data) -> EnableAcquiringEntity` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `(data) -> GetMerchantContractNumberEntity` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `(data) -> GetTemplateXmlEntity` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `(data) -> IntroduceMandatorEntity` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `(data) -> IntroducePackageEntity` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `(data) -> KeepAliveEntity` | Create a KeepAlive entity instance. |
| `ListTerminal` | `(data) -> ListTerminalEntity` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `(data) -> MandatorClearingExportEntity` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `(data) -> MandatorClearingExportDownloadEntity` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `(data) -> MandatorClearingExportSummaryEntity` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `(data) -> MerchantPortalServicesApiEntity` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `(data) -> MoveTidEntity` | Create a MoveTid entity instance. |
| `PaymentManual` | `(data) -> PaymentManualEntity` | Create a PaymentManual entity instance. |
| `PaymentSred` | `(data) -> PaymentSredEntity` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `(data) -> PreAuthTransactionCompletionEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `(data) -> ReactivateTerminalEntity` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `(data) -> RefundTransactionEntity` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `(data) -> RegisterTecsCompanyEntity` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `(data) -> RegisterTerminalEntity` | Create a RegisterTerminal entity instance. |
| `ReportData` | `(data) -> ReportDataEntity` | Create a ReportData entity instance. |
| `StatusTransaction` | `(data) -> StatusTransactionEntity` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `(data) -> StoreTerminalParameterEntity` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `(data) -> TerminalIdEntity` | Create a TerminalId entity instance. |
| `TransactionHistory` | `(data) -> TransactionHistoryEntity` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `(data) -> TransactionsCountEntity` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `(data) -> TransactionsCountCardBrandEntity` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `(data) -> TransactionsTurnoverEntity` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `(data) -> UpdateMerchantEntity` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `(data) -> UpdateTemplateXmlEntity` | Create an UpdateTemplateXml entity instance. |
| `Version` | `(data) -> VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> any, err` | Load a single entity by match criteria. |
| `create` | `(reqdata, ctrl) -> any, err` | Create a new entity. |
| `data_get` | `() -> table` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> table` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return `(value, err)`. The `value` is the operation's
data **directly** — there is no wrapper:

| Operation | `value` |
| --- | --- |
| `load` / `create` | the entity record (a `table`) |

Check `err` first (it is non-`nil` on failure), then use `value`:

    local cancel_transaction, err = client:CancelTransaction():load()
    if err then error(err) end
    -- cancel_transaction is the loaded record

Only `direct()` returns a response envelope — a `table` with `ok`,
`status`, `headers`, and `data` keys.

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

Create an instance: `local cancel_transaction = client:CancelTransaction(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `number` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `number` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `number` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `number` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `number` |  |
| `receipt_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `number` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `number` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```lua
local cancel_transaction, err = client:CancelTransaction():create({
  client_id = 1, -- number
  currency = "example_currency", -- string
  receipt_number = "example_receipt_number", -- string
  terminal_id = 1, -- number
})
```


### CheckCardBlackListed

Create an instance: `local check_card_black_listed = client:CheckCardBlackListed(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```lua
local check_card_black_listed, err = client:CheckCardBlackListed():create({
})
```


### CreateProduct

Create an instance: `local create_product = client:CreateProduct(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `number` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_type` | `string` |  |
| `template_xml` | `string` |  |
| `terminal_type` | `string` |  |

#### Example: Create

```lua
local create_product, err = client:CreateProduct():create({
  template_name = "example_template_name", -- string
  template_type = "example_template_type", -- string
  template_xml = "example_template_xml", -- string
  terminal_type = "example_terminal_type", -- string
})
```


### DeactivateTerminal

Create an instance: `local deactivate_terminal = client:DeactivateTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `deactivation_reason` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_id` | `number` |  |

#### Example: Create

```lua
local deactivate_terminal, err = client:DeactivateTerminal():create({
  deactivation_reason = "example_deactivation_reason", -- string
  terminal_id = 1, -- number
})
```


### DigitalServicesApi

Create an instance: `local digital_services_api = client:DigitalServicesApi(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `tx_count` | `number` |  |
| `tx_id_end` | `string` |  |
| `tx_id_start` | `string` |  |
| `tx_seq_no_end` | `number` |  |
| `tx_seq_no_start` | `number` |  |
| `tx_total` | `number` |  |

#### Example: Load

```lua
local digital_services_api, err = client:DigitalServicesApi():load()
```

#### Example: Create

```lua
local digital_services_api, err = client:DigitalServicesApi():create({
})
```


### EcDataEcom

Create an instance: `local ec_data_ecom = client:EcDataEcom(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_data` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_id` | `number` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```lua
local ec_data_ecom, err = client:EcDataEcom():create({
  terminal_id = 1, -- number
  transaction_id = "example_transaction_id", -- string
  transaction_type = "example_transaction_type", -- string
})
```


### EcomParameter

Create an instance: `local ecom_parameter = client:EcomParameter(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `string` |  |
| `ecom_skey` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_id` | `number` |  |

#### Example: Create

```lua
local ecom_parameter, err = client:EcomParameter():create({
  terminal_id = 1, -- number
})
```


### EcrData

Create an instance: `local ecr_data = client:EcrData(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecr_data` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_id` | `number` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```lua
local ecr_data, err = client:EcrData():create({
  terminal_id = 1, -- number
  transaction_id = "example_transaction_id", -- string
  transaction_type = "example_transaction_type", -- string
})
```


### EmvData

Create an instance: `local emv_data = client:EmvData(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emv_data` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_id` | `number` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```lua
local emv_data, err = client:EmvData():create({
  terminal_id = 1, -- number
  transaction_id = "example_transaction_id", -- string
  transaction_type = "example_transaction_type", -- string
})
```


### EnableAcquiring

Create an instance: `local enable_acquiring = client:EnableAcquiring(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `number` |  |
| `additional_data` | `table` |  |
| `corporate_uuid` | `string` |  |
| `currency` | `string` |  |
| `merchant_category_code` | `number` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `sorting_code` | `number` |  |
| `template_name` | `string` |  |
| `terminal_id` | `table` |  |
| `terminal_id_acq` | `string` |  |
| `vu_nummer` | `string` |  |

#### Example: Create

```lua
local enable_acquiring, err = client:EnableAcquiring():create({
  corporate_uuid = "example_corporate_uuid", -- string
  currency = "example_currency", -- string
  merchant_category_code = 1, -- number
  package_order_uuid = "example_package_order_uuid", -- string
  product_order_uuid = "example_product_order_uuid", -- string
  template_name = "example_template_name", -- string
})
```


### GetMerchantContractNumber

Create an instance: `local get_merchant_contract_number = client:GetMerchantContractNumber(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```lua
local get_merchant_contract_number, err = client:GetMerchantContractNumber():create({
  merchant_contract_number = "example_merchant_contract_number", -- string
})
```


### GetTemplateXml

Create an instance: `local get_template_xml = client:GetTemplateXml(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```lua
local get_template_xml, err = client:GetTemplateXml():create({
  template_name = "example_template_name", -- string
})
```


### IntroduceMandator

Create an instance: `local introduce_mandator = client:IntroduceMandator(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```lua
local introduce_mandator, err = client:IntroduceMandator():create({
  mandator_name = "example_mandator_name", -- string
})
```


### IntroducePackage

Create an instance: `local introduce_package = client:IntroducePackage(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_template_description` | `string` |  |

#### Example: Create

```lua
local introduce_package, err = client:IntroducePackage():create({
  terminal_template_description = "example_terminal_template_description", -- string
})
```


### KeepAlive

Create an instance: `local keep_alive = client:KeepAlive(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `ka_date_time_from` | `string` |  |
| `ka_date_time_to` | `string` |  |
| `keep_alive_data` | `table` |  |
| `pagination` | `table` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_date_time_from` | `string` |  |
| `terminal_date_time_to` | `string` |  |
| `terminal_id` | `number` |  |

#### Example: Create

```lua
local keep_alive, err = client:KeepAlive():create({
})
```


### ListTerminal

Create an instance: `local list_terminal = client:ListTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `table` |  |
| `filter` | `table` |  |
| `pagination` | `table` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal` | `table` |  |

#### Example: Create

```lua
local list_terminal, err = client:ListTerminal():create({
})
```


### MandatorClearingExport

Create an instance: `local mandator_clearing_export = client:MandatorClearingExport(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `pagination` | `table` |  |
| `record` | `table` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```lua
local mandator_clearing_export, err = client:MandatorClearingExport():create({
  clearing_date_from = "example_clearing_date_from", -- string
  clearing_date_to = "example_clearing_date_to", -- string
})
```


### MandatorClearingExportDownload

Create an instance: `local mandator_clearing_export_download = client:MandatorClearingExportDownload(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `file_id` | `string` |  |
| `filename_template` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `status` | `string` |  |

#### Example: Load

```lua
local mandator_clearing_export_download, err = client:MandatorClearingExportDownload():load({ id = "mandator_clearing_export_download_id" })
```

#### Example: Create

```lua
local mandator_clearing_export_download, err = client:MandatorClearingExportDownload():create({
  clearing_date_from = "example_clearing_date_from", -- string
  clearing_date_to = "example_clearing_date_to", -- string
})
```


### MandatorClearingExportSummary

Create an instance: `local mandator_clearing_export_summary = client:MandatorClearingExportSummary(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `record` | `table` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```lua
local mandator_clearing_export_summary, err = client:MandatorClearingExportSummary():create({
  clearing_date_from = "example_clearing_date_from", -- string
  clearing_date_to = "example_clearing_date_to", -- string
})
```


### MerchantPortalServicesApi

Create an instance: `local merchant_portal_services_api = client:MerchantPortalServicesApi(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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
| `pagination` | `table` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `number` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `number` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```lua
local merchant_portal_services_api, err = client:MerchantPortalServicesApi():create({
})
```


### MoveTid

Create an instance: `local move_tid = client:MoveTid(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `table` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `target_packageorderuuid` | `string` |  |
| `target_productorderuuid` | `string` |  |

#### Example: Create

```lua
local move_tid, err = client:MoveTid():create({
  productorderuuid = {}, -- table
})
```


### PaymentManual

Create an instance: `local payment_manual = client:PaymentManual(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `number` |  |
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

```lua
local payment_manual, err = client:PaymentManual():create({
  amount = 1, -- number
  card_number = "example_card_number", -- string
  currency = "example_currency", -- string
  exp_date = "example_exp_date", -- string
  txtype = "example_txtype", -- string
})
```


### PaymentSred

Create an instance: `local payment_sred = client:PaymentSred(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `amount` | `number` |  |
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
| `sred` | `table` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```lua
local payment_sred, err = client:PaymentSred():create({
  amount = 1, -- number
  currency = "example_currency", -- string
  device_payload = "example_device_payload", -- string
  txtype = "example_txtype", -- string
})
```


### PreAuthTransactionCompletion

Create an instance: `local pre_auth_transaction_completion = client:PreAuthTransactionCompletion(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `number` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `card_number_reference` | `string` |  |
| `client_id` | `number` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `number` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `number` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `number` |  |
| `receipt_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `number` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `number` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```lua
local pre_auth_transaction_completion, err = client:PreAuthTransactionCompletion():create({
  card_number_reference = "example_card_number_reference", -- string
  client_id = 1, -- number
  currency = "example_currency", -- string
  receipt_number = "example_receipt_number", -- string
  terminal_id = 1, -- number
  transaction_type = "example_transaction_type", -- string
})
```


### ReactivateTerminal

Create an instance: `local reactivate_terminal = client:ReactivateTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `reactivation_reason` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal_id` | `number` |  |

#### Example: Create

```lua
local reactivate_terminal, err = client:ReactivateTerminal():create({
  reactivation_reason = "example_reactivation_reason", -- string
  terminal_id = 1, -- number
})
```


### RefundTransaction

Create an instance: `local refund_transaction = client:RefundTransaction(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_id` | `string` |  |
| `acquirer_name` | `string` |  |
| `actual_bonus_point` | `string` |  |
| `amount` | `number` |  |
| `authorization_code` | `string` |  |
| `balance_amount` | `string` |  |
| `card_brand` | `string` |  |
| `card_number` | `string` |  |
| `client_id` | `number` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ec_data` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_data` | `string` |  |
| `exchange_fee` | `number` |  |
| `exchange_rate` | `string` |  |
| `language_code` | `string` |  |
| `merchant_address` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `message_type` | `string` |  |
| `original_trace_number` | `number` |  |
| `original_transaction_id` | `string` |  |
| `password` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_footer` | `string` |  |
| `receipt_header` | `string` |  |
| `receipt_layout` | `number` |  |
| `receipt_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `svc` | `string` |  |
| `terminal_id` | `number` |  |
| `terminal_location` | `string` |  |
| `trace_number` | `number` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `tx_type` | `string` |  |
| `user_data` | `string` |  |

#### Example: Create

```lua
local refund_transaction, err = client:RefundTransaction():create({
  client_id = 1, -- number
  currency = "example_currency", -- string
  receipt_number = "example_receipt_number", -- string
  terminal_id = 1, -- number
})
```


### RegisterTecsCompany

Create an instance: `local register_tecs_company = client:RegisterTecsCompany(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `partner_id` | `number` |  |
| `partner_name` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```lua
local register_tecs_company, err = client:RegisterTecsCompany():create({
  corporate_uuid = "example_corporate_uuid", -- string
  package_order_uuid = "example_package_order_uuid", -- string
  product_order_uuid = "example_product_order_uuid", -- string
  template_name = "example_template_name", -- string
})
```


### RegisterTerminal

Create an instance: `local register_terminal = client:RegisterTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `table` |  |
| `corporate_uuid` | `string` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `tecs_web_secret_key` | `string` |  |
| `template_name` | `string` |  |
| `terminal_country_code` | `string` |  |
| `terminal_id` | `number` |  |
| `terminal_id_acq` | `string` |  |
| `terminal_language_code` | `string` |  |
| `terminal_location` | `string` |  |
| `terminal_serial_number` | `string` |  |
| `token_io_alia` | `string` |  |
| `token_io_iban` | `string` |  |
| `token_io_member_id` | `string` |  |
| `web_shop_url` | `string` |  |

#### Example: Create

```lua
local register_terminal, err = client:RegisterTerminal():create({
  corporate_uuid = "example_corporate_uuid", -- string
  package_order_uuid = "example_package_order_uuid", -- string
  product_order_uuid = "example_product_order_uuid", -- string
  template_name = "example_template_name", -- string
  terminal_country_code = "example_terminal_country_code", -- string
  terminal_language_code = "example_terminal_language_code", -- string
  terminal_location = "example_terminal_location", -- string
})
```


### ReportData

Create an instance: `local report_data = client:ReportData(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `table` |  |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `corporate_id` | `string` |  |
| `currency` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `sum_over_credit_tx` | `table` |  |
| `sum_over_debit_tx` | `table` |  |
| `terminal_id` | `number` |  |

#### Example: Create

```lua
local report_data, err = client:ReportData():create({
  clearing_date_from = "example_clearing_date_from", -- string
  clearing_date_to = "example_clearing_date_to", -- string
  corporate_id = "example_corporate_id", -- string
  currency = "example_currency", -- string
})
```


### StatusTransaction

Create an instance: `local status_transaction = client:StatusTransaction(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `acquirer_terminal_id` | `string` |  |
| `amount` | `number` |  |
| `application_cryptogram` | `string` |  |
| `authorization_code` | `string|nil` |  |
| `authorization_date` | `string` |  |
| `card_brand` | `string` |  |
| `card_entry` | `string` |  |
| `card_expiration` | `string` |  |
| `card_number` | `string` |  |
| `clearing_amount` | `number` |  |
| `clearing_batch_id` | `string` |  |
| `clearing_currency` | `string` |  |
| `clearing_date` | `string` |  |
| `clearing_processed_date` | `string` |  |
| `clearing_status` | `string` |  |
| `client_id` | `number` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecr_data` | `string` |  |
| `emv_application_id` | `string` |  |
| `emv_application_label` | `string` |  |
| `merchant_name` | `string` |  |
| `merchant_number` | `string` |  |
| `original_client_id` | `string` |  |
| `original_terminal_id` | `number` |  |
| `original_transaction_id` | `string` |  |
| `payment_reason` | `string` |  |
| `receipt_number` | `string` |  |
| `response_code` | `number` |  |
| `response_code_from_a` | `string` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `service_code` | `string` |  |
| `settlement_status` | `string` |  |
| `source_id` | `number` |  |
| `tecsengine_response_code` | `number` |  |
| `tecsengine_response_text` | `string` |  |
| `terminal_end_of_day_date` | `string` |  |
| `terminal_id` | `number` |  |
| `terminal_location` | `string` |  |
| `tip_amount` | `number` |  |
| `trace_number` | `number` |  |
| `transaction_clearing_date` | `string` |  |
| `transaction_date` | `string` |  |
| `transaction_id` | `string` |  |
| `transaction_seq_number` | `number` |  |
| `transaction_server_date` | `string` |  |
| `transaction_source` | `string` |  |
| `transaction_type` | `string` |  |

#### Example: Create

```lua
local status_transaction, err = client:StatusTransaction():create({
})
```


### StoreTerminalParameter

Create an instance: `local store_terminal_parameter = client:StoreTerminalParameter(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `table` |  |
| `config_version` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `tid_sent` | `string` |  |

#### Example: Create

```lua
local store_terminal_parameter, err = client:StoreTerminalParameter():create({
  serial_number = "example_serial_number", -- string
})
```


### TerminalId

Create an instance: `local terminal_id = client:TerminalId(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `table` |  |
| `duplicate_terminal_id` | `table` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `terminal` | `table` |  |

#### Example: Create

```lua
local terminal_id, err = client:TerminalId():create({
  device_serial_number = {}, -- table
})
```


### TransactionHistory

Create an instance: `local transaction_history = client:TransactionHistory(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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
| `pagination` | `table` |  |
| `payment_token_public_id` | `string` |  |
| `receipt_number` | `string` |  |
| `referenced_transaction_id` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `retrieval_reference_number` | `string` |  |
| `source_id` | `number` |  |
| `tecsengine_response_code_from` | `string` |  |
| `tecsengine_response_code_to` | `string` |  |
| `terminal_id` | `number` |  |
| `trace_number` | `string` |  |
| `transaction_amount_from` | `string` |  |
| `transaction_amount_to` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transaction_history` | `table` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```lua
local transaction_history, err = client:TransactionHistory():create({
})
```


### TransactionsCount

Create an instance: `local transactions_count = client:TransactionsCount(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `table` |  |

#### Example: Create

```lua
local transactions_count, err = client:TransactionsCount():create({
})
```


### TransactionsCountCardBrand

Create an instance: `local transactions_count_card_brand = client:TransactionsCountCardBrand(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `table` |  |

#### Example: Create

```lua
local transactions_count_card_brand, err = client:TransactionsCountCardBrand():create({
})
```


### TransactionsTurnover

Create an instance: `local transactions_turnover = client:TransactionsTurnover(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `turnover` | `table` |  |

#### Example: Create

```lua
local transactions_turnover, err = client:TransactionsTurnover():create({
})
```


### UpdateMerchant

Create an instance: `local update_merchant = client:UpdateMerchant(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporate_uuid` | `string` |  |
| `country` | `string` |  |
| `merchant_category_code` | `string` |  |
| `name` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vu_nummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```lua
local update_merchant, err = client:UpdateMerchant():create({
  corporate_uuid = "example_corporate_uuid", -- string
})
```


### UpdateTemplateXml

Create an instance: `local update_template_xml = client:UpdateTemplateXml(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_xml` | `string` |  |

#### Example: Create

```lua
local update_template_xml, err = client:UpdateTemplateXml():create({
  template_name = "example_template_name", -- string
  template_xml = "example_template_xml", -- string
})
```


### Version

Create an instance: `local version = client:Version(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```lua
local version, err = client:Version():load()
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

Features are the extension mechanism. A feature is a Lua table
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as tables

The Lua SDK uses plain Lua tables throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `helpers.to_map()` to safely validate that a value is a table.

### Module structure

```
lua/
├── bluefin-tecs-merchant-services_sdk.lua    -- Main SDK module
├── config.lua               -- Configuration
├── features.lua             -- Feature factory
├── core/                    -- Core types and context
├── entity/                  -- Entity implementations
├── feature/                 -- Built-in features (Base, Test, Log)
├── utility/                 -- Utility functions and struct library
└── test/                    -- Test suites
```

The main module (`bluefin-tecs-merchant-services_sdk`) exports the SDK constructor
and test helper. Import entity or utility modules directly only
when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```lua
local digitalservicesapi = client:DigitalServicesApi()
digitalservicesapi:load()

-- digitalservicesapi:data_get() now returns the digitalservicesapi data from the last load
-- digitalservicesapi:match_get() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
