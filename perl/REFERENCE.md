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
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `integer` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `integer` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `integer` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `integer` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `integer` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `integer` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->CancelTransaction->create({
    'client_id' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receipt_number' => 'example_receipt_number',  # string
    'terminal_id' => 1,  # integer
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
| `card_no` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |

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
| `acquirer_id` | `integer` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_type` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |
| `terminal_type` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->CreateProduct->create({
    'template_name' => 'example_template_name',  # string
    'template_type' => 'example_template_type',  # string
    'template_xml' => 'example_template_xml',  # string
    'terminal_type' => 'example_terminal_type',  # string
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
| `corporate_uuid` | `string` | No |  |
| `deactivation_reason` | `string` | Yes |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->DeactivateTerminal->create({
    'deactivation_reason' => 'example_deactivation_reason',  # string
    'terminal_id' => 1,  # integer
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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `tx_count` | `integer` | No |  |
| `tx_id_end` | `string` | No |  |
| `tx_id_start` | `string` | No |  |
| `tx_seq_no_end` | `integer` | No |  |
| `tx_seq_no_start` | `integer` | No |  |
| `tx_total` | `integer` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->DigitalServicesApi->create({
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
| `ecom_data` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EcDataEcom->create({
    'terminal_id' => 1,  # integer
    'transaction_id' => 'example_transaction_id',  # string
    'transaction_type' => 'example_transaction_type',  # string
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
| `ecom_pass` | `string` | No |  |
| `ecom_skey` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EcomParameter->create({
    'terminal_id' => 1,  # integer
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
| `ecr_data` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EcrData->create({
    'terminal_id' => 1,  # integer
    'transaction_id' => 'example_transaction_id',  # string
    'transaction_type' => 'example_transaction_type',  # string
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
| `emv_data` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EmvData->create({
    'terminal_id' => 1,  # integer
    'transaction_id' => 'example_transaction_id',  # string
    'transaction_type' => 'example_transaction_type',  # string
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
| `account_no` | `integer` | No |  |
| `additional_data` | `hashref` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchant_category_code` | `integer` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `sorting_code` | `integer` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_id` | `arrayref` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `vu_nummer` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->EnableAcquiring->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
    'currency' => 'example_currency',  # string
    'merchant_category_code' => 1,  # integer
    'package_order_uuid' => 'example_package_order_uuid',  # string
    'product_order_uuid' => 'example_product_order_uuid',  # string
    'template_name' => 'example_template_name',  # string
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
| `merchant_contract_number` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->GetMerchantContractNumber->create({
    'merchant_contract_number' => 'example_merchant_contract_number',  # string
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
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->GetTemplateXml->create({
    'template_name' => 'example_template_name',  # string
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
| `mandator_name` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->IntroduceMandator->create({
    'mandator_name' => 'example_mandator_name',  # string
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
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_template_description` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->IntroducePackage->create({
    'terminal_template_description' => 'example_terminal_template_description',  # string
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
| `ka_date_time_from` | `string` | No |  |
| `ka_date_time_to` | `string` | No |  |
| `keep_alive_data` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_date_time_from` | `string` | No |  |
| `terminal_date_time_to` | `string` | No |  |
| `terminal_id` | `integer` | No |  |

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
| `corporate_uuid` | `arrayref` | No |  |
| `filter` | `hashref` | No |  |
| `pagination` | `hashref` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `arrayref` | No |  |

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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `pagination` | `hashref` | No |  |
| `record` | `arrayref` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MandatorClearingExport->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `file_id` | `string` | No |  |
| `filename_template` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MandatorClearingExportDownload->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
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
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `record` | `arrayref` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MandatorClearingExportSummary->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
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
| `3_d_secure` | `string` | No |  |
| `authorization_code` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `clearing_amount_from` | `string` | No |  |
| `clearing_amount_to` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `corporate_uuid` | `string` | No |  |
| `order_by_transaction_date` | `string` | No |  |
| `pagination` | `hashref` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `integer` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `integer` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

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
| `productorderuuid` | `arrayref` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `target_packageorderuuid` | `string` | No |  |
| `target_productorderuuid` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->MoveTid->create({
    'productorderuuid' => [],  # arrayref
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
| `acquirer_name` | `string` | No |  |
| `amount` | `integer` | Yes |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->PaymentManual->create({
    'amount' => 1,  # integer
    'card_number' => 'example_card_number',  # string
    'currency' => 'example_currency',  # string
    'exp_date' => 'example_exp_date',  # string
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
| `acquirer_name` | `string` | No |  |
| `amount` | `integer` | Yes |  |
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
| `sred` | `hashref` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->PaymentSred->create({
    'amount' => 1,  # integer
    'currency' => 'example_currency',  # string
    'device_payload' => 'example_device_payload',  # string
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
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `integer` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `card_number_reference` | `string` | Yes |  |
| `client_id` | `integer` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `integer` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `integer` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `integer` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `integer` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->PreAuthTransactionCompletion->create({
    'card_number_reference' => 'example_card_number_reference',  # string
    'client_id' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receipt_number' => 'example_receipt_number',  # string
    'terminal_id' => 1,  # integer
    'transaction_type' => 'example_transaction_type',  # string
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
| `corporate_uuid` | `string` | No |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `reactivation_reason` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->ReactivateTerminal->create({
    'reactivation_reason' => 'example_reactivation_reason',  # string
    'terminal_id' => 1,  # integer
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
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `integer` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `integer` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `integer` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `integer` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `integer` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `integer` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `integer` | No |  |
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->RefundTransaction->create({
    'client_id' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receipt_number' => 'example_receipt_number',  # string
    'terminal_id' => 1,  # integer
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
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `partner_id` | `integer` | No |  |
| `partner_name` | `string` | No |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->RegisterTecsCompany->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
    'package_order_uuid' => 'example_package_order_uuid',  # string
    'product_order_uuid' => 'example_product_order_uuid',  # string
    'template_name' => 'example_template_name',  # string
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
| `additional_data` | `hashref` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `tecs_web_secret_key` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_country_code` | `string` | Yes |  |
| `terminal_id` | `integer` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `terminal_language_code` | `string` | Yes |  |
| `terminal_location` | `string` | Yes |  |
| `terminal_serial_number` | `string` | No |  |
| `token_io_alia` | `string` | No |  |
| `token_io_iban` | `string` | No |  |
| `token_io_member_id` | `string` | No |  |
| `web_shop_url` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->RegisterTerminal->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
    'package_order_uuid' => 'example_package_order_uuid',  # string
    'product_order_uuid' => 'example_product_order_uuid',  # string
    'template_name' => 'example_template_name',  # string
    'terminal_country_code' => 'example_terminal_country_code',  # string
    'terminal_language_code' => 'example_terminal_language_code',  # string
    'terminal_location' => 'example_terminal_location',  # string
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
| `card_brand_report_data` | `arrayref` | No |  |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `corporate_id` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `sum_over_credit_tx` | `hashref` | No |  |
| `sum_over_debit_tx` | `hashref` | No |  |
| `terminal_id` | `integer` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->ReportData->create({
    'clearing_date_from' => 'example_clearing_date_from',  # string
    'clearing_date_to' => 'example_clearing_date_to',  # string
    'corporate_id' => 'example_corporate_id',  # string
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
| `acquirer_name` | `string` | No |  |
| `acquirer_terminal_id` | `string` | No |  |
| `amount` | `integer` | No |  |
| `application_cryptogram` | `string` | No |  |
| `authorization_code` | `scalar` | No |  |
| `authorization_date` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_entry` | `string` | No |  |
| `card_expiration` | `string` | No |  |
| `card_number` | `string` | No |  |
| `clearing_amount` | `integer` | No |  |
| `clearing_batch_id` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_date` | `string` | No |  |
| `clearing_processed_date` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `client_id` | `integer` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_application_id` | `string` | No |  |
| `emv_application_label` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `original_client_id` | `string` | No |  |
| `original_terminal_id` | `integer` | No |  |
| `original_transaction_id` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_code_from_a` | `string` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `service_code` | `string` | No |  |
| `settlement_status` | `string` | No |  |
| `source_id` | `integer` | No |  |
| `tecsengine_response_code` | `integer` | No |  |
| `tecsengine_response_text` | `string` | No |  |
| `terminal_end_of_day_date` | `string` | No |  |
| `terminal_id` | `integer` | No |  |
| `terminal_location` | `string` | No |  |
| `tip_amount` | `integer` | No |  |
| `trace_number` | `integer` | No |  |
| `transaction_clearing_date` | `string` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_seq_number` | `integer` | No |  |
| `transaction_server_date` | `string` | No |  |
| `transaction_source` | `string` | No |  |
| `transaction_type` | `string` | No |  |

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
| `acq_tab_nexo` | `hashref` | No |  |
| `config_version` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | Yes |  |
| `tid_sent` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->StoreTerminalParameter->create({
    'serial_number' => 'example_serial_number',  # string
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
| `device_serial_number` | `arrayref` | Yes |  |
| `duplicate_terminal_id` | `arrayref` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `arrayref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->TerminalId->create({
    'device_serial_number' => [],  # arrayref
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
| `3_d_secure` | `string` | No |  |
| `authorization_code` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `clearing_amount_from` | `string` | No |  |
| `clearing_amount_to` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `corporate_uuid` | `string` | No |  |
| `order_by_transaction_date` | `string` | No |  |
| `pagination` | `hashref` | No |  |
| `payment_token_public_id` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `integer` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `integer` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_history` | `arrayref` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

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
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `arrayref` | No |  |

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
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `arrayref` | No |  |

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
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `turnover` | `arrayref` | No |  |

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
| `corporate_uuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchant_category_code` | `string` | No |  |
| `name` | `string` | No |  |
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vu_nummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->UpdateMerchant->create({
    'corporate_uuid' => 'example_corporate_uuid',  # string
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
| `response_code` | `integer` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->UpdateTemplateXml->create({
    'template_name' => 'example_template_name',  # string
    'template_xml' => 'example_template_xml',  # string
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
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
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

