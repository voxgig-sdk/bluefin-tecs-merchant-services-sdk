# BluefinTecsMerchantServices Ruby SDK Reference

Complete API reference for the BluefinTecsMerchantServices Ruby SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```ruby
require_relative 'BluefinTecsMerchantServices_sdk'

client = BluefinTecsMerchantServicesSDK.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Hash` | SDK configuration options. |
| `options["apikey"]` | `String` | API key for authentication. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Hash` | Custom headers for all requests. |
| `options["feature"]` | `Hash` | Feature configuration. |
| `options["system"]` | `Hash` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.test(testopts = nil, sdkopts = nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```ruby
client = BluefinTecsMerchantServicesSDK.test
```


### Instance Methods

#### `CancelTransaction(data = nil)`

Create a new `CancelTransaction` entity instance. Pass `nil` for no initial data.

#### `CheckCardBlackListed(data = nil)`

Create a new `CheckCardBlackListed` entity instance. Pass `nil` for no initial data.

#### `CreateProduct(data = nil)`

Create a new `CreateProduct` entity instance. Pass `nil` for no initial data.

#### `DeactivateTerminal(data = nil)`

Create a new `DeactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `DigitalServicesApi(data = nil)`

Create a new `DigitalServicesApi` entity instance. Pass `nil` for no initial data.

#### `EcDataEcom(data = nil)`

Create a new `EcDataEcom` entity instance. Pass `nil` for no initial data.

#### `EcomParameter(data = nil)`

Create a new `EcomParameter` entity instance. Pass `nil` for no initial data.

#### `EcrData(data = nil)`

Create a new `EcrData` entity instance. Pass `nil` for no initial data.

#### `EmvData(data = nil)`

Create a new `EmvData` entity instance. Pass `nil` for no initial data.

#### `EnableAcquiring(data = nil)`

Create a new `EnableAcquiring` entity instance. Pass `nil` for no initial data.

#### `GetMerchantContractNumber(data = nil)`

Create a new `GetMerchantContractNumber` entity instance. Pass `nil` for no initial data.

#### `GetTemplateXml(data = nil)`

Create a new `GetTemplateXml` entity instance. Pass `nil` for no initial data.

#### `IntroduceMandator(data = nil)`

Create a new `IntroduceMandator` entity instance. Pass `nil` for no initial data.

#### `IntroducePackage(data = nil)`

Create a new `IntroducePackage` entity instance. Pass `nil` for no initial data.

#### `KeepAlive(data = nil)`

Create a new `KeepAlive` entity instance. Pass `nil` for no initial data.

#### `ListTerminal(data = nil)`

Create a new `ListTerminal` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExport(data = nil)`

Create a new `MandatorClearingExport` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExportDownload(data = nil)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExportSummary(data = nil)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `nil` for no initial data.

#### `MerchantPortalServicesApi(data = nil)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `nil` for no initial data.

#### `MoveTid(data = nil)`

Create a new `MoveTid` entity instance. Pass `nil` for no initial data.

#### `PaymentManual(data = nil)`

Create a new `PaymentManual` entity instance. Pass `nil` for no initial data.

#### `PaymentSred(data = nil)`

Create a new `PaymentSred` entity instance. Pass `nil` for no initial data.

#### `PreAuthTransactionCompletion(data = nil)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `nil` for no initial data.

#### `ReactivateTerminal(data = nil)`

Create a new `ReactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `RefundTransaction(data = nil)`

Create a new `RefundTransaction` entity instance. Pass `nil` for no initial data.

#### `RegisterTecsCompany(data = nil)`

Create a new `RegisterTecsCompany` entity instance. Pass `nil` for no initial data.

#### `RegisterTerminal(data = nil)`

Create a new `RegisterTerminal` entity instance. Pass `nil` for no initial data.

#### `ReportData(data = nil)`

Create a new `ReportData` entity instance. Pass `nil` for no initial data.

#### `StatusTransaction(data = nil)`

Create a new `StatusTransaction` entity instance. Pass `nil` for no initial data.

#### `StoreTerminalParameter(data = nil)`

Create a new `StoreTerminalParameter` entity instance. Pass `nil` for no initial data.

#### `TerminalId(data = nil)`

Create a new `TerminalId` entity instance. Pass `nil` for no initial data.

#### `TransactionHistory(data = nil)`

Create a new `TransactionHistory` entity instance. Pass `nil` for no initial data.

#### `TransactionsCount(data = nil)`

Create a new `TransactionsCount` entity instance. Pass `nil` for no initial data.

#### `TransactionsCountCardBrand(data = nil)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `nil` for no initial data.

#### `TransactionsTurnover(data = nil)`

Create a new `TransactionsTurnover` entity instance. Pass `nil` for no initial data.

#### `UpdateMerchant(data = nil)`

Create a new `UpdateMerchant` entity instance. Pass `nil` for no initial data.

#### `UpdateTemplateXml(data = nil)`

Create a new `UpdateTemplateXml` entity instance. Pass `nil` for no initial data.

#### `Version(data = nil)`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `options_map -> Hash`

Return a deep copy of the current SDK options.

#### `get_utility -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs = {}) -> Hash`

Make a direct HTTP request to any API endpoint. Returns a result hash
(`{ "ok" => ..., "status" => ..., "data" => ..., "err" => ... }`); it
does not raise — inspect `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Hash` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `Hash` | Query string parameters. |
| `fetchargs["headers"]` | `Hash` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (hashes are JSON-serialized). |
| `fetchargs["ctrl"]` | `Hash` | Control options (e.g. `{ "explain" => true }`). |

**Returns:** `Hash`

#### `prepare(fetchargs = {}) -> Hash`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`. Raises on error.

**Returns:** `Hash` (the fetch definition; raises on error)


---

## CancelTransactionEntity

```ruby
cancel_transaction = client.CancelTransaction
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Integer` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `Integer` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Integer` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Integer` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Integer` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Integer` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `txType` | `String` | No |  |
| `userData` | `String` | No |  |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.CancelTransaction.create({
  "clientId" => 1, # Integer
  "currency" => "example_currency", # String
  "receiptNumber" => "example_receiptNumber", # String
  "terminalId" => 1, # Integer
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `CancelTransactionEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## CheckCardBlackListedEntity

```ruby
check_card_black_listed = client.CheckCardBlackListed
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.CheckCardBlackListed.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `CheckCardBlackListedEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## CreateProductEntity

```ruby
create_product = client.CreateProduct
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `Integer` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateType` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |
| `terminalType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.CreateProduct.create({
  "templateName" => "example_templateName", # String
  "templateType" => "example_templateType", # String
  "templateXml" => "example_templateXml", # String
  "terminalType" => "example_terminalType", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `CreateProductEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## DeactivateTerminalEntity

```ruby
deactivate_terminal = client.DeactivateTerminal
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | No |  |
| `deactivationReason` | `String` | Yes |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.DeactivateTerminal.create({
  "deactivationReason" => "example_deactivationReason", # String
  "terminalId" => 1, # Integer
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `DeactivateTerminalEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## DigitalServicesApiEntity

```ruby
digital_services_api = client.DigitalServicesApi
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `txCount` | `Integer` | No |  |
| `txIdEnd` | `String` | No |  |
| `txIdStart` | `String` | No |  |
| `txSeqNoEnd` | `Integer` | No |  |
| `txSeqNoStart` | `Integer` | No |  |
| `txTotal` | `Integer` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.DigitalServicesApi.create({
  "file_id" => "example_file_id", # String
  "clearingDateFrom" => "example_clearingDateFrom", # String
  "clearingDateTo" => "example_clearingDateTo", # String
})
```

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.DigitalServicesApi.load()
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `DigitalServicesApiEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## EcDataEcomEntity

```ruby
ec_data_ecom = client.EcDataEcom
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.EcDataEcom.create({
  "terminalId" => 1, # Integer
  "transactionId" => "example_transactionId", # String
  "transactionType" => "example_transactionType", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `EcDataEcomEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## EcomParameterEntity

```ruby
ecom_parameter = client.EcomParameter
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `String` | No |  |
| `ecomSkey` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.EcomParameter.create({
  "terminalId" => 1, # Integer
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `EcomParameterEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## EcrDataEntity

```ruby
ecr_data = client.EcrData
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.EcrData.create({
  "terminalId" => 1, # Integer
  "transactionId" => "example_transactionId", # String
  "transactionType" => "example_transactionType", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `EcrDataEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## EmvDataEntity

```ruby
emv_data = client.EmvData
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.EmvData.create({
  "terminalId" => 1, # Integer
  "transactionId" => "example_transactionId", # String
  "transactionType" => "example_transactionType", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `EmvDataEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## EnableAcquiringEntity

```ruby
enable_acquiring = client.EnableAcquiring
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `Integer` | No |  |
| `additionalData` | `Hash` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchantCategoryCode` | `Integer` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `sortingCode` | `Integer` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalIds` | `Array` | No |  |
| `vuNummer` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.EnableAcquiring.create({
  "corporateUuid" => "example_corporateUuid", # String
  "currency" => "example_currency", # String
  "merchantCategoryCode" => 1, # Integer
  "packageOrderUuid" => "example_packageOrderUuid", # String
  "productOrderUuid" => "example_productOrderUuid", # String
  "templateName" => "example_templateName", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `EnableAcquiringEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## GetMerchantContractNumberEntity

```ruby
get_merchant_contract_number = client.GetMerchantContractNumber
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.GetMerchantContractNumber.create({
  "merchantContractNumber" => "example_merchantContractNumber", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `GetMerchantContractNumberEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## GetTemplateXmlEntity

```ruby
get_template_xml = client.GetTemplateXml
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.GetTemplateXml.create({
  "templateName" => "example_templateName", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `GetTemplateXmlEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## IntroduceMandatorEntity

```ruby
introduce_mandator = client.IntroduceMandator
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.IntroduceMandator.create({
  "mandatorName" => "example_mandatorName", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `IntroduceMandatorEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## IntroducePackageEntity

```ruby
introduce_package = client.IntroducePackage
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalTemplateDescription` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.IntroducePackage.create({
  "terminalTemplateDescription" => "example_terminalTemplateDescription", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `IntroducePackageEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## KeepAliveEntity

```ruby
keep_alive = client.KeepAlive
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `kaDateTimeFrom` | `String` | No |  |
| `kaDateTimeTo` | `String` | No |  |
| `keepAliveData` | `Array` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalDateTimeFrom` | `String` | No |  |
| `terminalDateTimeTo` | `String` | No |  |
| `terminalId` | `Integer` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.KeepAlive.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `KeepAliveEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## ListTerminalEntity

```ruby
list_terminal = client.ListTerminal
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `Array` | No |  |
| `filter` | `Hash` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `Array` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.ListTerminal.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `ListTerminalEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## MandatorClearingExportEntity

```ruby
mandator_clearing_export = client.MandatorClearingExport
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Hash` | No |  |
| `records` | `Array` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.MandatorClearingExport.create({
  "clearingDateFrom" => "example_clearingDateFrom", # String
  "clearingDateTo" => "example_clearingDateTo", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `MandatorClearingExportEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```ruby
mandator_clearing_export_download = client.MandatorClearingExportDownload
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | Yes | End date for clearing export (inclusive) |
| `fileId` | `String` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | No | Optional filename template for the export file |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `status` | `String` | No | Processing status of the export request |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.MandatorClearingExportDownload.create({
  "clearingDateFrom" => "example_clearingDateFrom", # String
  "clearingDateTo" => "example_clearingDateTo", # String
})
```

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.MandatorClearingExportDownload.load({ "id" => "mandator_clearing_export_download_id" })
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `MandatorClearingExportDownloadEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```ruby
mandator_clearing_export_summary = client.MandatorClearingExportSummary
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `Array` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.MandatorClearingExportSummary.create({
  "clearingDateFrom" => "example_clearingDateFrom", # String
  "clearingDateTo" => "example_clearingDateTo", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `MandatorClearingExportSummaryEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```ruby
merchant_portal_services_api = client.MerchantPortalServicesApi
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `Hash` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `Integer` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `Integer` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No | Filter by wallet type. |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.MerchantPortalServicesApi.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `MerchantPortalServicesApiEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## MoveTidEntity

```ruby
move_tid = client.MoveTid
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `Array` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `targetPackageorderuuid` | `String` | No |  |
| `targetProductorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.MoveTid.create({
  "productorderuuids" => [], # Array
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `MoveTidEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## PaymentManualEntity

```ruby
payment_manual = client.PaymentManual
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String` | No | Acquirer name parsed from KKG field |
| `amount` | `Integer` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `String` | No | Authorization number from the gateway |
| `cardNumber` | `String` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `String` | No | Card type parsed from KKG field |
| `currency` | `String` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `String` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `String` | No | Date and time of the transaction |
| `expDate` | `String` | Yes | Card expiry date in MMYY format |
| `merchantId` | `String` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `String` | No | Original transaction ID from gateway |
| `password` | `String` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `String` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `String` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `String` | No | Terminal ID used for the transaction |
| `transactionId` | `String` | No | Transaction ID generated by the backend |
| `txtype` | `String` | Yes | Transaction type |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.PaymentManual.create({
  "amount" => 1, # Integer
  "cardNumber" => "example_cardNumber", # String
  "currency" => "example_currency", # String
  "expDate" => "example_expDate", # String
  "txtype" => "example_txtype", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `PaymentManualEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## PaymentSredEntity

```ruby
payment_sred = client.PaymentSred
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `Integer` | Yes | Transaction amount in minor units (cents) |
| `currency` | `String` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `String` | No | Device type that provided the SRED payload |
| `devicePayload` | `String` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `String` | No | Card expiry date in MMYY format |
| `mode` | `String` | No | Decryption mode |
| `panMasked` | `String` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `String` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `String` | No | Device serial number |
| `serviceCode` | `String` | No | Service code from the card |
| `terminalId` | `String` | Yes | Terminal ID - 8 digits |
| `txtype` | `String` | Yes | Transaction type |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.PaymentSred.create({
  "amount" => 1, # Integer
  "currency" => "example_currency", # String
  "devicePayload" => "example_devicePayload", # String
  "terminalId" => "example_terminalId", # String
  "txtype" => "example_txtype", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `PaymentSredEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```ruby
pre_auth_transaction_completion = client.PreAuthTransactionCompletion
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Integer` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `cardNumberReference` | `String` | Yes |  |
| `clientId` | `Integer` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Integer` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Integer` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Integer` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Integer` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | Yes |  |
| `txType` | `String` | No |  |
| `userData` | `String` | No |  |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.PreAuthTransactionCompletion.create({
  "cardNumberReference" => "example_cardNumberReference", # String
  "clientId" => 1, # Integer
  "currency" => "example_currency", # String
  "receiptNumber" => "example_receiptNumber", # String
  "terminalId" => 1, # Integer
  "transactionType" => "example_transactionType", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `PreAuthTransactionCompletionEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## ReactivateTerminalEntity

```ruby
reactivate_terminal = client.ReactivateTerminal
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | No |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `reactivationReason` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.ReactivateTerminal.create({
  "reactivationReason" => "example_reactivationReason", # String
  "terminalId" => 1, # Integer
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `ReactivateTerminalEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## RefundTransactionEntity

```ruby
refund_transaction = client.RefundTransaction
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Integer` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `Integer` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Integer` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Integer` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Integer` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Integer` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Integer` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `txType` | `String` | No |  |
| `userData` | `String` | No |  |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.RefundTransaction.create({
  "clientId" => 1, # Integer
  "currency" => "example_currency", # String
  "receiptNumber" => "example_receiptNumber", # String
  "terminalId" => 1, # Integer
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `RefundTransactionEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## RegisterTecsCompanyEntity

```ruby
register_tecs_company = client.RegisterTecsCompany
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `partnerId` | `Integer` | No |  |
| `partnerName` | `String` | No |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.RegisterTecsCompany.create({
  "corporateUuid" => "example_corporateUuid", # String
  "packageOrderUuid" => "example_packageOrderUuid", # String
  "productOrderUuid" => "example_productOrderUuid", # String
  "templateName" => "example_templateName", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `RegisterTecsCompanyEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## RegisterTerminalEntity

```ruby
register_terminal = client.RegisterTerminal
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `Hash` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `tecsWebSecretKey` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalCountryCode` | `String` | Yes |  |
| `terminalId` | `Integer` | No |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalLanguageCode` | `String` | Yes |  |
| `terminalLocation` | `String` | Yes |  |
| `terminalSerialNumber` | `String` | No |  |
| `tokenIOAlias` | `String` | No |  |
| `tokenIOIban` | `String` | No |  |
| `tokenIOMemberId` | `String` | No |  |
| `webShopUrl` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.RegisterTerminal.create({
  "corporateUuid" => "example_corporateUuid", # String
  "packageOrderUuid" => "example_packageOrderUuid", # String
  "productOrderUuid" => "example_productOrderUuid", # String
  "templateName" => "example_templateName", # String
  "terminalCountryCode" => "example_terminalCountryCode", # String
  "terminalLanguageCode" => "example_terminalLanguageCode", # String
  "terminalLocation" => "example_terminalLocation", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `RegisterTerminalEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## ReportDataEntity

```ruby
report_data = client.ReportData
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `Array` | No |  |
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `sumOverCreditTx` | `Hash` | No |  |
| `sumOverDebitTx` | `Hash` | No |  |
| `terminalId` | `Integer` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.ReportData.create({
  "clearingDateFrom" => "example_clearingDateFrom", # String
  "clearingDateTo" => "example_clearingDateTo", # String
  "corporateId" => "example_corporateId", # String
  "currency" => "example_currency", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `ReportDataEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## StatusTransactionEntity

```ruby
status_transaction = client.StatusTransaction
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String` | No |  |
| `acquirerTerminalId` | `String` | No |  |
| `amount` | `Integer` | No |  |
| `applicationCryptogram` | `String` | No |  |
| `authorizationCode` | `Object` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardEntry` | `String` | No |  |
| `cardExpiration` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clearingAmount` | `Integer` | No |  |
| `clearingBatchId` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingDate` | `String` | No |  |
| `clearingProcessedDate` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `clientId` | `Integer` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvApplicationId` | `String` | No |  |
| `emvApplicationLabel` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `originalClientId` | `String` | No |  |
| `originalTerminalId` | `Integer` | No |  |
| `originalTransactionId` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseCodeFromAS` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `settlementStatus` | `String` | No |  |
| `sourceId` | `Integer` | No |  |
| `tecsengineResponseCode` | `Integer` | No |  |
| `tecsengineResponseText` | `String` | No |  |
| `terminalEndOfDayDate` | `String` | No |  |
| `terminalId` | `Integer` | No |  |
| `terminalLocation` | `String` | No |  |
| `tipAmount` | `Integer` | No |  |
| `traceNumber` | `Integer` | No |  |
| `transactionClearingDate` | `String` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionSeqNumber` | `Integer` | No |  |
| `transactionServerDate` | `String` | No |  |
| `transactionSource` | `String` | No |  |
| `transactionType` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.StatusTransaction.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `StatusTransactionEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## StoreTerminalParameterEntity

```ruby
store_terminal_parameter = client.StoreTerminalParameter
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `Hash` | No |  |
| `configVersion` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | Yes |  |
| `tidSent` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.StoreTerminalParameter.create({
  "serialNumber" => "example_serialNumber", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `StoreTerminalParameterEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## TerminalIdEntity

```ruby
terminal_id = client.TerminalId
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `Array` | Yes |  |
| `duplicateTerminalIds` | `Array` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `Array` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.TerminalId.create({
  "deviceSerialNumber" => [], # Array
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `TerminalIdEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## TransactionHistoryEntity

```ruby
transaction_history = client.TransactionHistory
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `Hash` | No |  |
| `paymentTokenPublicId` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `Integer` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `Integer` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionHistories` | `Array` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No | Filter by wallet type. |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.TransactionHistory.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `TransactionHistoryEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## TransactionsCountEntity

```ruby
transactions_count = client.TransactionsCount
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `Array` | No |  |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.TransactionsCount.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `TransactionsCountEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```ruby
transactions_count_card_brand = client.TransactionsCountCardBrand
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `Array` | No |  |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.TransactionsCountCardBrand.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `TransactionsCountCardBrandEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## TransactionsTurnoverEntity

```ruby
transactions_turnover = client.TransactionsTurnover
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `turnovers` | `Array` | No |  |

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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.TransactionsTurnover.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `TransactionsTurnoverEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## UpdateMerchantEntity

```ruby
update_merchant = client.UpdateMerchant
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchantCategoryCode` | `String` | No |  |
| `name` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vuNummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.UpdateMerchant.create({
  "corporateUuid" => "example_corporateUuid", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `UpdateMerchantEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## UpdateTemplateXmlEntity

```ruby
update_template_xml = client.UpdateTemplateXml
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.UpdateTemplateXml.create({
  "templateName" => "example_templateName", # String
  "templateXml" => "example_templateXml", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `UpdateTemplateXmlEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## VersionEntity

```ruby
version = client.Version
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.Version.load()
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `VersionEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ruby
client = BluefinTecsMerchantServicesSDK.new({
  "feature" => {
    "test" => { "active" => true },
  },
})
```

