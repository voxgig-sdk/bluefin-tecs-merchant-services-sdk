# BluefinTecsMerchantServices PHP SDK Reference

Complete API reference for the BluefinTecsMerchantServices PHP SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```php
require_once __DIR__ . '/bluefintecsmerchantservices_sdk.php';

$client = new BluefinTecsMerchantServicesSDK($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `array` | SDK configuration options. |
| `$options["apikey"]` | `string` | API key for authentication. |
| `$options["base"]` | `string` | Base URL for API requests. |
| `$options["prefix"]` | `string` | URL prefix appended after base. |
| `$options["suffix"]` | `string` | URL suffix appended after path. |
| `$options["headers"]` | `array` | Custom headers for all requests. |
| `$options["feature"]` | `array` | Feature configuration. |
| `$options["system"]` | `array` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK::test($testopts = null, $sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```php
$client = BluefinTecsMerchantServicesSDK::test();
```


### Instance Methods

#### `CancelTransaction($data = null)`

Create a new `CancelTransactionEntity` instance. Pass `null` for no initial data.

#### `CheckCardBlackListed($data = null)`

Create a new `CheckCardBlackListedEntity` instance. Pass `null` for no initial data.

#### `CreateProduct($data = null)`

Create a new `CreateProductEntity` instance. Pass `null` for no initial data.

#### `DeactivateTerminal($data = null)`

Create a new `DeactivateTerminalEntity` instance. Pass `null` for no initial data.

#### `DigitalServicesApi($data = null)`

Create a new `DigitalServicesApiEntity` instance. Pass `null` for no initial data.

#### `EcDataEcom($data = null)`

Create a new `EcDataEcomEntity` instance. Pass `null` for no initial data.

#### `EcomParameter($data = null)`

Create a new `EcomParameterEntity` instance. Pass `null` for no initial data.

#### `EcrData($data = null)`

Create a new `EcrDataEntity` instance. Pass `null` for no initial data.

#### `EmvData($data = null)`

Create a new `EmvDataEntity` instance. Pass `null` for no initial data.

#### `EnableAcquiring($data = null)`

Create a new `EnableAcquiringEntity` instance. Pass `null` for no initial data.

#### `GetMerchantContractNumber($data = null)`

Create a new `GetMerchantContractNumberEntity` instance. Pass `null` for no initial data.

#### `GetTemplateXml($data = null)`

Create a new `GetTemplateXmlEntity` instance. Pass `null` for no initial data.

#### `IntroduceMandator($data = null)`

Create a new `IntroduceMandatorEntity` instance. Pass `null` for no initial data.

#### `IntroducePackage($data = null)`

Create a new `IntroducePackageEntity` instance. Pass `null` for no initial data.

#### `KeepAlive($data = null)`

Create a new `KeepAliveEntity` instance. Pass `null` for no initial data.

#### `ListTerminal($data = null)`

Create a new `ListTerminalEntity` instance. Pass `null` for no initial data.

#### `MandatorClearingExport($data = null)`

Create a new `MandatorClearingExportEntity` instance. Pass `null` for no initial data.

#### `MandatorClearingExportDownload($data = null)`

Create a new `MandatorClearingExportDownloadEntity` instance. Pass `null` for no initial data.

#### `MandatorClearingExportSummary($data = null)`

Create a new `MandatorClearingExportSummaryEntity` instance. Pass `null` for no initial data.

#### `MerchantPortalServicesApi($data = null)`

Create a new `MerchantPortalServicesApiEntity` instance. Pass `null` for no initial data.

#### `MoveTid($data = null)`

Create a new `MoveTidEntity` instance. Pass `null` for no initial data.

#### `PaymentManual($data = null)`

Create a new `PaymentManualEntity` instance. Pass `null` for no initial data.

#### `PaymentSred($data = null)`

Create a new `PaymentSredEntity` instance. Pass `null` for no initial data.

#### `PreAuthTransactionCompletion($data = null)`

Create a new `PreAuthTransactionCompletionEntity` instance. Pass `null` for no initial data.

#### `ReactivateTerminal($data = null)`

Create a new `ReactivateTerminalEntity` instance. Pass `null` for no initial data.

#### `RefundTransaction($data = null)`

Create a new `RefundTransactionEntity` instance. Pass `null` for no initial data.

#### `RegisterTecsCompany($data = null)`

Create a new `RegisterTecsCompanyEntity` instance. Pass `null` for no initial data.

#### `RegisterTerminal($data = null)`

Create a new `RegisterTerminalEntity` instance. Pass `null` for no initial data.

#### `ReportData($data = null)`

Create a new `ReportDataEntity` instance. Pass `null` for no initial data.

#### `StatusTransaction($data = null)`

Create a new `StatusTransactionEntity` instance. Pass `null` for no initial data.

#### `StoreTerminalParameter($data = null)`

Create a new `StoreTerminalParameterEntity` instance. Pass `null` for no initial data.

#### `TerminalId($data = null)`

Create a new `TerminalIdEntity` instance. Pass `null` for no initial data.

#### `TransactionHistory($data = null)`

Create a new `TransactionHistoryEntity` instance. Pass `null` for no initial data.

#### `TransactionsCount($data = null)`

Create a new `TransactionsCountEntity` instance. Pass `null` for no initial data.

#### `TransactionsCountCardBrand($data = null)`

Create a new `TransactionsCountCardBrandEntity` instance. Pass `null` for no initial data.

#### `TransactionsTurnover($data = null)`

Create a new `TransactionsTurnoverEntity` instance. Pass `null` for no initial data.

#### `UpdateMerchant($data = null)`

Create a new `UpdateMerchantEntity` instance. Pass `null` for no initial data.

#### `UpdateTemplateXml($data = null)`

Create a new `UpdateTemplateXmlEntity` instance. Pass `null` for no initial data.

#### `Version($data = null)`

Create a new `VersionEntity` instance. Pass `null` for no initial data.

#### `options_map(): array`

Return a deep copy of the current SDK options.

#### `get_utility(): BluefinTecsMerchantServicesUtility`

Return a copy of the SDK utility object.

#### `direct(array $fetchargs = []): array`

Make a direct HTTP request to any API endpoint. This is the raw-HTTP escape
hatch: it does **not** throw. It returns a result array
`["ok" => bool, "status" => int, "headers" => array, "data" => mixed]`, or
`["ok" => false, "err" => \Exception]` on failure. Branch on `$result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `$fetchargs["params"]` | `array` | Path parameter values for `{param}` substitution. |
| `$fetchargs["query"]` | `array` | Query string parameters. |
| `$fetchargs["headers"]` | `array` | Request headers (merged with defaults). |
| `$fetchargs["body"]` | `mixed` | Request body (arrays are JSON-serialized). |
| `$fetchargs["ctrl"]` | `array` | Control options. |

**Returns:** `array` — the result dict (see above); never throws.

#### `prepare(array $fetchargs = []): mixed`

Prepare a fetch definition without sending the request. Returns the
`$fetchdef` array. Throws on error.


---

## CancelTransactionEntity

```php
$cancel_transaction = $client->CancelTransaction();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->CancelTransaction()->create([
  "clientId" => null, // int
  "currency" => null, // string
  "receiptNumber" => null, // string
  "terminalId" => null, // int
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): CancelTransactionEntity`

Create a new `CancelTransactionEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## CheckCardBlackListedEntity

```php
$check_card_black_listed = $client->CheckCardBlackListed();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->CheckCardBlackListed()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): CheckCardBlackListedEntity`

Create a new `CheckCardBlackListedEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## CreateProductEntity

```php
$create_product = $client->CreateProduct();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->CreateProduct()->create([
  "templateName" => null, // string
  "templateType" => null, // string
  "templateXml" => null, // string
  "terminalType" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): CreateProductEntity`

Create a new `CreateProductEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## DeactivateTerminalEntity

```php
$deactivate_terminal = $client->DeactivateTerminal();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->DeactivateTerminal()->create([
  "deactivationReason" => null, // string
  "terminalId" => null, // int
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): DeactivateTerminalEntity`

Create a new `DeactivateTerminalEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## DigitalServicesApiEntity

```php
$digital_services_api = $client->DigitalServicesApi();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->DigitalServicesApi()->create([
  "file_id" => null, // string
  "clearingDateFrom" => null, // string
  "clearingDateTo" => null, // string
]);
```

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->DigitalServicesApi()->load();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): DigitalServicesApiEntity`

Create a new `DigitalServicesApiEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## EcDataEcomEntity

```php
$ec_data_ecom = $client->EcDataEcom();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->EcDataEcom()->create([
  "terminalId" => null, // int
  "transactionId" => null, // string
  "transactionType" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): EcDataEcomEntity`

Create a new `EcDataEcomEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## EcomParameterEntity

```php
$ecom_parameter = $client->EcomParameter();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->EcomParameter()->create([
  "terminalId" => null, // int
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): EcomParameterEntity`

Create a new `EcomParameterEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## EcrDataEntity

```php
$ecr_data = $client->EcrData();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->EcrData()->create([
  "terminalId" => null, // int
  "transactionId" => null, // string
  "transactionType" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): EcrDataEntity`

Create a new `EcrDataEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## EmvDataEntity

```php
$emv_data = $client->EmvData();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->EmvData()->create([
  "terminalId" => null, // int
  "transactionId" => null, // string
  "transactionType" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): EmvDataEntity`

Create a new `EmvDataEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## EnableAcquiringEntity

```php
$enable_acquiring = $client->EnableAcquiring();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `int` | No |  |
| `additionalData` | `array` | No |  |
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
| `terminalIds` | `array` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->EnableAcquiring()->create([
  "corporateUuid" => null, // string
  "currency" => null, // string
  "merchantCategoryCode" => null, // int
  "packageOrderUuid" => null, // string
  "productOrderUuid" => null, // string
  "templateName" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): EnableAcquiringEntity`

Create a new `EnableAcquiringEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## GetMerchantContractNumberEntity

```php
$get_merchant_contract_number = $client->GetMerchantContractNumber();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->GetMerchantContractNumber()->create([
  "merchantContractNumber" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): GetMerchantContractNumberEntity`

Create a new `GetMerchantContractNumberEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## GetTemplateXmlEntity

```php
$get_template_xml = $client->GetTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->GetTemplateXml()->create([
  "templateName" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): GetTemplateXmlEntity`

Create a new `GetTemplateXmlEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## IntroduceMandatorEntity

```php
$introduce_mandator = $client->IntroduceMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->IntroduceMandator()->create([
  "mandatorName" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): IntroduceMandatorEntity`

Create a new `IntroduceMandatorEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## IntroducePackageEntity

```php
$introduce_package = $client->IntroducePackage();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->IntroducePackage()->create([
  "terminalTemplateDescription" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): IntroducePackageEntity`

Create a new `IntroducePackageEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## KeepAliveEntity

```php
$keep_alive = $client->KeepAlive();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->KeepAlive()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): KeepAliveEntity`

Create a new `KeepAliveEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## ListTerminalEntity

```php
$list_terminal = $client->ListTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `array` | No |  |
| `filter` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->ListTerminal()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): ListTerminalEntity`

Create a new `ListTerminalEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## MandatorClearingExportEntity

```php
$mandator_clearing_export = $client->MandatorClearingExport();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `array` | No |  |
| `records` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->MandatorClearingExport()->create([
  "clearingDateFrom" => null, // string
  "clearingDateTo" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): MandatorClearingExportEntity`

Create a new `MandatorClearingExportEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## MandatorClearingExportDownloadEntity

```php
$mandator_clearing_export_download = $client->MandatorClearingExportDownload();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->MandatorClearingExportDownload()->create([
  "clearingDateFrom" => null, // string
  "clearingDateTo" => null, // string
]);
```

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->MandatorClearingExportDownload()->load(["id" => "mandator_clearing_export_download_id"]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): MandatorClearingExportDownloadEntity`

Create a new `MandatorClearingExportDownloadEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## MandatorClearingExportSummaryEntity

```php
$mandator_clearing_export_summary = $client->MandatorClearingExportSummary();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->MandatorClearingExportSummary()->create([
  "clearingDateFrom" => null, // string
  "clearingDateTo" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): MandatorClearingExportSummaryEntity`

Create a new `MandatorClearingExportSummaryEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## MerchantPortalServicesApiEntity

```php
$merchant_portal_services_api = $client->MerchantPortalServicesApi();
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
| `pagination` | `array` | No |  |
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->MerchantPortalServicesApi()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): MerchantPortalServicesApiEntity`

Create a new `MerchantPortalServicesApiEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## MoveTidEntity

```php
$move_tid = $client->MoveTid();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `array` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->MoveTid()->create([
  "productorderuuids" => null, // array
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): MoveTidEntity`

Create a new `MoveTidEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## PaymentManualEntity

```php
$payment_manual = $client->PaymentManual();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->PaymentManual()->create([
  "amount" => null, // int
  "cardNumber" => null, // string
  "currency" => null, // string
  "expDate" => null, // string
  "txtype" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): PaymentManualEntity`

Create a new `PaymentManualEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## PaymentSredEntity

```php
$payment_sred = $client->PaymentSred();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->PaymentSred()->create([
  "amount" => null, // int
  "currency" => null, // string
  "devicePayload" => null, // string
  "terminalId" => null, // string
  "txtype" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): PaymentSredEntity`

Create a new `PaymentSredEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## PreAuthTransactionCompletionEntity

```php
$pre_auth_transaction_completion = $client->PreAuthTransactionCompletion();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->PreAuthTransactionCompletion()->create([
  "cardNumberReference" => null, // string
  "clientId" => null, // int
  "currency" => null, // string
  "receiptNumber" => null, // string
  "terminalId" => null, // int
  "transactionType" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): PreAuthTransactionCompletionEntity`

Create a new `PreAuthTransactionCompletionEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## ReactivateTerminalEntity

```php
$reactivate_terminal = $client->ReactivateTerminal();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->ReactivateTerminal()->create([
  "reactivationReason" => null, // string
  "terminalId" => null, // int
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): ReactivateTerminalEntity`

Create a new `ReactivateTerminalEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## RefundTransactionEntity

```php
$refund_transaction = $client->RefundTransaction();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->RefundTransaction()->create([
  "clientId" => null, // int
  "currency" => null, // string
  "receiptNumber" => null, // string
  "terminalId" => null, // int
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): RefundTransactionEntity`

Create a new `RefundTransactionEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## RegisterTecsCompanyEntity

```php
$register_tecs_company = $client->RegisterTecsCompany();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->RegisterTecsCompany()->create([
  "corporateUuid" => null, // string
  "packageOrderUuid" => null, // string
  "productOrderUuid" => null, // string
  "templateName" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): RegisterTecsCompanyEntity`

Create a new `RegisterTecsCompanyEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## RegisterTerminalEntity

```php
$register_terminal = $client->RegisterTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `array` | No |  |
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->RegisterTerminal()->create([
  "corporateUuid" => null, // string
  "packageOrderUuid" => null, // string
  "productOrderUuid" => null, // string
  "templateName" => null, // string
  "terminalCountryCode" => null, // string
  "terminalLanguageCode" => null, // string
  "terminalLocation" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): RegisterTerminalEntity`

Create a new `RegisterTerminalEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## ReportDataEntity

```php
$report_data = $client->ReportData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `array` | No |  |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `array` | No |  |
| `sumOverDebitTx` | `array` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->ReportData()->create([
  "clearingDateFrom" => null, // string
  "clearingDateTo" => null, // string
  "corporateId" => null, // string
  "currency" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): ReportDataEntity`

Create a new `ReportDataEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## StatusTransactionEntity

```php
$status_transaction = $client->StatusTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `int` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `mixed` | No | Authorization code returned by the acquirer; null when not available |
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->StatusTransaction()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): StatusTransactionEntity`

Create a new `StatusTransactionEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## StoreTerminalParameterEntity

```php
$store_terminal_parameter = $client->StoreTerminalParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `array` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->StoreTerminalParameter()->create([
  "serialNumber" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): StoreTerminalParameterEntity`

Create a new `StoreTerminalParameterEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## TerminalIdEntity

```php
$terminal_id = $client->TerminalId();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `array` | Yes |  |
| `duplicateTerminalIds` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->TerminalId()->create([
  "deviceSerialNumber" => null, // array
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): TerminalIdEntity`

Create a new `TerminalIdEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## TransactionHistoryEntity

```php
$transaction_history = $client->TransactionHistory();
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
| `pagination` | `array` | No |  |
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
| `transactionHistories` | `array` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->TransactionHistory()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): TransactionHistoryEntity`

Create a new `TransactionHistoryEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## TransactionsCountEntity

```php
$transactions_count = $client->TransactionsCount();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `array` | No |  |

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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->TransactionsCount()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): TransactionsCountEntity`

Create a new `TransactionsCountEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## TransactionsCountCardBrandEntity

```php
$transactions_count_card_brand = $client->TransactionsCountCardBrand();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `array` | No |  |

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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->TransactionsCountCardBrand()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): TransactionsCountCardBrandEntity`

Create a new `TransactionsCountCardBrandEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## TransactionsTurnoverEntity

```php
$transactions_turnover = $client->TransactionsTurnover();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `array` | No |  |

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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->TransactionsTurnover()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): TransactionsTurnoverEntity`

Create a new `TransactionsTurnoverEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## UpdateMerchantEntity

```php
$update_merchant = $client->UpdateMerchant();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->UpdateMerchant()->create([
  "corporateUuid" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): UpdateMerchantEntity`

Create a new `UpdateMerchantEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## UpdateTemplateXmlEntity

```php
$update_template_xml = $client->UpdateTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->UpdateTemplateXml()->create([
  "templateName" => null, // string
  "templateXml" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): UpdateTemplateXmlEntity`

Create a new `UpdateTemplateXmlEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## VersionEntity

```php
$version = $client->Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->Version()->load();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): VersionEntity`

Create a new `VersionEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```php
$client = new BluefinTecsMerchantServicesSDK([
  "feature" => [
    "test" => ["active" => true],
  ],
]);
```

