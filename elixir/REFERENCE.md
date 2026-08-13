# BluefinTecsMerchantServices Elixir SDK Reference

Complete API reference for the BluefinTecsMerchantServices Elixir SDK.


## BluefinTecsMerchantServices

### Constructor

```elixir
sdk = BluefinTecsMerchantServices.new(options)
```

Create a new SDK client. `options` is a struct value node — build one from a
native map with `BluefinTecsMerchantServices.Helpers.deep/1`.

**Options:**

| Name | Type | Description |
| --- | --- | --- |
| `apikey` | `String.t()` | API key for authentication. |
| `base` | `String.t()` | Base URL for API requests. |
| `prefix` | `String.t()` | URL prefix appended after base. |
| `suffix` | `String.t()` | URL suffix appended after path. |
| `headers` | `map()` | Custom headers for all requests. |
| `feature` | `map()` | Feature configuration. |
| `system` | `map()` | System overrides (e.g. custom fetch). |


### Constructors

#### `BluefinTecsMerchantServices.test(testopts \\ nil, sdkopts \\ nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```elixir
sdk = BluefinTecsMerchantServices.test()
```


### Functions

#### `BluefinTecsMerchantServices.cancel_transaction(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.CancelTransaction` handle.

#### `BluefinTecsMerchantServices.check_card_black_listed(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.CheckCardBlackListed` handle.

#### `BluefinTecsMerchantServices.create_product(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.CreateProduct` handle.

#### `BluefinTecsMerchantServices.deactivate_terminal(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.DeactivateTerminal` handle.

#### `BluefinTecsMerchantServices.digital_services_api(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.DigitalServicesApi` handle.

#### `BluefinTecsMerchantServices.ec_data_ecom(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.EcDataEcom` handle.

#### `BluefinTecsMerchantServices.ecom_parameter(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.EcomParameter` handle.

#### `BluefinTecsMerchantServices.ecr_data(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.EcrData` handle.

#### `BluefinTecsMerchantServices.emv_data(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.EmvData` handle.

#### `BluefinTecsMerchantServices.enable_acquiring(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.EnableAcquiring` handle.

#### `BluefinTecsMerchantServices.get_merchant_contract_number(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.GetMerchantContractNumber` handle.

#### `BluefinTecsMerchantServices.get_template_xml(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.GetTemplateXml` handle.

#### `BluefinTecsMerchantServices.introduce_mandator(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.IntroduceMandator` handle.

#### `BluefinTecsMerchantServices.introduce_package(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.IntroducePackage` handle.

#### `BluefinTecsMerchantServices.keep_alive(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.KeepAlive` handle.

#### `BluefinTecsMerchantServices.list_terminal(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.ListTerminal` handle.

#### `BluefinTecsMerchantServices.mandator_clearing_export(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.MandatorClearingExport` handle.

#### `BluefinTecsMerchantServices.mandator_clearing_export_download(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload` handle.

#### `BluefinTecsMerchantServices.mandator_clearing_export_summary(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary` handle.

#### `BluefinTecsMerchantServices.merchant_portal_services_api(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.MerchantPortalServicesApi` handle.

#### `BluefinTecsMerchantServices.move_tid(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.MoveTid` handle.

#### `BluefinTecsMerchantServices.payment_manual(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.PaymentManual` handle.

#### `BluefinTecsMerchantServices.payment_sred(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.PaymentSred` handle.

#### `BluefinTecsMerchantServices.pre_auth_transaction_completion(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion` handle.

#### `BluefinTecsMerchantServices.reactivate_terminal(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.ReactivateTerminal` handle.

#### `BluefinTecsMerchantServices.refund_transaction(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.RefundTransaction` handle.

#### `BluefinTecsMerchantServices.register_tecs_company(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.RegisterTecsCompany` handle.

#### `BluefinTecsMerchantServices.register_terminal(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.RegisterTerminal` handle.

#### `BluefinTecsMerchantServices.report_data(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.ReportData` handle.

#### `BluefinTecsMerchantServices.status_transaction(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.StatusTransaction` handle.

#### `BluefinTecsMerchantServices.store_terminal_parameter(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.StoreTerminalParameter` handle.

#### `BluefinTecsMerchantServices.terminal_id(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.TerminalId` handle.

#### `BluefinTecsMerchantServices.transaction_history(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.TransactionHistory` handle.

#### `BluefinTecsMerchantServices.transactions_count(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.TransactionsCount` handle.

#### `BluefinTecsMerchantServices.transactions_count_card_brand(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.TransactionsCountCardBrand` handle.

#### `BluefinTecsMerchantServices.transactions_turnover(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.TransactionsTurnover` handle.

#### `BluefinTecsMerchantServices.update_merchant(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.UpdateMerchant` handle.

#### `BluefinTecsMerchantServices.update_template_xml(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.UpdateTemplateXml` handle.

#### `BluefinTecsMerchantServices.version(client, entopts \\ nil)`

Create a `BluefinTecsMerchantServices.Entity.Version` handle.

#### `options_map(client) :: map()`

Return a deep copy of the current SDK options.

#### `get_utility(client) :: map()`

Return the SDK utility node.

#### `direct(client, fetchargs) :: map()`

Make a direct HTTP request to any API endpoint. Returns a result node with
`ok`, `status`, `headers`, and `data` (or `err` on failure). This escape
hatch never raises — branch on `Voxgig.Struct.getprop(result, "ok")`.

**fetchargs keys:**

| Key | Type | Description |
| --- | --- | --- |
| `path` | `String.t()` | URL path with optional `{param}` placeholders. |
| `method` | `String.t()` | HTTP method (default: `"GET"`). |
| `params` | `map()` | Path parameter values. |
| `query` | `map()` | Query string parameters. |
| `headers` | `map()` | Request headers (merged with defaults). |
| `body` | `any()` | Request body (maps are JSON-serialized). |

#### `prepare(client, fetchargs) :: map()`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises
on error.


---

## BluefinTecsMerchantServices.Entity.CancelTransaction

```elixir
cancel_transaction = BluefinTecsMerchantServices.cancel_transaction(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String.t()` | No |  |
| `acquirerName` | `String.t()` | No |  |
| `actualBonusPoints` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `authorizationCode` | `String.t()` | No |  |
| `balanceAmount` | `String.t()` | No |  |
| `cardBrand` | `String.t()` | No |  |
| `cardNumber` | `String.t()` | No |  |
| `clientId` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `ecData` | `String.t()` | No |  |
| `ecrData` | `String.t()` | No |  |
| `emvData` | `String.t()` | No |  |
| `exchangeFee` | `integer()` | No |  |
| `exchangeRate` | `String.t()` | No |  |
| `languageCode` | `String.t()` | No |  |
| `merchantAddress` | `String.t()` | No |  |
| `merchantName` | `String.t()` | No |  |
| `merchantNumber` | `String.t()` | No |  |
| `messageType` | `String.t()` | No |  |
| `originalTraceNumber` | `integer()` | No |  |
| `originalTransactionId` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `paymentReason` | `String.t()` | No |  |
| `receiptFooter` | `String.t()` | No |  |
| `receiptHeader` | `String.t()` | No |  |
| `receiptLayout` | `integer()` | No |  |
| `receiptNumber` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `serialNumber` | `String.t()` | No |  |
| `svc` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |
| `terminalLocation` | `String.t()` | No |  |
| `traceNumber` | `integer()` | No |  |
| `transactionDate` | `String.t()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `txType` | `String.t()` | No |  |
| `userData` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.CancelTransaction.create(cancel_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "clientId" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receiptNumber" => "example_receiptNumber",  # String.t()
  "terminalId" => 1,  # integer()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.CancelTransaction` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.CheckCardBlackListed

```elixir
check_card_black_listed = BluefinTecsMerchantServices.check_card_black_listed(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardNo` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.CheckCardBlackListed.create(check_card_black_listed, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.CheckCardBlackListed` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.CreateProduct

```elixir
create_product = BluefinTecsMerchantServices.create_product(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `integer()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `templateName` | `String.t()` | Yes |  |
| `templateType` | `String.t()` | Yes |  |
| `templateXml` | `String.t()` | Yes |  |
| `terminalType` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.CreateProduct.create(create_product, BluefinTecsMerchantServices.Helpers.deep(%{
  "templateName" => "example_templateName",  # String.t()
  "templateType" => "example_templateType",  # String.t()
  "templateXml" => "example_templateXml",  # String.t()
  "terminalType" => "example_terminalType",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.CreateProduct` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.DeactivateTerminal

```elixir
deactivate_terminal = BluefinTecsMerchantServices.deactivate_terminal(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String.t()` | No |  |
| `deactivationReason` | `String.t()` | Yes |  |
| `packageOrderUuid` | `String.t()` | No |  |
| `productOrderUuid` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.DeactivateTerminal.create(deactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "deactivationReason" => "example_deactivationReason",  # String.t()
  "terminalId" => 1,  # integer()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.DeactivateTerminal` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.DigitalServicesApi

```elixir
digital_services_api = BluefinTecsMerchantServices.digital_services_api(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Yes |  |
| `clearingDateTo` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `txCount` | `integer()` | No |  |
| `txIdEnd` | `String.t()` | No |  |
| `txIdStart` | `String.t()` | No |  |
| `txSeqNoEnd` | `integer()` | No |  |
| `txSeqNoStart` | `integer()` | No |  |
| `txTotal` | `integer()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.create(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```

#### `load(entity, reqmatch, ctrl \\ nil) :: map()`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.load(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.DigitalServicesApi` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.EcDataEcom

```elixir
ec_data_ecom = BluefinTecsMerchantServices.ec_data_ecom(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomData` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |
| `transactionId` | `String.t()` | Yes |  |
| `transactionType` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EcDataEcom.create(ec_data_ecom, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
  "transactionId" => "example_transactionId",  # String.t()
  "transactionType" => "example_transactionType",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.EcDataEcom` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.EcomParameter

```elixir
ecom_parameter = BluefinTecsMerchantServices.ecom_parameter(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecomPass` | `String.t()` | No |  |
| `ecomSkey` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EcomParameter.create(ecom_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.EcomParameter` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.EcrData

```elixir
ecr_data = BluefinTecsMerchantServices.ecr_data(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecrData` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |
| `transactionId` | `String.t()` | Yes |  |
| `transactionType` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EcrData.create(ecr_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
  "transactionId" => "example_transactionId",  # String.t()
  "transactionType" => "example_transactionType",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.EcrData` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.EmvData

```elixir
emv_data = BluefinTecsMerchantServices.emv_data(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emvData` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |
| `transactionId` | `String.t()` | Yes |  |
| `transactionType` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EmvData.create(emv_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalId" => 1,  # integer()
  "transactionId" => "example_transactionId",  # String.t()
  "transactionType" => "example_transactionType",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.EmvData` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.EnableAcquiring

```elixir
enable_acquiring = BluefinTecsMerchantServices.enable_acquiring(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `accountNo` | `integer()` | No |  |
| `additionalData` | `map()` | No |  |
| `corporateUuid` | `String.t()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `merchantCategoryCode` | `integer()` | Yes |  |
| `packageOrderUuid` | `String.t()` | Yes |  |
| `productOrderUuid` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `sortingCode` | `integer()` | No |  |
| `templateName` | `String.t()` | Yes |  |
| `terminalIdAcq` | `String.t()` | No |  |
| `terminalIds` | `list()` | No |  |
| `vuNummer` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EnableAcquiring.create(enable_acquiring, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
  "currency" => "example_currency",  # String.t()
  "merchantCategoryCode" => 1,  # integer()
  "packageOrderUuid" => "example_packageOrderUuid",  # String.t()
  "productOrderUuid" => "example_productOrderUuid",  # String.t()
  "templateName" => "example_templateName",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.EnableAcquiring` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.GetMerchantContractNumber

```elixir
get_merchant_contract_number = BluefinTecsMerchantServices.get_merchant_contract_number(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchantContractNumber` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.GetMerchantContractNumber.create(get_merchant_contract_number, BluefinTecsMerchantServices.Helpers.deep(%{
  "merchantContractNumber" => "example_merchantContractNumber",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.GetMerchantContractNumber` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.GetTemplateXml

```elixir
get_template_xml = BluefinTecsMerchantServices.get_template_xml(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `templateName` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.GetTemplateXml.create(get_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "templateName" => "example_templateName",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.GetTemplateXml` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.IntroduceMandator

```elixir
introduce_mandator = BluefinTecsMerchantServices.introduce_mandator(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.IntroduceMandator.create(introduce_mandator, BluefinTecsMerchantServices.Helpers.deep(%{
  "mandatorName" => "example_mandatorName",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.IntroduceMandator` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.IntroducePackage

```elixir
introduce_package = BluefinTecsMerchantServices.introduce_package(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalTemplateDescription` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.IntroducePackage.create(introduce_package, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminalTemplateDescription" => "example_terminalTemplateDescription",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.IntroducePackage` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.KeepAlive

```elixir
keep_alive = BluefinTecsMerchantServices.keep_alive(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String.t()` | No |  |
| `kaDateTimeFrom` | `String.t()` | No |  |
| `kaDateTimeTo` | `String.t()` | No |  |
| `keepAliveData` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalDateTimeFrom` | `String.t()` | No |  |
| `terminalDateTimeTo` | `String.t()` | No |  |
| `terminalId` | `integer()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.KeepAlive.create(keep_alive, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.KeepAlive` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.ListTerminal

```elixir
list_terminal = BluefinTecsMerchantServices.list_terminal(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `list()` | No |  |
| `filter` | `map()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminals` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.ListTerminal.create(list_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.ListTerminal` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.MandatorClearingExport

```elixir
mandator_clearing_export = BluefinTecsMerchantServices.mandator_clearing_export(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Yes |  |
| `clearingDateTo` | `String.t()` | Yes |  |
| `pagination` | `map()` | No |  |
| `records` | `list()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExport.create(mandator_clearing_export, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.MandatorClearingExport` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload

```elixir
mandator_clearing_export_download = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Yes |  |
| `clearingDateTo` | `String.t()` | Yes |  |
| `fileId` | `String.t()` | No |  |
| `filenameTemplate` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `status` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.create(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```

#### `load(entity, reqmatch, ctrl \\ nil) :: map()`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.load(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{"id" => "mandator_clearing_export_download_id"}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary

```elixir
mandator_clearing_export_summary = BluefinTecsMerchantServices.mandator_clearing_export_summary(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearingDateFrom` | `String.t()` | Yes |  |
| `clearingDateTo` | `String.t()` | Yes |  |
| `records` | `list()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary.create(mandator_clearing_export_summary, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.MerchantPortalServicesApi

```elixir
merchant_portal_services_api = BluefinTecsMerchantServices.merchant_portal_services_api(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String.t()` | No |  |
| `authorizationCode` | `String.t()` | No |  |
| `cardBrand` | `String.t()` | No |  |
| `clearingAmountFrom` | `String.t()` | No |  |
| `clearingAmountTo` | `String.t()` | No |  |
| `clearingCurrency` | `String.t()` | No |  |
| `clearingStatus` | `String.t()` | No |  |
| `corporateUUID` | `String.t()` | No |  |
| `orderByTransactionDate` | `String.t()` | No |  |
| `pagination` | `map()` | No |  |
| `receiptNumber` | `String.t()` | No |  |
| `referencedTransactionId` | `String.t()` | No |  |
| `retrievalReferenceNumber` | `String.t()` | No |  |
| `sourceId` | `integer()` | No |  |
| `tecsengineResponseCodeFrom` | `String.t()` | No |  |
| `tecsengineResponseCodeTo` | `String.t()` | No |  |
| `terminalId` | `integer()` | No |  |
| `traceNumber` | `String.t()` | No |  |
| `transactionAmountFrom` | `String.t()` | No |  |
| `transactionAmountTo` | `String.t()` | No |  |
| `transactionDateFrom` | `String.t()` | No |  |
| `transactionDateTo` | `String.t()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `transactionType` | `String.t()` | No |  |
| `wallet` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MerchantPortalServicesApi.create(merchant_portal_services_api, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.MerchantPortalServicesApi` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.MoveTid

```elixir
move_tid = BluefinTecsMerchantServices.move_tid(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuids` | `list()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `targetPackageorderuuid` | `String.t()` | No |  |
| `targetProductorderuuid` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MoveTid.create(move_tid, BluefinTecsMerchantServices.Helpers.deep(%{
  "productorderuuids" => [],  # list()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.MoveTid` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.PaymentManual

```elixir
payment_manual = BluefinTecsMerchantServices.payment_manual(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String.t()` | No |  |
| `amount` | `integer()` | Yes |  |
| `authorizationNumber` | `String.t()` | No |  |
| `cardNumber` | `String.t()` | Yes |  |
| `cardType` | `String.t()` | No |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `dateTimeTx` | `String.t()` | No |  |
| `expDate` | `String.t()` | Yes |  |
| `merchantId` | `String.t()` | No |  |
| `originalTransactionId` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `responseCode` | `String.t()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `String.t()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `txtype` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.PaymentManual.create(payment_manual, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "cardNumber" => "example_cardNumber",  # String.t()
  "currency" => "example_currency",  # String.t()
  "expDate" => "example_expDate",  # String.t()
  "txtype" => "example_txtype",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.PaymentManual` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.PaymentSred

```elixir
payment_sred = BluefinTecsMerchantServices.payment_sred(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `amount` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `device` | `String.t()` | No |  |
| `devicePayload` | `String.t()` | Yes |  |
| `expDate` | `String.t()` | No |  |
| `mode` | `String.t()` | No |  |
| `panMasked` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `serial` | `String.t()` | No |  |
| `serviceCode` | `String.t()` | No |  |
| `terminalId` | `String.t()` | Yes |  |
| `txtype` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.PaymentSred.create(payment_sred, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "devicePayload" => "example_devicePayload",  # String.t()
  "terminalId" => "example_terminalId",  # String.t()
  "txtype" => "example_txtype",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.PaymentSred` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion

```elixir
pre_auth_transaction_completion = BluefinTecsMerchantServices.pre_auth_transaction_completion(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String.t()` | No |  |
| `acquirerName` | `String.t()` | No |  |
| `actualBonusPoints` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `authorizationCode` | `String.t()` | No |  |
| `balanceAmount` | `String.t()` | No |  |
| `cardBrand` | `String.t()` | No |  |
| `cardNumber` | `String.t()` | No |  |
| `cardNumberReference` | `String.t()` | Yes |  |
| `clientId` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `ecData` | `String.t()` | No |  |
| `ecrData` | `String.t()` | No |  |
| `emvData` | `String.t()` | No |  |
| `exchangeFee` | `integer()` | No |  |
| `exchangeRate` | `String.t()` | No |  |
| `languageCode` | `String.t()` | No |  |
| `merchantAddress` | `String.t()` | No |  |
| `merchantName` | `String.t()` | No |  |
| `merchantNumber` | `String.t()` | No |  |
| `messageType` | `String.t()` | No |  |
| `originalTraceNumber` | `integer()` | No |  |
| `originalTransactionId` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `paymentReason` | `String.t()` | No |  |
| `receiptFooter` | `String.t()` | No |  |
| `receiptHeader` | `String.t()` | No |  |
| `receiptLayout` | `integer()` | No |  |
| `receiptNumber` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `serialNumber` | `String.t()` | No |  |
| `svc` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |
| `terminalLocation` | `String.t()` | No |  |
| `traceNumber` | `integer()` | No |  |
| `transactionDate` | `String.t()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `transactionType` | `String.t()` | Yes |  |
| `txType` | `String.t()` | No |  |
| `userData` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion.create(pre_auth_transaction_completion, BluefinTecsMerchantServices.Helpers.deep(%{
  "cardNumberReference" => "example_cardNumberReference",  # String.t()
  "clientId" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receiptNumber" => "example_receiptNumber",  # String.t()
  "terminalId" => 1,  # integer()
  "transactionType" => "example_transactionType",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.ReactivateTerminal

```elixir
reactivate_terminal = BluefinTecsMerchantServices.reactivate_terminal(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String.t()` | No |  |
| `packageOrderUuid` | `String.t()` | No |  |
| `productOrderUuid` | `String.t()` | No |  |
| `reactivationReason` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.ReactivateTerminal.create(reactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "reactivationReason" => "example_reactivationReason",  # String.t()
  "terminalId" => 1,  # integer()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.ReactivateTerminal` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.RefundTransaction

```elixir
refund_transaction = BluefinTecsMerchantServices.refund_transaction(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerId` | `String.t()` | No |  |
| `acquirerName` | `String.t()` | No |  |
| `actualBonusPoints` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `authorizationCode` | `String.t()` | No |  |
| `balanceAmount` | `String.t()` | No |  |
| `cardBrand` | `String.t()` | No |  |
| `cardNumber` | `String.t()` | No |  |
| `clientId` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `ecData` | `String.t()` | No |  |
| `ecrData` | `String.t()` | No |  |
| `emvData` | `String.t()` | No |  |
| `exchangeFee` | `integer()` | No |  |
| `exchangeRate` | `String.t()` | No |  |
| `languageCode` | `String.t()` | No |  |
| `merchantAddress` | `String.t()` | No |  |
| `merchantName` | `String.t()` | No |  |
| `merchantNumber` | `String.t()` | No |  |
| `messageType` | `String.t()` | No |  |
| `originalTraceNumber` | `integer()` | No |  |
| `originalTransactionId` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `paymentReason` | `String.t()` | No |  |
| `receiptFooter` | `String.t()` | No |  |
| `receiptHeader` | `String.t()` | No |  |
| `receiptLayout` | `integer()` | No |  |
| `receiptNumber` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `serialNumber` | `String.t()` | No |  |
| `svc` | `String.t()` | No |  |
| `terminalId` | `integer()` | Yes |  |
| `terminalLocation` | `String.t()` | No |  |
| `traceNumber` | `integer()` | No |  |
| `transactionDate` | `String.t()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `txType` | `String.t()` | No |  |
| `userData` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.RefundTransaction.create(refund_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "clientId" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receiptNumber" => "example_receiptNumber",  # String.t()
  "terminalId" => 1,  # integer()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.RefundTransaction` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.RegisterTecsCompany

```elixir
register_tecs_company = BluefinTecsMerchantServices.register_tecs_company(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporateUuid` | `String.t()` | Yes |  |
| `packageOrderUuid` | `String.t()` | Yes |  |
| `partnerId` | `integer()` | No |  |
| `partnerName` | `String.t()` | No |  |
| `productOrderUuid` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `templateName` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.RegisterTecsCompany.create(register_tecs_company, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
  "packageOrderUuid" => "example_packageOrderUuid",  # String.t()
  "productOrderUuid" => "example_productOrderUuid",  # String.t()
  "templateName" => "example_templateName",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.RegisterTecsCompany` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.RegisterTerminal

```elixir
register_terminal = BluefinTecsMerchantServices.register_terminal(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additionalData` | `map()` | No |  |
| `corporateUuid` | `String.t()` | Yes |  |
| `packageOrderUuid` | `String.t()` | Yes |  |
| `productOrderUuid` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `tecsWebSecretKey` | `String.t()` | No |  |
| `templateName` | `String.t()` | Yes |  |
| `terminalCountryCode` | `String.t()` | Yes |  |
| `terminalId` | `integer()` | No |  |
| `terminalIdAcq` | `String.t()` | No |  |
| `terminalLanguageCode` | `String.t()` | Yes |  |
| `terminalLocation` | `String.t()` | Yes |  |
| `terminalSerialNumber` | `String.t()` | No |  |
| `tokenIOAlias` | `String.t()` | No |  |
| `tokenIOIban` | `String.t()` | No |  |
| `tokenIOMemberId` | `String.t()` | No |  |
| `webShopUrl` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.RegisterTerminal.create(register_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
  "packageOrderUuid" => "example_packageOrderUuid",  # String.t()
  "productOrderUuid" => "example_productOrderUuid",  # String.t()
  "templateName" => "example_templateName",  # String.t()
  "terminalCountryCode" => "example_terminalCountryCode",  # String.t()
  "terminalLanguageCode" => "example_terminalLanguageCode",  # String.t()
  "terminalLocation" => "example_terminalLocation",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.RegisterTerminal` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.ReportData

```elixir
report_data = BluefinTecsMerchantServices.report_data(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `cardBrandReportData` | `list()` | No |  |
| `clearingDateFrom` | `String.t()` | Yes |  |
| `clearingDateTo` | `String.t()` | Yes |  |
| `corporateId` | `String.t()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `sumOverCreditTx` | `map()` | No |  |
| `sumOverDebitTx` | `map()` | No |  |
| `terminalId` | `integer()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.ReportData.create(report_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearingDateFrom" => "example_clearingDateFrom",  # String.t()
  "clearingDateTo" => "example_clearingDateTo",  # String.t()
  "corporateId" => "example_corporateId",  # String.t()
  "currency" => "example_currency",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.ReportData` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.StatusTransaction

```elixir
status_transaction = BluefinTecsMerchantServices.status_transaction(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirerName` | `String.t()` | No |  |
| `acquirerTerminalId` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `applicationCryptogram` | `String.t()` | No |  |
| `authorizationCode` | `String.t() | nil` | No |  |
| `authorizationDate` | `String.t()` | No |  |
| `cardBrand` | `String.t()` | No |  |
| `cardEntry` | `String.t()` | No |  |
| `cardExpiration` | `String.t()` | No |  |
| `cardNumber` | `String.t()` | No |  |
| `clearingAmount` | `integer()` | No |  |
| `clearingBatchId` | `String.t()` | No |  |
| `clearingCurrency` | `String.t()` | No |  |
| `clearingDate` | `String.t()` | No |  |
| `clearingProcessedDate` | `String.t()` | No |  |
| `clearingStatus` | `String.t()` | No |  |
| `clientId` | `integer()` | No |  |
| `currency` | `String.t()` | No |  |
| `cvm` | `String.t()` | No |  |
| `ecrData` | `String.t()` | No |  |
| `emvApplicationId` | `String.t()` | No |  |
| `emvApplicationLabel` | `String.t()` | No |  |
| `merchantName` | `String.t()` | No |  |
| `merchantNumber` | `String.t()` | No |  |
| `originalClientId` | `String.t()` | No |  |
| `originalTerminalId` | `integer()` | No |  |
| `originalTransactionId` | `String.t()` | No |  |
| `paymentReason` | `String.t()` | No |  |
| `receiptNumber` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseCodeFromAS` | `String.t()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `retrievalReferenceNumber` | `String.t()` | No |  |
| `serviceCode` | `String.t()` | No |  |
| `settlementStatus` | `String.t()` | No |  |
| `sourceId` | `integer()` | No |  |
| `tecsengineResponseCode` | `integer()` | No |  |
| `tecsengineResponseText` | `String.t()` | No |  |
| `terminalEndOfDayDate` | `String.t()` | No |  |
| `terminalId` | `integer()` | No |  |
| `terminalLocation` | `String.t()` | No |  |
| `tipAmount` | `integer()` | No |  |
| `traceNumber` | `integer()` | No |  |
| `transactionClearingDate` | `String.t()` | No |  |
| `transactionDate` | `String.t()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `transactionSeqNumber` | `integer()` | No |  |
| `transactionServerDate` | `String.t()` | No |  |
| `transactionSource` | `String.t()` | No |  |
| `transactionType` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.StatusTransaction.create(status_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.StatusTransaction` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.StoreTerminalParameter

```elixir
store_terminal_parameter = BluefinTecsMerchantServices.store_terminal_parameter(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acqTabNexo` | `map()` | No |  |
| `configVersion` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `serialNumber` | `String.t()` | Yes |  |
| `tidSent` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.StoreTerminalParameter.create(store_terminal_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "serialNumber" => "example_serialNumber",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.StoreTerminalParameter` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.TerminalId

```elixir
terminal_id = BluefinTecsMerchantServices.terminal_id(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deviceSerialNumber` | `list()` | Yes |  |
| `duplicateTerminalIds` | `list()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `terminals` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.TerminalId.create(terminal_id, BluefinTecsMerchantServices.Helpers.deep(%{
  "deviceSerialNumber" => [],  # list()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.TerminalId` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.TransactionHistory

```elixir
transaction_history = BluefinTecsMerchantServices.transaction_history(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `3DSecure` | `String.t()` | No |  |
| `authorizationCode` | `String.t()` | No |  |
| `cardBrand` | `String.t()` | No |  |
| `clearingAmountFrom` | `String.t()` | No |  |
| `clearingAmountTo` | `String.t()` | No |  |
| `clearingCurrency` | `String.t()` | No |  |
| `clearingStatus` | `String.t()` | No |  |
| `corporateUUID` | `String.t()` | No |  |
| `orderByTransactionDate` | `String.t()` | No |  |
| `pagination` | `map()` | No |  |
| `paymentTokenPublicId` | `String.t()` | No |  |
| `receiptNumber` | `String.t()` | No |  |
| `referencedTransactionId` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `retrievalReferenceNumber` | `String.t()` | No |  |
| `sourceId` | `integer()` | No |  |
| `tecsengineResponseCodeFrom` | `String.t()` | No |  |
| `tecsengineResponseCodeTo` | `String.t()` | No |  |
| `terminalId` | `integer()` | No |  |
| `traceNumber` | `String.t()` | No |  |
| `transactionAmountFrom` | `String.t()` | No |  |
| `transactionAmountTo` | `String.t()` | No |  |
| `transactionDateFrom` | `String.t()` | No |  |
| `transactionDateTo` | `String.t()` | No |  |
| `transactionHistories` | `list()` | No |  |
| `transactionId` | `String.t()` | No |  |
| `transactionType` | `String.t()` | No |  |
| `wallet` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.TransactionHistory.create(transaction_history, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.TransactionHistory` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.TransactionsCount

```elixir
transactions_count = BluefinTecsMerchantServices.transactions_count(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `transactionDateFrom` | `String.t()` | No |  |
| `transactionDateTo` | `String.t()` | No |  |
| `transactionsCount` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.TransactionsCount.create(transactions_count, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.TransactionsCount` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.TransactionsCountCardBrand

```elixir
transactions_count_card_brand = BluefinTecsMerchantServices.transactions_count_card_brand(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `transactionDateFrom` | `String.t()` | No |  |
| `transactionDateTo` | `String.t()` | No |  |
| `transactionsCount` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.TransactionsCountCardBrand.create(transactions_count_card_brand, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.TransactionsCountCardBrand` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.TransactionsTurnover

```elixir
transactions_turnover = BluefinTecsMerchantServices.transactions_turnover(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `transactionDateFrom` | `String.t()` | No |  |
| `transactionDateTo` | `String.t()` | No |  |
| `turnovers` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.TransactionsTurnover.create(transactions_turnover, BluefinTecsMerchantServices.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.TransactionsTurnover` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.UpdateMerchant

```elixir
update_merchant = BluefinTecsMerchantServices.update_merchant(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String.t()` | No |  |
| `corporateUuid` | `String.t()` | Yes |  |
| `country` | `String.t()` | No |  |
| `merchantCategoryCode` | `String.t()` | No |  |
| `name` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `state` | `String.t()` | No |  |
| `street` | `String.t()` | No |  |
| `vuNummer` | `String.t()` | No |  |
| `zipcode` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.UpdateMerchant.create(update_merchant, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporateUuid" => "example_corporateUuid",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.UpdateMerchant` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.UpdateTemplateXml

```elixir
update_template_xml = BluefinTecsMerchantServices.update_template_xml(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `templateName` | `String.t()` | Yes |  |
| `templateXml` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.UpdateTemplateXml.create(update_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "templateName" => "example_templateName",  # String.t()
  "templateXml" => "example_templateXml",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.UpdateTemplateXml` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsMerchantServices.Entity.Version

```elixir
version = BluefinTecsMerchantServices.version(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String.t()` | No |  |
| `buildDate` | `String.t()` | No |  |
| `version` | `String.t()` | No |  |

### Operations

#### `load(entity, reqmatch, ctrl \\ nil) :: map()`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.Version.load(version, BluefinTecsMerchantServices.Helpers.deep(%{}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsMerchantServices.Entity.Version` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```elixir
sdk = BluefinTecsMerchantServices.new(BluefinTecsMerchantServices.Helpers.deep(%{
  "feature" => %{
    "test" => %{"active" => true},
  }
}))
```

