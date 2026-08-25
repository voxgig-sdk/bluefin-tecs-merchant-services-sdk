# BluefinTecsMerchantServices Perl SDK Reference

Complete API reference for the BluefinTecsMerchantServices Perl SDK.


## BluefinTecsMerchantServicesSDK

### Constructor

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;

my $client = BluefinTecsMerchantServicesSDK->new($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `hashref` | SDK configuration options. |
| `$options->{apikey}` | `string` | API key for authentication. |
| `$options->{base}` | `string` | Base URL for API requests. |
| `$options->{prefix}` | `string` | URL prefix appended after base. |
| `$options->{suffix}` | `string` | URL suffix appended after path. |
| `$options->{headers}` | `hashref` | Custom headers for all requests. |
| `$options->{feature}` | `hashref` | Feature configuration. |
| `$options->{system}` | `hashref` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK->test($testopts, $sdkopts)`

Create a test client with mock features active. Both arguments may be `undef`.

```perl
my $client = BluefinTecsMerchantServicesSDK->test();
```


### Instance Methods

#### `CancelTransaction($data)`

Create a new `CancelTransaction` entity instance. Pass `undef` for no initial data.

#### `CheckCardBlackListed($data)`

Create a new `CheckCardBlackListed` entity instance. Pass `undef` for no initial data.

#### `CreateProduct($data)`

Create a new `CreateProduct` entity instance. Pass `undef` for no initial data.

#### `DeactivateTerminal($data)`

Create a new `DeactivateTerminal` entity instance. Pass `undef` for no initial data.

#### `DigitalServicesApi($data)`

Create a new `DigitalServicesApi` entity instance. Pass `undef` for no initial data.

#### `EcDataEcom($data)`

Create a new `EcDataEcom` entity instance. Pass `undef` for no initial data.

#### `EcomParameter($data)`

Create a new `EcomParameter` entity instance. Pass `undef` for no initial data.

#### `EcrData($data)`

Create a new `EcrData` entity instance. Pass `undef` for no initial data.

#### `EmvData($data)`

Create a new `EmvData` entity instance. Pass `undef` for no initial data.

#### `EnableAcquiring($data)`

Create a new `EnableAcquiring` entity instance. Pass `undef` for no initial data.

#### `GetMerchantContractNumber($data)`

Create a new `GetMerchantContractNumber` entity instance. Pass `undef` for no initial data.

#### `GetTemplateXml($data)`

Create a new `GetTemplateXml` entity instance. Pass `undef` for no initial data.

#### `IntroduceMandator($data)`

Create a new `IntroduceMandator` entity instance. Pass `undef` for no initial data.

#### `IntroducePackage($data)`

Create a new `IntroducePackage` entity instance. Pass `undef` for no initial data.

#### `KeepAlive($data)`

Create a new `KeepAlive` entity instance. Pass `undef` for no initial data.

#### `ListTerminal($data)`

Create a new `ListTerminal` entity instance. Pass `undef` for no initial data.

#### `MandatorClearingExport($data)`

Create a new `MandatorClearingExport` entity instance. Pass `undef` for no initial data.

#### `MandatorClearingExportDownload($data)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `undef` for no initial data.

#### `MandatorClearingExportSummary($data)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `undef` for no initial data.

#### `MerchantPortalServicesApi($data)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `undef` for no initial data.

#### `MoveTid($data)`

Create a new `MoveTid` entity instance. Pass `undef` for no initial data.

#### `PaymentManual($data)`

Create a new `PaymentManual` entity instance. Pass `undef` for no initial data.

#### `PaymentSred($data)`

Create a new `PaymentSred` entity instance. Pass `undef` for no initial data.

#### `PreAuthTransactionCompletion($data)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `undef` for no initial data.

#### `ReactivateTerminal($data)`

Create a new `ReactivateTerminal` entity instance. Pass `undef` for no initial data.

#### `RefundTransaction($data)`

Create a new `RefundTransaction` entity instance. Pass `undef` for no initial data.

#### `RegisterTecsCompany($data)`

Create a new `RegisterTecsCompany` entity instance. Pass `undef` for no initial data.

#### `RegisterTerminal($data)`

Create a new `RegisterTerminal` entity instance. Pass `undef` for no initial data.

#### `ReportData($data)`

Create a new `ReportData` entity instance. Pass `undef` for no initial data.

#### `StatusTransaction($data)`

Create a new `StatusTransaction` entity instance. Pass `undef` for no initial data.

#### `StoreTerminalParameter($data)`

Create a new `StoreTerminalParameter` entity instance. Pass `undef` for no initial data.

#### `TerminalId($data)`

Create a new `TerminalId` entity instance. Pass `undef` for no initial data.

#### `TransactionHistory($data)`

Create a new `TransactionHistory` entity instance. Pass `undef` for no initial data.

#### `TransactionsCount($data)`

Create a new `TransactionsCount` entity instance. Pass `undef` for no initial data.

#### `TransactionsCountCardBrand($data)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `undef` for no initial data.

#### `TransactionsTurnover($data)`

Create a new `TransactionsTurnover` entity instance. Pass `undef` for no initial data.

#### `UpdateMerchant($data)`

Create a new `UpdateMerchant` entity instance. Pass `undef` for no initial data.

#### `UpdateTemplateXml($data)`

Create a new `UpdateTemplateXml` entity instance. Pass `undef` for no initial data.

#### `Version($data)`

Create a new `Version` entity instance. Pass `undef` for no initial data.

#### `options_map() -> hashref`

Return a deep copy of the current SDK options.

#### `get_utility() -> utility`

Return a copy of the SDK utility object.

#### `direct($fetchargs) -> hashref`

Make a direct HTTP request to any API endpoint. Returns a result `hashref` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never dies — branch on `$result->{ok}`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs->{path}` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs->{method}` | `string` | HTTP method (default: `'GET'`). |
| `$fetchargs->{params}` | `hashref` | Path parameter values. |
| `$fetchargs->{query}` | `hashref` | Query string parameters. |
| `$fetchargs->{headers}` | `hashref` | Request headers (merged with defaults). |
| `$fetchargs->{body}` | `any` | Request body (hashrefs are JSON-serialized). |

**Returns:** `hashref`

#### `prepare($fetchargs) -> hashref`

Prepare a fetch definition without sending. Returns the `fetchdef` and dies on error.


---

## CancelTransaction entity

```perl
my $cancel_transaction = $client->CancelTransaction;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `integer` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `integer` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `integer` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `integer` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `integer` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `integer` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->CancelTransaction->create({
    'clientId' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receiptNumber' => 'example_receiptNumber',  # string
    'terminalId' => 1,  # integer
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `CancelTransaction` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## CheckCardBlackListed entity

```perl
my $check_card_black_listed = $client->CheckCardBlackListed;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->CheckCardBlackListed->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## CreateProduct entity

```perl
my $create_product = $client->CreateProduct;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `integer` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->CreateProduct->create({
    'templateName' => 'example_templateName',  # string
    'templateType' => 'example_templateType',  # string
    'templateXml' => 'example_templateXml',  # string
    'terminalType' => 'example_terminalType',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `CreateProduct` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## DeactivateTerminal entity

```perl
my $deactivate_terminal = $client->DeactivateTerminal;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->DeactivateTerminal->create({
    'deactivationReason' => 'example_deactivationReason',  # string
    'terminalId' => 1,  # integer
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## DigitalServicesApi entity

```perl
my $digital_services_api = $client->DigitalServicesApi;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `txCount` | `integer` | No |  |
| `txIdEnd` | `string` | No |  |
| `txIdStart` | `string` | No |  |
| `txSeqNoEnd` | `integer` | No |  |
| `txSeqNoStart` | `integer` | No |  |
| `txTotal` | `integer` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->DigitalServicesApi->create({
    'file_id' => 'example_file_id',  # string
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```

#### `load($reqmatch, $ctrl) -> hashref`

Load a single entity matching the given criteria. Returns the entity data and dies on error.

```perl
my $result = $client->DigitalServicesApi->load();
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## EcDataEcom entity

```perl
my $ec_data_ecom = $client->EcDataEcom;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EcDataEcom->create({
    'terminalId' => 1,  # integer
    'transactionId' => 'example_transactionId',  # string
    'transactionType' => 'example_transactionType',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `EcDataEcom` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## EcomParameter entity

```perl
my $ecom_parameter = $client->EcomParameter;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EcomParameter->create({
    'terminalId' => 1,  # integer
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `EcomParameter` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## EcrData entity

```perl
my $ecr_data = $client->EcrData;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EcrData->create({
    'terminalId' => 1,  # integer
    'transactionId' => 'example_transactionId',  # string
    'transactionType' => 'example_transactionType',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `EcrData` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## EmvData entity

```perl
my $emv_data = $client->EmvData;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EmvData->create({
    'terminalId' => 1,  # integer
    'transactionId' => 'example_transactionId',  # string
    'transactionType' => 'example_transactionType',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `EmvData` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## EnableAcquiring entity

```perl
my $enable_acquiring = $client->EnableAcquiring;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `integer` | No |  |
| `additionalData` | `hashref` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchantCategoryCode` | `integer` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `sortingCode` | `integer` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalIds` | `arrayref` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EnableAcquiring->create({
    'corporateUuid' => 'example_corporateUuid',  # string
    'currency' => 'example_currency',  # string
    'merchantCategoryCode' => 1,  # integer
    'packageOrderUuid' => 'example_packageOrderUuid',  # string
    'productOrderUuid' => 'example_productOrderUuid',  # string
    'templateName' => 'example_templateName',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## GetMerchantContractNumber entity

```perl
my $get_merchant_contract_number = $client->GetMerchantContractNumber;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->GetMerchantContractNumber->create({
    'merchantContractNumber' => 'example_merchantContractNumber',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## GetTemplateXml entity

```perl
my $get_template_xml = $client->GetTemplateXml;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->GetTemplateXml->create({
    'templateName' => 'example_templateName',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## IntroduceMandator entity

```perl
my $introduce_mandator = $client->IntroduceMandator;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->IntroduceMandator->create({
    'mandatorName' => 'example_mandatorName',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## IntroducePackage entity

```perl
my $introduce_package = $client->IntroducePackage;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->IntroducePackage->create({
    'terminalTemplateDescription' => 'example_terminalTemplateDescription',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `IntroducePackage` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## KeepAlive entity

```perl
my $keep_alive = $client->KeepAlive;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `integer` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->KeepAlive->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `KeepAlive` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## ListTerminal entity

```perl
my $list_terminal = $client->ListTerminal;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `arrayref` | No |  |
| `filter` | `hashref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `arrayref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->ListTerminal->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `ListTerminal` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## MandatorClearingExport entity

```perl
my $mandator_clearing_export = $client->MandatorClearingExport;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `hashref` | No |  |
| `records` | `arrayref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MandatorClearingExport->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## MandatorClearingExportDownload entity

```perl
my $mandator_clearing_export_download = $client->MandatorClearingExportDownload;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | Yes | End date for clearing export (inclusive) |
| `fileId` | `string` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | No | Optional filename template for the export file |
| `id` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No | Processing status of the export request |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MandatorClearingExportDownload->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```

#### `load($reqmatch, $ctrl) -> hashref`

Load a single entity matching the given criteria. Returns the entity data and dies on error.

```perl
my $result = $client->MandatorClearingExportDownload->load({ 'id' => 'mandator_clearing_export_download_id' });
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## MandatorClearingExportSummary entity

```perl
my $mandator_clearing_export_summary = $client->MandatorClearingExportSummary;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `arrayref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MandatorClearingExportSummary->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## MerchantPortalServicesApi entity

```perl
my $merchant_portal_services_api = $client->MerchantPortalServicesApi;
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
| `pagination` | `hashref` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `integer` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `integer` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MerchantPortalServicesApi->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## MoveTid entity

```perl
my $move_tid = $client->MoveTid;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `arrayref` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MoveTid->create({
    'productorderuuids' => [],  # arrayref
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `MoveTid` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## PaymentManual entity

```perl
my $payment_manual = $client->PaymentManual;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No | Acquirer name parsed from KKG field |
| `amount` | `integer` | Yes | Transaction amount in minor units (cents) |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->PaymentManual->create({
    'amount' => 1,  # integer
    'cardNumber' => 'example_cardNumber',  # string
    'currency' => 'example_currency',  # string
    'expDate' => 'example_expDate',  # string
    'txtype' => 'example_txtype',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `PaymentManual` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## PaymentSred entity

```perl
my $payment_sred = $client->PaymentSred;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `integer` | Yes | Transaction amount in minor units (cents) |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->PaymentSred->create({
    'amount' => 1,  # integer
    'currency' => 'example_currency',  # string
    'devicePayload' => 'example_devicePayload',  # string
    'terminalId' => 'example_terminalId',  # string
    'txtype' => 'example_txtype',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `PaymentSred` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## PreAuthTransactionCompletion entity

```perl
my $pre_auth_transaction_completion = $client->PreAuthTransactionCompletion;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `integer` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `cardNumberReference` | `string` | Yes |  |
| `clientId` | `integer` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `integer` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `integer` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `integer` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `integer` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->PreAuthTransactionCompletion->create({
    'cardNumberReference' => 'example_cardNumberReference',  # string
    'clientId' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receiptNumber' => 'example_receiptNumber',  # string
    'terminalId' => 1,  # integer
    'transactionType' => 'example_transactionType',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## ReactivateTerminal entity

```perl
my $reactivate_terminal = $client->ReactivateTerminal;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->ReactivateTerminal->create({
    'reactivationReason' => 'example_reactivationReason',  # string
    'terminalId' => 1,  # integer
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## RefundTransaction entity

```perl
my $refund_transaction = $client->RefundTransaction;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `integer` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `integer` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `integer` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `integer` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `integer` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `integer` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `integer` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->RefundTransaction->create({
    'clientId' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receiptNumber' => 'example_receiptNumber',  # string
    'terminalId' => 1,  # integer
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `RefundTransaction` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## RegisterTecsCompany entity

```perl
my $register_tecs_company = $client->RegisterTecsCompany;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `integer` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->RegisterTecsCompany->create({
    'corporateUuid' => 'example_corporateUuid',  # string
    'packageOrderUuid' => 'example_packageOrderUuid',  # string
    'productOrderUuid' => 'example_productOrderUuid',  # string
    'templateName' => 'example_templateName',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## RegisterTerminal entity

```perl
my $register_terminal = $client->RegisterTerminal;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `hashref` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `tecsWebSecretKey` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalCountryCode` | `string` | Yes |  |
| `terminalId` | `integer` | No |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalLanguageCode` | `string` | Yes |  |
| `terminalLocation` | `string` | Yes |  |
| `terminalSerialNumber` | `string` | No |  |
| `tokenIOAlias` | `string` | No |  |
| `tokenIOIban` | `string` | No |  |
| `tokenIOMemberId` | `string` | No |  |
| `webShopUrl` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->RegisterTerminal->create({
    'corporateUuid' => 'example_corporateUuid',  # string
    'packageOrderUuid' => 'example_packageOrderUuid',  # string
    'productOrderUuid' => 'example_productOrderUuid',  # string
    'templateName' => 'example_templateName',  # string
    'terminalCountryCode' => 'example_terminalCountryCode',  # string
    'terminalLanguageCode' => 'example_terminalLanguageCode',  # string
    'terminalLocation' => 'example_terminalLocation',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## ReportData entity

```perl
my $report_data = $client->ReportData;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `arrayref` | No |  |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `hashref` | No |  |
| `sumOverDebitTx` | `hashref` | No |  |
| `terminalId` | `integer` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->ReportData->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
    'corporateId' => 'example_corporateId',  # string
    'currency' => 'example_currency',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `ReportData` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## StatusTransaction entity

```perl
my $status_transaction = $client->StatusTransaction;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `integer` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `scalar` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardEntry` | `string` | No |  |
| `cardExpiration` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clearingAmount` | `integer` | No |  |
| `clearingBatchId` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingDate` | `string` | No |  |
| `clearingProcessedDate` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `clientId` | `integer` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvApplicationId` | `string` | No |  |
| `emvApplicationLabel` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `originalClientId` | `string` | No |  |
| `originalTerminalId` | `integer` | No |  |
| `originalTransactionId` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseCodeFromAS` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `settlementStatus` | `string` | No |  |
| `sourceId` | `integer` | No |  |
| `tecsengineResponseCode` | `integer` | No |  |
| `tecsengineResponseText` | `string` | No |  |
| `terminalEndOfDayDate` | `string` | No |  |
| `terminalId` | `integer` | No |  |
| `terminalLocation` | `string` | No |  |
| `tipAmount` | `integer` | No |  |
| `traceNumber` | `integer` | No |  |
| `transactionClearingDate` | `string` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionSeqNumber` | `integer` | No |  |
| `transactionServerDate` | `string` | No |  |
| `transactionSource` | `string` | No |  |
| `transactionType` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->StatusTransaction->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `StatusTransaction` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## StoreTerminalParameter entity

```perl
my $store_terminal_parameter = $client->StoreTerminalParameter;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `hashref` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->StoreTerminalParameter->create({
    'serialNumber' => 'example_serialNumber',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## TerminalId entity

```perl
my $terminal_id = $client->TerminalId;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `arrayref` | Yes |  |
| `duplicateTerminalIds` | `arrayref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `arrayref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->TerminalId->create({
    'deviceSerialNumber' => [],  # arrayref
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `TerminalId` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionHistory entity

```perl
my $transaction_history = $client->TransactionHistory;
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
| `pagination` | `hashref` | No |  |
| `paymentTokenPublicId` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `integer` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `integer` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionHistories` | `arrayref` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->TransactionHistory->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `TransactionHistory` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionsCount entity

```perl
my $transactions_count = $client->TransactionsCount;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `arrayref` | No |  |

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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->TransactionsCount->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `TransactionsCount` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionsCountCardBrand entity

```perl
my $transactions_count_card_brand = $client->TransactionsCountCardBrand;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `arrayref` | No |  |

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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->TransactionsCountCardBrand->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## TransactionsTurnover entity

```perl
my $transactions_turnover = $client->TransactionsTurnover;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `arrayref` | No |  |

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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->TransactionsTurnover->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## UpdateMerchant entity

```perl
my $update_merchant = $client->UpdateMerchant;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchantCategoryCode` | `string` | No |  |
| `name` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vuNummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->UpdateMerchant->create({
    'corporateUuid' => 'example_corporateUuid',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## UpdateTemplateXml entity

```perl
my $update_template_xml = $client->UpdateTemplateXml;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->UpdateTemplateXml->create({
    'templateName' => 'example_templateName',  # string
    'templateXml' => 'example_templateXml',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## Version entity

```perl
my $version = $client->Version;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load($reqmatch, $ctrl) -> hashref`

Load a single entity matching the given criteria. Returns the entity data and dies on error.

```perl
my $result = $client->Version->load();
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `Version` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```perl
my $client = BluefinTecsMerchantServicesSDK->new({
    'feature' => {
        'test' => { 'active' => 1 },
    },
});
```

