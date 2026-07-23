# BluefinTecsMerchantServices JavaScript SDK Reference

Complete API reference for the BluefinTecsMerchantServices JavaScript SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```ts
new BluefinTecsMerchantServicesSDK(options?: object)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `object` | SDK configuration options. |
| `options.apikey` | `string` | API key for authentication. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `object` | Custom headers for all requests. |
| `options.feature` | `object` | Feature configuration. |
| `options.system` | `object` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.test(testopts?, sdkopts?)`

Create a test client with mock features active.

```ts
const client = BluefinTecsMerchantServicesSDK.test()
```

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `testopts` | `object` | Test feature options. |
| `sdkopts` | `object` | Additional SDK options merged with test defaults. |

**Returns:** `BluefinTecsMerchantServicesSDK` instance in test mode.


### Instance Methods

#### `CancelTransaction(data?: object)`

Create a new `CancelTransaction` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `CancelTransactionEntity` instance.

#### `CheckCardBlackListed(data?: object)`

Create a new `CheckCardBlackListed` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `CheckCardBlackListedEntity` instance.

#### `CreateProduct(data?: object)`

Create a new `CreateProduct` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `CreateProductEntity` instance.

#### `DeactivateTerminal(data?: object)`

Create a new `DeactivateTerminal` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `DeactivateTerminalEntity` instance.

#### `DigitalServicesApi(data?: object)`

Create a new `DigitalServicesApi` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `DigitalServicesApiEntity` instance.

#### `EcDataEcom(data?: object)`

Create a new `EcDataEcom` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EcDataEcomEntity` instance.

#### `EcomParameter(data?: object)`

Create a new `EcomParameter` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EcomParameterEntity` instance.

#### `EcrData(data?: object)`

Create a new `EcrData` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EcrDataEntity` instance.

#### `EmvData(data?: object)`

Create a new `EmvData` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EmvDataEntity` instance.

#### `EnableAcquiring(data?: object)`

Create a new `EnableAcquiring` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EnableAcquiringEntity` instance.

#### `GetMerchantContractNumber(data?: object)`

Create a new `GetMerchantContractNumber` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `GetMerchantContractNumberEntity` instance.

#### `GetTemplateXml(data?: object)`

Create a new `GetTemplateXml` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `GetTemplateXmlEntity` instance.

#### `IntroduceMandator(data?: object)`

Create a new `IntroduceMandator` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `IntroduceMandatorEntity` instance.

#### `IntroducePackage(data?: object)`

Create a new `IntroducePackage` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `IntroducePackageEntity` instance.

#### `KeepAlive(data?: object)`

Create a new `KeepAlive` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `KeepAliveEntity` instance.

#### `ListTerminal(data?: object)`

Create a new `ListTerminal` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `ListTerminalEntity` instance.

#### `MandatorClearingExport(data?: object)`

Create a new `MandatorClearingExport` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `MandatorClearingExportEntity` instance.

#### `MandatorClearingExportDownload(data?: object)`

Create a new `MandatorClearingExportDownload` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `MandatorClearingExportDownloadEntity` instance.

#### `MandatorClearingExportSummary(data?: object)`

Create a new `MandatorClearingExportSummary` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `MandatorClearingExportSummaryEntity` instance.

#### `MerchantPortalServicesApi(data?: object)`

Create a new `MerchantPortalServicesApi` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `MerchantPortalServicesApiEntity` instance.

#### `MoveTid(data?: object)`

Create a new `MoveTid` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `MoveTidEntity` instance.

#### `PaymentManual(data?: object)`

Create a new `PaymentManual` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `PaymentManualEntity` instance.

#### `PaymentSred(data?: object)`

Create a new `PaymentSred` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `PaymentSredEntity` instance.

#### `PreAuthTransactionCompletion(data?: object)`

Create a new `PreAuthTransactionCompletion` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `PreAuthTransactionCompletionEntity` instance.

#### `ReactivateTerminal(data?: object)`

Create a new `ReactivateTerminal` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `ReactivateTerminalEntity` instance.

#### `RefundTransaction(data?: object)`

Create a new `RefundTransaction` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `RefundTransactionEntity` instance.

#### `RegisterTecsCompany(data?: object)`

Create a new `RegisterTecsCompany` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `RegisterTecsCompanyEntity` instance.

#### `RegisterTerminal(data?: object)`

Create a new `RegisterTerminal` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `RegisterTerminalEntity` instance.

#### `ReportData(data?: object)`

Create a new `ReportData` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `ReportDataEntity` instance.

#### `StatusTransaction(data?: object)`

Create a new `StatusTransaction` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `StatusTransactionEntity` instance.

#### `StoreTerminalParameter(data?: object)`

Create a new `StoreTerminalParameter` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `StoreTerminalParameterEntity` instance.

#### `TerminalId(data?: object)`

Create a new `TerminalId` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `TerminalIdEntity` instance.

#### `TransactionHistory(data?: object)`

Create a new `TransactionHistory` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `TransactionHistoryEntity` instance.

#### `TransactionsCount(data?: object)`

Create a new `TransactionsCount` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `TransactionsCountEntity` instance.

#### `TransactionsCountCardBrand(data?: object)`

Create a new `TransactionsCountCardBrand` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `TransactionsCountCardBrandEntity` instance.

#### `TransactionsTurnover(data?: object)`

Create a new `TransactionsTurnover` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `TransactionsTurnoverEntity` instance.

#### `UpdateMerchant(data?: object)`

Create a new `UpdateMerchant` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `UpdateMerchantEntity` instance.

#### `UpdateTemplateXml(data?: object)`

Create a new `UpdateTemplateXml` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `UpdateTemplateXmlEntity` instance.

#### `Version(data?: object)`

Create a new `Version` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `VersionEntity` instance.

#### `options()`

Return a deep copy of the current SDK options.

**Returns:** `object`

#### `utility()`

Return a copy of the SDK utility object.

**Returns:** `object`

#### `direct(fetchargs?: object)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `GET`). |
| `fetchargs.params` | `object` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `object` | Query string parameters. |
| `fetchargs.headers` | `object` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (objects are JSON-serialized). |
| `fetchargs.ctrl` | `object` | Control options (e.g. `{ explain: true }`). |

**Returns:** `Promise<{ ok, status, headers, data } | Error>`

#### `prepare(fetchargs?: object)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `Promise<{ url, method, headers, body } | Error>`

#### `tester(testopts?, sdkopts?)`

Alias for `BluefinTecsMerchantServicesSDK.test()`.

**Returns:** `BluefinTecsMerchantServicesSDK` instance in test mode.


---

## CancelTransactionEntity

```ts
const cancel_transaction = client.CancelTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `number` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `number` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `number` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `number` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `number` | No |  |
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.CancelTransaction().create({
  client_id: 1,
  currency: 'example_currency',
  receipt_number: 'example_receipt_number',
  terminal_id: 1,
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `CancelTransactionEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## CheckCardBlackListedEntity

```ts
const check_card_black_listed = client.CheckCardBlackListed()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.CheckCardBlackListed().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `CheckCardBlackListedEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## CreateProductEntity

```ts
const create_product = client.CreateProduct()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `number` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_type` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |
| `terminal_type` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.CreateProduct().create({
  template_name: 'example_template_name',
  template_type: 'example_template_type',
  template_xml: 'example_template_xml',
  terminal_type: 'example_terminal_type',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `CreateProductEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## DeactivateTerminalEntity

```ts
const deactivate_terminal = client.DeactivateTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `deactivation_reason` | `string` | Yes |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.DeactivateTerminal().create({
  deactivation_reason: 'example_deactivation_reason',
  terminal_id: 1,
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `DeactivateTerminalEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## DigitalServicesApiEntity

```ts
const digital_services_api = client.DigitalServicesApi()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `tx_count` | `number` | No |  |
| `tx_id_end` | `string` | No |  |
| `tx_id_start` | `string` | No |  |
| `tx_seq_no_end` | `number` | No |  |
| `tx_seq_no_start` | `number` | No |  |
| `tx_total` | `number` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.DigitalServicesApi().create({
})
```

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.DigitalServicesApi().load()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `DigitalServicesApiEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## EcDataEcomEntity

```ts
const ec_data_ecom = client.EcDataEcom()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EcDataEcom().create({
  terminal_id: 1,
  transaction_id: 'example_transaction_id',
  transaction_type: 'example_transaction_type',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EcDataEcomEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## EcomParameterEntity

```ts
const ecom_parameter = client.EcomParameter()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `string` | No |  |
| `ecom_skey` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EcomParameter().create({
  terminal_id: 1,
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EcomParameterEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## EcrDataEntity

```ts
const ecr_data = client.EcrData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EcrData().create({
  terminal_id: 1,
  transaction_id: 'example_transaction_id',
  transaction_type: 'example_transaction_type',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EcrDataEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## EmvDataEntity

```ts
const emv_data = client.EmvData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EmvData().create({
  terminal_id: 1,
  transaction_id: 'example_transaction_id',
  transaction_type: 'example_transaction_type',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EmvDataEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## EnableAcquiringEntity

```ts
const enable_acquiring = client.EnableAcquiring()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `number` | No |  |
| `additional_data` | `Object` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchant_category_code` | `number` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `sorting_code` | `number` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_id` | `Array` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `vu_nummer` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EnableAcquiring().create({
  corporate_uuid: 'example_corporate_uuid',
  currency: 'example_currency',
  merchant_category_code: 1,
  package_order_uuid: 'example_package_order_uuid',
  product_order_uuid: 'example_product_order_uuid',
  template_name: 'example_template_name',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EnableAcquiringEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## GetMerchantContractNumberEntity

```ts
const get_merchant_contract_number = client.GetMerchantContractNumber()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.GetMerchantContractNumber().create({
  merchant_contract_number: 'example_merchant_contract_number',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `GetMerchantContractNumberEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## GetTemplateXmlEntity

```ts
const get_template_xml = client.GetTemplateXml()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.GetTemplateXml().create({
  template_name: 'example_template_name',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `GetTemplateXmlEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## IntroduceMandatorEntity

```ts
const introduce_mandator = client.IntroduceMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.IntroduceMandator().create({
  mandator_name: 'example_mandator_name',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `IntroduceMandatorEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## IntroducePackageEntity

```ts
const introduce_package = client.IntroducePackage()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_template_description` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.IntroducePackage().create({
  terminal_template_description: 'example_terminal_template_description',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `IntroducePackageEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## KeepAliveEntity

```ts
const keep_alive = client.KeepAlive()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `ka_date_time_from` | `string` | No |  |
| `ka_date_time_to` | `string` | No |  |
| `keep_alive_data` | `Array` | No |  |
| `pagination` | `Object` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_date_time_from` | `string` | No |  |
| `terminal_date_time_to` | `string` | No |  |
| `terminal_id` | `number` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.KeepAlive().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `KeepAliveEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## ListTerminalEntity

```ts
const list_terminal = client.ListTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `Array` | No |  |
| `filter` | `Object` | No |  |
| `pagination` | `Object` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `Array` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.ListTerminal().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `ListTerminalEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## MandatorClearingExportEntity

```ts
const mandator_clearing_export = client.MandatorClearingExport()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `pagination` | `Object` | No |  |
| `record` | `Array` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MandatorClearingExport().create({
  clearing_date_from: 'example_clearing_date_from',
  clearing_date_to: 'example_clearing_date_to',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `MandatorClearingExportEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## MandatorClearingExportDownloadEntity

```ts
const mandator_clearing_export_download = client.MandatorClearingExportDownload()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `file_id` | `string` | No |  |
| `filename_template` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MandatorClearingExportDownload().create({
  clearing_date_from: 'example_clearing_date_from',
  clearing_date_to: 'example_clearing_date_to',
})
```

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.MandatorClearingExportDownload().load({ id: 'mandator_clearing_export_download_id' })
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `MandatorClearingExportDownloadEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## MandatorClearingExportSummaryEntity

```ts
const mandator_clearing_export_summary = client.MandatorClearingExportSummary()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `record` | `Array` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MandatorClearingExportSummary().create({
  clearing_date_from: 'example_clearing_date_from',
  clearing_date_to: 'example_clearing_date_to',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `MandatorClearingExportSummaryEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## MerchantPortalServicesApiEntity

```ts
const merchant_portal_services_api = client.MerchantPortalServicesApi()
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
| `pagination` | `Object` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `number` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `number` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MerchantPortalServicesApi().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `MerchantPortalServicesApiEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## MoveTidEntity

```ts
const move_tid = client.MoveTid()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `Array` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `target_packageorderuuid` | `string` | No |  |
| `target_productorderuuid` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MoveTid().create({
  productorderuuid: [],
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `MoveTidEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## PaymentManualEntity

```ts
const payment_manual = client.PaymentManual()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `number` | Yes |  |
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.PaymentManual().create({
  amount: 1,
  card_number: 'example_card_number',
  currency: 'example_currency',
  exp_date: 'example_exp_date',
  txtype: 'example_txtype',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `PaymentManualEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## PaymentSredEntity

```ts
const payment_sred = client.PaymentSred()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `number` | Yes |  |
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
| `sred` | `Object` | No |  |
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.PaymentSred().create({
  amount: 1,
  currency: 'example_currency',
  device_payload: 'example_device_payload',
  txtype: 'example_txtype',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `PaymentSredEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## PreAuthTransactionCompletionEntity

```ts
const pre_auth_transaction_completion = client.PreAuthTransactionCompletion()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `number` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `card_number_reference` | `string` | Yes |  |
| `client_id` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `number` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `number` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `number` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `number` | No |  |
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.PreAuthTransactionCompletion().create({
  card_number_reference: 'example_card_number_reference',
  client_id: 1,
  currency: 'example_currency',
  receipt_number: 'example_receipt_number',
  terminal_id: 1,
  transaction_type: 'example_transaction_type',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `PreAuthTransactionCompletionEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## ReactivateTerminalEntity

```ts
const reactivate_terminal = client.ReactivateTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `reactivation_reason` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.ReactivateTerminal().create({
  reactivation_reason: 'example_reactivation_reason',
  terminal_id: 1,
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `ReactivateTerminalEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## RefundTransactionEntity

```ts
const refund_transaction = client.RefundTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `number` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `number` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `number` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `number` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `number` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `number` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `number` | No |  |
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.RefundTransaction().create({
  client_id: 1,
  currency: 'example_currency',
  receipt_number: 'example_receipt_number',
  terminal_id: 1,
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `RefundTransactionEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## RegisterTecsCompanyEntity

```ts
const register_tecs_company = client.RegisterTecsCompany()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `partner_id` | `number` | No |  |
| `partner_name` | `string` | No |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.RegisterTecsCompany().create({
  corporate_uuid: 'example_corporate_uuid',
  package_order_uuid: 'example_package_order_uuid',
  product_order_uuid: 'example_product_order_uuid',
  template_name: 'example_template_name',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `RegisterTecsCompanyEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## RegisterTerminalEntity

```ts
const register_terminal = client.RegisterTerminal()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `Object` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `tecs_web_secret_key` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_country_code` | `string` | Yes |  |
| `terminal_id` | `number` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `terminal_language_code` | `string` | Yes |  |
| `terminal_location` | `string` | Yes |  |
| `terminal_serial_number` | `string` | No |  |
| `token_io_alia` | `string` | No |  |
| `token_io_iban` | `string` | No |  |
| `token_io_member_id` | `string` | No |  |
| `web_shop_url` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.RegisterTerminal().create({
  corporate_uuid: 'example_corporate_uuid',
  package_order_uuid: 'example_package_order_uuid',
  product_order_uuid: 'example_product_order_uuid',
  template_name: 'example_template_name',
  terminal_country_code: 'example_terminal_country_code',
  terminal_language_code: 'example_terminal_language_code',
  terminal_location: 'example_terminal_location',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `RegisterTerminalEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## ReportDataEntity

```ts
const report_data = client.ReportData()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `Array` | No |  |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `corporate_id` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `sum_over_credit_tx` | `Object` | No |  |
| `sum_over_debit_tx` | `Object` | No |  |
| `terminal_id` | `number` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.ReportData().create({
  clearing_date_from: 'example_clearing_date_from',
  clearing_date_to: 'example_clearing_date_to',
  corporate_id: 'example_corporate_id',
  currency: 'example_currency',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `ReportDataEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## StatusTransactionEntity

```ts
const status_transaction = client.StatusTransaction()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `acquirer_terminal_id` | `string` | No |  |
| `amount` | `number` | No |  |
| `application_cryptogram` | `string` | No |  |
| `authorization_code` | `string|null` | No |  |
| `authorization_date` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_entry` | `string` | No |  |
| `card_expiration` | `string` | No |  |
| `card_number` | `string` | No |  |
| `clearing_amount` | `number` | No |  |
| `clearing_batch_id` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_date` | `string` | No |  |
| `clearing_processed_date` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `client_id` | `number` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_application_id` | `string` | No |  |
| `emv_application_label` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `original_client_id` | `string` | No |  |
| `original_terminal_id` | `number` | No |  |
| `original_transaction_id` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_code_from_a` | `string` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `service_code` | `string` | No |  |
| `settlement_status` | `string` | No |  |
| `source_id` | `number` | No |  |
| `tecsengine_response_code` | `number` | No |  |
| `tecsengine_response_text` | `string` | No |  |
| `terminal_end_of_day_date` | `string` | No |  |
| `terminal_id` | `number` | No |  |
| `terminal_location` | `string` | No |  |
| `tip_amount` | `number` | No |  |
| `trace_number` | `number` | No |  |
| `transaction_clearing_date` | `string` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_seq_number` | `number` | No |  |
| `transaction_server_date` | `string` | No |  |
| `transaction_source` | `string` | No |  |
| `transaction_type` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.StatusTransaction().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `StatusTransactionEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## StoreTerminalParameterEntity

```ts
const store_terminal_parameter = client.StoreTerminalParameter()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `Object` | No |  |
| `config_version` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | Yes |  |
| `tid_sent` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.StoreTerminalParameter().create({
  serial_number: 'example_serial_number',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `StoreTerminalParameterEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## TerminalIdEntity

```ts
const terminal_id = client.TerminalId()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `Array` | Yes |  |
| `duplicate_terminal_id` | `Array` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `Array` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.TerminalId().create({
  device_serial_number: [],
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `TerminalIdEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## TransactionHistoryEntity

```ts
const transaction_history = client.TransactionHistory()
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
| `pagination` | `Object` | No |  |
| `payment_token_public_id` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `number` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `number` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_history` | `Array` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.TransactionHistory().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `TransactionHistoryEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## TransactionsCountEntity

```ts
const transactions_count = client.TransactionsCount()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `Array` | No |  |

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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.TransactionsCount().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `TransactionsCountEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## TransactionsCountCardBrandEntity

```ts
const transactions_count_card_brand = client.TransactionsCountCardBrand()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `Array` | No |  |

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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.TransactionsCountCardBrand().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `TransactionsCountCardBrandEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## TransactionsTurnoverEntity

```ts
const transactions_turnover = client.TransactionsTurnover()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `turnover` | `Array` | No |  |

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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.TransactionsTurnover().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `TransactionsTurnoverEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## UpdateMerchantEntity

```ts
const update_merchant = client.UpdateMerchant()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchant_category_code` | `string` | No |  |
| `name` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vu_nummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.UpdateMerchant().create({
  corporate_uuid: 'example_corporate_uuid',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `UpdateMerchantEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## UpdateTemplateXmlEntity

```ts
const update_template_xml = client.UpdateTemplateXml()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.UpdateTemplateXml().create({
  template_name: 'example_template_name',
  template_xml: 'example_template_xml',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `UpdateTemplateXmlEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## VersionEntity

```ts
const version = client.Version()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.Version().load()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `VersionEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsMerchantServicesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ts
const client = new BluefinTecsMerchantServicesSDK({
  feature: {
    test: { active: true },
  }
})
```

