# BluefinTecsMerchantServices Golang SDK



The Golang SDK for the BluefinTecsMerchantServices API — an entity-oriented client using standard Go conventions. No generics required; data flows as `map[string]any`.

It exposes the API as capitalised, semantic **Entities** — e.g. `client.CancelTransaction(nil)` — each with the same small set of operations (`Load`, `Create`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Also generated from this model: `c`, `clojure`, `cpp`, `csharp`, `dart`, `elixir`, `go-cli`, `go-mcp`, `java`, `js`, `kotlin`, `lua`, `ocaml`, `perl`, `php`, `py`, `rb`, `rust`, `scala`, `swift`, `ts`, `zig` — see
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
    created, err := client.CancelTransaction(nil).Create(map[string]any{"clientId": 1, "currency": "example_currency", "receiptNumber": "example_receiptNumber", "terminalId": 1}, nil)
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
| `"acquirerId"` |  |
| `"acquirerName"` |  |
| `"actualBonusPoints"` |  |
| `"amount"` |  |
| `"authorizationCode"` |  |
| `"balanceAmount"` |  |
| `"cardBrand"` |  |
| `"cardNumber"` |  |
| `"clientId"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"ecData"` |  |
| `"ecrData"` |  |
| `"emvData"` |  |
| `"exchangeFee"` |  |
| `"exchangeRate"` |  |
| `"languageCode"` |  |
| `"merchantAddress"` |  |
| `"merchantName"` |  |
| `"merchantNumber"` |  |
| `"messageType"` |  |
| `"originalTraceNumber"` |  |
| `"originalTransactionId"` |  |
| `"password"` |  |
| `"paymentReason"` |  |
| `"receiptFooter"` |  |
| `"receiptHeader"` |  |
| `"receiptLayout"` |  |
| `"receiptNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"serialNumber"` |  |
| `"svc"` |  |
| `"terminalId"` |  |
| `"terminalLocation"` |  |
| `"traceNumber"` |  |
| `"transactionDate"` |  |
| `"transactionId"` |  |
| `"txType"` |  |
| `"userData"` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `"cardNo"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `"acquirerId"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"templateName"` |  |
| `"templateType"` |  |
| `"templateXml"` |  |
| `"terminalType"` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `"corporateUuid"` |  |
| `"deactivationReason"` |  |
| `"packageOrderUuid"` |  |
| `"productOrderUuid"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalId"` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `"clearingDateFrom"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `"clearingDateTo"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"txCount"` |  |
| `"txIdEnd"` |  |
| `"txIdStart"` |  |
| `"txSeqNoEnd"` |  |
| `"txSeqNoStart"` |  |
| `"txTotal"` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `"ecomData"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalId"` |  |
| `"transactionId"` |  |
| `"transactionType"` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `"ecomPass"` |  |
| `"ecomSkey"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalId"` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `"ecrData"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalId"` |  |
| `"transactionId"` |  |
| `"transactionType"` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `"emvData"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalId"` |  |
| `"transactionId"` |  |
| `"transactionType"` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `"accountNo"` |  |
| `"additionalData"` |  |
| `"corporateUuid"` |  |
| `"currency"` |  |
| `"merchantCategoryCode"` |  |
| `"packageOrderUuid"` |  |
| `"productOrderUuid"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"sortingCode"` |  |
| `"templateName"` |  |
| `"terminalIdAcq"` |  |
| `"terminalIds"` |  |
| `"vuNummer"` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `"merchantContractNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"templateName"` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `"mandatorName"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalTemplateDescription"` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `"hwserialno"` |  |
| `"kaDateTimeFrom"` |  |
| `"kaDateTimeTo"` |  |
| `"keepAliveData"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalDateTimeFrom"` |  |
| `"terminalDateTimeTo"` |  |
| `"terminalId"` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `"corporateUuid"` |  |
| `"filter"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminals"` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `"clearingDateFrom"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `"clearingDateTo"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `"pagination"` |  |
| `"records"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `"clearingDateFrom"` | Start date for clearing export (inclusive) |
| `"clearingDateTo"` | End date for clearing export (inclusive) |
| `"fileId"` | Unique file identifier for tracking and downloading |
| `"filenameTemplate"` | Optional filename template for the export file |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"status"` | Processing status of the export request |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `"clearingDateFrom"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `"clearingDateTo"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `"records"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `"3DSecure"` |  |
| `"authorizationCode"` |  |
| `"cardBrand"` |  |
| `"clearingAmountFrom"` |  |
| `"clearingAmountTo"` |  |
| `"clearingCurrency"` |  |
| `"clearingStatus"` |  |
| `"corporateUUID"` |  |
| `"orderByTransactionDate"` |  |
| `"pagination"` |  |
| `"receiptNumber"` |  |
| `"referencedTransactionId"` |  |
| `"retrievalReferenceNumber"` |  |
| `"sourceId"` |  |
| `"tecsengineResponseCodeFrom"` |  |
| `"tecsengineResponseCodeTo"` |  |
| `"terminalId"` |  |
| `"traceNumber"` |  |
| `"transactionAmountFrom"` |  |
| `"transactionAmountTo"` |  |
| `"transactionDateFrom"` |  |
| `"transactionDateTo"` |  |
| `"transactionId"` |  |
| `"transactionType"` |  |
| `"wallet"` | Filter by wallet type. |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `"productorderuuids"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"targetPackageorderuuid"` |  |
| `"targetProductorderuuid"` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `"acquirerName"` | Acquirer name parsed from KKG field |
| `"amount"` | Transaction amount in minor units (cents) |
| `"authorizationNumber"` | Authorization number from the gateway |
| `"cardNumber"` | Card number - 12 to 19 digits, must pass Luhn validation |
| `"cardType"` | Card type parsed from KKG field |
| `"currency"` | Currency code - 3 uppercase letters (ISO 4217) |
| `"cvc"` | Card verification code - 3-4 digits (optional) |
| `"dateTimeTx"` | Date and time of the transaction |
| `"expDate"` | Card expiry date in MMYY format |
| `"merchantId"` | Merchant ID (VU-NUMMER) |
| `"originalTransactionId"` | Original transaction ID from gateway |
| `"password"` | Terminal password sent as Kennwort in TECS XML (optional) |
| `"responseCode"` | Response code - 00 for success, otherwise error code |
| `"responseMessage"` | Response message - 'Approved' for success, error description otherwise |
| `"terminalId"` | Terminal ID used for the transaction |
| `"transactionId"` | Transaction ID generated by the backend |
| `"txtype"` | Transaction type |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `"amount"` | Transaction amount in minor units (cents) |
| `"currency"` | Currency code - 3 uppercase letters (ISO 4217) |
| `"device"` | Device type that provided the SRED payload |
| `"devicePayload"` | SRED encrypted device payload from the device (minimum 32 characters) |
| `"expDate"` | Card expiry date in MMYY format |
| `"mode"` | Decryption mode |
| `"panMasked"` | Masked PAN (first 6 and last 4 digits) |
| `"password"` | Terminal password sent as Kennwort in TECS XML (optional) |
| `"serial"` | Device serial number |
| `"serviceCode"` | Service code from the card |
| `"terminalId"` | Terminal ID - 8 digits |
| `"txtype"` | Transaction type |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `"acquirerId"` |  |
| `"acquirerName"` |  |
| `"actualBonusPoints"` |  |
| `"amount"` |  |
| `"authorizationCode"` |  |
| `"balanceAmount"` |  |
| `"cardBrand"` |  |
| `"cardNumber"` |  |
| `"cardNumberReference"` |  |
| `"clientId"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"ecData"` |  |
| `"ecrData"` |  |
| `"emvData"` |  |
| `"exchangeFee"` |  |
| `"exchangeRate"` |  |
| `"languageCode"` |  |
| `"merchantAddress"` |  |
| `"merchantName"` |  |
| `"merchantNumber"` |  |
| `"messageType"` |  |
| `"originalTraceNumber"` |  |
| `"originalTransactionId"` |  |
| `"password"` |  |
| `"paymentReason"` |  |
| `"receiptFooter"` |  |
| `"receiptHeader"` |  |
| `"receiptLayout"` |  |
| `"receiptNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"serialNumber"` |  |
| `"svc"` |  |
| `"terminalId"` |  |
| `"terminalLocation"` |  |
| `"traceNumber"` |  |
| `"transactionDate"` |  |
| `"transactionId"` |  |
| `"transactionType"` |  |
| `"txType"` |  |
| `"userData"` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `"corporateUuid"` |  |
| `"packageOrderUuid"` |  |
| `"productOrderUuid"` |  |
| `"reactivationReason"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminalId"` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `"acquirerId"` |  |
| `"acquirerName"` |  |
| `"actualBonusPoints"` |  |
| `"amount"` |  |
| `"authorizationCode"` |  |
| `"balanceAmount"` |  |
| `"cardBrand"` |  |
| `"cardNumber"` |  |
| `"clientId"` |  |
| `"currency"` |  |
| `"cvc"` |  |
| `"ecData"` |  |
| `"ecrData"` |  |
| `"emvData"` |  |
| `"exchangeFee"` |  |
| `"exchangeRate"` |  |
| `"languageCode"` |  |
| `"merchantAddress"` |  |
| `"merchantName"` |  |
| `"merchantNumber"` |  |
| `"messageType"` |  |
| `"originalTraceNumber"` |  |
| `"originalTransactionId"` |  |
| `"password"` |  |
| `"paymentReason"` |  |
| `"receiptFooter"` |  |
| `"receiptHeader"` |  |
| `"receiptLayout"` |  |
| `"receiptNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"serialNumber"` |  |
| `"svc"` |  |
| `"terminalId"` |  |
| `"terminalLocation"` |  |
| `"traceNumber"` |  |
| `"transactionDate"` |  |
| `"transactionId"` |  |
| `"txType"` |  |
| `"userData"` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `"corporateUuid"` |  |
| `"packageOrderUuid"` |  |
| `"partnerId"` |  |
| `"partnerName"` |  |
| `"productOrderUuid"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"templateName"` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `"additionalData"` |  |
| `"corporateUuid"` |  |
| `"packageOrderUuid"` |  |
| `"productOrderUuid"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"tecsWebSecretKey"` |  |
| `"templateName"` |  |
| `"terminalCountryCode"` |  |
| `"terminalId"` |  |
| `"terminalIdAcq"` |  |
| `"terminalLanguageCode"` |  |
| `"terminalLocation"` |  |
| `"terminalSerialNumber"` |  |
| `"tokenIOAlias"` |  |
| `"tokenIOIban"` |  |
| `"tokenIOMemberId"` |  |
| `"webShopUrl"` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `"cardBrandReportData"` |  |
| `"clearingDateFrom"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `"clearingDateTo"` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `"corporateId"` |  |
| `"currency"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"sumOverCreditTx"` |  |
| `"sumOverDebitTx"` |  |
| `"terminalId"` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `"acquirerName"` |  |
| `"acquirerTerminalId"` |  |
| `"amount"` |  |
| `"applicationCryptogram"` |  |
| `"authorizationCode"` | Authorization code returned by the acquirer; null when not available |
| `"authorizationDate"` |  |
| `"cardBrand"` |  |
| `"cardEntry"` |  |
| `"cardExpiration"` |  |
| `"cardNumber"` |  |
| `"clearingAmount"` |  |
| `"clearingBatchId"` |  |
| `"clearingCurrency"` |  |
| `"clearingDate"` |  |
| `"clearingProcessedDate"` |  |
| `"clearingStatus"` |  |
| `"clientId"` |  |
| `"currency"` |  |
| `"cvm"` |  |
| `"ecrData"` |  |
| `"emvApplicationId"` |  |
| `"emvApplicationLabel"` |  |
| `"merchantName"` |  |
| `"merchantNumber"` |  |
| `"originalClientId"` |  |
| `"originalTerminalId"` |  |
| `"originalTransactionId"` |  |
| `"paymentReason"` |  |
| `"receiptNumber"` |  |
| `"responseCode"` |  |
| `"responseCodeFromAS"` |  |
| `"responseMessage"` |  |
| `"retrievalReferenceNumber"` |  |
| `"serviceCode"` |  |
| `"settlementStatus"` |  |
| `"sourceId"` |  |
| `"tecsengineResponseCode"` |  |
| `"tecsengineResponseText"` |  |
| `"terminalEndOfDayDate"` |  |
| `"terminalId"` |  |
| `"terminalLocation"` |  |
| `"tipAmount"` |  |
| `"traceNumber"` |  |
| `"transactionClearingDate"` |  |
| `"transactionDate"` |  |
| `"transactionId"` |  |
| `"transactionSeqNumber"` |  |
| `"transactionServerDate"` |  |
| `"transactionSource"` |  |
| `"transactionType"` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `"acqTabNexo"` |  |
| `"configVersion"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"serialNumber"` |  |
| `"tidSent"` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `"deviceSerialNumber"` |  |
| `"duplicateTerminalIds"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"terminals"` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `"3DSecure"` |  |
| `"authorizationCode"` |  |
| `"cardBrand"` |  |
| `"clearingAmountFrom"` |  |
| `"clearingAmountTo"` |  |
| `"clearingCurrency"` |  |
| `"clearingStatus"` |  |
| `"corporateUUID"` |  |
| `"orderByTransactionDate"` |  |
| `"pagination"` |  |
| `"paymentTokenPublicId"` |  |
| `"receiptNumber"` |  |
| `"referencedTransactionId"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"retrievalReferenceNumber"` |  |
| `"sourceId"` |  |
| `"tecsengineResponseCodeFrom"` |  |
| `"tecsengineResponseCodeTo"` |  |
| `"terminalId"` |  |
| `"traceNumber"` |  |
| `"transactionAmountFrom"` |  |
| `"transactionAmountTo"` |  |
| `"transactionDateFrom"` |  |
| `"transactionDateTo"` |  |
| `"transactionHistories"` |  |
| `"transactionId"` |  |
| `"transactionType"` |  |
| `"wallet"` | Filter by wallet type. |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `"period"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"transactionDateFrom"` |  |
| `"transactionDateTo"` |  |
| `"transactionsCount"` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `"period"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"transactionDateFrom"` |  |
| `"transactionDateTo"` |  |
| `"transactionsCount"` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `"period"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"transactionDateFrom"` |  |
| `"transactionDateTo"` |  |
| `"turnovers"` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `"city"` |  |
| `"corporateUuid"` |  |
| `"country"` |  |
| `"merchantCategoryCode"` |  |
| `"name"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"state"` |  |
| `"street"` |  |
| `"vuNummer"` |  |
| `"zipcode"` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"templateName"` |  |
| `"templateXml"` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `"appName"` |  |
| `"buildDate"` |  |
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

```go
result, err := client.CancelTransaction(nil).Create(map[string]any{
    "clientId": 1,
    "currency": "example_currency",
    "receiptNumber": "example_receiptNumber",
    "terminalId": 1,
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
| `cardNo` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

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
| `acquirerId` | `int` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateType` | `string` |  |
| `templateXml` | `string` |  |
| `terminalType` | `string` |  |

#### Example: Create

```go
result, err := client.CreateProduct(nil).Create(map[string]any{
    "templateName": "example_templateName",
    "templateType": "example_templateType",
    "templateXml": "example_templateXml",
    "terminalType": "example_terminalType",
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
| `corporateUuid` | `string` |  |
| `deactivationReason` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```go
result, err := client.DeactivateTerminal(nil).Create(map[string]any{
    "deactivationReason": "example_deactivationReason",
    "terminalId": 1,
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
    "file_id": "example_file_id",
    "clearingDateFrom": "example_clearingDateFrom",
    "clearingDateTo": "example_clearingDateTo",
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
| `ecomData` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```go
result, err := client.EcDataEcom(nil).Create(map[string]any{
    "terminalId": 1,
    "transactionId": "example_transactionId",
    "transactionType": "example_transactionType",
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
| `ecomPass` | `string` |  |
| `ecomSkey` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```go
result, err := client.EcomParameter(nil).Create(map[string]any{
    "terminalId": 1,
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
| `ecrData` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```go
result, err := client.EcrData(nil).Create(map[string]any{
    "terminalId": 1,
    "transactionId": "example_transactionId",
    "transactionType": "example_transactionType",
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
| `emvData` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```go
result, err := client.EmvData(nil).Create(map[string]any{
    "terminalId": 1,
    "transactionId": "example_transactionId",
    "transactionType": "example_transactionType",
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
| `accountNo` | `int` |  |
| `additionalData` | `map[string]any` |  |
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
| `terminalIds` | `[]any` |  |
| `vuNummer` | `string` |  |

#### Example: Create

```go
result, err := client.EnableAcquiring(nil).Create(map[string]any{
    "corporateUuid": "example_corporateUuid",
    "currency": "example_currency",
    "merchantCategoryCode": 1,
    "packageOrderUuid": "example_packageOrderUuid",
    "productOrderUuid": "example_productOrderUuid",
    "templateName": "example_templateName",
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
| `merchantContractNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.GetMerchantContractNumber(nil).Create(map[string]any{
    "merchantContractNumber": "example_merchantContractNumber",
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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```go
result, err := client.GetTemplateXml(nil).Create(map[string]any{
    "templateName": "example_templateName",
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
| `mandatorName` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.IntroduceMandator(nil).Create(map[string]any{
    "mandatorName": "example_mandatorName",
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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalTemplateDescription` | `string` |  |

#### Example: Create

```go
result, err := client.IntroducePackage(nil).Create(map[string]any{
    "terminalTemplateDescription": "example_terminalTemplateDescription",
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
| `kaDateTimeFrom` | `string` |  |
| `kaDateTimeTo` | `string` |  |
| `keepAliveData` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalDateTimeFrom` | `string` |  |
| `terminalDateTimeTo` | `string` |  |
| `terminalId` | `int` |  |

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
| `corporateUuid` | `[]any` |  |
| `filter` | `map[string]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminals` | `[]any` |  |

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
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `map[string]any` |  |
| `records` | `[]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.MandatorClearingExport(nil).Create(map[string]any{
    "clearingDateFrom": "example_clearingDateFrom",
    "clearingDateTo": "example_clearingDateTo",
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
| `clearingDateFrom` | `string` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | End date for clearing export (inclusive) |
| `fileId` | `string` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | Optional filename template for the export file |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `status` | `string` | Processing status of the export request |

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
    "clearingDateFrom": "example_clearingDateFrom",
    "clearingDateTo": "example_clearingDateTo",
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
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `[]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.MandatorClearingExportSummary(nil).Create(map[string]any{
    "clearingDateFrom": "example_clearingDateFrom",
    "clearingDateTo": "example_clearingDateTo",
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
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `map[string]any` |  |
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
| `productorderuuids` | `[]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `targetPackageorderuuid` | `string` |  |
| `targetProductorderuuid` | `string` |  |

#### Example: Create

```go
result, err := client.MoveTid(nil).Create(map[string]any{
    "productorderuuids": []any{},
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

```go
result, err := client.PaymentManual(nil).Create(map[string]any{
    "amount": 1,
    "cardNumber": "example_cardNumber",
    "currency": "example_currency",
    "expDate": "example_expDate",
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

```go
result, err := client.PaymentSred(nil).Create(map[string]any{
    "amount": 1,
    "currency": "example_currency",
    "devicePayload": "example_devicePayload",
    "terminalId": "example_terminalId",
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

```go
result, err := client.PreAuthTransactionCompletion(nil).Create(map[string]any{
    "cardNumberReference": "example_cardNumberReference",
    "clientId": 1,
    "currency": "example_currency",
    "receiptNumber": "example_receiptNumber",
    "terminalId": 1,
    "transactionType": "example_transactionType",
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
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `reactivationReason` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `int` |  |

#### Example: Create

```go
result, err := client.ReactivateTerminal(nil).Create(map[string]any{
    "reactivationReason": "example_reactivationReason",
    "terminalId": 1,
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

```go
result, err := client.RefundTransaction(nil).Create(map[string]any{
    "clientId": 1,
    "currency": "example_currency",
    "receiptNumber": "example_receiptNumber",
    "terminalId": 1,
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
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `partnerId` | `int` |  |
| `partnerName` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```go
result, err := client.RegisterTecsCompany(nil).Create(map[string]any{
    "corporateUuid": "example_corporateUuid",
    "packageOrderUuid": "example_packageOrderUuid",
    "productOrderUuid": "example_productOrderUuid",
    "templateName": "example_templateName",
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
| `additionalData` | `map[string]any` |  |
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

```go
result, err := client.RegisterTerminal(nil).Create(map[string]any{
    "corporateUuid": "example_corporateUuid",
    "packageOrderUuid": "example_packageOrderUuid",
    "productOrderUuid": "example_productOrderUuid",
    "templateName": "example_templateName",
    "terminalCountryCode": "example_terminalCountryCode",
    "terminalLanguageCode": "example_terminalLanguageCode",
    "terminalLocation": "example_terminalLocation",
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
| `cardBrandReportData` | `[]any` |  |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` |  |
| `currency` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sumOverCreditTx` | `map[string]any` |  |
| `sumOverDebitTx` | `map[string]any` |  |
| `terminalId` | `int` |  |

#### Example: Create

```go
result, err := client.ReportData(nil).Create(map[string]any{
    "clearingDateFrom": "example_clearingDateFrom",
    "clearingDateTo": "example_clearingDateTo",
    "corporateId": "example_corporateId",
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
| `acquirerName` | `string` |  |
| `acquirerTerminalId` | `string` |  |
| `amount` | `int` |  |
| `applicationCryptogram` | `string` |  |
| `authorizationCode` | `any` | Authorization code returned by the acquirer; null when not available |
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
| `acqTabNexo` | `map[string]any` |  |
| `configVersion` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `tidSent` | `string` |  |

#### Example: Create

```go
result, err := client.StoreTerminalParameter(nil).Create(map[string]any{
    "serialNumber": "example_serialNumber",
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
| `deviceSerialNumber` | `[]any` |  |
| `duplicateTerminalIds` | `[]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `terminals` | `[]any` |  |

#### Example: Create

```go
result, err := client.TerminalId(nil).Create(map[string]any{
    "deviceSerialNumber": []any{},
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
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `map[string]any` |  |
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
| `transactionHistories` | `[]any` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `[]any` |  |

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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `[]any` |  |

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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `turnovers` | `[]any` |  |

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

```go
result, err := client.UpdateMerchant(nil).Create(map[string]any{
    "corporateUuid": "example_corporateUuid",
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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateXml` | `string` |  |

#### Example: Create

```go
result, err := client.UpdateTemplateXml(nil).Create(map[string]any{
    "templateName": "example_templateName",
    "templateXml": "example_templateXml",
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
| `appName` | `string` |  |
| `buildDate` | `string` |  |
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
