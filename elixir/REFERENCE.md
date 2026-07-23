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
| `acquirer_id` | `String.t()` | No |  |
| `acquirer_name` | `String.t()` | No |  |
| `actual_bonus_point` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `authorization_code` | `String.t()` | No |  |
| `balance_amount` | `String.t()` | No |  |
| `card_brand` | `String.t()` | No |  |
| `card_number` | `String.t()` | No |  |
| `client_id` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `ec_data` | `String.t()` | No |  |
| `ecr_data` | `String.t()` | No |  |
| `emv_data` | `String.t()` | No |  |
| `exchange_fee` | `integer()` | No |  |
| `exchange_rate` | `String.t()` | No |  |
| `language_code` | `String.t()` | No |  |
| `merchant_address` | `String.t()` | No |  |
| `merchant_name` | `String.t()` | No |  |
| `merchant_number` | `String.t()` | No |  |
| `message_type` | `String.t()` | No |  |
| `original_trace_number` | `integer()` | No |  |
| `original_transaction_id` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `payment_reason` | `String.t()` | No |  |
| `receipt_footer` | `String.t()` | No |  |
| `receipt_header` | `String.t()` | No |  |
| `receipt_layout` | `integer()` | No |  |
| `receipt_number` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `serial_number` | `String.t()` | No |  |
| `svc` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |
| `terminal_location` | `String.t()` | No |  |
| `trace_number` | `integer()` | No |  |
| `transaction_date` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `tx_type` | `String.t()` | No |  |
| `user_data` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.CancelTransaction.create(cancel_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "client_id" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receipt_number" => "example_receipt_number",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `card_no` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |

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
| `acquirer_id` | `integer()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `template_name` | `String.t()` | Yes |  |
| `template_type` | `String.t()` | Yes |  |
| `template_xml` | `String.t()` | Yes |  |
| `terminal_type` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.CreateProduct.create(create_product, BluefinTecsMerchantServices.Helpers.deep(%{
  "template_name" => "example_template_name",  # String.t()
  "template_type" => "example_template_type",  # String.t()
  "template_xml" => "example_template_xml",  # String.t()
  "terminal_type" => "example_terminal_type",  # String.t()
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
| `corporate_uuid` | `String.t()` | No |  |
| `deactivation_reason` | `String.t()` | Yes |  |
| `package_order_uuid` | `String.t()` | No |  |
| `product_order_uuid` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.DeactivateTerminal.create(deactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "deactivation_reason" => "example_deactivation_reason",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `clearing_date_from` | `String.t()` | Yes |  |
| `clearing_date_to` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `tx_count` | `integer()` | No |  |
| `tx_id_end` | `String.t()` | No |  |
| `tx_id_start` | `String.t()` | No |  |
| `tx_seq_no_end` | `integer()` | No |  |
| `tx_seq_no_start` | `integer()` | No |  |
| `tx_total` | `integer()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.DigitalServicesApi.create(digital_services_api, BluefinTecsMerchantServices.Helpers.deep(%{
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
| `ecom_data` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |
| `transaction_id` | `String.t()` | Yes |  |
| `transaction_type` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EcDataEcom.create(ec_data_ecom, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
  "transaction_id" => "example_transaction_id",  # String.t()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `ecom_pass` | `String.t()` | No |  |
| `ecom_skey` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EcomParameter.create(ecom_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
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
| `ecr_data` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |
| `transaction_id` | `String.t()` | Yes |  |
| `transaction_type` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EcrData.create(ecr_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
  "transaction_id" => "example_transaction_id",  # String.t()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `emv_data` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |
| `transaction_id` | `String.t()` | Yes |  |
| `transaction_type` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EmvData.create(emv_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_id" => 1,  # integer()
  "transaction_id" => "example_transaction_id",  # String.t()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `account_no` | `integer()` | No |  |
| `additional_data` | `map()` | No |  |
| `corporate_uuid` | `String.t()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `merchant_category_code` | `integer()` | Yes |  |
| `package_order_uuid` | `String.t()` | Yes |  |
| `product_order_uuid` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `sorting_code` | `integer()` | No |  |
| `template_name` | `String.t()` | Yes |  |
| `terminal_id` | `list()` | No |  |
| `terminal_id_acq` | `String.t()` | No |  |
| `vu_nummer` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.EnableAcquiring.create(enable_acquiring, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
  "currency" => "example_currency",  # String.t()
  "merchant_category_code" => 1,  # integer()
  "package_order_uuid" => "example_package_order_uuid",  # String.t()
  "product_order_uuid" => "example_product_order_uuid",  # String.t()
  "template_name" => "example_template_name",  # String.t()
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
| `merchant_contract_number` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.GetMerchantContractNumber.create(get_merchant_contract_number, BluefinTecsMerchantServices.Helpers.deep(%{
  "merchant_contract_number" => "example_merchant_contract_number",  # String.t()
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
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `template_name` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.GetTemplateXml.create(get_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "template_name" => "example_template_name",  # String.t()
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
| `mandator_name` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.IntroduceMandator.create(introduce_mandator, BluefinTecsMerchantServices.Helpers.deep(%{
  "mandator_name" => "example_mandator_name",  # String.t()
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
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_template_description` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.IntroducePackage.create(introduce_package, BluefinTecsMerchantServices.Helpers.deep(%{
  "terminal_template_description" => "example_terminal_template_description",  # String.t()
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
| `ka_date_time_from` | `String.t()` | No |  |
| `ka_date_time_to` | `String.t()` | No |  |
| `keep_alive_data` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_date_time_from` | `String.t()` | No |  |
| `terminal_date_time_to` | `String.t()` | No |  |
| `terminal_id` | `integer()` | No |  |

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
| `corporate_uuid` | `list()` | No |  |
| `filter` | `map()` | No |  |
| `pagination` | `map()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal` | `list()` | No |  |

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
| `clearing_date_from` | `String.t()` | Yes |  |
| `clearing_date_to` | `String.t()` | Yes |  |
| `pagination` | `map()` | No |  |
| `record` | `list()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExport.create(mandator_clearing_export, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
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
| `clearing_date_from` | `String.t()` | Yes |  |
| `clearing_date_to` | `String.t()` | Yes |  |
| `file_id` | `String.t()` | No |  |
| `filename_template` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `status` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.create(mandator_clearing_export_download, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
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
| `clearing_date_from` | `String.t()` | Yes |  |
| `clearing_date_to` | `String.t()` | Yes |  |
| `record` | `list()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MandatorClearingExportSummary.create(mandator_clearing_export_summary, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
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
| `3_d_secure` | `String.t()` | No |  |
| `authorization_code` | `String.t()` | No |  |
| `card_brand` | `String.t()` | No |  |
| `clearing_amount_from` | `String.t()` | No |  |
| `clearing_amount_to` | `String.t()` | No |  |
| `clearing_currency` | `String.t()` | No |  |
| `clearing_status` | `String.t()` | No |  |
| `corporate_uuid` | `String.t()` | No |  |
| `order_by_transaction_date` | `String.t()` | No |  |
| `pagination` | `map()` | No |  |
| `receipt_number` | `String.t()` | No |  |
| `referenced_transaction_id` | `String.t()` | No |  |
| `retrieval_reference_number` | `String.t()` | No |  |
| `source_id` | `integer()` | No |  |
| `tecsengine_response_code_from` | `String.t()` | No |  |
| `tecsengine_response_code_to` | `String.t()` | No |  |
| `terminal_id` | `integer()` | No |  |
| `trace_number` | `String.t()` | No |  |
| `transaction_amount_from` | `String.t()` | No |  |
| `transaction_amount_to` | `String.t()` | No |  |
| `transaction_date_from` | `String.t()` | No |  |
| `transaction_date_to` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `transaction_type` | `String.t()` | No |  |
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
| `productorderuuid` | `list()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `target_packageorderuuid` | `String.t()` | No |  |
| `target_productorderuuid` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.MoveTid.create(move_tid, BluefinTecsMerchantServices.Helpers.deep(%{
  "productorderuuid" => [],  # list()
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
| `acquirer_name` | `String.t()` | No |  |
| `amount` | `integer()` | Yes |  |
| `authorization_number` | `String.t()` | No |  |
| `card_number` | `String.t()` | Yes |  |
| `card_type` | `String.t()` | No |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `date_time_tx` | `String.t()` | No |  |
| `exp_date` | `String.t()` | Yes |  |
| `merchant_id` | `String.t()` | No |  |
| `original_transaction_id` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `response_code` | `String.t()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `txtype` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.PaymentManual.create(payment_manual, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "card_number" => "example_card_number",  # String.t()
  "currency" => "example_currency",  # String.t()
  "exp_date" => "example_exp_date",  # String.t()
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
| `acquirer_name` | `String.t()` | No |  |
| `amount` | `integer()` | Yes |  |
| `authorization_number` | `String.t()` | No |  |
| `card_type` | `String.t()` | No |  |
| `currency` | `String.t()` | Yes |  |
| `date_time_tx` | `String.t()` | No |  |
| `device_payload` | `String.t()` | Yes |  |
| `merchant_id` | `String.t()` | No |  |
| `original_transaction_id` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `response_code` | `String.t()` | No |  |
| `response_message` | `String.t()` | No |  |
| `sred` | `map()` | No |  |
| `terminal_id` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `txtype` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.PaymentSred.create(payment_sred, BluefinTecsMerchantServices.Helpers.deep(%{
  "amount" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "device_payload" => "example_device_payload",  # String.t()
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
| `acquirer_id` | `String.t()` | No |  |
| `acquirer_name` | `String.t()` | No |  |
| `actual_bonus_point` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `authorization_code` | `String.t()` | No |  |
| `balance_amount` | `String.t()` | No |  |
| `card_brand` | `String.t()` | No |  |
| `card_number` | `String.t()` | No |  |
| `card_number_reference` | `String.t()` | Yes |  |
| `client_id` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `ec_data` | `String.t()` | No |  |
| `ecr_data` | `String.t()` | No |  |
| `emv_data` | `String.t()` | No |  |
| `exchange_fee` | `integer()` | No |  |
| `exchange_rate` | `String.t()` | No |  |
| `language_code` | `String.t()` | No |  |
| `merchant_address` | `String.t()` | No |  |
| `merchant_name` | `String.t()` | No |  |
| `merchant_number` | `String.t()` | No |  |
| `message_type` | `String.t()` | No |  |
| `original_trace_number` | `integer()` | No |  |
| `original_transaction_id` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `payment_reason` | `String.t()` | No |  |
| `receipt_footer` | `String.t()` | No |  |
| `receipt_header` | `String.t()` | No |  |
| `receipt_layout` | `integer()` | No |  |
| `receipt_number` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `serial_number` | `String.t()` | No |  |
| `svc` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |
| `terminal_location` | `String.t()` | No |  |
| `trace_number` | `integer()` | No |  |
| `transaction_date` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `transaction_type` | `String.t()` | Yes |  |
| `tx_type` | `String.t()` | No |  |
| `user_data` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.PreAuthTransactionCompletion.create(pre_auth_transaction_completion, BluefinTecsMerchantServices.Helpers.deep(%{
  "card_number_reference" => "example_card_number_reference",  # String.t()
  "client_id" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receipt_number" => "example_receipt_number",  # String.t()
  "terminal_id" => 1,  # integer()
  "transaction_type" => "example_transaction_type",  # String.t()
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
| `corporate_uuid` | `String.t()` | No |  |
| `package_order_uuid` | `String.t()` | No |  |
| `product_order_uuid` | `String.t()` | No |  |
| `reactivation_reason` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.ReactivateTerminal.create(reactivate_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "reactivation_reason" => "example_reactivation_reason",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `acquirer_id` | `String.t()` | No |  |
| `acquirer_name` | `String.t()` | No |  |
| `actual_bonus_point` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `authorization_code` | `String.t()` | No |  |
| `balance_amount` | `String.t()` | No |  |
| `card_brand` | `String.t()` | No |  |
| `card_number` | `String.t()` | No |  |
| `client_id` | `integer()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `cvc` | `String.t()` | No |  |
| `ec_data` | `String.t()` | No |  |
| `ecr_data` | `String.t()` | No |  |
| `emv_data` | `String.t()` | No |  |
| `exchange_fee` | `integer()` | No |  |
| `exchange_rate` | `String.t()` | No |  |
| `language_code` | `String.t()` | No |  |
| `merchant_address` | `String.t()` | No |  |
| `merchant_name` | `String.t()` | No |  |
| `merchant_number` | `String.t()` | No |  |
| `message_type` | `String.t()` | No |  |
| `original_trace_number` | `integer()` | No |  |
| `original_transaction_id` | `String.t()` | No |  |
| `password` | `String.t()` | No |  |
| `payment_reason` | `String.t()` | No |  |
| `receipt_footer` | `String.t()` | No |  |
| `receipt_header` | `String.t()` | No |  |
| `receipt_layout` | `integer()` | No |  |
| `receipt_number` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `serial_number` | `String.t()` | No |  |
| `svc` | `String.t()` | No |  |
| `terminal_id` | `integer()` | Yes |  |
| `terminal_location` | `String.t()` | No |  |
| `trace_number` | `integer()` | No |  |
| `transaction_date` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `tx_type` | `String.t()` | No |  |
| `user_data` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.RefundTransaction.create(refund_transaction, BluefinTecsMerchantServices.Helpers.deep(%{
  "client_id" => 1,  # integer()
  "currency" => "example_currency",  # String.t()
  "receipt_number" => "example_receipt_number",  # String.t()
  "terminal_id" => 1,  # integer()
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
| `corporate_uuid` | `String.t()` | Yes |  |
| `package_order_uuid` | `String.t()` | Yes |  |
| `partner_id` | `integer()` | No |  |
| `partner_name` | `String.t()` | No |  |
| `product_order_uuid` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `template_name` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.RegisterTecsCompany.create(register_tecs_company, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
  "package_order_uuid" => "example_package_order_uuid",  # String.t()
  "product_order_uuid" => "example_product_order_uuid",  # String.t()
  "template_name" => "example_template_name",  # String.t()
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
| `additional_data` | `map()` | No |  |
| `corporate_uuid` | `String.t()` | Yes |  |
| `package_order_uuid` | `String.t()` | Yes |  |
| `product_order_uuid` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `tecs_web_secret_key` | `String.t()` | No |  |
| `template_name` | `String.t()` | Yes |  |
| `terminal_country_code` | `String.t()` | Yes |  |
| `terminal_id` | `integer()` | No |  |
| `terminal_id_acq` | `String.t()` | No |  |
| `terminal_language_code` | `String.t()` | Yes |  |
| `terminal_location` | `String.t()` | Yes |  |
| `terminal_serial_number` | `String.t()` | No |  |
| `token_io_alia` | `String.t()` | No |  |
| `token_io_iban` | `String.t()` | No |  |
| `token_io_member_id` | `String.t()` | No |  |
| `web_shop_url` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.RegisterTerminal.create(register_terminal, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
  "package_order_uuid" => "example_package_order_uuid",  # String.t()
  "product_order_uuid" => "example_product_order_uuid",  # String.t()
  "template_name" => "example_template_name",  # String.t()
  "terminal_country_code" => "example_terminal_country_code",  # String.t()
  "terminal_language_code" => "example_terminal_language_code",  # String.t()
  "terminal_location" => "example_terminal_location",  # String.t()
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
| `card_brand_report_data` | `list()` | No |  |
| `clearing_date_from` | `String.t()` | Yes |  |
| `clearing_date_to` | `String.t()` | Yes |  |
| `corporate_id` | `String.t()` | Yes |  |
| `currency` | `String.t()` | Yes |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `sum_over_credit_tx` | `map()` | No |  |
| `sum_over_debit_tx` | `map()` | No |  |
| `terminal_id` | `integer()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.ReportData.create(report_data, BluefinTecsMerchantServices.Helpers.deep(%{
  "clearing_date_from" => "example_clearing_date_from",  # String.t()
  "clearing_date_to" => "example_clearing_date_to",  # String.t()
  "corporate_id" => "example_corporate_id",  # String.t()
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
| `acquirer_name` | `String.t()` | No |  |
| `acquirer_terminal_id` | `String.t()` | No |  |
| `amount` | `integer()` | No |  |
| `application_cryptogram` | `String.t()` | No |  |
| `authorization_code` | `String.t() | nil` | No |  |
| `authorization_date` | `String.t()` | No |  |
| `card_brand` | `String.t()` | No |  |
| `card_entry` | `String.t()` | No |  |
| `card_expiration` | `String.t()` | No |  |
| `card_number` | `String.t()` | No |  |
| `clearing_amount` | `integer()` | No |  |
| `clearing_batch_id` | `String.t()` | No |  |
| `clearing_currency` | `String.t()` | No |  |
| `clearing_date` | `String.t()` | No |  |
| `clearing_processed_date` | `String.t()` | No |  |
| `clearing_status` | `String.t()` | No |  |
| `client_id` | `integer()` | No |  |
| `currency` | `String.t()` | No |  |
| `cvm` | `String.t()` | No |  |
| `ecr_data` | `String.t()` | No |  |
| `emv_application_id` | `String.t()` | No |  |
| `emv_application_label` | `String.t()` | No |  |
| `merchant_name` | `String.t()` | No |  |
| `merchant_number` | `String.t()` | No |  |
| `original_client_id` | `String.t()` | No |  |
| `original_terminal_id` | `integer()` | No |  |
| `original_transaction_id` | `String.t()` | No |  |
| `payment_reason` | `String.t()` | No |  |
| `receipt_number` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_code_from_a` | `String.t()` | No |  |
| `response_message` | `String.t()` | No |  |
| `retrieval_reference_number` | `String.t()` | No |  |
| `service_code` | `String.t()` | No |  |
| `settlement_status` | `String.t()` | No |  |
| `source_id` | `integer()` | No |  |
| `tecsengine_response_code` | `integer()` | No |  |
| `tecsengine_response_text` | `String.t()` | No |  |
| `terminal_end_of_day_date` | `String.t()` | No |  |
| `terminal_id` | `integer()` | No |  |
| `terminal_location` | `String.t()` | No |  |
| `tip_amount` | `integer()` | No |  |
| `trace_number` | `integer()` | No |  |
| `transaction_clearing_date` | `String.t()` | No |  |
| `transaction_date` | `String.t()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `transaction_seq_number` | `integer()` | No |  |
| `transaction_server_date` | `String.t()` | No |  |
| `transaction_source` | `String.t()` | No |  |
| `transaction_type` | `String.t()` | No |  |

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
| `acq_tab_nexo` | `map()` | No |  |
| `config_version` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `serial_number` | `String.t()` | Yes |  |
| `tid_sent` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.StoreTerminalParameter.create(store_terminal_parameter, BluefinTecsMerchantServices.Helpers.deep(%{
  "serial_number" => "example_serial_number",  # String.t()
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
| `device_serial_number` | `list()` | Yes |  |
| `duplicate_terminal_id` | `list()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `terminal` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.TerminalId.create(terminal_id, BluefinTecsMerchantServices.Helpers.deep(%{
  "device_serial_number" => [],  # list()
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
| `3_d_secure` | `String.t()` | No |  |
| `authorization_code` | `String.t()` | No |  |
| `card_brand` | `String.t()` | No |  |
| `clearing_amount_from` | `String.t()` | No |  |
| `clearing_amount_to` | `String.t()` | No |  |
| `clearing_currency` | `String.t()` | No |  |
| `clearing_status` | `String.t()` | No |  |
| `corporate_uuid` | `String.t()` | No |  |
| `order_by_transaction_date` | `String.t()` | No |  |
| `pagination` | `map()` | No |  |
| `payment_token_public_id` | `String.t()` | No |  |
| `receipt_number` | `String.t()` | No |  |
| `referenced_transaction_id` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `retrieval_reference_number` | `String.t()` | No |  |
| `source_id` | `integer()` | No |  |
| `tecsengine_response_code_from` | `String.t()` | No |  |
| `tecsengine_response_code_to` | `String.t()` | No |  |
| `terminal_id` | `integer()` | No |  |
| `trace_number` | `String.t()` | No |  |
| `transaction_amount_from` | `String.t()` | No |  |
| `transaction_amount_to` | `String.t()` | No |  |
| `transaction_date_from` | `String.t()` | No |  |
| `transaction_date_to` | `String.t()` | No |  |
| `transaction_history` | `list()` | No |  |
| `transaction_id` | `String.t()` | No |  |
| `transaction_type` | `String.t()` | No |  |
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
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `transaction_date_from` | `String.t()` | No |  |
| `transaction_date_to` | `String.t()` | No |  |
| `transactions_count` | `list()` | No |  |

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
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `transaction_date_from` | `String.t()` | No |  |
| `transaction_date_to` | `String.t()` | No |  |
| `transactions_count` | `list()` | No |  |

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
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `transaction_date_from` | `String.t()` | No |  |
| `transaction_date_to` | `String.t()` | No |  |
| `turnover` | `list()` | No |  |

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
| `corporate_uuid` | `String.t()` | Yes |  |
| `country` | `String.t()` | No |  |
| `merchant_category_code` | `String.t()` | No |  |
| `name` | `String.t()` | No |  |
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `state` | `String.t()` | No |  |
| `street` | `String.t()` | No |  |
| `vu_nummer` | `String.t()` | No |  |
| `zipcode` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.UpdateMerchant.create(update_merchant, BluefinTecsMerchantServices.Helpers.deep(%{
  "corporate_uuid" => "example_corporate_uuid",  # String.t()
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
| `response_code` | `integer()` | No |  |
| `response_message` | `String.t()` | No |  |
| `template_name` | `String.t()` | Yes |  |
| `template_xml` | `String.t()` | Yes |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsMerchantServices.Entity.UpdateTemplateXml.create(update_template_xml, BluefinTecsMerchantServices.Helpers.deep(%{
  "template_name" => "example_template_name",  # String.t()
  "template_xml" => "example_template_xml",  # String.t()
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
| `app_name` | `String.t()` | No |  |
| `build_date` | `String.t()` | No |  |
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

