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
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `tx_type` | `string` | No |  |
| `user_data` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_id` | - |
| `acquirer_name` | - |
| `actual_bonus_point` | - |
| `amount` | Yes |
| `authorization_code` | - |
| `balance_amount` | - |
| `card_brand` | - |
| `card_number` | - |
| `client_id` | - |
| `currency` | - |
| `cvc` | - |
| `ec_data` | - |
| `ecr_data` | - |
| `emv_data` | - |
| `exchange_fee` | - |
| `exchange_rate` | - |
| `language_code` | - |
| `merchant_address` | - |
| `merchant_name` | - |
| `merchant_number` | - |
| `message_type` | Yes |
| `original_trace_number` | - |
| `original_transaction_id` | Yes |
| `password` | - |
| `payment_reason` | - |
| `receipt_footer` | - |
| `receipt_header` | - |
| `receipt_layout` | - |
| `receipt_number` | - |
| `response_code` | - |
| `response_message` | - |
| `serial_number` | - |
| `svc` | - |
| `terminal_id` | - |
| `terminal_location` | - |
| `trace_number` | - |
| `transaction_date` | Yes |
| `transaction_id` | Yes |
| `tx_type` | - |
| `user_data` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `card_no` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `acquirer_id` | `int` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_type` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |
| `terminal_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `corporate_uuid` | `string` | No |  |
| `deactivation_reason` | `string` | Yes |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `tx_count` | `int` | No |  |
| `tx_id_end` | `string` | No |  |
| `tx_id_start` | `string` | No |  |
| `tx_seq_no_end` | `int` | No |  |
| `tx_seq_no_start` | `int` | No |  |
| `tx_total` | `int` | No |  |

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
| `ecom_data` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `ecom_pass` | `string` | No |  |
| `ecom_skey` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.EcomParameter(nil).Create(map[string]any{
    "terminal_id": 1,
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
| `ecr_data` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `emv_data` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `account_no` | `int` | No |  |
| `additional_data` | `map[string]any` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchant_category_code` | `int` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sorting_code` | `int` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_id` | `[]any` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `vu_nummer` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `merchant_contract_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.GetMerchantContractNumber(nil).Create(map[string]any{
    "merchant_contract_number": "example_merchant_contract_number",
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.GetTemplateXml(nil).Create(map[string]any{
    "template_name": "example_template_name",
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
| `mandator_name` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.IntroduceMandator(nil).Create(map[string]any{
    "mandator_name": "example_mandator_name",
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_template_description` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.IntroducePackage(nil).Create(map[string]any{
    "terminal_template_description": "example_terminal_template_description",
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
| `ka_date_time_from` | `string` | No |  |
| `ka_date_time_to` | `string` | No |  |
| `keep_alive_data` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_date_time_from` | `string` | No |  |
| `terminal_date_time_to` | `string` | No |  |
| `terminal_id` | `int` | No |  |

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
| `corporate_uuid` | `[]any` | No |  |
| `filter` | `map[string]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `[]any` | No |  |

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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `pagination` | `map[string]any` | No |  |
| `record` | `[]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `file_id` | `string` | No |  |
| `filename_template` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `status` | `string` | No |  |

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
    "clearing_date_from": "example_clearing_date_from",
    "clearing_date_to": "example_clearing_date_to",
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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `record` | `[]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `3_d_secure` | `string` | No |  |
| `authorization_code` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `clearing_amount_from` | `string` | No |  |
| `clearing_amount_to` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `corporate_uuid` | `string` | No |  |
| `order_by_transaction_date` | `string` | No |  |
| `pagination` | `map[string]any` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

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
| `productorderuuid` | `[]any` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `target_packageorderuuid` | `string` | No |  |
| `target_productorderuuid` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.MoveTid(nil).Create(map[string]any{
    "productorderuuid": []any{},
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
| `acquirer_name` | `string` | No |  |
| `amount` | `int` | Yes |  |
| `authorization_number` | `string` | No |  |
| `card_number` | `string` | Yes |  |
| `card_type` | `string` | No |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `date_time_tx` | `string` | No |  |
| `exp_date` | `string` | Yes |  |
| `merchant_id` | `string` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `response_code` | `string` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `txtype` | `string` | Yes |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_name` | - |
| `amount` | - |
| `authorization_number` | - |
| `card_number` | - |
| `card_type` | - |
| `currency` | - |
| `cvc` | - |
| `date_time_tx` | - |
| `exp_date` | - |
| `merchant_id` | - |
| `original_transaction_id` | - |
| `password` | - |
| `response_code` | - |
| `response_message` | - |
| `terminal_id` | Yes |
| `transaction_id` | - |
| `txtype` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `acquirer_name` | `string` | No |  |
| `amount` | `int` | Yes |  |
| `authorization_number` | `string` | No |  |
| `card_type` | `string` | No |  |
| `currency` | `string` | Yes |  |
| `date_time_tx` | `string` | No |  |
| `device_payload` | `string` | Yes |  |
| `merchant_id` | `string` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `response_code` | `string` | No |  |
| `response_message` | `string` | No |  |
| `sred` | `map[string]any` | No |  |
| `terminal_id` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `txtype` | `string` | Yes |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_name` | - |
| `amount` | - |
| `authorization_number` | - |
| `card_type` | - |
| `currency` | - |
| `date_time_tx` | - |
| `device_payload` | - |
| `merchant_id` | - |
| `original_transaction_id` | - |
| `password` | - |
| `response_code` | - |
| `response_message` | - |
| `sred` | - |
| `terminal_id` | Yes |
| `transaction_id` | - |
| `txtype` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `card_number_reference` | `string` | Yes |  |
| `client_id` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | Yes |  |
| `tx_type` | `string` | No |  |
| `user_data` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_id` | - |
| `acquirer_name` | - |
| `actual_bonus_point` | - |
| `amount` | Yes |
| `authorization_code` | - |
| `balance_amount` | - |
| `card_brand` | - |
| `card_number` | - |
| `card_number_reference` | - |
| `client_id` | - |
| `currency` | - |
| `cvc` | - |
| `ec_data` | - |
| `ecr_data` | - |
| `emv_data` | - |
| `exchange_fee` | - |
| `exchange_rate` | - |
| `language_code` | - |
| `merchant_address` | - |
| `merchant_name` | - |
| `merchant_number` | - |
| `message_type` | - |
| `original_trace_number` | - |
| `original_transaction_id` | Yes |
| `password` | - |
| `payment_reason` | - |
| `receipt_footer` | - |
| `receipt_header` | - |
| `receipt_layout` | - |
| `receipt_number` | - |
| `response_code` | - |
| `response_message` | - |
| `serial_number` | - |
| `svc` | - |
| `terminal_id` | - |
| `terminal_location` | - |
| `trace_number` | - |
| `transaction_date` | Yes |
| `transaction_id` | Yes |
| `transaction_type` | - |
| `tx_type` | - |
| `user_data` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `corporate_uuid` | `string` | No |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `reactivation_reason` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `tx_type` | `string` | No |  |
| `user_data` | `string` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `acquirer_id` | - |
| `acquirer_name` | - |
| `actual_bonus_point` | - |
| `amount` | Yes |
| `authorization_code` | - |
| `balance_amount` | - |
| `card_brand` | - |
| `card_number` | - |
| `client_id` | - |
| `currency` | - |
| `cvc` | - |
| `ec_data` | - |
| `ecr_data` | - |
| `emv_data` | - |
| `exchange_fee` | - |
| `exchange_rate` | - |
| `language_code` | - |
| `merchant_address` | - |
| `merchant_name` | - |
| `merchant_number` | - |
| `message_type` | - |
| `original_trace_number` | - |
| `original_transaction_id` | Yes |
| `password` | - |
| `payment_reason` | - |
| `receipt_footer` | - |
| `receipt_header` | - |
| `receipt_layout` | - |
| `receipt_number` | - |
| `response_code` | - |
| `response_message` | - |
| `serial_number` | - |
| `svc` | - |
| `terminal_id` | - |
| `terminal_location` | - |
| `trace_number` | - |
| `transaction_date` | Yes |
| `transaction_id` | Yes |
| `tx_type` | - |
| `user_data` | - |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `partner_id` | `int` | No |  |
| `partner_name` | `string` | No |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `additional_data` | `map[string]any` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `tecs_web_secret_key` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_country_code` | `string` | Yes |  |
| `terminal_id` | `int` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `terminal_language_code` | `string` | Yes |  |
| `terminal_location` | `string` | Yes |  |
| `terminal_serial_number` | `string` | No |  |
| `token_io_alia` | `string` | No |  |
| `token_io_iban` | `string` | No |  |
| `token_io_member_id` | `string` | No |  |
| `web_shop_url` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `card_brand_report_data` | `[]any` | No |  |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `corporate_id` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sum_over_credit_tx` | `map[string]any` | No |  |
| `sum_over_debit_tx` | `map[string]any` | No |  |
| `terminal_id` | `int` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `acquirer_name` | `string` | No |  |
| `acquirer_terminal_id` | `string` | No |  |
| `amount` | `int` | No |  |
| `application_cryptogram` | `string` | No |  |
| `authorization_code` | `any` | No |  |
| `authorization_date` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_entry` | `string` | No |  |
| `card_expiration` | `string` | No |  |
| `card_number` | `string` | No |  |
| `clearing_amount` | `int` | No |  |
| `clearing_batch_id` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_date` | `string` | No |  |
| `clearing_processed_date` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `client_id` | `int` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_application_id` | `string` | No |  |
| `emv_application_label` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `original_client_id` | `string` | No |  |
| `original_terminal_id` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_code_from_a` | `string` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `service_code` | `string` | No |  |
| `settlement_status` | `string` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code` | `int` | No |  |
| `tecsengine_response_text` | `string` | No |  |
| `terminal_end_of_day_date` | `string` | No |  |
| `terminal_id` | `int` | No |  |
| `terminal_location` | `string` | No |  |
| `tip_amount` | `int` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_clearing_date` | `string` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_seq_number` | `int` | No |  |
| `transaction_server_date` | `string` | No |  |
| `transaction_source` | `string` | No |  |
| `transaction_type` | `string` | No |  |

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
| `acq_tab_nexo` | `map[string]any` | No |  |
| `config_version` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | Yes |  |
| `tid_sent` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.StoreTerminalParameter(nil).Create(map[string]any{
    "serial_number": "example_serial_number",
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
| `device_serial_number` | `[]any` | Yes |  |
| `duplicate_terminal_id` | `[]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `[]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.TerminalId(nil).Create(map[string]any{
    "device_serial_number": []any{},
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
| `3_d_secure` | `string` | No |  |
| `authorization_code` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `clearing_amount_from` | `string` | No |  |
| `clearing_amount_to` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `corporate_uuid` | `string` | No |  |
| `order_by_transaction_date` | `string` | No |  |
| `pagination` | `map[string]any` | No |  |
| `payment_token_public_id` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_history` | `[]any` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `[]any` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `response_code` | - |
| `response_message` | - |
| `transaction_date_from` | Yes |
| `transaction_date_to` | Yes |
| `transactions_count` | - |

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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `[]any` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `response_code` | - |
| `response_message` | - |
| `transaction_date_from` | Yes |
| `transaction_date_to` | Yes |
| `transactions_count` | - |

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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `turnover` | `[]any` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `period` | - |
| `response_code` | - |
| `response_message` | - |
| `transaction_date_from` | Yes |
| `transaction_date_to` | Yes |
| `turnover` | - |

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
| `corporate_uuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchant_category_code` | `string` | No |  |
| `name` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vu_nummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.UpdateMerchant(nil).Create(map[string]any{
    "corporate_uuid": "example_corporate_uuid",
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

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
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
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

