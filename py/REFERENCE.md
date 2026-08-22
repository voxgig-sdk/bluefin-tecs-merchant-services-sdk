# BluefinTecsMerchantServices Python SDK Reference

Complete API reference for the BluefinTecsMerchantServices Python SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```python
from bluefintecsmerchantservices_sdk import BluefinTecsMerchantServicesSDK

client = BluefinTecsMerchantServicesSDK(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `dict` | SDK configuration options. |
| `options["apikey"]` | `str` | API key for authentication. |
| `options["base"]` | `str` | Base URL for API requests. |
| `options["prefix"]` | `str` | URL prefix appended after base. |
| `options["suffix"]` | `str` | URL suffix appended after path. |
| `options["headers"]` | `dict` | Custom headers for all requests. |
| `options["feature"]` | `dict` | Feature configuration. |
| `options["system"]` | `dict` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.test(testopts=None, sdkopts=None)`

Create a test client with mock features active. Both arguments may be `None`.

```python
client = BluefinTecsMerchantServicesSDK.test()
```


### Instance Methods

#### `CancelTransaction(data=None)`

Create a new `CancelTransactionEntity` instance. Pass `None` for no initial data.

#### `CheckCardBlackListed(data=None)`

Create a new `CheckCardBlackListedEntity` instance. Pass `None` for no initial data.

#### `CreateProduct(data=None)`

Create a new `CreateProductEntity` instance. Pass `None` for no initial data.

#### `DeactivateTerminal(data=None)`

Create a new `DeactivateTerminalEntity` instance. Pass `None` for no initial data.

#### `DigitalServicesApi(data=None)`

Create a new `DigitalServicesApiEntity` instance. Pass `None` for no initial data.

#### `EcDataEcom(data=None)`

Create a new `EcDataEcomEntity` instance. Pass `None` for no initial data.

#### `EcomParameter(data=None)`

Create a new `EcomParameterEntity` instance. Pass `None` for no initial data.

#### `EcrData(data=None)`

Create a new `EcrDataEntity` instance. Pass `None` for no initial data.

#### `EmvData(data=None)`

Create a new `EmvDataEntity` instance. Pass `None` for no initial data.

#### `EnableAcquiring(data=None)`

Create a new `EnableAcquiringEntity` instance. Pass `None` for no initial data.

#### `GetMerchantContractNumber(data=None)`

Create a new `GetMerchantContractNumberEntity` instance. Pass `None` for no initial data.

#### `GetTemplateXml(data=None)`

Create a new `GetTemplateXmlEntity` instance. Pass `None` for no initial data.

#### `IntroduceMandator(data=None)`

Create a new `IntroduceMandatorEntity` instance. Pass `None` for no initial data.

#### `IntroducePackage(data=None)`

Create a new `IntroducePackageEntity` instance. Pass `None` for no initial data.

#### `KeepAlive(data=None)`

Create a new `KeepAliveEntity` instance. Pass `None` for no initial data.

#### `ListTerminal(data=None)`

Create a new `ListTerminalEntity` instance. Pass `None` for no initial data.

#### `MandatorClearingExport(data=None)`

Create a new `MandatorClearingExportEntity` instance. Pass `None` for no initial data.

#### `MandatorClearingExportDownload(data=None)`

Create a new `MandatorClearingExportDownloadEntity` instance. Pass `None` for no initial data.

#### `MandatorClearingExportSummary(data=None)`

Create a new `MandatorClearingExportSummaryEntity` instance. Pass `None` for no initial data.

#### `MerchantPortalServicesApi(data=None)`

Create a new `MerchantPortalServicesApiEntity` instance. Pass `None` for no initial data.

#### `MoveTid(data=None)`

Create a new `MoveTidEntity` instance. Pass `None` for no initial data.

#### `PaymentManual(data=None)`

Create a new `PaymentManualEntity` instance. Pass `None` for no initial data.

#### `PaymentSred(data=None)`

Create a new `PaymentSredEntity` instance. Pass `None` for no initial data.

#### `PreAuthTransactionCompletion(data=None)`

Create a new `PreAuthTransactionCompletionEntity` instance. Pass `None` for no initial data.

#### `ReactivateTerminal(data=None)`

Create a new `ReactivateTerminalEntity` instance. Pass `None` for no initial data.

#### `RefundTransaction(data=None)`

Create a new `RefundTransactionEntity` instance. Pass `None` for no initial data.

#### `RegisterTecsCompany(data=None)`

Create a new `RegisterTecsCompanyEntity` instance. Pass `None` for no initial data.

#### `RegisterTerminal(data=None)`

Create a new `RegisterTerminalEntity` instance. Pass `None` for no initial data.

#### `ReportData(data=None)`

Create a new `ReportDataEntity` instance. Pass `None` for no initial data.

#### `StatusTransaction(data=None)`

Create a new `StatusTransactionEntity` instance. Pass `None` for no initial data.

#### `StoreTerminalParameter(data=None)`

Create a new `StoreTerminalParameterEntity` instance. Pass `None` for no initial data.

#### `TerminalId(data=None)`

Create a new `TerminalIdEntity` instance. Pass `None` for no initial data.

#### `TransactionHistory(data=None)`

Create a new `TransactionHistoryEntity` instance. Pass `None` for no initial data.

#### `TransactionsCount(data=None)`

Create a new `TransactionsCountEntity` instance. Pass `None` for no initial data.

#### `TransactionsCountCardBrand(data=None)`

Create a new `TransactionsCountCardBrandEntity` instance. Pass `None` for no initial data.

#### `TransactionsTurnover(data=None)`

Create a new `TransactionsTurnoverEntity` instance. Pass `None` for no initial data.

#### `UpdateMerchant(data=None)`

Create a new `UpdateMerchantEntity` instance. Pass `None` for no initial data.

#### `UpdateTemplateXml(data=None)`

Create a new `UpdateTemplateXmlEntity` instance. Pass `None` for no initial data.

#### `Version(data=None)`

Create a new `VersionEntity` instance. Pass `None` for no initial data.

#### `options_map() -> dict`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs=None) -> dict`

Make a direct HTTP request to any API endpoint. Returns a result `dict` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `str` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `str` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `dict` | Path parameter values. |
| `fetchargs["query"]` | `dict` | Query string parameters. |
| `fetchargs["headers"]` | `dict` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (dicts are JSON-serialized). |

**Returns:** `result_dict`

#### `prepare(fetchargs=None) -> dict`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransactionEntity

```python
cancel_transaction = client.CancelTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `str` | No |  |
| `acquirerName` | `str` | No |  |
| `actualBonusPoints` | `str` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `str` | No |  |
| `balanceAmount` | `str` | No |  |
| `cardBrand` | `str` | No |  |
| `cardNumber` | `str` | No |  |
| `clientId` | `int` | Yes |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `ecData` | `str` | No |  |
| `ecrData` | `str` | No |  |
| `emvData` | `str` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `str` | No |  |
| `languageCode` | `str` | No |  |
| `merchantAddress` | `str` | No |  |
| `merchantName` | `str` | No |  |
| `merchantNumber` | `str` | No |  |
| `messageType` | `str` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `str` | No |  |
| `password` | `str` | No |  |
| `paymentReason` | `str` | No |  |
| `receiptFooter` | `str` | No |  |
| `receiptHeader` | `str` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `serialNumber` | `str` | No |  |
| `svc` | `str` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `str` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionDate` | `str` | No |  |
| `transactionId` | `str` | No |  |
| `txType` | `str` | No |  |
| `userData` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.CancelTransaction().create({
    "clientId": 1,  # int
    "currency": "example_currency",  # str
    "receiptNumber": "example_receiptNumber",  # str
    "terminalId": 1,  # int
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CancelTransactionEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## CheckCardBlackListedEntity

```python
check_card_black_listed = client.CheckCardBlackListed()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.CheckCardBlackListed().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CheckCardBlackListedEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## CreateProductEntity

```python
create_product = client.CreateProduct()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `int` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `templateName` | `str` | Yes |  |
| `templateType` | `str` | Yes |  |
| `templateXml` | `str` | Yes |  |
| `terminalType` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.CreateProduct().create({
    "templateName": "example_templateName",  # str
    "templateType": "example_templateType",  # str
    "templateXml": "example_templateXml",  # str
    "terminalType": "example_terminalType",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CreateProductEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## DeactivateTerminalEntity

```python
deactivate_terminal = client.DeactivateTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `str` | No |  |
| `deactivationReason` | `str` | Yes |  |
| `packageOrderUuid` | `str` | No |  |
| `productOrderUuid` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.DeactivateTerminal().create({
    "deactivationReason": "example_deactivationReason",  # str
    "terminalId": 1,  # int
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `DeactivateTerminalEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## DigitalServicesApiEntity

```python
digital_services_api = client.DigitalServicesApi()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `txCount` | `int` | No |  |
| `txIdEnd` | `str` | No |  |
| `txIdStart` | `str` | No |  |
| `txSeqNoEnd` | `int` | No |  |
| `txSeqNoStart` | `int` | No |  |
| `txTotal` | `int` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.DigitalServicesApi().create({
    "file_id": "example_file_id",  # str
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.DigitalServicesApi().load()
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `DigitalServicesApiEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## EcDataEcomEntity

```python
ec_data_ecom = client.EcDataEcom()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `str` | Yes |  |
| `transactionType` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EcDataEcom().create({
    "terminalId": 1,  # int
    "transactionId": "example_transactionId",  # str
    "transactionType": "example_transactionType",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EcDataEcomEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## EcomParameterEntity

```python
ecom_parameter = client.EcomParameter()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `str` | No |  |
| `ecomSkey` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EcomParameter().create({
    "terminalId": 1,  # int
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EcomParameterEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## EcrDataEntity

```python
ecr_data = client.EcrData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `str` | Yes |  |
| `transactionType` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EcrData().create({
    "terminalId": 1,  # int
    "transactionId": "example_transactionId",  # str
    "transactionType": "example_transactionType",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EcrDataEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## EmvDataEntity

```python
emv_data = client.EmvData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `str` | Yes |  |
| `transactionType` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EmvData().create({
    "terminalId": 1,  # int
    "transactionId": "example_transactionId",  # str
    "transactionType": "example_transactionType",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EmvDataEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## EnableAcquiringEntity

```python
enable_acquiring = client.EnableAcquiring()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `int` | No |  |
| `additionalData` | `dict` | No |  |
| `corporateUuid` | `str` | Yes |  |
| `currency` | `str` | Yes |  |
| `merchantCategoryCode` | `int` | Yes |  |
| `packageOrderUuid` | `str` | Yes |  |
| `productOrderUuid` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `sortingCode` | `int` | No |  |
| `templateName` | `str` | Yes |  |
| `terminalIdAcq` | `str` | No |  |
| `terminalIds` | `list` | No |  |
| `vuNummer` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EnableAcquiring().create({
    "corporateUuid": "example_corporateUuid",  # str
    "currency": "example_currency",  # str
    "merchantCategoryCode": 1,  # int
    "packageOrderUuid": "example_packageOrderUuid",  # str
    "productOrderUuid": "example_productOrderUuid",  # str
    "templateName": "example_templateName",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EnableAcquiringEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## GetMerchantContractNumberEntity

```python
get_merchant_contract_number = client.GetMerchantContractNumber()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.GetMerchantContractNumber().create({
    "merchantContractNumber": "example_merchantContractNumber",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `GetMerchantContractNumberEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## GetTemplateXmlEntity

```python
get_template_xml = client.GetTemplateXml()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `templateName` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.GetTemplateXml().create({
    "templateName": "example_templateName",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `GetTemplateXmlEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## IntroduceMandatorEntity

```python
introduce_mandator = client.IntroduceMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.IntroduceMandator().create({
    "mandatorName": "example_mandatorName",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroduceMandatorEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## IntroducePackageEntity

```python
introduce_package = client.IntroducePackage()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalTemplateDescription` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.IntroducePackage().create({
    "terminalTemplateDescription": "example_terminalTemplateDescription",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `IntroducePackageEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## KeepAliveEntity

```python
keep_alive = client.KeepAlive()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `str` | No |  |
| `kaDateTimeFrom` | `str` | No |  |
| `kaDateTimeTo` | `str` | No |  |
| `keepAliveData` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalDateTimeFrom` | `str` | No |  |
| `terminalDateTimeTo` | `str` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.KeepAlive().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `KeepAliveEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## ListTerminalEntity

```python
list_terminal = client.ListTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `list` | No |  |
| `filter` | `dict` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminals` | `list` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.ListTerminal().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `ListTerminalEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## MandatorClearingExportEntity

```python
mandator_clearing_export = client.MandatorClearingExport()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `dict` | No |  |
| `records` | `list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MandatorClearingExport().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```python
mandator_clearing_export_download = client.MandatorClearingExportDownload()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `str` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `str` | Yes | End date for clearing export (inclusive) |
| `fileId` | `str` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `str` | No | Optional filename template for the export file |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `status` | `str` | No | Processing status of the export request |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MandatorClearingExportDownload().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.MandatorClearingExportDownload().load({"id": "mandator_clearing_export_download_id"})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownloadEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```python
mandator_clearing_export_summary = client.MandatorClearingExportSummary()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MandatorClearingExportSummary().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummaryEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```python
merchant_portal_services_api = client.MerchantPortalServicesApi()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `str` | No |  |
| `authorizationCode` | `str` | No |  |
| `cardBrand` | `str` | No |  |
| `clearingAmountFrom` | `str` | No |  |
| `clearingAmountTo` | `str` | No |  |
| `clearingCurrency` | `str` | No |  |
| `clearingStatus` | `str` | No |  |
| `corporateUUID` | `str` | No |  |
| `orderByTransactionDate` | `str` | No |  |
| `pagination` | `dict` | No |  |
| `receiptNumber` | `str` | No |  |
| `referencedTransactionId` | `str` | No |  |
| `retrievalReferenceNumber` | `str` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCodeFrom` | `str` | No |  |
| `tecsengineResponseCodeTo` | `str` | No |  |
| `terminalId` | `int` | No |  |
| `traceNumber` | `str` | No |  |
| `transactionAmountFrom` | `str` | No |  |
| `transactionAmountTo` | `str` | No |  |
| `transactionDateFrom` | `str` | No |  |
| `transactionDateTo` | `str` | No |  |
| `transactionId` | `str` | No |  |
| `transactionType` | `str` | No |  |
| `wallet` | `str` | No | Filter by wallet type. |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MerchantPortalServicesApi().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApiEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## MoveTidEntity

```python
move_tid = client.MoveTid()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `list` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `targetPackageorderuuid` | `str` | No |  |
| `targetProductorderuuid` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MoveTid().create({
    "productorderuuids": [],  # list
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `MoveTidEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## PaymentManualEntity

```python
payment_manual = client.PaymentManual()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `str` | No | Acquirer name parsed from KKG field |
| `amount` | `int` | Yes | Transaction amount in minor units (cents) |
| `authorizationNumber` | `str` | No | Authorization number from the gateway |
| `cardNumber` | `str` | Yes | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `str` | No | Card type parsed from KKG field |
| `currency` | `str` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `str` | No | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `str` | No | Date and time of the transaction |
| `expDate` | `str` | Yes | Card expiry date in MMYY format |
| `merchantId` | `str` | No | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `str` | No | Original transaction ID from gateway |
| `password` | `str` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `str` | No | Response code - 00 for success, otherwise error code |
| `responseMessage` | `str` | No | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `str` | No | Terminal ID used for the transaction |
| `transactionId` | `str` | No | Transaction ID generated by the backend |
| `txtype` | `str` | Yes | Transaction type |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.PaymentManual().create({
    "amount": 1,  # int
    "cardNumber": "example_cardNumber",  # str
    "currency": "example_currency",  # str
    "expDate": "example_expDate",  # str
    "txtype": "example_txtype",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentManualEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## PaymentSredEntity

```python
payment_sred = client.PaymentSred()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `int` | Yes | Transaction amount in minor units (cents) |
| `currency` | `str` | Yes | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `str` | No | Device type that provided the SRED payload |
| `devicePayload` | `str` | Yes | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `str` | No | Card expiry date in MMYY format |
| `mode` | `str` | No | Decryption mode |
| `panMasked` | `str` | No | Masked PAN (first 6 and last 4 digits) |
| `password` | `str` | No | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `str` | No | Device serial number |
| `serviceCode` | `str` | No | Service code from the card |
| `terminalId` | `str` | Yes | Terminal ID - 8 digits |
| `txtype` | `str` | Yes | Transaction type |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.PaymentSred().create({
    "amount": 1,  # int
    "currency": "example_currency",  # str
    "devicePayload": "example_devicePayload",  # str
    "terminalId": "example_terminalId",  # str
    "txtype": "example_txtype",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `PaymentSredEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```python
pre_auth_transaction_completion = client.PreAuthTransactionCompletion()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `str` | No |  |
| `acquirerName` | `str` | No |  |
| `actualBonusPoints` | `str` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `str` | No |  |
| `balanceAmount` | `str` | No |  |
| `cardBrand` | `str` | No |  |
| `cardNumber` | `str` | No |  |
| `cardNumberReference` | `str` | Yes |  |
| `clientId` | `int` | Yes |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `ecData` | `str` | No |  |
| `ecrData` | `str` | No |  |
| `emvData` | `str` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `str` | No |  |
| `languageCode` | `str` | No |  |
| `merchantAddress` | `str` | No |  |
| `merchantName` | `str` | No |  |
| `merchantNumber` | `str` | No |  |
| `messageType` | `str` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `str` | No |  |
| `password` | `str` | No |  |
| `paymentReason` | `str` | No |  |
| `receiptFooter` | `str` | No |  |
| `receiptHeader` | `str` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `serialNumber` | `str` | No |  |
| `svc` | `str` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `str` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionDate` | `str` | No |  |
| `transactionId` | `str` | No |  |
| `transactionType` | `str` | Yes |  |
| `txType` | `str` | No |  |
| `userData` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.PreAuthTransactionCompletion().create({
    "cardNumberReference": "example_cardNumberReference",  # str
    "clientId": 1,  # int
    "currency": "example_currency",  # str
    "receiptNumber": "example_receiptNumber",  # str
    "terminalId": 1,  # int
    "transactionType": "example_transactionType",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletionEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## ReactivateTerminalEntity

```python
reactivate_terminal = client.ReactivateTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `str` | No |  |
| `packageOrderUuid` | `str` | No |  |
| `productOrderUuid` | `str` | No |  |
| `reactivationReason` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.ReactivateTerminal().create({
    "reactivationReason": "example_reactivationReason",  # str
    "terminalId": 1,  # int
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `ReactivateTerminalEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## RefundTransactionEntity

```python
refund_transaction = client.RefundTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `str` | No |  |
| `acquirerName` | `str` | No |  |
| `actualBonusPoints` | `str` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `str` | No |  |
| `balanceAmount` | `str` | No |  |
| `cardBrand` | `str` | No |  |
| `cardNumber` | `str` | No |  |
| `clientId` | `int` | Yes |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `ecData` | `str` | No |  |
| `ecrData` | `str` | No |  |
| `emvData` | `str` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `str` | No |  |
| `languageCode` | `str` | No |  |
| `merchantAddress` | `str` | No |  |
| `merchantName` | `str` | No |  |
| `merchantNumber` | `str` | No |  |
| `messageType` | `str` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `str` | No |  |
| `password` | `str` | No |  |
| `paymentReason` | `str` | No |  |
| `receiptFooter` | `str` | No |  |
| `receiptHeader` | `str` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `serialNumber` | `str` | No |  |
| `svc` | `str` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `str` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionDate` | `str` | No |  |
| `transactionId` | `str` | No |  |
| `txType` | `str` | No |  |
| `userData` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.RefundTransaction().create({
    "clientId": 1,  # int
    "currency": "example_currency",  # str
    "receiptNumber": "example_receiptNumber",  # str
    "terminalId": 1,  # int
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `RefundTransactionEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## RegisterTecsCompanyEntity

```python
register_tecs_company = client.RegisterTecsCompany()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `str` | Yes |  |
| `packageOrderUuid` | `str` | Yes |  |
| `partnerId` | `int` | No |  |
| `partnerName` | `str` | No |  |
| `productOrderUuid` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `templateName` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.RegisterTecsCompany().create({
    "corporateUuid": "example_corporateUuid",  # str
    "packageOrderUuid": "example_packageOrderUuid",  # str
    "productOrderUuid": "example_productOrderUuid",  # str
    "templateName": "example_templateName",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTecsCompanyEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## RegisterTerminalEntity

```python
register_terminal = client.RegisterTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `dict` | No |  |
| `corporateUuid` | `str` | Yes |  |
| `packageOrderUuid` | `str` | Yes |  |
| `productOrderUuid` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `tecsWebSecretKey` | `str` | No |  |
| `templateName` | `str` | Yes |  |
| `terminalCountryCode` | `str` | Yes |  |
| `terminalId` | `int` | No |  |
| `terminalIdAcq` | `str` | No |  |
| `terminalLanguageCode` | `str` | Yes |  |
| `terminalLocation` | `str` | Yes |  |
| `terminalSerialNumber` | `str` | No |  |
| `tokenIOAlias` | `str` | No |  |
| `tokenIOIban` | `str` | No |  |
| `tokenIOMemberId` | `str` | No |  |
| `webShopUrl` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.RegisterTerminal().create({
    "corporateUuid": "example_corporateUuid",  # str
    "packageOrderUuid": "example_packageOrderUuid",  # str
    "productOrderUuid": "example_productOrderUuid",  # str
    "templateName": "example_templateName",  # str
    "terminalCountryCode": "example_terminalCountryCode",  # str
    "terminalLanguageCode": "example_terminalLanguageCode",  # str
    "terminalLocation": "example_terminalLocation",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `RegisterTerminalEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## ReportDataEntity

```python
report_data = client.ReportData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `list` | No |  |
| `clearingDateFrom` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `str` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `str` | Yes |  |
| `currency` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `sumOverCreditTx` | `dict` | No |  |
| `sumOverDebitTx` | `dict` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.ReportData().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
    "corporateId": "example_corporateId",  # str
    "currency": "example_currency",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `ReportDataEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## StatusTransactionEntity

```python
status_transaction = client.StatusTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `str` | No |  |
| `acquirerTerminalId` | `str` | No |  |
| `amount` | `int` | No |  |
| `applicationCryptogram` | `str` | No |  |
| `authorizationCode` | `str | None` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `str` | No |  |
| `cardBrand` | `str` | No |  |
| `cardEntry` | `str` | No |  |
| `cardExpiration` | `str` | No |  |
| `cardNumber` | `str` | No |  |
| `clearingAmount` | `int` | No |  |
| `clearingBatchId` | `str` | No |  |
| `clearingCurrency` | `str` | No |  |
| `clearingDate` | `str` | No |  |
| `clearingProcessedDate` | `str` | No |  |
| `clearingStatus` | `str` | No |  |
| `clientId` | `int` | No |  |
| `currency` | `str` | No |  |
| `cvm` | `str` | No |  |
| `ecrData` | `str` | No |  |
| `emvApplicationId` | `str` | No |  |
| `emvApplicationLabel` | `str` | No |  |
| `merchantName` | `str` | No |  |
| `merchantNumber` | `str` | No |  |
| `originalClientId` | `str` | No |  |
| `originalTerminalId` | `int` | No |  |
| `originalTransactionId` | `str` | No |  |
| `paymentReason` | `str` | No |  |
| `receiptNumber` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseCodeFromAS` | `str` | No |  |
| `responseMessage` | `str` | No |  |
| `retrievalReferenceNumber` | `str` | No |  |
| `serviceCode` | `str` | No |  |
| `settlementStatus` | `str` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCode` | `int` | No |  |
| `tecsengineResponseText` | `str` | No |  |
| `terminalEndOfDayDate` | `str` | No |  |
| `terminalId` | `int` | No |  |
| `terminalLocation` | `str` | No |  |
| `tipAmount` | `int` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionClearingDate` | `str` | No |  |
| `transactionDate` | `str` | No |  |
| `transactionId` | `str` | No |  |
| `transactionSeqNumber` | `int` | No |  |
| `transactionServerDate` | `str` | No |  |
| `transactionSource` | `str` | No |  |
| `transactionType` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.StatusTransaction().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `StatusTransactionEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## StoreTerminalParameterEntity

```python
store_terminal_parameter = client.StoreTerminalParameter()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `dict` | No |  |
| `configVersion` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `serialNumber` | `str` | Yes |  |
| `tidSent` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.StoreTerminalParameter().create({
    "serialNumber": "example_serialNumber",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `StoreTerminalParameterEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## TerminalIdEntity

```python
terminal_id = client.TerminalId()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `list` | Yes |  |
| `duplicateTerminalIds` | `list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `terminals` | `list` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.TerminalId().create({
    "deviceSerialNumber": [],  # list
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TerminalIdEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## TransactionHistoryEntity

```python
transaction_history = client.TransactionHistory()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `str` | No |  |
| `authorizationCode` | `str` | No |  |
| `cardBrand` | `str` | No |  |
| `clearingAmountFrom` | `str` | No |  |
| `clearingAmountTo` | `str` | No |  |
| `clearingCurrency` | `str` | No |  |
| `clearingStatus` | `str` | No |  |
| `corporateUUID` | `str` | No |  |
| `orderByTransactionDate` | `str` | No |  |
| `pagination` | `dict` | No |  |
| `paymentTokenPublicId` | `str` | No |  |
| `receiptNumber` | `str` | No |  |
| `referencedTransactionId` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `retrievalReferenceNumber` | `str` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCodeFrom` | `str` | No |  |
| `tecsengineResponseCodeTo` | `str` | No |  |
| `terminalId` | `int` | No |  |
| `traceNumber` | `str` | No |  |
| `transactionAmountFrom` | `str` | No |  |
| `transactionAmountTo` | `str` | No |  |
| `transactionDateFrom` | `str` | No |  |
| `transactionDateTo` | `str` | No |  |
| `transactionHistories` | `list` | No |  |
| `transactionId` | `str` | No |  |
| `transactionType` | `str` | No |  |
| `wallet` | `str` | No | Filter by wallet type. |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.TransactionHistory().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionHistoryEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## TransactionsCountEntity

```python
transactions_count = client.TransactionsCount()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `transactionDateFrom` | `str` | No |  |
| `transactionDateTo` | `str` | No |  |
| `transactionsCount` | `list` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.TransactionsCount().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```python
transactions_count_card_brand = client.TransactionsCountCardBrand()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `transactionDateFrom` | `str` | No |  |
| `transactionDateTo` | `str` | No |  |
| `transactionsCount` | `list` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.TransactionsCountCardBrand().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrandEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## TransactionsTurnoverEntity

```python
transactions_turnover = client.TransactionsTurnover()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `transactionDateFrom` | `str` | No |  |
| `transactionDateTo` | `str` | No |  |
| `turnovers` | `list` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.TransactionsTurnover().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `TransactionsTurnoverEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## UpdateMerchantEntity

```python
update_merchant = client.UpdateMerchant()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `str` | No |  |
| `corporateUuid` | `str` | Yes |  |
| `country` | `str` | No |  |
| `merchantCategoryCode` | `str` | No |  |
| `name` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `state` | `str` | No |  |
| `street` | `str` | No |  |
| `vuNummer` | `str` | No |  |
| `zipcode` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.UpdateMerchant().create({
    "corporateUuid": "example_corporateUuid",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateMerchantEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## UpdateTemplateXmlEntity

```python
update_template_xml = client.UpdateTemplateXml()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `templateName` | `str` | Yes |  |
| `templateXml` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.UpdateTemplateXml().create({
    "templateName": "example_templateName",  # str
    "templateXml": "example_templateXml",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `UpdateTemplateXmlEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## VersionEntity

```python
version = client.Version()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `str` | No |  |
| `buildDate` | `str` | No |  |
| `version` | `str` | No |  |

### Operations

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.Version().load()
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `VersionEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```python
client = BluefinTecsMerchantServicesSDK({
    "feature": {
        "test": {"active": True},
    },
})
```

