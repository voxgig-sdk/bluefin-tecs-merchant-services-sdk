# BluefinTecsMerchantServices Golang SDK Reference

Complete API reference for the BluefinTecsMerchantServices Golang SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```go
func NewBluefinTecsMerchantServicesSDK(options map[string]any) *BluefinTecsMerchantServicesSDK
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `map[string]any` | SDK configuration options. |
| `options["apikey"]` | `string` | API key for authentication. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `map[string]any` | Custom headers for all requests. |
| `options["feature"]` | `map[string]any` | Feature configuration. |
| `options["system"]` | `map[string]any` | System overrides (e.g. custom fetch). |


### Static Methods

#### `Test() *BluefinTecsMerchantServicesSDK`

No-arg convenience constructor for the common no-options test case.

```go
client := sdk.Test()
```

#### `TestSDK(testopts, sdkopts map[string]any) *BluefinTecsMerchantServicesSDK`

Test client with options. Both arguments may be `nil`.

```go
client := sdk.TestSDK(testopts, sdkopts)
```


### Instance Methods

#### `CancelTransaction(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `CancelTransaction` entity instance. Pass `nil` for no initial data.

#### `CheckCardBlackListed(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `CheckCardBlackListed` entity instance. Pass `nil` for no initial data.

#### `CreateProduct(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `CreateProduct` entity instance. Pass `nil` for no initial data.

#### `DeactivateTerminal(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `DeactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `DigitalServicesApi(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `DigitalServicesApi` entity instance. Pass `nil` for no initial data.

#### `EcDataEcom(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `EcDataEcom` entity instance. Pass `nil` for no initial data.

#### `EcomParameter(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `EcomParameter` entity instance. Pass `nil` for no initial data.

#### `EcrData(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `EcrData` entity instance. Pass `nil` for no initial data.

#### `EmvData(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `EmvData` entity instance. Pass `nil` for no initial data.

#### `EnableAcquiring(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `EnableAcquiring` entity instance. Pass `nil` for no initial data.

#### `GetMerchantContractNumber(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `GetMerchantContractNumber` entity instance. Pass `nil` for no initial data.

#### `GetTemplateXml(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `GetTemplateXml` entity instance. Pass `nil` for no initial data.

#### `IntroduceMandator(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `IntroduceMandator` entity instance. Pass `nil` for no initial data.

#### `IntroducePackage(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `IntroducePackage` entity instance. Pass `nil` for no initial data.

#### `KeepAlive(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `KeepAlive` entity instance. Pass `nil` for no initial data.

#### `ListTerminal(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `ListTerminal` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExport(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `MandatorClearingExport` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExportDownload(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `MandatorClearingExportDownload` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExportSummary(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `MandatorClearingExportSummary` entity instance. Pass `nil` for no initial data.

#### `MerchantPortalServicesApi(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `MerchantPortalServicesApi` entity instance. Pass `nil` for no initial data.

#### `MoveTid(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `MoveTid` entity instance. Pass `nil` for no initial data.

#### `PaymentManual(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `PaymentManual` entity instance. Pass `nil` for no initial data.

#### `PaymentSred(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `PaymentSred` entity instance. Pass `nil` for no initial data.

#### `PreAuthTransactionCompletion(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `nil` for no initial data.

#### `ReactivateTerminal(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `ReactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `RefundTransaction(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `RefundTransaction` entity instance. Pass `nil` for no initial data.

#### `RegisterTecsCompany(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `RegisterTecsCompany` entity instance. Pass `nil` for no initial data.

#### `RegisterTerminal(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `RegisterTerminal` entity instance. Pass `nil` for no initial data.

#### `ReportData(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `ReportData` entity instance. Pass `nil` for no initial data.

#### `StatusTransaction(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `StatusTransaction` entity instance. Pass `nil` for no initial data.

#### `StoreTerminalParameter(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `StoreTerminalParameter` entity instance. Pass `nil` for no initial data.

#### `TerminalId(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `TerminalId` entity instance. Pass `nil` for no initial data.

#### `TransactionHistory(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `TransactionHistory` entity instance. Pass `nil` for no initial data.

#### `TransactionsCount(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `TransactionsCount` entity instance. Pass `nil` for no initial data.

#### `TransactionsCountCardBrand(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `TransactionsCountCardBrand` entity instance. Pass `nil` for no initial data.

#### `TransactionsTurnover(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `TransactionsTurnover` entity instance. Pass `nil` for no initial data.

#### `UpdateMerchant(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `UpdateMerchant` entity instance. Pass `nil` for no initial data.

#### `UpdateTemplateXml(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `UpdateTemplateXml` entity instance. Pass `nil` for no initial data.

#### `Version(data map[string]any) BluefinTecsMerchantServicesEntity`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `OptionsMap() map[string]any`

Return a deep copy of the current SDK options.

#### `GetUtility() *Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs map[string]any) (map[string]any, error)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `map[string]any` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `map[string]any` | Query string parameters. |
| `fetchargs["headers"]` | `map[string]any` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (maps are JSON-serialized). |
| `fetchargs["ctrl"]` | `map[string]any` | Control options (e.g. `map[string]any{"explain": true}`). |

**Returns:** `(map[string]any, error)`

#### `Prepare(fetchargs map[string]any) (map[string]any, error)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `Direct()`.

**Returns:** `(map[string]any, error)`


---

## CancelTransactionEntity

```go
cancelTransaction := client.CancelTransaction(nil)
fmt.Println(cancelTransaction.GetName()) // "cancel_transaction"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `txType` | `string` | No |  |
| `userData` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerId` | - |
| `acquirerName` | - |
| `actualBonusPoints` | - |
| `amount` | Yes |
| `authorizationCode` | - |
| `balanceAmount` | - |
| `cardBrand` | - |
| `cardNumber` | - |
| `clientId` | - |
| `currency` | - |
| `cvc` | - |
| `ecData` | - |
| `ecrData` | - |
| `emvData` | - |
| `exchangeFee` | - |
| `exchangeRate` | - |
| `languageCode` | - |
| `merchantAddress` | - |
| `merchantName` | - |
| `merchantNumber` | - |
| `messageType` | Yes |
| `originalTraceNumber` | - |
| `originalTransactionId` | Yes |
| `password` | - |
| `paymentReason` | - |
| `receiptFooter` | - |
| `receiptHeader` | - |
| `receiptLayout` | - |
| `receiptNumber` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `serialNumber` | - |
| `svc` | - |
| `terminalId` | - |
| `terminalLocation` | - |
| `traceNumber` | - |
| `transactionDate` | Yes |
| `transactionId` | Yes |
| `txType` | - |
| `userData` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `CancelTransactionEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## CheckCardBlackListedEntity

```go
checkCardBlackListed := client.CheckCardBlackListed(nil)
fmt.Println(checkCardBlackListed.GetName()) // "check_card_black_listed"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.CheckCardBlackListed(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `CheckCardBlackListedEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## CreateProductEntity

```go
createProduct := client.CreateProduct(nil)
fmt.Println(createProduct.GetName()) // "create_product"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `int` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `CreateProductEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## DeactivateTerminalEntity

```go
deactivateTerminal := client.DeactivateTerminal(nil)
fmt.Println(deactivateTerminal.GetName()) // "deactivate_terminal"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `DeactivateTerminalEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## DigitalServicesApiEntity

```go
digitalServicesApi := client.DigitalServicesApi(nil)
fmt.Println(digitalServicesApi.GetName()) // "digital_services_api"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `txCount` | `int` | No |  |
| `txIdEnd` | `string` | No |  |
| `txIdStart` | `string` | No |  |
| `txSeqNoEnd` | `int` | No |  |
| `txSeqNoStart` | `int` | No |  |
| `txTotal` | `int` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.DigitalServicesApi(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `DigitalServicesApiEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## EcDataEcomEntity

```go
ecDataEcom := client.EcDataEcom(nil)
fmt.Println(ecDataEcom.GetName()) // "ec_data_ecom"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `EcDataEcomEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## EcomParameterEntity

```go
ecomParameter := client.EcomParameter(nil)
fmt.Println(ecomParameter.GetName()) // "ecom_parameter"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.EcomParameter(nil).Create(map[string]any{
    "terminalId": 1,
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `EcomParameterEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## EcrDataEntity

```go
ecrData := client.EcrData(nil)
fmt.Println(ecrData.GetName()) // "ecr_data"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `EcrDataEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## EmvDataEntity

```go
emvData := client.EmvData(nil)
fmt.Println(emvData.GetName()) // "emv_data"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `EmvDataEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## EnableAcquiringEntity

```go
enableAcquiring := client.EnableAcquiring(nil)
fmt.Println(enableAcquiring.GetName()) // "enable_acquiring"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `int` | No |  |
| `additionalData` | `map[string]any` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchantCategoryCode` | `int` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sortingCode` | `int` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalIds` | `[]any` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `EnableAcquiringEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## GetMerchantContractNumberEntity

```go
getMerchantContractNumber := client.GetMerchantContractNumber(nil)
fmt.Println(getMerchantContractNumber.GetName()) // "get_merchant_contract_number"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.GetMerchantContractNumber(nil).Create(map[string]any{
    "merchantContractNumber": "example_merchantContractNumber",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `GetMerchantContractNumberEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## GetTemplateXmlEntity

```go
getTemplateXml := client.GetTemplateXml(nil)
fmt.Println(getTemplateXml.GetName()) // "get_template_xml"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.GetTemplateXml(nil).Create(map[string]any{
    "templateName": "example_templateName",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `GetTemplateXmlEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## IntroduceMandatorEntity

```go
introduceMandator := client.IntroduceMandator(nil)
fmt.Println(introduceMandator.GetName()) // "introduce_mandator"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.IntroduceMandator(nil).Create(map[string]any{
    "mandatorName": "example_mandatorName",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `IntroduceMandatorEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## IntroducePackageEntity

```go
introducePackage := client.IntroducePackage(nil)
fmt.Println(introducePackage.GetName()) // "introduce_package"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.IntroducePackage(nil).Create(map[string]any{
    "terminalTemplateDescription": "example_terminalTemplateDescription",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `IntroducePackageEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## KeepAliveEntity

```go
keepAlive := client.KeepAlive(nil)
fmt.Println(keepAlive.GetName()) // "keep_alive"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.KeepAlive(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `KeepAliveEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## ListTerminalEntity

```go
listTerminal := client.ListTerminal(nil)
fmt.Println(listTerminal.GetName()) // "list_terminal"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `[]any` | No |  |
| `filter` | `map[string]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `[]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.ListTerminal(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `ListTerminalEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## MandatorClearingExportEntity

```go
mandatorClearingExport := client.MandatorClearingExport(nil)
fmt.Println(mandatorClearingExport.GetName()) // "mandator_clearing_export"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `map[string]any` | No |  |
| `records` | `[]any` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `MandatorClearingExportEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```go
mandatorClearingExportDownload := client.MandatorClearingExportDownload(nil)
fmt.Println(mandatorClearingExportDownload.GetName()) // "mandator_clearing_export_download"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | Yes | End date for clearing export (inclusive) |
| `fileId` | `string` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | No | Optional filename template for the export file |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No | Processing status of the export request |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.MandatorClearingExportDownload(nil).Load(map[string]any{"id": "mandator_clearing_export_download_id"}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `MandatorClearingExportDownloadEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```go
mandatorClearingExportSummary := client.MandatorClearingExportSummary(nil)
fmt.Println(mandatorClearingExportSummary.GetName()) // "mandator_clearing_export_summary"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `[]any` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `MandatorClearingExportSummaryEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```go
merchantPortalServicesApi := client.MerchantPortalServicesApi(nil)
fmt.Println(merchantPortalServicesApi.GetName()) // "merchant_portal_services_api"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `map[string]any` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `int` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.MerchantPortalServicesApi(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `MerchantPortalServicesApiEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## MoveTidEntity

```go
moveTid := client.MoveTid(nil)
fmt.Println(moveTid.GetName()) // "move_tid"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `[]any` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.MoveTid(nil).Create(map[string]any{
    "productorderuuids": []any{},
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `MoveTidEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## PaymentManualEntity

```go
paymentManual := client.PaymentManual(nil)
fmt.Println(paymentManual.GetName()) // "payment_manual"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No | Acquirer name parsed from KKG field |
| `amount` | `int` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `string` | No | Authorization number from the gateway |
| `cardNumber` | `string` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `string` | No | Card type parsed from KKG field |
| `currency` | `string` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `string` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `string` | No | Date and time of the transaction |
| `expDate` | `string` | Yes | Card expiry date in MMYY format |
| `merchantId` | `string` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `string` | No | Original transaction ID from gateway |
| `password` | `string` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `string` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `string` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `string` | No | Terminal ID used for the transaction |
| `transactionId` | `string` | No | Transaction ID generated by the backend |
| `txtype` | `string` | Yes | Transaction type |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerName` | - |
| `amount` | - |
| `authorizationNumber` | - |
| `cardNumber` | - |
| `cardType` | - |
| `currency` | - |
| `cvc` | - |
| `dateTimeTx` | - |
| `expDate` | - |
| `merchantId` | - |
| `originalTransactionId` | - |
| `password` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `terminalId` | Yes |
| `transactionId` | - |
| `txtype` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `PaymentManualEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## PaymentSredEntity

```go
paymentSred := client.PaymentSred(nil)
fmt.Println(paymentSred.GetName()) // "payment_sred"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `int` | Yes | Transaction amount in minor units (cents) |
| `currency` | `string` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `string` | No | Device type that provided the SRED payload |
| `devicePayload` | `string` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `string` | No | Card expiry date in MMYY format |
| `mode` | `string` | No | Decryption mode |
| `panMasked` | `string` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `string` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `string` | No | Device serial number |
| `serviceCode` | `string` | No | Service code from the card |
| `terminalId` | `string` | Yes | Terminal ID - 8 digits |
| `txtype` | `string` | Yes | Transaction type |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `PaymentSredEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```go
preAuthTransactionCompletion := client.PreAuthTransactionCompletion(nil)
fmt.Println(preAuthTransactionCompletion.GetName()) // "pre_auth_transaction_completion"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `cardNumberReference` | `string` | Yes |  |
| `clientId` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | Yes |  |
| `txType` | `string` | No |  |
| `userData` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerId` | - |
| `acquirerName` | - |
| `actualBonusPoints` | - |
| `amount` | Yes |
| `authorizationCode` | - |
| `balanceAmount` | - |
| `cardBrand` | - |
| `cardNumber` | - |
| `cardNumberReference` | - |
| `clientId` | - |
| `currency` | - |
| `cvc` | - |
| `ecData` | - |
| `ecrData` | - |
| `emvData` | - |
| `exchangeFee` | - |
| `exchangeRate` | - |
| `languageCode` | - |
| `merchantAddress` | - |
| `merchantName` | - |
| `merchantNumber` | - |
| `messageType` | - |
| `originalTraceNumber` | - |
| `originalTransactionId` | Yes |
| `password` | - |
| `paymentReason` | - |
| `receiptFooter` | - |
| `receiptHeader` | - |
| `receiptLayout` | - |
| `receiptNumber` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `serialNumber` | - |
| `svc` | - |
| `terminalId` | - |
| `terminalLocation` | - |
| `traceNumber` | - |
| `transactionDate` | Yes |
| `transactionId` | Yes |
| `transactionType` | - |
| `txType` | - |
| `userData` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `PreAuthTransactionCompletionEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## ReactivateTerminalEntity

```go
reactivateTerminal := client.ReactivateTerminal(nil)
fmt.Println(reactivateTerminal.GetName()) // "reactivate_terminal"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `ReactivateTerminalEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## RefundTransactionEntity

```go
refundTransaction := client.RefundTransaction(nil)
fmt.Println(refundTransaction.GetName()) // "refund_transaction"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `txType` | `string` | No |  |
| `userData` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirerId` | - |
| `acquirerName` | - |
| `actualBonusPoints` | - |
| `amount` | Yes |
| `authorizationCode` | - |
| `balanceAmount` | - |
| `cardBrand` | - |
| `cardNumber` | - |
| `clientId` | - |
| `currency` | - |
| `cvc` | - |
| `ecData` | - |
| `ecrData` | - |
| `emvData` | - |
| `exchangeFee` | - |
| `exchangeRate` | - |
| `languageCode` | - |
| `merchantAddress` | - |
| `merchantName` | - |
| `merchantNumber` | - |
| `messageType` | - |
| `originalTraceNumber` | - |
| `originalTransactionId` | Yes |
| `password` | - |
| `paymentReason` | - |
| `receiptFooter` | - |
| `receiptHeader` | - |
| `receiptLayout` | - |
| `receiptNumber` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `serialNumber` | - |
| `svc` | - |
| `terminalId` | - |
| `terminalLocation` | - |
| `traceNumber` | - |
| `transactionDate` | Yes |
| `transactionId` | Yes |
| `txType` | - |
| `userData` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `RefundTransactionEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## RegisterTecsCompanyEntity

```go
registerTecsCompany := client.RegisterTecsCompany(nil)
fmt.Println(registerTecsCompany.GetName()) // "register_tecs_company"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `int` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `RegisterTecsCompanyEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## RegisterTerminalEntity

```go
registerTerminal := client.RegisterTerminal(nil)
fmt.Println(registerTerminal.GetName()) // "register_terminal"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `map[string]any` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `tecsWebSecretKey` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalCountryCode` | `string` | Yes |  |
| `terminalId` | `int` | No |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalLanguageCode` | `string` | Yes |  |
| `terminalLocation` | `string` | Yes |  |
| `terminalSerialNumber` | `string` | No |  |
| `tokenIOAlias` | `string` | No |  |
| `tokenIOIban` | `string` | No |  |
| `tokenIOMemberId` | `string` | No |  |
| `webShopUrl` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `RegisterTerminalEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## ReportDataEntity

```go
reportData := client.ReportData(nil)
fmt.Println(reportData.GetName()) // "report_data"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `[]any` | No |  |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `map[string]any` | No |  |
| `sumOverDebitTx` | `map[string]any` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `ReportDataEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## StatusTransactionEntity

```go
statusTransaction := client.StatusTransaction(nil)
fmt.Println(statusTransaction.GetName()) // "status_transaction"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `int` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `any` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardEntry` | `string` | No |  |
| `cardExpiration` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clearingAmount` | `int` | No |  |
| `clearingBatchId` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingDate` | `string` | No |  |
| `clearingProcessedDate` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `clientId` | `int` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvApplicationId` | `string` | No |  |
| `emvApplicationLabel` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `originalClientId` | `string` | No |  |
| `originalTerminalId` | `int` | No |  |
| `originalTransactionId` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseCodeFromAS` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `settlementStatus` | `string` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCode` | `int` | No |  |
| `tecsengineResponseText` | `string` | No |  |
| `terminalEndOfDayDate` | `string` | No |  |
| `terminalId` | `int` | No |  |
| `terminalLocation` | `string` | No |  |
| `tipAmount` | `int` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionClearingDate` | `string` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionSeqNumber` | `int` | No |  |
| `transactionServerDate` | `string` | No |  |
| `transactionSource` | `string` | No |  |
| `transactionType` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.StatusTransaction(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `StatusTransactionEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## StoreTerminalParameterEntity

```go
storeTerminalParameter := client.StoreTerminalParameter(nil)
fmt.Println(storeTerminalParameter.GetName()) // "store_terminal_parameter"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `map[string]any` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.StoreTerminalParameter(nil).Create(map[string]any{
    "serialNumber": "example_serialNumber",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `StoreTerminalParameterEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## TerminalIdEntity

```go
terminalId := client.TerminalId(nil)
fmt.Println(terminalId.GetName()) // "terminal_id"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `[]any` | Yes |  |
| `duplicateTerminalIds` | `[]any` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `[]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.TerminalId(nil).Create(map[string]any{
    "deviceSerialNumber": []any{},
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `TerminalIdEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## TransactionHistoryEntity

```go
transactionHistory := client.TransactionHistory(nil)
fmt.Println(transactionHistory.GetName()) // "transaction_history"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `map[string]any` | No |  |
| `paymentTokenPublicId` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `int` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionHistories` | `[]any` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.TransactionHistory(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `TransactionHistoryEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## TransactionsCountEntity

```go
transactionsCount := client.TransactionsCount(nil)
fmt.Println(transactionsCount.GetName()) // "transactions_count"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `[]any` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `transactionDateFrom` | Yes |
| `transactionDateTo` | Yes |
| `transactionsCount` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.TransactionsCount(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `TransactionsCountEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```go
transactionsCountCardBrand := client.TransactionsCountCardBrand(nil)
fmt.Println(transactionsCountCardBrand.GetName()) // "transactions_count_card_brand"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `[]any` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `transactionDateFrom` | Yes |
| `transactionDateTo` | Yes |
| `transactionsCount` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.TransactionsCountCardBrand(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `TransactionsCountCardBrandEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## TransactionsTurnoverEntity

```go
transactionsTurnover := client.TransactionsTurnover(nil)
fmt.Println(transactionsTurnover.GetName()) // "transactions_turnover"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `[]any` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `responseCode` | - |
| `responseMessage` | - |
| `transactionDateFrom` | Yes |
| `transactionDateTo` | Yes |
| `turnovers` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.TransactionsTurnover(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `TransactionsTurnoverEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## UpdateMerchantEntity

```go
updateMerchant := client.UpdateMerchant(nil)
fmt.Println(updateMerchant.GetName()) // "update_merchant"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchantCategoryCode` | `string` | No |  |
| `name` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vuNummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.UpdateMerchant(nil).Create(map[string]any{
    "corporateUuid": "example_corporateUuid",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `UpdateMerchantEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## UpdateTemplateXmlEntity

```go
updateTemplateXml := client.UpdateTemplateXml(nil)
fmt.Println(updateTemplateXml.GetName()) // "update_template_xml"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `UpdateTemplateXmlEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## VersionEntity

```go
version := client.Version(nil)
fmt.Println(version.GetName()) // "version"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.Version(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `VersionEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```go
client := sdk.NewBluefinTecsMerchantServicesSDK(map[string]any{
    "feature": map[string]any{
        "test": map[string]any{"active": true},
    },
})
```

