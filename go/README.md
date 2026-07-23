# BluefinTecsMerchantServices Golang SDK



The Golang SDK for the BluefinTecsMerchantServices API — an entity-oriented client using standard Go conventions. No generics required; data flows as `map[string]any`.

It exposes the API as capitalised, semantic **Entities** — e.g. `client.CancelTransaction(nil)` — each with the same small set of operations (`Load`, `Create`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
```bash
go get github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go@latest
```

The Go module proxy resolves the version from the `go/vX.Y.Z` GitHub
release tag — see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases) for the available versions.

To vendor from a local checkout instead, clone this repo alongside your
project and add a `replace` directive pointing at the checked-out
`go/` directory:

```bash
go mod edit -replace github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go=../bluefin-tecs-merchant-services-sdk/go
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### Quickstart

A complete program: create a client, then call the entity operations.
Each operation returns `(value, error)` — the value is the data itself
(there is no `{ok, data}` wrapper), so check `err` and use the value
directly.

```go
package main

import (
    "fmt"
    "os"
    sdk "github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go"
)

func main() {
    client := sdk.NewBluefinTecsMerchantServicesSDK(map[string]any{
        "apikey": os.Getenv("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"),
    })

    // Create a cancelTransaction.
    created, err := client.CancelTransaction(nil).Create(map[string]any{"client_id": 1, "currency": "example_currency", "receipt_number": "example_receipt_number", "terminal_id": 1}, nil)
    if err != nil {
        panic(err)
    }
    fmt.Println(created)
}
```


## Error handling

Every entity operation returns `(value, error)`. Check `err` before
using the value — there is no exception to catch:

```go
digitalservicesapi, err := client.DigitalServicesApi(nil).Load(nil, nil)
if err != nil {
    // handle err
    return
}
_ = digitalservicesapi
```

`Direct` follows the same `(value, error)` convention:

```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example_id"},
})
if err != nil {
    // handle err
}
_ = result
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
if err != nil {
    panic(err)
}

if result["ok"] == true {
    fmt.Println(result["status"]) // 200
    fmt.Println(result["data"])   // response body
}
```

### Prepare a request without sending it

```go
fetchdef, err := client.Prepare(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "DELETE",
    "params": map[string]any{"id": "example"},
})
if err != nil {
    panic(err)
}

fmt.Println(fetchdef["url"])
fmt.Println(fetchdef["method"])
fmt.Println(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```go
client := sdk.Test()

digitalServicesApi, err := client.DigitalServicesApi(nil).Load(
    nil, nil,
)
if err != nil {
    panic(err)
}
fmt.Println(digitalServicesApi) // the returned mock data
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```go
mockFetch := func(url string, init map[string]any) (map[string]any, error) {
    return map[string]any{
        "status":     200,
        "statusText": "OK",
        "headers":    map[string]any{},
        "json": (func() any)(func() any {
            return map[string]any{"id": "mock01"}
        }),
    }, nil
}

client := sdk.NewBluefinTecsMerchantServicesSDK(map[string]any{
    "base": "http://localhost:8080",
    "system": map[string]any{
        "fetch": (func(string, map[string]any) (map[string]any, error))(mockFetch),
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
cd go && go test ./test/...
```


## Reference

### NewBluefinTecsMerchantServicesSDK

```go
func NewBluefinTecsMerchantServicesSDK(options map[string]any) *BluefinTecsMerchantServicesSDK
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `"apikey"` | `string` | API key for authentication. |
| `"base"` | `string` | Base URL of the API server. |
| `"prefix"` | `string` | URL path prefix prepended to all requests. |
| `"suffix"` | `string` | URL path suffix appended to all requests. |
| `"feature"` | `map[string]any` | Feature activation flags. |
| `"extend"` | `[]any` | Additional Feature instances to load. |
| `"system"` | `map[string]any` | System overrides (e.g. custom `"fetch"` function). |

### TestSDK

```go
func TestSDK(testopts map[string]any, sdkopts map[string]any) *BluefinTecsMerchantServicesSDK
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `OptionsMap` | `() map[string]any` | Deep copy of current SDK options. |
| `GetUtility` | `() *Utility` | Copy of the SDK utility object. |
| `Prepare` | `(fetchargs map[string]any) (map[string]any, error)` | Build an HTTP request definition without sending. |
| `Direct` | `(fetchargs map[string]any) (map[string]any, error)` | Build and send an HTTP request. |
| `CancelTransaction` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an EcomParameter entity instance. |
| `EcrData` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an EcrData entity instance. |
| `EmvData` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an EmvData entity instance. |
| `EnableAcquiring` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a KeepAlive entity instance. |
| `ListTerminal` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a MoveTid entity instance. |
| `PaymentManual` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a PaymentManual entity instance. |
| `PaymentSred` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a RegisterTerminal entity instance. |
| `ReportData` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a ReportData entity instance. |
| `StatusTransaction` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a TerminalId entity instance. |
| `TransactionHistory` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create an UpdateTemplateXml entity instance. |
| `Version` | `(data map[string]any) BluefinTecsMerchantServicesEntity` | Create a Version entity instance. |

### Entity interface (BluefinTecsMerchantServicesEntity)

All entities implement the `BluefinTecsMerchantServicesEntity` interface.

| Method | Signature | Description |
| --- | --- | --- |
| `Load` | `(reqmatch, ctrl map[string]any) (any, error)` | Load a single entity by match criteria. |
| `Create` | `(reqdata, ctrl map[string]any) (any, error)` | Create a new entity. |
| `Data` | `(args ...any) any` | Get or set entity data. |
| `Match` | `(args ...any) any` | Get or set entity match criteria. |
| `Make` | `() Entity` | Create a new instance with the same options. |
| `GetName` | `() string` | Return the entity name. |

### Result shape

Entity operations return `(value, error)`. The `value` is the
operation's data **directly** — there is no wrapper:

| Operation | `value` |
| --- | --- |
| `Load` / `Create` | the entity record (`map[string]any`) |

Check `err` first, then use the value directly (or the typed
`...Typed` variants, which return the entity's model struct and a typed
slice):

    cancelTransaction, err := client.CancelTransaction(nil).Create(map[string]any{/* fields */}, nil)
    if err != nil { /* handle */ }
    // cancelTransaction is the returned record

Only `Direct()` returns a response envelope — a `map[string]any` with
`"ok"`, `"status"`, `"headers"`, and `"data"` keys.

### Entities

#### CancelTransaction

| Field | Description |
| --- | --- |
| `"acquirer_id"` |  |
| `"acquirer_name"` |  |
| `"actual_bonus_point"` |  |
| `"amount"` |  |
| `"authorization_code"` |  |
| `"balance_amount"` |  |
| `"card_brand"` |  |
| `"card_number"` |  |
| `"client_id"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"ec_data"` |  |
| `"ecr_data"` |  |
| `"emv_data"` |  |
| `"exchange_fee"` |  |
| `"exchange_rate"` |  |
| `"language_code"` |  |
| `"merchant_address"` |  |
| `"merchant_name"` |  |
| `"merchant_number"` |  |
| `"message_type"` |  |
| `"original_trace_number"` |  |
| `"original_transaction_id"` |  |
| `"password"` |  |
| `"payment_reason"` |  |
| `"receipt_footer"` |  |
| `"receipt_header"` |  |
| `"receipt_layout"` |  |
| `"receipt_number"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"serial_number"` |  |
| `"svc"` |  |
| `"terminal_id"` |  |
| `"terminal_location"` |  |
| `"trace_number"` |  |
| `"transaction_date"` |  |
| `"transaction_id"` |  |
| `"tx_type"` |  |
| `"user_data"` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `"card_no"` |  |
| `"response_code"` |  |
| `"response_message"` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `"acquirer_id"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"template_name"` |  |
| `"template_type"` |  |
| `"template_xml"` |  |
| `"terminal_type"` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `"corporate_uuid"` |  |
| `"deactivation_reason"` |  |
| `"package_order_uuid"` |  |
| `"product_order_uuid"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `"clearing_date_from"` |  |
| `"clearing_date_to"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"tx_count"` |  |
| `"tx_id_end"` |  |
| `"tx_id_start"` |  |
| `"tx_seq_no_end"` |  |
| `"tx_seq_no_start"` |  |
| `"tx_total"` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `"ecom_data"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |
| `"transaction_id"` |  |
| `"transaction_type"` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `"ecom_pass"` |  |
| `"ecom_skey"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `"ecr_data"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |
| `"transaction_id"` |  |
| `"transaction_type"` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `"emv_data"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |
| `"transaction_id"` |  |
| `"transaction_type"` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `"account_no"` |  |
| `"additional_data"` |  |
| `"corporate_uuid"` |  |
| `"currency"` |  |
| `"merchant_category_code"` |  |
| `"package_order_uuid"` |  |
| `"product_order_uuid"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"sorting_code"` |  |
| `"template_name"` |  |
| `"terminal_id"` |  |
| `"terminal_id_acq"` |  |
| `"vu_nummer"` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `"merchant_contract_number"` |  |
| `"response_code"` |  |
| `"response_message"` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `"response_code"` |  |
| `"response_message"` |  |
| `"template_name"` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `"mandator_name"` |  |
| `"response_code"` |  |
| `"response_message"` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_template_description"` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `"hwserialno"` |  |
| `"ka_date_time_from"` |  |
| `"ka_date_time_to"` |  |
| `"keep_alive_data"` |  |
| `"pagination"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_date_time_from"` |  |
| `"terminal_date_time_to"` |  |
| `"terminal_id"` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `"corporate_uuid"` |  |
| `"filter"` |  |
| `"pagination"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal"` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `"clearing_date_from"` |  |
| `"clearing_date_to"` |  |
| `"pagination"` |  |
| `"record"` |  |
| `"response_code"` |  |
| `"response_message"` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `"clearing_date_from"` |  |
| `"clearing_date_to"` |  |
| `"file_id"` |  |
| `"filename_template"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"status"` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `"clearing_date_from"` |  |
| `"clearing_date_to"` |  |
| `"record"` |  |
| `"response_code"` |  |
| `"response_message"` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `"3_d_secure"` |  |
| `"authorization_code"` |  |
| `"card_brand"` |  |
| `"clearing_amount_from"` |  |
| `"clearing_amount_to"` |  |
| `"clearing_currency"` |  |
| `"clearing_status"` |  |
| `"corporate_uuid"` |  |
| `"order_by_transaction_date"` |  |
| `"pagination"` |  |
| `"receipt_number"` |  |
| `"referenced_transaction_id"` |  |
| `"retrieval_reference_number"` |  |
| `"source_id"` |  |
| `"tecsengine_response_code_from"` |  |
| `"tecsengine_response_code_to"` |  |
| `"terminal_id"` |  |
| `"trace_number"` |  |
| `"transaction_amount_from"` |  |
| `"transaction_amount_to"` |  |
| `"transaction_date_from"` |  |
| `"transaction_date_to"` |  |
| `"transaction_id"` |  |
| `"transaction_type"` |  |
| `"wallet"` |  |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `"productorderuuid"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"target_packageorderuuid"` |  |
| `"target_productorderuuid"` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `"acquirer_name"` |  |
| `"amount"` |  |
| `"authorization_number"` |  |
| `"card_number"` |  |
| `"card_type"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"date_time_tx"` |  |
| `"exp_date"` |  |
| `"merchant_id"` |  |
| `"original_transaction_id"` |  |
| `"password"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |
| `"transaction_id"` |  |
| `"txtype"` |  |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `"acquirer_name"` |  |
| `"amount"` |  |
| `"authorization_number"` |  |
| `"card_type"` |  |
| `"currency"` |  |
| `"date_time_tx"` |  |
| `"device_payload"` |  |
| `"merchant_id"` |  |
| `"original_transaction_id"` |  |
| `"password"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"sred"` |  |
| `"terminal_id"` |  |
| `"transaction_id"` |  |
| `"txtype"` |  |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `"acquirer_id"` |  |
| `"acquirer_name"` |  |
| `"actual_bonus_point"` |  |
| `"amount"` |  |
| `"authorization_code"` |  |
| `"balance_amount"` |  |
| `"card_brand"` |  |
| `"card_number"` |  |
| `"card_number_reference"` |  |
| `"client_id"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"ec_data"` |  |
| `"ecr_data"` |  |
| `"emv_data"` |  |
| `"exchange_fee"` |  |
| `"exchange_rate"` |  |
| `"language_code"` |  |
| `"merchant_address"` |  |
| `"merchant_name"` |  |
| `"merchant_number"` |  |
| `"message_type"` |  |
| `"original_trace_number"` |  |
| `"original_transaction_id"` |  |
| `"password"` |  |
| `"payment_reason"` |  |
| `"receipt_footer"` |  |
| `"receipt_header"` |  |
| `"receipt_layout"` |  |
| `"receipt_number"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"serial_number"` |  |
| `"svc"` |  |
| `"terminal_id"` |  |
| `"terminal_location"` |  |
| `"trace_number"` |  |
| `"transaction_date"` |  |
| `"transaction_id"` |  |
| `"transaction_type"` |  |
| `"tx_type"` |  |
| `"user_data"` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `"corporate_uuid"` |  |
| `"package_order_uuid"` |  |
| `"product_order_uuid"` |  |
| `"reactivation_reason"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal_id"` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `"acquirer_id"` |  |
| `"acquirer_name"` |  |
| `"actual_bonus_point"` |  |
| `"amount"` |  |
| `"authorization_code"` |  |
| `"balance_amount"` |  |
| `"card_brand"` |  |
| `"card_number"` |  |
| `"client_id"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"ec_data"` |  |
| `"ecr_data"` |  |
| `"emv_data"` |  |
| `"exchange_fee"` |  |
| `"exchange_rate"` |  |
| `"language_code"` |  |
| `"merchant_address"` |  |
| `"merchant_name"` |  |
| `"merchant_number"` |  |
| `"message_type"` |  |
| `"original_trace_number"` |  |
| `"original_transaction_id"` |  |
| `"password"` |  |
| `"payment_reason"` |  |
| `"receipt_footer"` |  |
| `"receipt_header"` |  |
| `"receipt_layout"` |  |
| `"receipt_number"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"serial_number"` |  |
| `"svc"` |  |
| `"terminal_id"` |  |
| `"terminal_location"` |  |
| `"trace_number"` |  |
| `"transaction_date"` |  |
| `"transaction_id"` |  |
| `"tx_type"` |  |
| `"user_data"` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `"corporate_uuid"` |  |
| `"package_order_uuid"` |  |
| `"partner_id"` |  |
| `"partner_name"` |  |
| `"product_order_uuid"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"template_name"` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `"additional_data"` |  |
| `"corporate_uuid"` |  |
| `"package_order_uuid"` |  |
| `"product_order_uuid"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"tecs_web_secret_key"` |  |
| `"template_name"` |  |
| `"terminal_country_code"` |  |
| `"terminal_id"` |  |
| `"terminal_id_acq"` |  |
| `"terminal_language_code"` |  |
| `"terminal_location"` |  |
| `"terminal_serial_number"` |  |
| `"token_io_alia"` |  |
| `"token_io_iban"` |  |
| `"token_io_member_id"` |  |
| `"web_shop_url"` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `"card_brand_report_data"` |  |
| `"clearing_date_from"` |  |
| `"clearing_date_to"` |  |
| `"corporate_id"` |  |
| `"currency"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"sum_over_credit_tx"` |  |
| `"sum_over_debit_tx"` |  |
| `"terminal_id"` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `"acquirer_name"` |  |
| `"acquirer_terminal_id"` |  |
| `"amount"` |  |
| `"application_cryptogram"` |  |
| `"authorization_code"` |  |
| `"authorization_date"` |  |
| `"card_brand"` |  |
| `"card_entry"` |  |
| `"card_expiration"` |  |
| `"card_number"` |  |
| `"clearing_amount"` |  |
| `"clearing_batch_id"` |  |
| `"clearing_currency"` |  |
| `"clearing_date"` |  |
| `"clearing_processed_date"` |  |
| `"clearing_status"` |  |
| `"client_id"` |  |
| `"currency"` |  |
| `"cvm"` |  |
| `"ecr_data"` |  |
| `"emv_application_id"` |  |
| `"emv_application_label"` |  |
| `"merchant_name"` |  |
| `"merchant_number"` |  |
| `"original_client_id"` |  |
| `"original_terminal_id"` |  |
| `"original_transaction_id"` |  |
| `"payment_reason"` |  |
| `"receipt_number"` |  |
| `"response_code"` |  |
| `"response_code_from_a"` |  |
| `"response_message"` |  |
| `"retrieval_reference_number"` |  |
| `"service_code"` |  |
| `"settlement_status"` |  |
| `"source_id"` |  |
| `"tecsengine_response_code"` |  |
| `"tecsengine_response_text"` |  |
| `"terminal_end_of_day_date"` |  |
| `"terminal_id"` |  |
| `"terminal_location"` |  |
| `"tip_amount"` |  |
| `"trace_number"` |  |
| `"transaction_clearing_date"` |  |
| `"transaction_date"` |  |
| `"transaction_id"` |  |
| `"transaction_seq_number"` |  |
| `"transaction_server_date"` |  |
| `"transaction_source"` |  |
| `"transaction_type"` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `"acq_tab_nexo"` |  |
| `"config_version"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"serial_number"` |  |
| `"tid_sent"` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `"device_serial_number"` |  |
| `"duplicate_terminal_id"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"terminal"` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `"3_d_secure"` |  |
| `"authorization_code"` |  |
| `"card_brand"` |  |
| `"clearing_amount_from"` |  |
| `"clearing_amount_to"` |  |
| `"clearing_currency"` |  |
| `"clearing_status"` |  |
| `"corporate_uuid"` |  |
| `"order_by_transaction_date"` |  |
| `"pagination"` |  |
| `"payment_token_public_id"` |  |
| `"receipt_number"` |  |
| `"referenced_transaction_id"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"retrieval_reference_number"` |  |
| `"source_id"` |  |
| `"tecsengine_response_code_from"` |  |
| `"tecsengine_response_code_to"` |  |
| `"terminal_id"` |  |
| `"trace_number"` |  |
| `"transaction_amount_from"` |  |
| `"transaction_amount_to"` |  |
| `"transaction_date_from"` |  |
| `"transaction_date_to"` |  |
| `"transaction_history"` |  |
| `"transaction_id"` |  |
| `"transaction_type"` |  |
| `"wallet"` |  |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `"period"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"transaction_date_from"` |  |
| `"transaction_date_to"` |  |
| `"transactions_count"` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `"period"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"transaction_date_from"` |  |
| `"transaction_date_to"` |  |
| `"transactions_count"` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `"period"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"transaction_date_from"` |  |
| `"transaction_date_to"` |  |
| `"turnover"` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `"city"` |  |
| `"corporate_uuid"` |  |
| `"country"` |  |
| `"merchant_category_code"` |  |
| `"name"` |  |
| `"response_code"` |  |
| `"response_message"` |  |
| `"state"` |  |
| `"street"` |  |
| `"vu_nummer"` |  |
| `"zipcode"` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `"response_code"` |  |
| `"response_message"` |  |
| `"template_name"` |  |
| `"template_xml"` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `"app_name"` |  |
| `"build_date"` |  |
| `"version"` |  |

Operations: Load.

API path: `/public/version`



## Entities


### CancelTransaction

Create an instance: `cancelTransaction := client.CancelTransaction(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.CancelTransaction(nil).Create(map[string]any{
    "client_id": 1,
    "currency": "example_currency",
    "receipt_number": "example_receipt_number",
    "terminal_id": 1,
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### CheckCardBlackListed

Create an instance: `checkCardBlackListed := client.CheckCardBlackListed(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_no` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```go
result, err := client.CheckCardBlackListed(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### CreateProduct

Create an instance: `createProduct := client.CreateProduct(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.CreateProduct(nil).Create(map[string]any{
    "template_name": "example_template_name",
    "template_type": "example_template_type",
    "template_xml": "example_template_xml",
    "terminal_type": "example_terminal_type",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### DeactivateTerminal

Create an instance: `deactivateTerminal := client.DeactivateTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.DeactivateTerminal(nil).Create(map[string]any{
    "deactivation_reason": "example_deactivation_reason",
    "terminal_id": 1,
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### DigitalServicesApi

Create an instance: `digitalServicesApi := client.DigitalServicesApi(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match, ctrl)` | Load a single entity by match criteria. |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
digitalServicesApi, err := client.DigitalServicesApi(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(digitalServicesApi) // the loaded record
```

#### Example: Create

```go
result, err := client.DigitalServicesApi(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### EcDataEcom

Create an instance: `ecDataEcom := client.EcDataEcom(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.EcDataEcom(nil).Create(map[string]any{
    "terminal_id": 1,
    "transaction_id": "example_transaction_id",
    "transaction_type": "example_transaction_type",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### EcomParameter

Create an instance: `ecomParameter := client.EcomParameter(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecom_pass` | `string` |  |
| `ecom_skey` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```go
result, err := client.EcomParameter(nil).Create(map[string]any{
    "terminal_id": 1,
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### EcrData

Create an instance: `ecrData := client.EcrData(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.EcrData(nil).Create(map[string]any{
    "terminal_id": 1,
    "transaction_id": "example_transaction_id",
    "transaction_type": "example_transaction_type",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### EmvData

Create an instance: `emvData := client.EmvData(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.EmvData(nil).Create(map[string]any{
    "terminal_id": 1,
    "transaction_id": "example_transaction_id",
    "transaction_type": "example_transaction_type",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### EnableAcquiring

Create an instance: `enableAcquiring := client.EnableAcquiring(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `account_no` | `int` |  |
| `additional_data` | `map[string]any` |  |
| `corporate_uuid` | `string` |  |
| `currency` | `string` |  |
| `merchant_category_code` | `int` |  |
| `package_order_uuid` | `string` |  |
| `product_order_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sorting_code` | `int` |  |
| `template_name` | `string` |  |
| `terminal_id` | `[]any` |  |
| `terminal_id_acq` | `string` |  |
| `vu_nummer` | `string` |  |

#### Example: Create

```go
result, err := client.EnableAcquiring(nil).Create(map[string]any{
    "corporate_uuid": "example_corporate_uuid",
    "currency": "example_currency",
    "merchant_category_code": 1,
    "package_order_uuid": "example_package_order_uuid",
    "product_order_uuid": "example_product_order_uuid",
    "template_name": "example_template_name",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### GetMerchantContractNumber

Create an instance: `getMerchantContractNumber := client.GetMerchantContractNumber(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchant_contract_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```go
result, err := client.GetMerchantContractNumber(nil).Create(map[string]any{
    "merchant_contract_number": "example_merchant_contract_number",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### GetTemplateXml

Create an instance: `getTemplateXml := client.GetTemplateXml(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |

#### Example: Create

```go
result, err := client.GetTemplateXml(nil).Create(map[string]any{
    "template_name": "example_template_name",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### IntroduceMandator

Create an instance: `introduceMandator := client.IntroduceMandator(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```go
result, err := client.IntroduceMandator(nil).Create(map[string]any{
    "mandator_name": "example_mandator_name",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### IntroducePackage

Create an instance: `introducePackage := client.IntroducePackage(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_template_description` | `string` |  |

#### Example: Create

```go
result, err := client.IntroducePackage(nil).Create(map[string]any{
    "terminal_template_description": "example_terminal_template_description",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### KeepAlive

Create an instance: `keepAlive := client.KeepAlive(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `ka_date_time_from` | `string` |  |
| `ka_date_time_to` | `string` |  |
| `keep_alive_data` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal_date_time_from` | `string` |  |
| `terminal_date_time_to` | `string` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```go
result, err := client.KeepAlive(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### ListTerminal

Create an instance: `listTerminal := client.ListTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporate_uuid` | `[]any` |  |
| `filter` | `map[string]any` |  |
| `pagination` | `map[string]any` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal` | `[]any` |  |

#### Example: Create

```go
result, err := client.ListTerminal(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### MandatorClearingExport

Create an instance: `mandatorClearingExport := client.MandatorClearingExport(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `pagination` | `map[string]any` |  |
| `record` | `[]any` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```go
result, err := client.MandatorClearingExport(nil).Create(map[string]any{
    "clearing_date_from": "example_clearing_date_from",
    "clearing_date_to": "example_clearing_date_to",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### MandatorClearingExportDownload

Create an instance: `mandatorClearingExportDownload := client.MandatorClearingExportDownload(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match, ctrl)` | Load a single entity by match criteria. |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
mandatorClearingExportDownload, err := client.MandatorClearingExportDownload(nil).Load(map[string]any{"id": "mandator_clearing_export_download_id"}, nil)
if err != nil {
    panic(err)
}
fmt.Println(mandatorClearingExportDownload) // the loaded record
```

#### Example: Create

```go
result, err := client.MandatorClearingExportDownload(nil).Create(map[string]any{
    "clearing_date_from": "example_clearing_date_from",
    "clearing_date_to": "example_clearing_date_to",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### MandatorClearingExportSummary

Create an instance: `mandatorClearingExportSummary := client.MandatorClearingExportSummary(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `record` | `[]any` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```go
result, err := client.MandatorClearingExportSummary(nil).Create(map[string]any{
    "clearing_date_from": "example_clearing_date_from",
    "clearing_date_to": "example_clearing_date_to",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### MerchantPortalServicesApi

Create an instance: `merchantPortalServicesApi := client.MerchantPortalServicesApi(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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
| `pagination` | `map[string]any` |  |
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

```go
result, err := client.MerchantPortalServicesApi(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### MoveTid

Create an instance: `moveTid := client.MoveTid(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuid` | `[]any` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `target_packageorderuuid` | `string` |  |
| `target_productorderuuid` | `string` |  |

#### Example: Create

```go
result, err := client.MoveTid(nil).Create(map[string]any{
    "productorderuuid": []any{},
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### PaymentManual

Create an instance: `paymentManual := client.PaymentManual(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.PaymentManual(nil).Create(map[string]any{
    "amount": 1,
    "card_number": "example_card_number",
    "currency": "example_currency",
    "exp_date": "example_exp_date",
    "txtype": "example_txtype",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### PaymentSred

Create an instance: `paymentSred := client.PaymentSred(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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
| `sred` | `map[string]any` |  |
| `terminal_id` | `string` |  |
| `transaction_id` | `string` |  |
| `txtype` | `string` |  |

#### Example: Create

```go
result, err := client.PaymentSred(nil).Create(map[string]any{
    "amount": 1,
    "currency": "example_currency",
    "device_payload": "example_device_payload",
    "txtype": "example_txtype",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### PreAuthTransactionCompletion

Create an instance: `preAuthTransactionCompletion := client.PreAuthTransactionCompletion(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.PreAuthTransactionCompletion(nil).Create(map[string]any{
    "card_number_reference": "example_card_number_reference",
    "client_id": 1,
    "currency": "example_currency",
    "receipt_number": "example_receipt_number",
    "terminal_id": 1,
    "transaction_type": "example_transaction_type",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### ReactivateTerminal

Create an instance: `reactivateTerminal := client.ReactivateTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.ReactivateTerminal(nil).Create(map[string]any{
    "reactivation_reason": "example_reactivation_reason",
    "terminal_id": 1,
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### RefundTransaction

Create an instance: `refundTransaction := client.RefundTransaction(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.RefundTransaction(nil).Create(map[string]any{
    "client_id": 1,
    "currency": "example_currency",
    "receipt_number": "example_receipt_number",
    "terminal_id": 1,
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### RegisterTecsCompany

Create an instance: `registerTecsCompany := client.RegisterTecsCompany(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.RegisterTecsCompany(nil).Create(map[string]any{
    "corporate_uuid": "example_corporate_uuid",
    "package_order_uuid": "example_package_order_uuid",
    "product_order_uuid": "example_product_order_uuid",
    "template_name": "example_template_name",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### RegisterTerminal

Create an instance: `registerTerminal := client.RegisterTerminal(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additional_data` | `map[string]any` |  |
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

```go
result, err := client.RegisterTerminal(nil).Create(map[string]any{
    "corporate_uuid": "example_corporate_uuid",
    "package_order_uuid": "example_package_order_uuid",
    "product_order_uuid": "example_product_order_uuid",
    "template_name": "example_template_name",
    "terminal_country_code": "example_terminal_country_code",
    "terminal_language_code": "example_terminal_language_code",
    "terminal_location": "example_terminal_location",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### ReportData

Create an instance: `reportData := client.ReportData(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `card_brand_report_data` | `[]any` |  |
| `clearing_date_from` | `string` |  |
| `clearing_date_to` | `string` |  |
| `corporate_id` | `string` |  |
| `currency` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sum_over_credit_tx` | `map[string]any` |  |
| `sum_over_debit_tx` | `map[string]any` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```go
result, err := client.ReportData(nil).Create(map[string]any{
    "clearing_date_from": "example_clearing_date_from",
    "clearing_date_to": "example_clearing_date_to",
    "corporate_id": "example_corporate_id",
    "currency": "example_currency",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### StatusTransaction

Create an instance: `statusTransaction := client.StatusTransaction(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirer_name` | `string` |  |
| `acquirer_terminal_id` | `string` |  |
| `amount` | `int` |  |
| `application_cryptogram` | `string` |  |
| `authorization_code` | `any` |  |
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

```go
result, err := client.StatusTransaction(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### StoreTerminalParameter

Create an instance: `storeTerminalParameter := client.StoreTerminalParameter(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acq_tab_nexo` | `map[string]any` |  |
| `config_version` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `serial_number` | `string` |  |
| `tid_sent` | `string` |  |

#### Example: Create

```go
result, err := client.StoreTerminalParameter(nil).Create(map[string]any{
    "serial_number": "example_serial_number",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### TerminalId

Create an instance: `terminalId := client.TerminalId(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `device_serial_number` | `[]any` |  |
| `duplicate_terminal_id` | `[]any` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `terminal` | `[]any` |  |

#### Example: Create

```go
result, err := client.TerminalId(nil).Create(map[string]any{
    "device_serial_number": []any{},
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### TransactionHistory

Create an instance: `transactionHistory := client.TransactionHistory(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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
| `pagination` | `map[string]any` |  |
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
| `transaction_history` | `[]any` |  |
| `transaction_id` | `string` |  |
| `transaction_type` | `string` |  |
| `wallet` | `string` |  |

#### Example: Create

```go
result, err := client.TransactionHistory(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### TransactionsCount

Create an instance: `transactionsCount := client.TransactionsCount(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `[]any` |  |

#### Example: Create

```go
result, err := client.TransactionsCount(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### TransactionsCountCardBrand

Create an instance: `transactionsCountCardBrand := client.TransactionsCountCardBrand(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `transactions_count` | `[]any` |  |

#### Example: Create

```go
result, err := client.TransactionsCountCardBrand(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### TransactionsTurnover

Create an instance: `transactionsTurnover := client.TransactionsTurnover(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `transaction_date_from` | `string` |  |
| `transaction_date_to` | `string` |  |
| `turnover` | `[]any` |  |

#### Example: Create

```go
result, err := client.TransactionsTurnover(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### UpdateMerchant

Create an instance: `updateMerchant := client.UpdateMerchant(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.UpdateMerchant(nil).Create(map[string]any{
    "corporate_uuid": "example_corporate_uuid",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### UpdateTemplateXml

Create an instance: `updateTemplateXml := client.UpdateTemplateXml(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `template_name` | `string` |  |
| `template_xml` | `string` |  |

#### Example: Create

```go
result, err := client.UpdateTemplateXml(nil).Create(map[string]any{
    "template_name": "example_template_name",
    "template_xml": "example_template_xml",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### Version

Create an instance: `version := client.Version(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```go
version, err := client.Version(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(version) // the loaded record
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

Features are the extension mechanism. A feature implements the
`Feature` interface and provides hooks — functions keyed by pipeline
stage names.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as maps

The Go SDK uses `map[string]any` throughout rather than typed structs.
This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Use `core.ToMapAny()` to safely cast results and nested data.

### Package structure

```
github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/
├── bluefin-tecs-merchant-services.go        # Root package — type aliases and constructors
├── core/               # SDK core — client, types, pipeline
├── entity/             # Entity implementations
├── feature/            # Built-in features (Base, Test, Log)
├── utility/            # Utility functions and struct library
└── test/               # Test suites
```

The root package (`github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go`) re-exports everything needed
for normal use. Import sub-packages only when you need specific types
like `core.ToMapAny`.

### Entity state

Entity instances are stateful. After a successful `Load`, the entity
stores the returned data and match criteria internally.

```go
digitalservicesapi := client.DigitalServicesApi(nil)
digitalservicesapi.Load(nil, nil)

// digitalservicesapi.Data() now returns the digitalservicesapi data from the last load
// digitalservicesapi.Match() returns the last match criteria
```

Call `Make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`Direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `Prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
