# BluefinTecsMerchantServices Lua SDK Reference

Complete API reference for the BluefinTecsMerchantServices Lua SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```lua
local sdk = require("bluefin-tecs-merchant-services_sdk")
local client = sdk.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `table` | SDK configuration options. |
| `options.apikey` | `string` | API key for authentication. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `table` | Custom headers for all requests. |
| `options.feature` | `table` | Feature configuration. |
| `options.system` | `table` | System overrides (e.g. custom fetch). |


### Static Methods

#### `sdk.test(testopts?, sdkopts?)`

Create a test client with mock features active. Both arguments are optional.

```lua
local client = sdk.test()
```


### Instance Methods

#### `CancelTransaction(data)`

Create a new `CancelTransaction` entity instance. Pass `nil` for no initial data.

#### `CheckCardBlackListed(data)`

Create a new `CheckCardBlackListed` entity instance. Pass `nil` for no initial data.

#### `CreateProduct(data)`

Create a new `CreateProduct` entity instance. Pass `nil` for no initial data.

#### `DeactivateTerminal(data)`

Create a new `DeactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `DigitalServicesApi(data)`

Create a new `DigitalServicesApi` entity instance. Pass `nil` for no initial data.

#### `EcDataEcom(data)`

Create a new `EcDataEcom` entity instance. Pass `nil` for no initial data.

#### `EcomParameter(data)`

Create a new `EcomParameter` entity instance. Pass `nil` for no initial data.

#### `EcrData(data)`

Create a new `EcrData` entity instance. Pass `nil` for no initial data.

#### `EmvData(data)`

Create a new `EmvData` entity instance. Pass `nil` for no initial data.

#### `EnableAcquiring(data)`

Create a new `EnableAcquiring` entity instance. Pass `nil` for no initial data.

#### `GetMerchantContractNumber(data)`

Create a new `GetMerchantContractNumber` entity instance. Pass `nil` for no initial data.

#### `GetTemplateXml(data)`

Create a new `GetTemplateXml` entity instance. Pass `nil` for no initial data.

#### `IntroduceMandator(data)`

Create a new `IntroduceMandator` entity instance. Pass `nil` for no initial data.

#### `IntroducePackage(data)`

Create a new `IntroducePackage` entity instance. Pass `nil` for no initial data.

#### `KeepAlive(data)`

Create a new `KeepAlive` entity instance. Pass `nil` for no initial data.

#### `ListTerminal(data)`

Create a new `ListTerminal` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExport(data)`

Create a new `MandatorClearingExport` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExportDownload(data)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `nil` for no initial data.

#### `MandatorClearingExportSummary(data)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `nil` for no initial data.

#### `MerchantPortalServicesApi(data)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `nil` for no initial data.

#### `MoveTid(data)`

Create a new `MoveTid` entity instance. Pass `nil` for no initial data.

#### `PaymentManual(data)`

Create a new `PaymentManual` entity instance. Pass `nil` for no initial data.

#### `PaymentSred(data)`

Create a new `PaymentSred` entity instance. Pass `nil` for no initial data.

#### `PreAuthTransactionCompletion(data)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `nil` for no initial data.

#### `ReactivateTerminal(data)`

Create a new `ReactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `RefundTransaction(data)`

Create a new `RefundTransaction` entity instance. Pass `nil` for no initial data.

#### `RegisterTecsCompany(data)`

Create a new `RegisterTecsCompany` entity instance. Pass `nil` for no initial data.

#### `RegisterTerminal(data)`

Create a new `RegisterTerminal` entity instance. Pass `nil` for no initial data.

#### `ReportData(data)`

Create a new `ReportData` entity instance. Pass `nil` for no initial data.

#### `StatusTransaction(data)`

Create a new `StatusTransaction` entity instance. Pass `nil` for no initial data.

#### `StoreTerminalParameter(data)`

Create a new `StoreTerminalParameter` entity instance. Pass `nil` for no initial data.

#### `TerminalId(data)`

Create a new `TerminalId` entity instance. Pass `nil` for no initial data.

#### `TransactionHistory(data)`

Create a new `TransactionHistory` entity instance. Pass `nil` for no initial data.

#### `TransactionsCount(data)`

Create a new `TransactionsCount` entity instance. Pass `nil` for no initial data.

#### `TransactionsCountCardBrand(data)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `nil` for no initial data.

#### `TransactionsTurnover(data)`

Create a new `TransactionsTurnover` entity instance. Pass `nil` for no initial data.

#### `UpdateMerchant(data)`

Create a new `UpdateMerchant` entity instance. Pass `nil` for no initial data.

#### `UpdateTemplateXml(data)`

Create a new `UpdateTemplateXml` entity instance. Pass `nil` for no initial data.

#### `Version(data)`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `options_map() -> table`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> table, err`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs.params` | `table` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `table` | Query string parameters. |
| `fetchargs.headers` | `table` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (tables are JSON-serialized). |
| `fetchargs.ctrl` | `table` | Control options (e.g. `{ explain = true }`). |

**Returns:** `table, err`

#### `prepare(fetchargs) -> table, err`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `table, err`


---

## CancelTransactionEntity

```lua
local cancel_transaction = client:CancelTransaction(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `number` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `number` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `number` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `number` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `number` | No |  |
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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:CancelTransaction():create({
  clientId = --[[ number ]],
  currency = --[[ string ]],
  receiptNumber = --[[ string ]],
  terminalId = --[[ number ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CancelTransactionEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## CheckCardBlackListedEntity

```lua
local check_card_black_listed = client:CheckCardBlackListed(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:CheckCardBlackListed():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CheckCardBlackListedEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## CreateProductEntity

```lua
local create_product = client:CreateProduct(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `number` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:CreateProduct():create({
  templateName = --[[ string ]],
  templateType = --[[ string ]],
  templateXml = --[[ string ]],
  terminalType = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CreateProductEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## DeactivateTerminalEntity

```lua
local deactivate_terminal = client:DeactivateTerminal(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:DeactivateTerminal():create({
  deactivationReason = --[[ string ]],
  terminalId = --[[ number ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `DeactivateTerminalEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## DigitalServicesApiEntity

```lua
local digital_services_api = client:DigitalServicesApi(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `txCount` | `number` | No |  |
| `txIdEnd` | `string` | No |  |
| `txIdStart` | `string` | No |  |
| `txSeqNoEnd` | `number` | No |  |
| `txSeqNoStart` | `number` | No |  |
| `txTotal` | `number` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:DigitalServicesApi():create({
  clearingDateFrom = --[[ string ]],
  clearingDateTo = --[[ string ]],
})
```

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:DigitalServicesApi():load()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `DigitalServicesApiEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## EcDataEcomEntity

```lua
local ec_data_ecom = client:EcDataEcom(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:EcDataEcom():create({
  terminalId = --[[ number ]],
  transactionId = --[[ string ]],
  transactionType = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EcDataEcomEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## EcomParameterEntity

```lua
local ecom_parameter = client:EcomParameter(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:EcomParameter():create({
  terminalId = --[[ number ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EcomParameterEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## EcrDataEntity

```lua
local ecr_data = client:EcrData(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:EcrData():create({
  terminalId = --[[ number ]],
  transactionId = --[[ string ]],
  transactionType = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EcrDataEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## EmvDataEntity

```lua
local emv_data = client:EmvData(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:EmvData():create({
  terminalId = --[[ number ]],
  transactionId = --[[ string ]],
  transactionType = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EmvDataEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## EnableAcquiringEntity

```lua
local enable_acquiring = client:EnableAcquiring(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `number` | No |  |
| `additionalData` | `table` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchantCategoryCode` | `number` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sortingCode` | `number` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalIds` | `table` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:EnableAcquiring():create({
  corporateUuid = --[[ string ]],
  currency = --[[ string ]],
  merchantCategoryCode = --[[ number ]],
  packageOrderUuid = --[[ string ]],
  productOrderUuid = --[[ string ]],
  templateName = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EnableAcquiringEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## GetMerchantContractNumberEntity

```lua
local get_merchant_contract_number = client:GetMerchantContractNumber(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:GetMerchantContractNumber():create({
  merchantContractNumber = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `GetMerchantContractNumberEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## GetTemplateXmlEntity

```lua
local get_template_xml = client:GetTemplateXml(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:GetTemplateXml():create({
  templateName = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `GetTemplateXmlEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## IntroduceMandatorEntity

```lua
local introduce_mandator = client:IntroduceMandator(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:IntroduceMandator():create({
  mandatorName = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroduceMandatorEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## IntroducePackageEntity

```lua
local introduce_package = client:IntroducePackage(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:IntroducePackage():create({
  terminalTemplateDescription = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroducePackageEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## KeepAliveEntity

```lua
local keep_alive = client:KeepAlive(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `number` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:KeepAlive():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `KeepAliveEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## ListTerminalEntity

```lua
local list_terminal = client:ListTerminal(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `table` | No |  |
| `filter` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:ListTerminal():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `ListTerminalEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## MandatorClearingExportEntity

```lua
local mandator_clearing_export = client:MandatorClearingExport(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `pagination` | `table` | No |  |
| `records` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:MandatorClearingExport():create({
  clearingDateFrom = --[[ string ]],
  clearingDateTo = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```lua
local mandator_clearing_export_download = client:MandatorClearingExportDownload(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `fileId` | `string` | No |  |
| `filenameTemplate` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:MandatorClearingExportDownload():create({
  clearingDateFrom = --[[ string ]],
  clearingDateTo = --[[ string ]],
})
```

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:MandatorClearingExportDownload():load({ id = "mandator_clearing_export_download_id" })
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownloadEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```lua
local mandator_clearing_export_summary = client:MandatorClearingExportSummary(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `records` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:MandatorClearingExportSummary():create({
  clearingDateFrom = --[[ string ]],
  clearingDateTo = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummaryEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```lua
local merchant_portal_services_api = client:MerchantPortalServicesApi(nil)
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
| `pagination` | `table` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `number` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `number` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:MerchantPortalServicesApi():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApiEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## MoveTidEntity

```lua
local move_tid = client:MoveTid(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `table` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:MoveTid():create({
  productorderuuids = --[[ table ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MoveTidEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## PaymentManualEntity

```lua
local payment_manual = client:PaymentManual(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `amount` | `number` | Yes |  |
| `authorizationNumber` | `string` | No |  |
| `cardNumber` | `string` | Yes |  |
| `cardType` | `string` | No |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `dateTimeTx` | `string` | No |  |
| `expDate` | `string` | Yes |  |
| `merchantId` | `string` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `responseCode` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `txtype` | `string` | Yes |  |

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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:PaymentManual():create({
  amount = --[[ number ]],
  cardNumber = --[[ string ]],
  currency = --[[ string ]],
  expDate = --[[ string ]],
  txtype = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentManualEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## PaymentSredEntity

```lua
local payment_sred = client:PaymentSred(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `device` | `string` | No |  |
| `devicePayload` | `string` | Yes |  |
| `expDate` | `string` | No |  |
| `mode` | `string` | No |  |
| `panMasked` | `string` | No |  |
| `password` | `string` | No |  |
| `serial` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `terminalId` | `string` | Yes |  |
| `txtype` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:PaymentSred():create({
  amount = --[[ number ]],
  currency = --[[ string ]],
  devicePayload = --[[ string ]],
  terminalId = --[[ string ]],
  txtype = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentSredEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```lua
local pre_auth_transaction_completion = client:PreAuthTransactionCompletion(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `number` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `cardNumberReference` | `string` | Yes |  |
| `clientId` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `number` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `number` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `number` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `number` | No |  |
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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:PreAuthTransactionCompletion():create({
  cardNumberReference = --[[ string ]],
  clientId = --[[ number ]],
  currency = --[[ string ]],
  receiptNumber = --[[ string ]],
  terminalId = --[[ number ]],
  transactionType = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletionEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## ReactivateTerminalEntity

```lua
local reactivate_terminal = client:ReactivateTerminal(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:ReactivateTerminal():create({
  reactivationReason = --[[ string ]],
  terminalId = --[[ number ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `ReactivateTerminalEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## RefundTransactionEntity

```lua
local refund_transaction = client:RefundTransaction(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `number` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `number` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `number` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `number` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `number` | No |  |
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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:RefundTransaction():create({
  clientId = --[[ number ]],
  currency = --[[ string ]],
  receiptNumber = --[[ string ]],
  terminalId = --[[ number ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `RefundTransactionEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## RegisterTecsCompanyEntity

```lua
local register_tecs_company = client:RegisterTecsCompany(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `number` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:RegisterTecsCompany():create({
  corporateUuid = --[[ string ]],
  packageOrderUuid = --[[ string ]],
  productOrderUuid = --[[ string ]],
  templateName = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTecsCompanyEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## RegisterTerminalEntity

```lua
local register_terminal = client:RegisterTerminal(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `table` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `tecsWebSecretKey` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalCountryCode` | `string` | Yes |  |
| `terminalId` | `number` | No |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalLanguageCode` | `string` | Yes |  |
| `terminalLocation` | `string` | Yes |  |
| `terminalSerialNumber` | `string` | No |  |
| `tokenIOAlias` | `string` | No |  |
| `tokenIOIban` | `string` | No |  |
| `tokenIOMemberId` | `string` | No |  |
| `webShopUrl` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:RegisterTerminal():create({
  corporateUuid = --[[ string ]],
  packageOrderUuid = --[[ string ]],
  productOrderUuid = --[[ string ]],
  templateName = --[[ string ]],
  terminalCountryCode = --[[ string ]],
  terminalLanguageCode = --[[ string ]],
  terminalLocation = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTerminalEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## ReportDataEntity

```lua
local report_data = client:ReportData(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `table` | No |  |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `table` | No |  |
| `sumOverDebitTx` | `table` | No |  |
| `terminalId` | `number` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:ReportData():create({
  clearingDateFrom = --[[ string ]],
  clearingDateTo = --[[ string ]],
  corporateId = --[[ string ]],
  currency = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `ReportDataEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## StatusTransactionEntity

```lua
local status_transaction = client:StatusTransaction(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `number` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `string|nil` | No |  |
| `authorizationDate` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardEntry` | `string` | No |  |
| `cardExpiration` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clearingAmount` | `number` | No |  |
| `clearingBatchId` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingDate` | `string` | No |  |
| `clearingProcessedDate` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `clientId` | `number` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvApplicationId` | `string` | No |  |
| `emvApplicationLabel` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `originalClientId` | `string` | No |  |
| `originalTerminalId` | `number` | No |  |
| `originalTransactionId` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseCodeFromAS` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `settlementStatus` | `string` | No |  |
| `sourceId` | `number` | No |  |
| `tecsengineResponseCode` | `number` | No |  |
| `tecsengineResponseText` | `string` | No |  |
| `terminalEndOfDayDate` | `string` | No |  |
| `terminalId` | `number` | No |  |
| `terminalLocation` | `string` | No |  |
| `tipAmount` | `number` | No |  |
| `traceNumber` | `number` | No |  |
| `transactionClearingDate` | `string` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionSeqNumber` | `number` | No |  |
| `transactionServerDate` | `string` | No |  |
| `transactionSource` | `string` | No |  |
| `transactionType` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:StatusTransaction():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `StatusTransactionEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## StoreTerminalParameterEntity

```lua
local store_terminal_parameter = client:StoreTerminalParameter(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `table` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:StoreTerminalParameter():create({
  serialNumber = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `StoreTerminalParameterEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## TerminalIdEntity

```lua
local terminal_id = client:TerminalId(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `table` | Yes |  |
| `duplicateTerminalIds` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:TerminalId():create({
  deviceSerialNumber = --[[ table ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TerminalIdEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionHistoryEntity

```lua
local transaction_history = client:TransactionHistory(nil)
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
| `pagination` | `table` | No |  |
| `paymentTokenPublicId` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `number` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `number` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionHistories` | `table` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:TransactionHistory():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionHistoryEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionsCountEntity

```lua
local transactions_count = client:TransactionsCount(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `table` | No |  |

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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:TransactionsCount():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```lua
local transactions_count_card_brand = client:TransactionsCountCardBrand(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `table` | No |  |

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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:TransactionsCountCardBrand():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrandEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionsTurnoverEntity

```lua
local transactions_turnover = client:TransactionsTurnover(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `table` | No |  |

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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:TransactionsTurnover():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsTurnoverEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## UpdateMerchantEntity

```lua
local update_merchant = client:UpdateMerchant(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchantCategoryCode` | `string` | No |  |
| `name` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vuNummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:UpdateMerchant():create({
  corporateUuid = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateMerchantEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## UpdateTemplateXmlEntity

```lua
local update_template_xml = client:UpdateTemplateXml(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:UpdateTemplateXml():create({
  templateName = --[[ string ]],
  templateXml = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateTemplateXmlEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## VersionEntity

```lua
local version = client:Version(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:Version():load()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `VersionEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```lua
local client = sdk.new({
  feature = {
    test = { active = true },
  },
})
```

