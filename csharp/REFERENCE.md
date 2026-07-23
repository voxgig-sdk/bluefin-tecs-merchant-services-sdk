# BluefinTecsMerchantServices C# SDK Reference

Complete API reference for the BluefinTecsMerchantServices C# SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```csharp
using BluefinTecsMerchantServicesSdk;

var client = new BluefinTecsMerchantServicesSDK(options);
```

Create a new SDK client instance. `options` is a
`Dictionary<string, object?>`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Dictionary` | SDK configuration options. |
| `options["apikey"]` | `string` | API key for authentication. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `Dictionary` | Custom headers for all requests. |
| `options["feature"]` | `Dictionary` | Feature configuration. |
| `options["system"]` | `Dictionary` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.TestSDK(testopts = null, sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```csharp
var client = BluefinTecsMerchantServicesSDK.TestSDK(null, null);
```


### Instance Methods

#### `CancelTransaction(entopts = null)`

Create a new `CancelTransaction` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `CheckCardBlackListed(entopts = null)`

Create a new `CheckCardBlackListed` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `CreateProduct(entopts = null)`

Create a new `CreateProduct` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `DeactivateTerminal(entopts = null)`

Create a new `DeactivateTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `DigitalServicesApi(entopts = null)`

Create a new `DigitalServicesApi` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EcDataEcom(entopts = null)`

Create a new `EcDataEcom` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EcomParameter(entopts = null)`

Create a new `EcomParameter` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EcrData(entopts = null)`

Create a new `EcrData` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EmvData(entopts = null)`

Create a new `EmvData` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `EnableAcquiring(entopts = null)`

Create a new `EnableAcquiring` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `GetMerchantContractNumber(entopts = null)`

Create a new `GetMerchantContractNumber` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `GetTemplateXml(entopts = null)`

Create a new `GetTemplateXml` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `IntroduceMandator(entopts = null)`

Create a new `IntroduceMandator` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `IntroducePackage(entopts = null)`

Create a new `IntroducePackage` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `KeepAlive(entopts = null)`

Create a new `KeepAlive` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `ListTerminal(entopts = null)`

Create a new `ListTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MandatorClearingExport(entopts = null)`

Create a new `MandatorClearingExport` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MandatorClearingExportDownload(entopts = null)`

Create a new `MandatorClearingExportDownload` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MandatorClearingExportSummary(entopts = null)`

Create a new `MandatorClearingExportSummary` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MerchantPortalServicesApi(entopts = null)`

Create a new `MerchantPortalServicesApi` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `MoveTid(entopts = null)`

Create a new `MoveTid` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `PaymentManual(entopts = null)`

Create a new `PaymentManual` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `PaymentSred(entopts = null)`

Create a new `PaymentSred` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `PreAuthTransactionCompletion(entopts = null)`

Create a new `PreAuthTransactionCompletion` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `ReactivateTerminal(entopts = null)`

Create a new `ReactivateTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `RefundTransaction(entopts = null)`

Create a new `RefundTransaction` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `RegisterTecsCompany(entopts = null)`

Create a new `RegisterTecsCompany` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `RegisterTerminal(entopts = null)`

Create a new `RegisterTerminal` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `ReportData(entopts = null)`

Create a new `ReportData` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `StatusTransaction(entopts = null)`

Create a new `StatusTransaction` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `StoreTerminalParameter(entopts = null)`

Create a new `StoreTerminalParameter` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TerminalId(entopts = null)`

Create a new `TerminalId` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionHistory(entopts = null)`

Create a new `TransactionHistory` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionsCount(entopts = null)`

Create a new `TransactionsCount` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionsCountCardBrand(entopts = null)`

Create a new `TransactionsCountCardBrand` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `TransactionsTurnover(entopts = null)`

Create a new `TransactionsTurnover` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `UpdateMerchant(entopts = null)`

Create a new `UpdateMerchant` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `UpdateTemplateXml(entopts = null)`

Create a new `UpdateTemplateXml` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `Version(entopts = null)`

Create a new `Version` entity instance (returns
`BluefinTecsMerchantServicesEntityBase`). Pass `null` for no initial options.

#### `OptionsMap() -> Dictionary`

Return a deep copy of the current SDK options.

#### `GetUtility() -> Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs = null) -> Dictionary`

Make a direct HTTP request to any API endpoint. Returns a result
`Dictionary<string, object?>` with `ok`, `status`, `headers`, and `data`
(or `err` on failure). This escape hatch never raises — branch on
`result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Dictionary` | Path parameter values. |
| `fetchargs["query"]` | `Dictionary` | Query string parameters. |
| `fetchargs["headers"]` | `Dictionary` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `object?` | Request body (dictionaries are JSON-serialized). |

**Returns:** `Dictionary<string, object?>`

#### `Prepare(fetchargs = null) -> Dictionary`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```csharp
var cancelTransaction = client.CancelTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `long` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `long` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `long` | No |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.CancelTransaction().Create(new Dictionary<string, object?>
{
    ["client_id"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receipt_number"] = "example_receipt_number",  // string
    ["terminal_id"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `CancelTransaction` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## CheckCardBlackListed

```csharp
var checkCardBlackListed = client.CheckCardBlackListed();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.CheckCardBlackListed().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## CreateProduct

```csharp
var createProduct = client.CreateProduct();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `long` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_type` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |
| `terminal_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.CreateProduct().Create(new Dictionary<string, object?>
{
    ["template_name"] = "example_template_name",  // string
    ["template_type"] = "example_template_type",  // string
    ["template_xml"] = "example_template_xml",  // string
    ["terminal_type"] = "example_terminal_type",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `CreateProduct` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## DeactivateTerminal

```csharp
var deactivateTerminal = client.DeactivateTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `deactivation_reason` | `string` | Yes |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.DeactivateTerminal().Create(new Dictionary<string, object?>
{
    ["deactivation_reason"] = "example_deactivation_reason",  // string
    ["terminal_id"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## DigitalServicesApi

```csharp
var digitalServicesApi = client.DigitalServicesApi();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `tx_count` | `long` | No |  |
| `tx_id_end` | `string` | No |  |
| `tx_id_start` | `string` | No |  |
| `tx_seq_no_end` | `long` | No |  |
| `tx_seq_no_start` | `long` | No |  |
| `tx_total` | `long` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.DigitalServicesApi().Create(new Dictionary<string, object?>
{
});
```

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.DigitalServicesApi().Load(null);
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EcDataEcom

```csharp
var ecDataEcom = client.EcDataEcom();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EcDataEcom().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
    ["transaction_id"] = "example_transaction_id",  // string
    ["transaction_type"] = "example_transaction_type",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EcDataEcom` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EcomParameter

```csharp
var ecomParameter = client.EcomParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `string` | No |  |
| `ecom_skey` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EcomParameter().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EcomParameter` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EcrData

```csharp
var ecrData = client.EcrData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EcrData().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
    ["transaction_id"] = "example_transaction_id",  // string
    ["transaction_type"] = "example_transaction_type",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EcrData` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EmvData

```csharp
var emvData = client.EmvData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EmvData().Create(new Dictionary<string, object?>
{
    ["terminal_id"] = 1L,  // long
    ["transaction_id"] = "example_transaction_id",  // string
    ["transaction_type"] = "example_transaction_type",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EmvData` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## EnableAcquiring

```csharp
var enableAcquiring = client.EnableAcquiring();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `long` | No |  |
| `additional_data` | `Dictionary<string, object?>` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchant_category_code` | `long` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `sorting_code` | `long` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_id` | `List<object?>` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `vu_nummer` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.EnableAcquiring().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
    ["currency"] = "example_currency",  // string
    ["merchant_category_code"] = 1L,  // long
    ["package_order_uuid"] = "example_package_order_uuid",  // string
    ["product_order_uuid"] = "example_product_order_uuid",  // string
    ["template_name"] = "example_template_name",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## GetMerchantContractNumber

```csharp
var getMerchantContractNumber = client.GetMerchantContractNumber();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.GetMerchantContractNumber().Create(new Dictionary<string, object?>
{
    ["merchant_contract_number"] = "example_merchant_contract_number",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## GetTemplateXml

```csharp
var getTemplateXml = client.GetTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.GetTemplateXml().Create(new Dictionary<string, object?>
{
    ["template_name"] = "example_template_name",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## IntroduceMandator

```csharp
var introduceMandator = client.IntroduceMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.IntroduceMandator().Create(new Dictionary<string, object?>
{
    ["mandator_name"] = "example_mandator_name",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## IntroducePackage

```csharp
var introducePackage = client.IntroducePackage();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_template_description` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.IntroducePackage().Create(new Dictionary<string, object?>
{
    ["terminal_template_description"] = "example_terminal_template_description",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `IntroducePackage` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## KeepAlive

```csharp
var keepAlive = client.KeepAlive();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `ka_date_time_from` | `string` | No |  |
| `ka_date_time_to` | `string` | No |  |
| `keep_alive_data` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_date_time_from` | `string` | No |  |
| `terminal_date_time_to` | `string` | No |  |
| `terminal_id` | `long` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.KeepAlive().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `KeepAlive` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## ListTerminal

```csharp
var listTerminal = client.ListTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `List<object?>` | No |  |
| `filter` | `Dictionary<string, object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `List<object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.ListTerminal().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `ListTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MandatorClearingExport

```csharp
var mandatorClearingExport = client.MandatorClearingExport();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `record` | `List<object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MandatorClearingExport().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MandatorClearingExportDownload

```csharp
var mandatorClearingExportDownload = client.MandatorClearingExportDownload();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `file_id` | `string` | No |  |
| `filename_template` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MandatorClearingExportDownload().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
});
```

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.MandatorClearingExportDownload().Load(new Dictionary<string, object?> { ["id"] = "mandator_clearing_export_download_id" });
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MandatorClearingExportSummary

```csharp
var mandatorClearingExportSummary = client.MandatorClearingExportSummary();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `record` | `List<object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MandatorClearingExportSummary().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MerchantPortalServicesApi

```csharp
var merchantPortalServicesApi = client.MerchantPortalServicesApi();
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
| `pagination` | `Dictionary<string, object?>` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `long` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `long` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MerchantPortalServicesApi().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## MoveTid

```csharp
var moveTid = client.MoveTid();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `List<object?>` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `target_packageorderuuid` | `string` | No |  |
| `target_productorderuuid` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.MoveTid().Create(new Dictionary<string, object?>
{
    ["productorderuuid"] = new List<object?>(),  // List<object?>
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `MoveTid` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## PaymentManual

```csharp
var paymentManual = client.PaymentManual();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `long` | Yes |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.PaymentManual().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["card_number"] = "example_card_number",  // string
    ["currency"] = "example_currency",  // string
    ["exp_date"] = "example_exp_date",  // string
    ["txtype"] = "example_txtype",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `PaymentManual` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## PaymentSred

```csharp
var paymentSred = client.PaymentSred();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `long` | Yes |  |
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
| `sred` | `Dictionary<string, object?>` | No |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.PaymentSred().Create(new Dictionary<string, object?>
{
    ["amount"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["device_payload"] = "example_device_payload",  // string
    ["txtype"] = "example_txtype",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `PaymentSred` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## PreAuthTransactionCompletion

```csharp
var preAuthTransactionCompletion = client.PreAuthTransactionCompletion();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `card_number_reference` | `string` | Yes |  |
| `client_id` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `long` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `long` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `long` | No |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.PreAuthTransactionCompletion().Create(new Dictionary<string, object?>
{
    ["card_number_reference"] = "example_card_number_reference",  // string
    ["client_id"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receipt_number"] = "example_receipt_number",  // string
    ["terminal_id"] = 1L,  // long
    ["transaction_type"] = "example_transaction_type",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## ReactivateTerminal

```csharp
var reactivateTerminal = client.ReactivateTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `reactivation_reason` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.ReactivateTerminal().Create(new Dictionary<string, object?>
{
    ["reactivation_reason"] = "example_reactivation_reason",  // string
    ["terminal_id"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## RefundTransaction

```csharp
var refundTransaction = client.RefundTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `long` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `long` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `long` | No |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.RefundTransaction().Create(new Dictionary<string, object?>
{
    ["client_id"] = 1L,  // long
    ["currency"] = "example_currency",  // string
    ["receipt_number"] = "example_receipt_number",  // string
    ["terminal_id"] = 1L,  // long
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `RefundTransaction` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## RegisterTecsCompany

```csharp
var registerTecsCompany = client.RegisterTecsCompany();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `partner_id` | `long` | No |  |
| `partner_name` | `string` | No |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.RegisterTecsCompany().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
    ["package_order_uuid"] = "example_package_order_uuid",  // string
    ["product_order_uuid"] = "example_product_order_uuid",  // string
    ["template_name"] = "example_template_name",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## RegisterTerminal

```csharp
var registerTerminal = client.RegisterTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `Dictionary<string, object?>` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `tecs_web_secret_key` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_country_code` | `string` | Yes |  |
| `terminal_id` | `long` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `terminal_language_code` | `string` | Yes |  |
| `terminal_location` | `string` | Yes |  |
| `terminal_serial_number` | `string` | No |  |
| `token_io_alia` | `string` | No |  |
| `token_io_iban` | `string` | No |  |
| `token_io_member_id` | `string` | No |  |
| `web_shop_url` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.RegisterTerminal().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
    ["package_order_uuid"] = "example_package_order_uuid",  // string
    ["product_order_uuid"] = "example_product_order_uuid",  // string
    ["template_name"] = "example_template_name",  // string
    ["terminal_country_code"] = "example_terminal_country_code",  // string
    ["terminal_language_code"] = "example_terminal_language_code",  // string
    ["terminal_location"] = "example_terminal_location",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## ReportData

```csharp
var reportData = client.ReportData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `List<object?>` | No |  |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `corporate_id` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `sum_over_credit_tx` | `Dictionary<string, object?>` | No |  |
| `sum_over_debit_tx` | `Dictionary<string, object?>` | No |  |
| `terminal_id` | `long` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.ReportData().Create(new Dictionary<string, object?>
{
    ["clearing_date_from"] = "example_clearing_date_from",  // string
    ["clearing_date_to"] = "example_clearing_date_to",  // string
    ["corporate_id"] = "example_corporate_id",  // string
    ["currency"] = "example_currency",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `ReportData` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## StatusTransaction

```csharp
var statusTransaction = client.StatusTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `acquirer_terminal_id` | `string` | No |  |
| `amount` | `long` | No |  |
| `application_cryptogram` | `string` | No |  |
| `authorization_code` | `object?` | No |  |
| `authorization_date` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_entry` | `string` | No |  |
| `card_expiration` | `string` | No |  |
| `card_number` | `string` | No |  |
| `clearing_amount` | `long` | No |  |
| `clearing_batch_id` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_date` | `string` | No |  |
| `clearing_processed_date` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `client_id` | `long` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_application_id` | `string` | No |  |
| `emv_application_label` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `original_client_id` | `string` | No |  |
| `original_terminal_id` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_code_from_a` | `string` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `service_code` | `string` | No |  |
| `settlement_status` | `string` | No |  |
| `source_id` | `long` | No |  |
| `tecsengine_response_code` | `long` | No |  |
| `tecsengine_response_text` | `string` | No |  |
| `terminal_end_of_day_date` | `string` | No |  |
| `terminal_id` | `long` | No |  |
| `terminal_location` | `string` | No |  |
| `tip_amount` | `long` | No |  |
| `trace_number` | `long` | No |  |
| `transaction_clearing_date` | `string` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_seq_number` | `long` | No |  |
| `transaction_server_date` | `string` | No |  |
| `transaction_source` | `string` | No |  |
| `transaction_type` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.StatusTransaction().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `StatusTransaction` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## StoreTerminalParameter

```csharp
var storeTerminalParameter = client.StoreTerminalParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `Dictionary<string, object?>` | No |  |
| `config_version` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | Yes |  |
| `tid_sent` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.StoreTerminalParameter().Create(new Dictionary<string, object?>
{
    ["serial_number"] = "example_serial_number",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TerminalId

```csharp
var terminalId = client.TerminalId();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `List<object?>` | Yes |  |
| `duplicate_terminal_id` | `List<object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `List<object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TerminalId().Create(new Dictionary<string, object?>
{
    ["device_serial_number"] = new List<object?>(),  // List<object?>
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TerminalId` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionHistory

```csharp
var transactionHistory = client.TransactionHistory();
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
| `pagination` | `Dictionary<string, object?>` | No |  |
| `payment_token_public_id` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `long` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `long` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_history` | `List<object?>` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionHistory().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionHistory` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionsCount

```csharp
var transactionsCount = client.TransactionsCount();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `List<object?>` | No |  |

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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionsCount().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionsCount` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionsCountCardBrand

```csharp
var transactionsCountCardBrand = client.TransactionsCountCardBrand();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `List<object?>` | No |  |

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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionsCountCardBrand().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## TransactionsTurnover

```csharp
var transactionsTurnover = client.TransactionsTurnover();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `turnover` | `List<object?>` | No |  |

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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.TransactionsTurnover().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## UpdateMerchant

```csharp
var updateMerchant = client.UpdateMerchant();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchant_category_code` | `string` | No |  |
| `name` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vu_nummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.UpdateMerchant().Create(new Dictionary<string, object?>
{
    ["corporate_uuid"] = "example_corporate_uuid",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## UpdateTemplateXml

```csharp
var updateTemplateXml = client.UpdateTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.UpdateTemplateXml().Create(new Dictionary<string, object?>
{
    ["template_name"] = "example_template_name",  // string
    ["template_xml"] = "example_template_xml",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## Version

```csharp
var version = client.Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.Version().Load(null);
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `Version` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```csharp
var client = new BluefinTecsMerchantServicesSDK(new Dictionary<string, object?>
{
    ["feature"] = new Dictionary<string, object?>
    {
        ["test"] = new Dictionary<string, object?> { ["active"] = true },
    },
});
```

