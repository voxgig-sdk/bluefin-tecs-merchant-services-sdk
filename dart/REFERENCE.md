# BluefinTecsMerchantServices Dart SDK Reference

Complete API reference for the BluefinTecsMerchantServices Dart SDK.

## BluefinTecsMerchantServicesSDK

### Constructor

```dart
import 'package:bluefin_tecs_merchant_services_sdk/BluefinTecsMerchantServicesSDK.dart';

final client = BluefinTecsMerchantServicesSDK(options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Map` | SDK configuration options. |
| `options['apikey']` | `String` | API key for authentication. |
| `options['base']` | `String` | Base URL for API requests. |
| `options['prefix']` | `String` | URL prefix appended after base. |
| `options['suffix']` | `String` | URL suffix appended after path. |
| `options['headers']` | `Map` | Custom headers for all requests. |
| `options['feature']` | `Map` | Feature configuration. |
| `options['system']` | `Map` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsMerchantServicesSDK.test([testopts, sdkopts])`

Create a test client with mock features active. Both arguments may be `null`.

```dart
final client = BluefinTecsMerchantServicesSDK.test();
```


### Instance Methods

#### `CancelTransaction([entopts])`

Create a new `CancelTransactionEntity` instance. Pass no argument for no initial data.

#### `CheckCardBlackListed([entopts])`

Create a new `CheckCardBlackListedEntity` instance. Pass no argument for no initial data.

#### `CreateProduct([entopts])`

Create a new `CreateProductEntity` instance. Pass no argument for no initial data.

#### `DeactivateTerminal([entopts])`

Create a new `DeactivateTerminalEntity` instance. Pass no argument for no initial data.

#### `DigitalServicesApi([entopts])`

Create a new `DigitalServicesApiEntity` instance. Pass no argument for no initial data.

#### `EcDataEcom([entopts])`

Create a new `EcDataEcomEntity` instance. Pass no argument for no initial data.

#### `EcomParameter([entopts])`

Create a new `EcomParameterEntity` instance. Pass no argument for no initial data.

#### `EcrData([entopts])`

Create a new `EcrDataEntity` instance. Pass no argument for no initial data.

#### `EmvData([entopts])`

Create a new `EmvDataEntity` instance. Pass no argument for no initial data.

#### `EnableAcquiring([entopts])`

Create a new `EnableAcquiringEntity` instance. Pass no argument for no initial data.

#### `GetMerchantContractNumber([entopts])`

Create a new `GetMerchantContractNumberEntity` instance. Pass no argument for no initial data.

#### `GetTemplateXml([entopts])`

Create a new `GetTemplateXmlEntity` instance. Pass no argument for no initial data.

#### `IntroduceMandator([entopts])`

Create a new `IntroduceMandatorEntity` instance. Pass no argument for no initial data.

#### `IntroducePackage([entopts])`

Create a new `IntroducePackageEntity` instance. Pass no argument for no initial data.

#### `KeepAlive([entopts])`

Create a new `KeepAliveEntity` instance. Pass no argument for no initial data.

#### `ListTerminal([entopts])`

Create a new `ListTerminalEntity` instance. Pass no argument for no initial data.

#### `MandatorClearingExport([entopts])`

Create a new `MandatorClearingExportEntity` instance. Pass no argument for no initial data.

#### `MandatorClearingExportDownload([entopts])`

Create a new `MandatorClearingExportDownloadEntity` instance. Pass no argument for no initial data.

#### `MandatorClearingExportSummary([entopts])`

Create a new `MandatorClearingExportSummaryEntity` instance. Pass no argument for no initial data.

#### `MerchantPortalServicesApi([entopts])`

Create a new `MerchantPortalServicesApiEntity` instance. Pass no argument for no initial data.

#### `MoveTid([entopts])`

Create a new `MoveTidEntity` instance. Pass no argument for no initial data.

#### `PaymentManual([entopts])`

Create a new `PaymentManualEntity` instance. Pass no argument for no initial data.

#### `PaymentSred([entopts])`

Create a new `PaymentSredEntity` instance. Pass no argument for no initial data.

#### `PreAuthTransactionCompletion([entopts])`

Create a new `PreAuthTransactionCompletionEntity` instance. Pass no argument for no initial data.

#### `ReactivateTerminal([entopts])`

Create a new `ReactivateTerminalEntity` instance. Pass no argument for no initial data.

#### `RefundTransaction([entopts])`

Create a new `RefundTransactionEntity` instance. Pass no argument for no initial data.

#### `RegisterTecsCompany([entopts])`

Create a new `RegisterTecsCompanyEntity` instance. Pass no argument for no initial data.

#### `RegisterTerminal([entopts])`

Create a new `RegisterTerminalEntity` instance. Pass no argument for no initial data.

#### `ReportData([entopts])`

Create a new `ReportDataEntity` instance. Pass no argument for no initial data.

#### `StatusTransaction([entopts])`

Create a new `StatusTransactionEntity` instance. Pass no argument for no initial data.

#### `StoreTerminalParameter([entopts])`

Create a new `StoreTerminalParameterEntity` instance. Pass no argument for no initial data.

#### `TerminalId([entopts])`

Create a new `TerminalIdEntity` instance. Pass no argument for no initial data.

#### `TransactionHistory([entopts])`

Create a new `TransactionHistoryEntity` instance. Pass no argument for no initial data.

#### `TransactionsCount([entopts])`

Create a new `TransactionsCountEntity` instance. Pass no argument for no initial data.

#### `TransactionsCountCardBrand([entopts])`

Create a new `TransactionsCountCardBrandEntity` instance. Pass no argument for no initial data.

#### `TransactionsTurnover([entopts])`

Create a new `TransactionsTurnoverEntity` instance. Pass no argument for no initial data.

#### `UpdateMerchant([entopts])`

Create a new `UpdateMerchantEntity` instance. Pass no argument for no initial data.

#### `UpdateTemplateXml([entopts])`

Create a new `UpdateTemplateXmlEntity` instance. Pass no argument for no initial data.

#### `Version([entopts])`

Create a new `VersionEntity` instance. Pass no argument for no initial data.

#### `options() -> Map`

Return a deep copy of the current SDK options.

#### `utility() -> Utility`

Return the SDK utility object.

#### `direct([fetchargs]) -> Future<Map>`

Make a direct HTTP request to any API endpoint. Returns a result `Map` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never throws — branch on `result['ok']`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs['path']` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs['method']` | `String` | HTTP method (default: `'GET'`). |
| `fetchargs['params']` | `Map` | Path parameter values. |
| `fetchargs['query']` | `Map` | Query string parameters. |
| `fetchargs['headers']` | `Map` | Request headers (merged with defaults). |
| `fetchargs['body']` | `dynamic` | Request body (maps are JSON-serialized). |

**Returns:** `Future<Map>`

#### `prepare([fetchargs]) -> Future`

Prepare a fetch definition without sending. Returns the `fetchdef` (or an error value on failure).


---

## CancelTransactionEntity

```dart
final cancel_transaction = client.CancelTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `tx_type` | `String` | No |  |
| `user_data` | `String` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.CancelTransaction().create({
  'client_id': 1,  // int
  'currency': 'example_currency',  // String
  'receipt_number': 'example_receipt_number',  // String
  'terminal_id': 1,  // int
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `CancelTransactionEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## CheckCardBlackListedEntity

```dart
final check_card_black_listed = client.CheckCardBlackListed();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.CheckCardBlackListed().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `CheckCardBlackListedEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## CreateProductEntity

```dart
final create_product = client.CreateProduct();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `int` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_type` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |
| `terminal_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.CreateProduct().create({
  'template_name': 'example_template_name',  // String
  'template_type': 'example_template_type',  // String
  'template_xml': 'example_template_xml',  // String
  'terminal_type': 'example_terminal_type',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `CreateProductEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## DeactivateTerminalEntity

```dart
final deactivate_terminal = client.DeactivateTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `deactivation_reason` | `String` | Yes |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.DeactivateTerminal().create({
  'deactivation_reason': 'example_deactivation_reason',  // String
  'terminal_id': 1,  // int
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `DeactivateTerminalEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## DigitalServicesApiEntity

```dart
final digital_services_api = client.DigitalServicesApi();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `tx_count` | `int` | No |  |
| `tx_id_end` | `String` | No |  |
| `tx_id_start` | `String` | No |  |
| `tx_seq_no_end` | `int` | No |  |
| `tx_seq_no_start` | `int` | No |  |
| `tx_total` | `int` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.DigitalServicesApi().create({
});
```

#### `load(reqmatch, [ctrl]) -> Future<dynamic>`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```dart
final result = await client.DigitalServicesApi().load();
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `DigitalServicesApiEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## EcDataEcomEntity

```dart
final ec_data_ecom = client.EcDataEcom();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EcDataEcom().create({
  'terminal_id': 1,  // int
  'transaction_id': 'example_transaction_id',  // String
  'transaction_type': 'example_transaction_type',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `EcDataEcomEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## EcomParameterEntity

```dart
final ecom_parameter = client.EcomParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `String` | No |  |
| `ecom_skey` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EcomParameter().create({
  'terminal_id': 1,  // int
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `EcomParameterEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## EcrDataEntity

```dart
final ecr_data = client.EcrData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EcrData().create({
  'terminal_id': 1,  // int
  'transaction_id': 'example_transaction_id',  // String
  'transaction_type': 'example_transaction_type',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `EcrDataEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## EmvDataEntity

```dart
final emv_data = client.EmvData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EmvData().create({
  'terminal_id': 1,  // int
  'transaction_id': 'example_transaction_id',  // String
  'transaction_type': 'example_transaction_type',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `EmvDataEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## EnableAcquiringEntity

```dart
final enable_acquiring = client.EnableAcquiring();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `int` | No |  |
| `additional_data` | `Map<String, dynamic>` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchant_category_code` | `int` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `sorting_code` | `int` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_id` | `List<dynamic>` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `vu_nummer` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EnableAcquiring().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
  'currency': 'example_currency',  // String
  'merchant_category_code': 1,  // int
  'package_order_uuid': 'example_package_order_uuid',  // String
  'product_order_uuid': 'example_product_order_uuid',  // String
  'template_name': 'example_template_name',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `EnableAcquiringEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## GetMerchantContractNumberEntity

```dart
final get_merchant_contract_number = client.GetMerchantContractNumber();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.GetMerchantContractNumber().create({
  'merchant_contract_number': 'example_merchant_contract_number',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `GetMerchantContractNumberEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## GetTemplateXmlEntity

```dart
final get_template_xml = client.GetTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.GetTemplateXml().create({
  'template_name': 'example_template_name',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `GetTemplateXmlEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## IntroduceMandatorEntity

```dart
final introduce_mandator = client.IntroduceMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.IntroduceMandator().create({
  'mandator_name': 'example_mandator_name',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `IntroduceMandatorEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## IntroducePackageEntity

```dart
final introduce_package = client.IntroducePackage();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_template_description` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.IntroducePackage().create({
  'terminal_template_description': 'example_terminal_template_description',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `IntroducePackageEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## KeepAliveEntity

```dart
final keep_alive = client.KeepAlive();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `ka_date_time_from` | `String` | No |  |
| `ka_date_time_to` | `String` | No |  |
| `keep_alive_data` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_date_time_from` | `String` | No |  |
| `terminal_date_time_to` | `String` | No |  |
| `terminal_id` | `int` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.KeepAlive().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `KeepAliveEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## ListTerminalEntity

```dart
final list_terminal = client.ListTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `List<dynamic>` | No |  |
| `filter` | `Map<String, dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `List<dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.ListTerminal().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `ListTerminalEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## MandatorClearingExportEntity

```dart
final mandator_clearing_export = client.MandatorClearingExport();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `record` | `List<dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MandatorClearingExport().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `MandatorClearingExportEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## MandatorClearingExportDownloadEntity

```dart
final mandator_clearing_export_download = client.MandatorClearingExportDownload();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `file_id` | `String` | No |  |
| `filename_template` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MandatorClearingExportDownload().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
});
```

#### `load(reqmatch, [ctrl]) -> Future<dynamic>`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```dart
final result = await client.MandatorClearingExportDownload().load({'id': 'mandator_clearing_export_download_id'});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `MandatorClearingExportDownloadEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## MandatorClearingExportSummaryEntity

```dart
final mandator_clearing_export_summary = client.MandatorClearingExportSummary();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `record` | `List<dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MandatorClearingExportSummary().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `MandatorClearingExportSummaryEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## MerchantPortalServicesApiEntity

```dart
final merchant_portal_services_api = client.MerchantPortalServicesApi();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `String` | No |  |
| `authorization_code` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `clearing_amount_from` | `String` | No |  |
| `clearing_amount_to` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `corporate_uuid` | `String` | No |  |
| `order_by_transaction_date` | `String` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MerchantPortalServicesApi().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `MerchantPortalServicesApiEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## MoveTidEntity

```dart
final move_tid = client.MoveTid();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `List<dynamic>` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `target_packageorderuuid` | `String` | No |  |
| `target_productorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MoveTid().create({
  'productorderuuid': <dynamic>[],  // List<dynamic>
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `MoveTidEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## PaymentManualEntity

```dart
final payment_manual = client.PaymentManual();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `int` | Yes |  |
| `authorization_number` | `String` | No |  |
| `card_number` | `String` | Yes |  |
| `card_type` | `String` | No |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `date_time_tx` | `String` | No |  |
| `exp_date` | `String` | Yes |  |
| `merchant_id` | `String` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `response_code` | `String` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `txtype` | `String` | Yes |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.PaymentManual().create({
  'amount': 1,  // int
  'card_number': 'example_card_number',  // String
  'currency': 'example_currency',  // String
  'exp_date': 'example_exp_date',  // String
  'txtype': 'example_txtype',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `PaymentManualEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## PaymentSredEntity

```dart
final payment_sred = client.PaymentSred();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `int` | Yes |  |
| `authorization_number` | `String` | No |  |
| `card_type` | `String` | No |  |
| `currency` | `String` | Yes |  |
| `date_time_tx` | `String` | No |  |
| `device_payload` | `String` | Yes |  |
| `merchant_id` | `String` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `response_code` | `String` | No |  |
| `response_message` | `String` | No |  |
| `sred` | `Map<String, dynamic>` | No |  |
| `terminal_id` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `txtype` | `String` | Yes |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.PaymentSred().create({
  'amount': 1,  // int
  'currency': 'example_currency',  // String
  'device_payload': 'example_device_payload',  // String
  'txtype': 'example_txtype',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `PaymentSredEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## PreAuthTransactionCompletionEntity

```dart
final pre_auth_transaction_completion = client.PreAuthTransactionCompletion();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `card_number_reference` | `String` | Yes |  |
| `client_id` | `int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | Yes |  |
| `tx_type` | `String` | No |  |
| `user_data` | `String` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.PreAuthTransactionCompletion().create({
  'card_number_reference': 'example_card_number_reference',  // String
  'client_id': 1,  // int
  'currency': 'example_currency',  // String
  'receipt_number': 'example_receipt_number',  // String
  'terminal_id': 1,  // int
  'transaction_type': 'example_transaction_type',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `PreAuthTransactionCompletionEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## ReactivateTerminalEntity

```dart
final reactivate_terminal = client.ReactivateTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `reactivation_reason` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.ReactivateTerminal().create({
  'reactivation_reason': 'example_reactivation_reason',  // String
  'terminal_id': 1,  // int
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `ReactivateTerminalEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## RefundTransactionEntity

```dart
final refund_transaction = client.RefundTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `tx_type` | `String` | No |  |
| `user_data` | `String` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.RefundTransaction().create({
  'client_id': 1,  // int
  'currency': 'example_currency',  // String
  'receipt_number': 'example_receipt_number',  // String
  'terminal_id': 1,  // int
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `RefundTransactionEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## RegisterTecsCompanyEntity

```dart
final register_tecs_company = client.RegisterTecsCompany();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `partner_id` | `int` | No |  |
| `partner_name` | `String` | No |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.RegisterTecsCompany().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
  'package_order_uuid': 'example_package_order_uuid',  // String
  'product_order_uuid': 'example_product_order_uuid',  // String
  'template_name': 'example_template_name',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `RegisterTecsCompanyEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## RegisterTerminalEntity

```dart
final register_terminal = client.RegisterTerminal();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `Map<String, dynamic>` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `tecs_web_secret_key` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_country_code` | `String` | Yes |  |
| `terminal_id` | `int` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `terminal_language_code` | `String` | Yes |  |
| `terminal_location` | `String` | Yes |  |
| `terminal_serial_number` | `String` | No |  |
| `token_io_alia` | `String` | No |  |
| `token_io_iban` | `String` | No |  |
| `token_io_member_id` | `String` | No |  |
| `web_shop_url` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.RegisterTerminal().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
  'package_order_uuid': 'example_package_order_uuid',  // String
  'product_order_uuid': 'example_product_order_uuid',  // String
  'template_name': 'example_template_name',  // String
  'terminal_country_code': 'example_terminal_country_code',  // String
  'terminal_language_code': 'example_terminal_language_code',  // String
  'terminal_location': 'example_terminal_location',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `RegisterTerminalEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## ReportDataEntity

```dart
final report_data = client.ReportData();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `List<dynamic>` | No |  |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `corporate_id` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `sum_over_credit_tx` | `Map<String, dynamic>` | No |  |
| `sum_over_debit_tx` | `Map<String, dynamic>` | No |  |
| `terminal_id` | `int` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.ReportData().create({
  'clearing_date_from': 'example_clearing_date_from',  // String
  'clearing_date_to': 'example_clearing_date_to',  // String
  'corporate_id': 'example_corporate_id',  // String
  'currency': 'example_currency',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `ReportDataEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## StatusTransactionEntity

```dart
final status_transaction = client.StatusTransaction();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `acquirer_terminal_id` | `String` | No |  |
| `amount` | `int` | No |  |
| `application_cryptogram` | `String` | No |  |
| `authorization_code` | `dynamic` | No |  |
| `authorization_date` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_entry` | `String` | No |  |
| `card_expiration` | `String` | No |  |
| `card_number` | `String` | No |  |
| `clearing_amount` | `int` | No |  |
| `clearing_batch_id` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_date` | `String` | No |  |
| `clearing_processed_date` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `client_id` | `int` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_application_id` | `String` | No |  |
| `emv_application_label` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `original_client_id` | `String` | No |  |
| `original_terminal_id` | `int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_code_from_a` | `String` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `service_code` | `String` | No |  |
| `settlement_status` | `String` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code` | `int` | No |  |
| `tecsengine_response_text` | `String` | No |  |
| `terminal_end_of_day_date` | `String` | No |  |
| `terminal_id` | `int` | No |  |
| `terminal_location` | `String` | No |  |
| `tip_amount` | `int` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_clearing_date` | `String` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_seq_number` | `int` | No |  |
| `transaction_server_date` | `String` | No |  |
| `transaction_source` | `String` | No |  |
| `transaction_type` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.StatusTransaction().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `StatusTransactionEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## StoreTerminalParameterEntity

```dart
final store_terminal_parameter = client.StoreTerminalParameter();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `Map<String, dynamic>` | No |  |
| `config_version` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | Yes |  |
| `tid_sent` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.StoreTerminalParameter().create({
  'serial_number': 'example_serial_number',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `StoreTerminalParameterEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## TerminalIdEntity

```dart
final terminal_id = client.TerminalId();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `List<dynamic>` | Yes |  |
| `duplicate_terminal_id` | `List<dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `List<dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.TerminalId().create({
  'device_serial_number': <dynamic>[],  // List<dynamic>
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `TerminalIdEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## TransactionHistoryEntity

```dart
final transaction_history = client.TransactionHistory();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3_d_secure` | `String` | No |  |
| `authorization_code` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `clearing_amount_from` | `String` | No |  |
| `clearing_amount_to` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `corporate_uuid` | `String` | No |  |
| `order_by_transaction_date` | `String` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `payment_token_public_id` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_history` | `List<dynamic>` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.TransactionHistory().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `TransactionHistoryEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## TransactionsCountEntity

```dart
final transactions_count = client.TransactionsCount();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `List<dynamic>` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.TransactionsCount().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `TransactionsCountEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## TransactionsCountCardBrandEntity

```dart
final transactions_count_card_brand = client.TransactionsCountCardBrand();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `List<dynamic>` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.TransactionsCountCardBrand().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `TransactionsCountCardBrandEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## TransactionsTurnoverEntity

```dart
final transactions_turnover = client.TransactionsTurnover();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `turnover` | `List<dynamic>` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.TransactionsTurnover().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `TransactionsTurnoverEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## UpdateMerchantEntity

```dart
final update_merchant = client.UpdateMerchant();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchant_category_code` | `String` | No |  |
| `name` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vu_nummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.UpdateMerchant().create({
  'corporate_uuid': 'example_corporate_uuid',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `UpdateMerchantEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## UpdateTemplateXmlEntity

```dart
final update_template_xml = client.UpdateTemplateXml();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.UpdateTemplateXml().create({
  'template_name': 'example_template_name',  // String
  'template_xml': 'example_template_xml',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `UpdateTemplateXmlEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## VersionEntity

```dart
final version = client.Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, [ctrl]) -> Future<dynamic>`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```dart
final result = await client.Version().load();
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `VersionEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```dart
final client = BluefinTecsMerchantServicesSDK({
  'feature': {
    'test': {'active': true},
  },
});
```

