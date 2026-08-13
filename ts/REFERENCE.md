# BluefinTecsMerchantServices TypeScript SDK Reference

Complete API reference for the BluefinTecsMerchantServices TypeScript SDK.


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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.CancelTransaction().create({
  clientId: 1,
  currency: 'example_currency',
  receiptNumber: 'example_receiptNumber',
  terminalId: 1,
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
| `cardNo` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

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
| `acquirerId` | `number` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.CreateProduct().create({
  templateName: 'example_templateName',
  templateType: 'example_templateType',
  templateXml: 'example_templateXml',
  terminalType: 'example_terminalType',
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
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.DeactivateTerminal().create({
  deactivationReason: 'example_deactivationReason',
  terminalId: 1,
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.DigitalServicesApi().create({
  clearingDateFrom: 'example_clearingDateFrom',
  clearingDateTo: 'example_clearingDateTo',
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
| `ecomData` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EcDataEcom().create({
  terminalId: 1,
  transactionId: 'example_transactionId',
  transactionType: 'example_transactionType',
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
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EcomParameter().create({
  terminalId: 1,
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
| `ecrData` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EcrData().create({
  terminalId: 1,
  transactionId: 'example_transactionId',
  transactionType: 'example_transactionType',
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
| `emvData` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EmvData().create({
  terminalId: 1,
  transactionId: 'example_transactionId',
  transactionType: 'example_transactionType',
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
| `accountNo` | `number` | No |  |
| `additionalData` | `Record<string, any>` | No |  |
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
| `terminalIds` | `any[]` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.EnableAcquiring().create({
  corporateUuid: 'example_corporateUuid',
  currency: 'example_currency',
  merchantCategoryCode: 1,
  packageOrderUuid: 'example_packageOrderUuid',
  productOrderUuid: 'example_productOrderUuid',
  templateName: 'example_templateName',
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
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.GetMerchantContractNumber().create({
  merchantContractNumber: 'example_merchantContractNumber',
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
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.GetTemplateXml().create({
  templateName: 'example_templateName',
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
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.IntroduceMandator().create({
  mandatorName: 'example_mandatorName',
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
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.IntroducePackage().create({
  terminalTemplateDescription: 'example_terminalTemplateDescription',
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
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `any[]` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `number` | No |  |

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
| `corporateUuid` | `any[]` | No |  |
| `filter` | `Record<string, any>` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `any[]` | No |  |

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
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `pagination` | `Record<string, any>` | No |  |
| `records` | `any[]` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MandatorClearingExport().create({
  clearingDateFrom: 'example_clearingDateFrom',
  clearingDateTo: 'example_clearingDateTo',
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
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `fileId` | `string` | No |  |
| `filenameTemplate` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MandatorClearingExportDownload().create({
  clearingDateFrom: 'example_clearingDateFrom',
  clearingDateTo: 'example_clearingDateTo',
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
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `records` | `any[]` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MandatorClearingExportSummary().create({
  clearingDateFrom: 'example_clearingDateFrom',
  clearingDateTo: 'example_clearingDateTo',
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
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `Record<string, any>` | No |  |
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
| `productorderuuids` | `any[]` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.MoveTid().create({
  productorderuuids: [],
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.PaymentManual().create({
  amount: 1,
  cardNumber: 'example_cardNumber',
  currency: 'example_currency',
  expDate: 'example_expDate',
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.PaymentSred().create({
  amount: 1,
  currency: 'example_currency',
  devicePayload: 'example_devicePayload',
  terminalId: 'example_terminalId',
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.PreAuthTransactionCompletion().create({
  cardNumberReference: 'example_cardNumberReference',
  clientId: 1,
  currency: 'example_currency',
  receiptNumber: 'example_receiptNumber',
  terminalId: 1,
  transactionType: 'example_transactionType',
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
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `number` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.ReactivateTerminal().create({
  reactivationReason: 'example_reactivationReason',
  terminalId: 1,
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.RefundTransaction().create({
  clientId: 1,
  currency: 'example_currency',
  receiptNumber: 'example_receiptNumber',
  terminalId: 1,
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
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `number` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.RegisterTecsCompany().create({
  corporateUuid: 'example_corporateUuid',
  packageOrderUuid: 'example_packageOrderUuid',
  productOrderUuid: 'example_productOrderUuid',
  templateName: 'example_templateName',
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
| `additionalData` | `Record<string, any>` | No |  |
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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.RegisterTerminal().create({
  corporateUuid: 'example_corporateUuid',
  packageOrderUuid: 'example_packageOrderUuid',
  productOrderUuid: 'example_productOrderUuid',
  templateName: 'example_templateName',
  terminalCountryCode: 'example_terminalCountryCode',
  terminalLanguageCode: 'example_terminalLanguageCode',
  terminalLocation: 'example_terminalLocation',
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
| `cardBrandReportData` | `any[]` | No |  |
| `clearingDateFrom` | `string` | Yes |  |
| `clearingDateTo` | `string` | Yes |  |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `Record<string, any>` | No |  |
| `sumOverDebitTx` | `Record<string, any>` | No |  |
| `terminalId` | `number` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.ReportData().create({
  clearingDateFrom: 'example_clearingDateFrom',
  clearingDateTo: 'example_clearingDateTo',
  corporateId: 'example_corporateId',
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
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `number` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `string | null` | No |  |
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
| `acqTabNexo` | `Record<string, any>` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.StoreTerminalParameter().create({
  serialNumber: 'example_serialNumber',
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
| `deviceSerialNumber` | `any[]` | Yes |  |
| `duplicateTerminalIds` | `any[]` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `any[]` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.TerminalId().create({
  deviceSerialNumber: [],
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
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `Record<string, any>` | No |  |
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
| `transactionHistories` | `any[]` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
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
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `any[]` | No |  |

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
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `any[]` | No |  |

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
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `any[]` | No |  |

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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.UpdateMerchant().create({
  corporateUuid: 'example_corporateUuid',
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
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.UpdateTemplateXml().create({
  templateName: 'example_templateName',
  templateXml: 'example_templateXml',
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
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
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

