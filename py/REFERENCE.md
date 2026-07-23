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
| `acquirer_id` | `str` | No |  |
| `acquirer_name` | `str` | No |  |
| `actual_bonus_point` | `str` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `str` | No |  |
| `balance_amount` | `str` | No |  |
| `card_brand` | `str` | No |  |
| `card_number` | `str` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `ec_data` | `str` | No |  |
| `ecr_data` | `str` | No |  |
| `emv_data` | `str` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `str` | No |  |
| `language_code` | `str` | No |  |
| `merchant_address` | `str` | No |  |
| `merchant_name` | `str` | No |  |
| `merchant_number` | `str` | No |  |
| `message_type` | `str` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `str` | No |  |
| `password` | `str` | No |  |
| `payment_reason` | `str` | No |  |
| `receipt_footer` | `str` | No |  |
| `receipt_header` | `str` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `serial_number` | `str` | No |  |
| `svc` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `str` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `tx_type` | `str` | No |  |
| `user_data` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.CancelTransaction().create({
    "client_id": 1,  # int
    "currency": "example_currency",  # str
    "receipt_number": "example_receipt_number",  # str
    "terminal_id": 1,  # int
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
| `card_no` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `acquirer_id` | `int` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `template_name` | `str` | Yes |  |
| `template_type` | `str` | Yes |  |
| `template_xml` | `str` | Yes |  |
| `terminal_type` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.CreateProduct().create({
    "template_name": "example_template_name",  # str
    "template_type": "example_template_type",  # str
    "template_xml": "example_template_xml",  # str
    "terminal_type": "example_terminal_type",  # str
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
| `corporate_uuid` | `str` | No |  |
| `deactivation_reason` | `str` | Yes |  |
| `package_order_uuid` | `str` | No |  |
| `product_order_uuid` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.DeactivateTerminal().create({
    "deactivation_reason": "example_deactivation_reason",  # str
    "terminal_id": 1,  # int
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
| `clearing_date_from` | `str` | Yes |  |
| `clearing_date_to` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `tx_count` | `int` | No |  |
| `tx_id_end` | `str` | No |  |
| `tx_id_start` | `str` | No |  |
| `tx_seq_no_end` | `int` | No |  |
| `tx_seq_no_start` | `int` | No |  |
| `tx_total` | `int` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.DigitalServicesApi().create({
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
| `ecom_data` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `str` | Yes |  |
| `transaction_type` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EcDataEcom().create({
    "terminal_id": 1,  # int
    "transaction_id": "example_transaction_id",  # str
    "transaction_type": "example_transaction_type",  # str
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
| `ecom_pass` | `str` | No |  |
| `ecom_skey` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EcomParameter().create({
    "terminal_id": 1,  # int
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
| `ecr_data` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `str` | Yes |  |
| `transaction_type` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EcrData().create({
    "terminal_id": 1,  # int
    "transaction_id": "example_transaction_id",  # str
    "transaction_type": "example_transaction_type",  # str
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
| `emv_data` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `str` | Yes |  |
| `transaction_type` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EmvData().create({
    "terminal_id": 1,  # int
    "transaction_id": "example_transaction_id",  # str
    "transaction_type": "example_transaction_type",  # str
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
| `account_no` | `int` | No |  |
| `additional_data` | `dict` | No |  |
| `corporate_uuid` | `str` | Yes |  |
| `currency` | `str` | Yes |  |
| `merchant_category_code` | `int` | Yes |  |
| `package_order_uuid` | `str` | Yes |  |
| `product_order_uuid` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `sorting_code` | `int` | No |  |
| `template_name` | `str` | Yes |  |
| `terminal_id` | `list` | No |  |
| `terminal_id_acq` | `str` | No |  |
| `vu_nummer` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.EnableAcquiring().create({
    "corporate_uuid": "example_corporate_uuid",  # str
    "currency": "example_currency",  # str
    "merchant_category_code": 1,  # int
    "package_order_uuid": "example_package_order_uuid",  # str
    "product_order_uuid": "example_product_order_uuid",  # str
    "template_name": "example_template_name",  # str
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
| `merchant_contract_number` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.GetMerchantContractNumber().create({
    "merchant_contract_number": "example_merchant_contract_number",  # str
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `template_name` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.GetTemplateXml().create({
    "template_name": "example_template_name",  # str
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
| `mandator_name` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.IntroduceMandator().create({
    "mandator_name": "example_mandator_name",  # str
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_template_description` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.IntroducePackage().create({
    "terminal_template_description": "example_terminal_template_description",  # str
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
| `ka_date_time_from` | `str` | No |  |
| `ka_date_time_to` | `str` | No |  |
| `keep_alive_data` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_date_time_from` | `str` | No |  |
| `terminal_date_time_to` | `str` | No |  |
| `terminal_id` | `int` | No |  |

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
| `corporate_uuid` | `list` | No |  |
| `filter` | `dict` | No |  |
| `pagination` | `dict` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal` | `list` | No |  |

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
| `clearing_date_from` | `str` | Yes |  |
| `clearing_date_to` | `str` | Yes |  |
| `pagination` | `dict` | No |  |
| `record` | `list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MandatorClearingExport().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
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
| `clearing_date_from` | `str` | Yes |  |
| `clearing_date_to` | `str` | Yes |  |
| `file_id` | `str` | No |  |
| `filename_template` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `status` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MandatorClearingExportDownload().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
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
| `clearing_date_from` | `str` | Yes |  |
| `clearing_date_to` | `str` | Yes |  |
| `record` | `list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MandatorClearingExportSummary().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
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
| `3_d_secure` | `str` | No |  |
| `authorization_code` | `str` | No |  |
| `card_brand` | `str` | No |  |
| `clearing_amount_from` | `str` | No |  |
| `clearing_amount_to` | `str` | No |  |
| `clearing_currency` | `str` | No |  |
| `clearing_status` | `str` | No |  |
| `corporate_uuid` | `str` | No |  |
| `order_by_transaction_date` | `str` | No |  |
| `pagination` | `dict` | No |  |
| `receipt_number` | `str` | No |  |
| `referenced_transaction_id` | `str` | No |  |
| `retrieval_reference_number` | `str` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `str` | No |  |
| `tecsengine_response_code_to` | `str` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `str` | No |  |
| `transaction_amount_from` | `str` | No |  |
| `transaction_amount_to` | `str` | No |  |
| `transaction_date_from` | `str` | No |  |
| `transaction_date_to` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `transaction_type` | `str` | No |  |
| `wallet` | `str` | No |  |

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
| `productorderuuid` | `list` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `target_packageorderuuid` | `str` | No |  |
| `target_productorderuuid` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.MoveTid().create({
    "productorderuuid": [],  # list
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
| `acquirer_name` | `str` | No |  |
| `amount` | `int` | Yes |  |
| `authorization_number` | `str` | No |  |
| `card_number` | `str` | Yes |  |
| `card_type` | `str` | No |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `date_time_tx` | `str` | No |  |
| `exp_date` | `str` | Yes |  |
| `merchant_id` | `str` | No |  |
| `original_transaction_id` | `str` | No |  |
| `password` | `str` | No |  |
| `response_code` | `str` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `txtype` | `str` | Yes |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.PaymentManual().create({
    "amount": 1,  # int
    "card_number": "example_card_number",  # str
    "currency": "example_currency",  # str
    "exp_date": "example_exp_date",  # str
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
| `acquirer_name` | `str` | No |  |
| `amount` | `int` | Yes |  |
| `authorization_number` | `str` | No |  |
| `card_type` | `str` | No |  |
| `currency` | `str` | Yes |  |
| `date_time_tx` | `str` | No |  |
| `device_payload` | `str` | Yes |  |
| `merchant_id` | `str` | No |  |
| `original_transaction_id` | `str` | No |  |
| `password` | `str` | No |  |
| `response_code` | `str` | No |  |
| `response_message` | `str` | No |  |
| `sred` | `dict` | No |  |
| `terminal_id` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `txtype` | `str` | Yes |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.PaymentSred().create({
    "amount": 1,  # int
    "currency": "example_currency",  # str
    "device_payload": "example_device_payload",  # str
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
| `acquirer_id` | `str` | No |  |
| `acquirer_name` | `str` | No |  |
| `actual_bonus_point` | `str` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `str` | No |  |
| `balance_amount` | `str` | No |  |
| `card_brand` | `str` | No |  |
| `card_number` | `str` | No |  |
| `card_number_reference` | `str` | Yes |  |
| `client_id` | `int` | Yes |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `ec_data` | `str` | No |  |
| `ecr_data` | `str` | No |  |
| `emv_data` | `str` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `str` | No |  |
| `language_code` | `str` | No |  |
| `merchant_address` | `str` | No |  |
| `merchant_name` | `str` | No |  |
| `merchant_number` | `str` | No |  |
| `message_type` | `str` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `str` | No |  |
| `password` | `str` | No |  |
| `payment_reason` | `str` | No |  |
| `receipt_footer` | `str` | No |  |
| `receipt_header` | `str` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `serial_number` | `str` | No |  |
| `svc` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `str` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `transaction_type` | `str` | Yes |  |
| `tx_type` | `str` | No |  |
| `user_data` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.PreAuthTransactionCompletion().create({
    "card_number_reference": "example_card_number_reference",  # str
    "client_id": 1,  # int
    "currency": "example_currency",  # str
    "receipt_number": "example_receipt_number",  # str
    "terminal_id": 1,  # int
    "transaction_type": "example_transaction_type",  # str
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
| `corporate_uuid` | `str` | No |  |
| `package_order_uuid` | `str` | No |  |
| `product_order_uuid` | `str` | No |  |
| `reactivation_reason` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.ReactivateTerminal().create({
    "reactivation_reason": "example_reactivation_reason",  # str
    "terminal_id": 1,  # int
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
| `acquirer_id` | `str` | No |  |
| `acquirer_name` | `str` | No |  |
| `actual_bonus_point` | `str` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `str` | No |  |
| `balance_amount` | `str` | No |  |
| `card_brand` | `str` | No |  |
| `card_number` | `str` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `str` | Yes |  |
| `cvc` | `str` | No |  |
| `ec_data` | `str` | No |  |
| `ecr_data` | `str` | No |  |
| `emv_data` | `str` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `str` | No |  |
| `language_code` | `str` | No |  |
| `merchant_address` | `str` | No |  |
| `merchant_name` | `str` | No |  |
| `merchant_number` | `str` | No |  |
| `message_type` | `str` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `str` | No |  |
| `password` | `str` | No |  |
| `payment_reason` | `str` | No |  |
| `receipt_footer` | `str` | No |  |
| `receipt_header` | `str` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `serial_number` | `str` | No |  |
| `svc` | `str` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `str` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `tx_type` | `str` | No |  |
| `user_data` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.RefundTransaction().create({
    "client_id": 1,  # int
    "currency": "example_currency",  # str
    "receipt_number": "example_receipt_number",  # str
    "terminal_id": 1,  # int
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
| `corporate_uuid` | `str` | Yes |  |
| `package_order_uuid` | `str` | Yes |  |
| `partner_id` | `int` | No |  |
| `partner_name` | `str` | No |  |
| `product_order_uuid` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `template_name` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.RegisterTecsCompany().create({
    "corporate_uuid": "example_corporate_uuid",  # str
    "package_order_uuid": "example_package_order_uuid",  # str
    "product_order_uuid": "example_product_order_uuid",  # str
    "template_name": "example_template_name",  # str
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
| `additional_data` | `dict` | No |  |
| `corporate_uuid` | `str` | Yes |  |
| `package_order_uuid` | `str` | Yes |  |
| `product_order_uuid` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `tecs_web_secret_key` | `str` | No |  |
| `template_name` | `str` | Yes |  |
| `terminal_country_code` | `str` | Yes |  |
| `terminal_id` | `int` | No |  |
| `terminal_id_acq` | `str` | No |  |
| `terminal_language_code` | `str` | Yes |  |
| `terminal_location` | `str` | Yes |  |
| `terminal_serial_number` | `str` | No |  |
| `token_io_alia` | `str` | No |  |
| `token_io_iban` | `str` | No |  |
| `token_io_member_id` | `str` | No |  |
| `web_shop_url` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.RegisterTerminal().create({
    "corporate_uuid": "example_corporate_uuid",  # str
    "package_order_uuid": "example_package_order_uuid",  # str
    "product_order_uuid": "example_product_order_uuid",  # str
    "template_name": "example_template_name",  # str
    "terminal_country_code": "example_terminal_country_code",  # str
    "terminal_language_code": "example_terminal_language_code",  # str
    "terminal_location": "example_terminal_location",  # str
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
| `card_brand_report_data` | `list` | No |  |
| `clearing_date_from` | `str` | Yes |  |
| `clearing_date_to` | `str` | Yes |  |
| `corporate_id` | `str` | Yes |  |
| `currency` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `sum_over_credit_tx` | `dict` | No |  |
| `sum_over_debit_tx` | `dict` | No |  |
| `terminal_id` | `int` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.ReportData().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
    "corporate_id": "example_corporate_id",  # str
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
| `acquirer_name` | `str` | No |  |
| `acquirer_terminal_id` | `str` | No |  |
| `amount` | `int` | No |  |
| `application_cryptogram` | `str` | No |  |
| `authorization_code` | `str | None` | No |  |
| `authorization_date` | `str` | No |  |
| `card_brand` | `str` | No |  |
| `card_entry` | `str` | No |  |
| `card_expiration` | `str` | No |  |
| `card_number` | `str` | No |  |
| `clearing_amount` | `int` | No |  |
| `clearing_batch_id` | `str` | No |  |
| `clearing_currency` | `str` | No |  |
| `clearing_date` | `str` | No |  |
| `clearing_processed_date` | `str` | No |  |
| `clearing_status` | `str` | No |  |
| `client_id` | `int` | No |  |
| `currency` | `str` | No |  |
| `cvm` | `str` | No |  |
| `ecr_data` | `str` | No |  |
| `emv_application_id` | `str` | No |  |
| `emv_application_label` | `str` | No |  |
| `merchant_name` | `str` | No |  |
| `merchant_number` | `str` | No |  |
| `original_client_id` | `str` | No |  |
| `original_terminal_id` | `int` | No |  |
| `original_transaction_id` | `str` | No |  |
| `payment_reason` | `str` | No |  |
| `receipt_number` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_code_from_a` | `str` | No |  |
| `response_message` | `str` | No |  |
| `retrieval_reference_number` | `str` | No |  |
| `service_code` | `str` | No |  |
| `settlement_status` | `str` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code` | `int` | No |  |
| `tecsengine_response_text` | `str` | No |  |
| `terminal_end_of_day_date` | `str` | No |  |
| `terminal_id` | `int` | No |  |
| `terminal_location` | `str` | No |  |
| `tip_amount` | `int` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_clearing_date` | `str` | No |  |
| `transaction_date` | `str` | No |  |
| `transaction_id` | `str` | No |  |
| `transaction_seq_number` | `int` | No |  |
| `transaction_server_date` | `str` | No |  |
| `transaction_source` | `str` | No |  |
| `transaction_type` | `str` | No |  |

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
| `acq_tab_nexo` | `dict` | No |  |
| `config_version` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `serial_number` | `str` | Yes |  |
| `tid_sent` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.StoreTerminalParameter().create({
    "serial_number": "example_serial_number",  # str
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
| `device_serial_number` | `list` | Yes |  |
| `duplicate_terminal_id` | `list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `terminal` | `list` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.TerminalId().create({
    "device_serial_number": [],  # list
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
| `3_d_secure` | `str` | No |  |
| `authorization_code` | `str` | No |  |
| `card_brand` | `str` | No |  |
| `clearing_amount_from` | `str` | No |  |
| `clearing_amount_to` | `str` | No |  |
| `clearing_currency` | `str` | No |  |
| `clearing_status` | `str` | No |  |
| `corporate_uuid` | `str` | No |  |
| `order_by_transaction_date` | `str` | No |  |
| `pagination` | `dict` | No |  |
| `payment_token_public_id` | `str` | No |  |
| `receipt_number` | `str` | No |  |
| `referenced_transaction_id` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `retrieval_reference_number` | `str` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `str` | No |  |
| `tecsengine_response_code_to` | `str` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `str` | No |  |
| `transaction_amount_from` | `str` | No |  |
| `transaction_amount_to` | `str` | No |  |
| `transaction_date_from` | `str` | No |  |
| `transaction_date_to` | `str` | No |  |
| `transaction_history` | `list` | No |  |
| `transaction_id` | `str` | No |  |
| `transaction_type` | `str` | No |  |
| `wallet` | `str` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `transaction_date_from` | `str` | No |  |
| `transaction_date_to` | `str` | No |  |
| `transactions_count` | `list` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `transaction_date_from` | `str` | No |  |
| `transaction_date_to` | `str` | No |  |
| `transactions_count` | `list` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `transaction_date_from` | `str` | No |  |
| `transaction_date_to` | `str` | No |  |
| `turnover` | `list` | No |  |

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
| `corporate_uuid` | `str` | Yes |  |
| `country` | `str` | No |  |
| `merchant_category_code` | `str` | No |  |
| `name` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `state` | `str` | No |  |
| `street` | `str` | No |  |
| `vu_nummer` | `str` | No |  |
| `zipcode` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.UpdateMerchant().create({
    "corporate_uuid": "example_corporate_uuid",  # str
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `template_name` | `str` | Yes |  |
| `template_xml` | `str` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.UpdateTemplateXml().create({
    "template_name": "example_template_name",  # str
    "template_xml": "example_template_xml",  # str
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
| `app_name` | `str` | No |  |
| `build_date` | `str` | No |  |
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

