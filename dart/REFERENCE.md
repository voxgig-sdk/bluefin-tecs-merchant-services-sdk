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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `int` | No |  |
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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.CancelTransaction().create({
  'clientId': 1,  // int
  'currency': 'example_currency',  // String
  'receiptNumber': 'example_receiptNumber',  // String
  'terminalId': 1,  // int
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
| `cardNo` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

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
| `acquirerId` | `int` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateType` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |
| `terminalType` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.CreateProduct().create({
  'templateName': 'example_templateName',  // String
  'templateType': 'example_templateType',  // String
  'templateXml': 'example_templateXml',  // String
  'terminalType': 'example_terminalType',  // String
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
| `corporateUuid` | `String` | No |  |
| `deactivationReason` | `String` | Yes |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.DeactivateTerminal().create({
  'deactivationReason': 'example_deactivationReason',  // String
  'terminalId': 1,  // int
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
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `txCount` | `int` | No |  |
| `txIdEnd` | `String` | No |  |
| `txIdStart` | `String` | No |  |
| `txSeqNoEnd` | `int` | No |  |
| `txSeqNoStart` | `int` | No |  |
| `txTotal` | `int` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.DigitalServicesApi().create({
  'file_id': 'example_file_id',  // String
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `ecomData` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EcDataEcom().create({
  'terminalId': 1,  // int
  'transactionId': 'example_transactionId',  // String
  'transactionType': 'example_transactionType',  // String
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
| `ecomPass` | `String` | No |  |
| `ecomSkey` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EcomParameter().create({
  'terminalId': 1,  // int
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
| `ecrData` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EcrData().create({
  'terminalId': 1,  // int
  'transactionId': 'example_transactionId',  // String
  'transactionType': 'example_transactionType',  // String
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
| `emvData` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EmvData().create({
  'terminalId': 1,  // int
  'transactionId': 'example_transactionId',  // String
  'transactionType': 'example_transactionType',  // String
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
| `accountNo` | `int` | No |  |
| `additionalData` | `Map<String, dynamic>` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchantCategoryCode` | `int` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `sortingCode` | `int` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalIds` | `List<dynamic>` | No |  |
| `vuNummer` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.EnableAcquiring().create({
  'corporateUuid': 'example_corporateUuid',  // String
  'currency': 'example_currency',  // String
  'merchantCategoryCode': 1,  // int
  'packageOrderUuid': 'example_packageOrderUuid',  // String
  'productOrderUuid': 'example_productOrderUuid',  // String
  'templateName': 'example_templateName',  // String
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
| `merchantContractNumber` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.GetMerchantContractNumber().create({
  'merchantContractNumber': 'example_merchantContractNumber',  // String
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.GetTemplateXml().create({
  'templateName': 'example_templateName',  // String
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
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.IntroduceMandator().create({
  'mandatorName': 'example_mandatorName',  // String
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalTemplateDescription` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.IntroducePackage().create({
  'terminalTemplateDescription': 'example_terminalTemplateDescription',  // String
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
| `kaDateTimeFrom` | `String` | No |  |
| `kaDateTimeTo` | `String` | No |  |
| `keepAliveData` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalDateTimeFrom` | `String` | No |  |
| `terminalDateTimeTo` | `String` | No |  |
| `terminalId` | `int` | No |  |

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
| `corporateUuid` | `List<dynamic>` | No |  |
| `filter` | `Map<String, dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `List<dynamic>` | No |  |

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
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `Map<String, dynamic>` | No |  |
| `records` | `List<dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MandatorClearingExport().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `clearingDateFrom` | `String` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `String` | Yes | End date for clearing export (inclusive) |
| `fileId` | `String` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `String` | No | Optional filename template for the export file |
| `id` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `status` | `String` | No | Processing status of the export request |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MandatorClearingExportDownload().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `List<dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MandatorClearingExportSummary().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
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
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `int` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No | Filter by wallet type. |

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
| `productorderuuids` | `List<dynamic>` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `targetPackageorderuuid` | `String` | No |  |
| `targetProductorderuuid` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.MoveTid().create({
  'productorderuuids': <dynamic>[],  // List<dynamic>
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
| `acquirerName` | `String` | No | Acquirer name parsed from KKG field |
| `amount` | `int` | Yes | Transaction amount in minor units (cents) |
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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.PaymentManual().create({
  'amount': 1,  // int
  'cardNumber': 'example_cardNumber',  // String
  'currency': 'example_currency',  // String
  'expDate': 'example_expDate',  // String
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
| `amount` | `int` | Yes | Transaction amount in minor units (cents) |
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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.PaymentSred().create({
  'amount': 1,  // int
  'currency': 'example_currency',  // String
  'devicePayload': 'example_devicePayload',  // String
  'terminalId': 'example_terminalId',  // String
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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `cardNumberReference` | `String` | Yes |  |
| `clientId` | `int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `int` | No |  |
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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.PreAuthTransactionCompletion().create({
  'cardNumberReference': 'example_cardNumberReference',  // String
  'clientId': 1,  // int
  'currency': 'example_currency',  // String
  'receiptNumber': 'example_receiptNumber',  // String
  'terminalId': 1,  // int
  'transactionType': 'example_transactionType',  // String
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
| `corporateUuid` | `String` | No |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `reactivationReason` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.ReactivateTerminal().create({
  'reactivationReason': 'example_reactivationReason',  // String
  'terminalId': 1,  // int
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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `int` | No |  |
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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.RefundTransaction().create({
  'clientId': 1,  // int
  'currency': 'example_currency',  // String
  'receiptNumber': 'example_receiptNumber',  // String
  'terminalId': 1,  // int
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
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `partnerId` | `int` | No |  |
| `partnerName` | `String` | No |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.RegisterTecsCompany().create({
  'corporateUuid': 'example_corporateUuid',  // String
  'packageOrderUuid': 'example_packageOrderUuid',  // String
  'productOrderUuid': 'example_productOrderUuid',  // String
  'templateName': 'example_templateName',  // String
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
| `additionalData` | `Map<String, dynamic>` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `tecsWebSecretKey` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalCountryCode` | `String` | Yes |  |
| `terminalId` | `int` | No |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalLanguageCode` | `String` | Yes |  |
| `terminalLocation` | `String` | Yes |  |
| `terminalSerialNumber` | `String` | No |  |
| `tokenIOAlias` | `String` | No |  |
| `tokenIOIban` | `String` | No |  |
| `tokenIOMemberId` | `String` | No |  |
| `webShopUrl` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.RegisterTerminal().create({
  'corporateUuid': 'example_corporateUuid',  // String
  'packageOrderUuid': 'example_packageOrderUuid',  // String
  'productOrderUuid': 'example_productOrderUuid',  // String
  'templateName': 'example_templateName',  // String
  'terminalCountryCode': 'example_terminalCountryCode',  // String
  'terminalLanguageCode': 'example_terminalLanguageCode',  // String
  'terminalLocation': 'example_terminalLocation',  // String
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
| `cardBrandReportData` | `List<dynamic>` | No |  |
| `clearingDateFrom` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `String` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `sumOverCreditTx` | `Map<String, dynamic>` | No |  |
| `sumOverDebitTx` | `Map<String, dynamic>` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.ReportData().create({
  'clearingDateFrom': 'example_clearingDateFrom',  // String
  'clearingDateTo': 'example_clearingDateTo',  // String
  'corporateId': 'example_corporateId',  // String
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
| `acquirerName` | `String` | No |  |
| `acquirerTerminalId` | `String` | No |  |
| `amount` | `int` | No |  |
| `applicationCryptogram` | `String` | No |  |
| `authorizationCode` | `dynamic` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardEntry` | `String` | No |  |
| `cardExpiration` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clearingAmount` | `int` | No |  |
| `clearingBatchId` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingDate` | `String` | No |  |
| `clearingProcessedDate` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `clientId` | `int` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvApplicationId` | `String` | No |  |
| `emvApplicationLabel` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `originalClientId` | `String` | No |  |
| `originalTerminalId` | `int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseCodeFromAS` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `settlementStatus` | `String` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCode` | `int` | No |  |
| `tecsengineResponseText` | `String` | No |  |
| `terminalEndOfDayDate` | `String` | No |  |
| `terminalId` | `int` | No |  |
| `terminalLocation` | `String` | No |  |
| `tipAmount` | `int` | No |  |
| `traceNumber` | `int` | No |  |
| `transactionClearingDate` | `String` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionSeqNumber` | `int` | No |  |
| `transactionServerDate` | `String` | No |  |
| `transactionSource` | `String` | No |  |
| `transactionType` | `String` | No |  |

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
| `acqTabNexo` | `Map<String, dynamic>` | No |  |
| `configVersion` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | Yes |  |
| `tidSent` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.StoreTerminalParameter().create({
  'serialNumber': 'example_serialNumber',  // String
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
| `deviceSerialNumber` | `List<dynamic>` | Yes |  |
| `duplicateTerminalIds` | `List<dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `List<dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.TerminalId().create({
  'deviceSerialNumber': <dynamic>[],  // List<dynamic>
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
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `paymentTokenPublicId` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `int` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `int` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionHistories` | `List<dynamic>` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No | Filter by wallet type. |

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
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `List<dynamic>` | No |  |

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
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `List<dynamic>` | No |  |

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
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `turnovers` | `List<dynamic>` | No |  |

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
| `corporateUuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchantCategoryCode` | `String` | No |  |
| `name` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vuNummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.UpdateMerchant().create({
  'corporateUuid': 'example_corporateUuid',  // String
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.UpdateTemplateXml().create({
  'templateName': 'example_templateName',  // String
  'templateXml': 'example_templateXml',  // String
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
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
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
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
| `idempotency` | 0.0.1 | Idempotency keys for safe retries of mutating operations |
| `log` | 0.0.1 | Structured request and response logging |
| `metrics` | 0.0.1 | Statistics capture: per-operation counters and latency |
| `paging` | 0.0.1 | Pagination signals for list operations |
| `ratelimit` | 0.0.1 | Client-side rate limiting via a token bucket |
| `retry` | 0.0.1 | Automatic retry of transient failures with exponential backoff |
| `telemetry` | 0.0.1 | Distributed tracing spans with W3C trace-context propagation |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |
| `timeout` | 0.0.1 | Per-request timeout with transport abort |


Features are activated via the `feature` option:

```dart
final client = BluefinTecsMerchantServicesSDK({
  'feature': {
    'audit': {'active': true},
    'clienttrack': {'active': true},
    'idempotency': {'active': true},
    'log': {'active': true},
    'metrics': {'active': true},
    'paging': {'active': true},
    'ratelimit': {'active': true},
    'retry': {'active': true},
    'telemetry': {'active': true},
    'test': {'active': true},
    'timeout': {'active': true},
  },
});
```


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### Ordering

`ratelimit`, `retry`, `timeout` wrap the transport. Each
wraps whatever is already installed, so **activation order is nesting order**:
a feature activated later sits OUTSIDE one activated earlier, and sees the call
first.

That decides behaviour, not just sequence: a feature that short-circuits the
call, such as a cache serving a hit, stops every feature nested inside it from
ever seeing that call.

`audit`, `clienttrack`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.audit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `clienttrack`

Client identity and per-request correlation headers.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `idempotency`

Idempotency keys for safe retries of mutating operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.idempotency.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `log`

Structured request and response logging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `true` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.log.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `metrics`

Statistics capture: per-operation counters and latency.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.metrics.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `paging`

Pagination signals for list operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.paging.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `ratelimit`

Client-side rate limiting via a token bucket.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.ratelimit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `retry`

Automatic retry of transient failures with exponential backoff.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.retry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `telemetry`

Distributed tracing spans with W3C trace-context propagation.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.telemetry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.

#### `timeout`

Per-request timeout with transport abort.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

