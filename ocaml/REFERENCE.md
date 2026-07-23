# BluefinTecsMerchantServices OCaml SDK Reference

Complete API reference for the BluefinTecsMerchantServices OCaml SDK.


## Sdk_client

### Constructor

```ocaml
open Voxgig_struct
open Sdk_helpers

let client = Sdk_client.make options
```

Create a new SDK client instance from a `value` options map. Use
`Sdk_client.make0 ()` for defaults.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `value` | SDK configuration options (a Map). |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides (e.g. custom fetch). |


### Static constructors

#### `Sdk_client.test testopts sdkopts`

Create a test client with mock features active. Both arguments may be `Noval`
(`Sdk_client.test ()` uses defaults, `Sdk_client.test_with` takes explicit
options).

```ocaml
let client = Sdk_client.test ()
```


### Instance functions

#### `Sdk_client.cancel_transaction client entopts : entity_obj`

Create a `CancelTransaction` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.check_card_black_listed client entopts : entity_obj`

Create a `CheckCardBlackListed` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.create_product client entopts : entity_obj`

Create a `CreateProduct` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.deactivate_terminal client entopts : entity_obj`

Create a `DeactivateTerminal` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.digital_services_api client entopts : entity_obj`

Create a `DigitalServicesApi` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.ec_data_ecom client entopts : entity_obj`

Create a `EcDataEcom` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.ecom_parameter client entopts : entity_obj`

Create a `EcomParameter` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.ecr_data client entopts : entity_obj`

Create a `EcrData` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.emv_data client entopts : entity_obj`

Create a `EmvData` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.enable_acquiring client entopts : entity_obj`

Create a `EnableAcquiring` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.get_merchant_contract_number client entopts : entity_obj`

Create a `GetMerchantContractNumber` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.get_template_xml client entopts : entity_obj`

Create a `GetTemplateXml` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.introduce_mandator client entopts : entity_obj`

Create a `IntroduceMandator` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.introduce_package client entopts : entity_obj`

Create a `IntroducePackage` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.keep_alive client entopts : entity_obj`

Create a `KeepAlive` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.list_terminal client entopts : entity_obj`

Create a `ListTerminal` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.mandator_clearing_export client entopts : entity_obj`

Create a `MandatorClearingExport` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.mandator_clearing_export_download client entopts : entity_obj`

Create a `MandatorClearingExportDownload` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.mandator_clearing_export_summary client entopts : entity_obj`

Create a `MandatorClearingExportSummary` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.merchant_portal_services_api client entopts : entity_obj`

Create a `MerchantPortalServicesApi` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.move_tid client entopts : entity_obj`

Create a `MoveTid` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.payment_manual client entopts : entity_obj`

Create a `PaymentManual` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.payment_sred client entopts : entity_obj`

Create a `PaymentSred` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.pre_auth_transaction_completion client entopts : entity_obj`

Create a `PreAuthTransactionCompletion` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.reactivate_terminal client entopts : entity_obj`

Create a `ReactivateTerminal` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.refund_transaction client entopts : entity_obj`

Create a `RefundTransaction` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.register_tecs_company client entopts : entity_obj`

Create a `RegisterTecsCompany` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.register_terminal client entopts : entity_obj`

Create a `RegisterTerminal` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.report_data client entopts : entity_obj`

Create a `ReportData` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.status_transaction client entopts : entity_obj`

Create a `StatusTransaction` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.store_terminal_parameter client entopts : entity_obj`

Create a `StoreTerminalParameter` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.terminal_id client entopts : entity_obj`

Create a `TerminalId` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.transaction_history client entopts : entity_obj`

Create a `TransactionHistory` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.transactions_count client entopts : entity_obj`

Create a `TransactionsCount` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.transactions_count_card_brand client entopts : entity_obj`

Create a `TransactionsCountCardBrand` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.transactions_turnover client entopts : entity_obj`

Create a `TransactionsTurnover` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.update_merchant client entopts : entity_obj`

Create a `UpdateMerchant` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.update_template_xml client entopts : entity_obj`

Create a `UpdateTemplateXml` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.version client entopts : entity_obj`

Create a `Version` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.direct client fetchargs : value`

Make a direct HTTP request to any API endpoint. Returns a result `value` map
with `ok`, `status`, `headers`, and `data` (or `err` on failure). This
escape hatch never raises — branch on `getp result "ok"`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `value` | Request body (Maps are JSON-serialized). |

**Returns:** a result `value` map.

#### `Sdk_client.prepare client fetchargs : value`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises
on error.


---

## CancelTransaction

```ocaml
let cancel_transaction = Sdk_client.cancel_transaction client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `int` | No |  |
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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.cancel_transaction client Noval).e_create (jo [
    ("client_id", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receipt_number", (Str "example_receipt_number"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `CancelTransaction` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## CheckCardBlackListed

```ocaml
let check_card_black_listed = Sdk_client.check_card_black_listed client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.check_card_black_listed client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `CheckCardBlackListed` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## CreateProduct

```ocaml
let create_product = Sdk_client.create_product client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `int` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_type` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |
| `terminal_type` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.create_product client Noval).e_create (jo [
    ("template_name", (Str "example_template_name"));  (* string *)
    ("template_type", (Str "example_template_type"));  (* string *)
    ("template_xml", (Str "example_template_xml"));  (* string *)
    ("terminal_type", (Str "example_terminal_type"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `CreateProduct` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## DeactivateTerminal

```ocaml
let deactivate_terminal = Sdk_client.deactivate_terminal client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `deactivation_reason` | `string` | Yes |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.deactivate_terminal client Noval).e_create (jo [
    ("deactivation_reason", (Str "example_deactivation_reason"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `DeactivateTerminal` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## DigitalServicesApi

```ocaml
let digital_services_api = Sdk_client.digital_services_api client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `tx_count` | `int` | No |  |
| `tx_id_end` | `string` | No |  |
| `tx_id_start` | `string` | No |  |
| `tx_seq_no_end` | `int` | No |  |
| `tx_seq_no_start` | `int` | No |  |
| `tx_total` | `int` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.digital_services_api client Noval).e_create (jo [
]) Noval
```

#### `e_load reqmatch ctrl : value`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```ocaml
let result = (Sdk_client.digital_services_api client Noval).e_load (Noval) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `DigitalServicesApi` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## EcDataEcom

```ocaml
let ec_data_ecom = Sdk_client.ec_data_ecom client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.ec_data_ecom client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_id", (Str "example_transaction_id"));  (* string *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `EcDataEcom` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## EcomParameter

```ocaml
let ecom_parameter = Sdk_client.ecom_parameter client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `string` | No |  |
| `ecom_skey` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.ecom_parameter client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `EcomParameter` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## EcrData

```ocaml
let ecr_data = Sdk_client.ecr_data client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.ecr_data client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_id", (Str "example_transaction_id"));  (* string *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `EcrData` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## EmvData

```ocaml
let emv_data = Sdk_client.emv_data client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.emv_data client Noval).e_create (jo [
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_id", (Str "example_transaction_id"));  (* string *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `EmvData` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## EnableAcquiring

```ocaml
let enable_acquiring = Sdk_client.enable_acquiring client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `int` | No |  |
| `additional_data` | `value map` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchant_category_code` | `int` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sorting_code` | `int` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_id` | `value list` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `vu_nummer` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.enable_acquiring client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("merchant_category_code", (Num 1.));  (* int *)
    ("package_order_uuid", (Str "example_package_order_uuid"));  (* string *)
    ("product_order_uuid", (Str "example_product_order_uuid"));  (* string *)
    ("template_name", (Str "example_template_name"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `EnableAcquiring` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## GetMerchantContractNumber

```ocaml
let get_merchant_contract_number = Sdk_client.get_merchant_contract_number client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.get_merchant_contract_number client Noval).e_create (jo [
    ("merchant_contract_number", (Str "example_merchant_contract_number"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `GetMerchantContractNumber` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## GetTemplateXml

```ocaml
let get_template_xml = Sdk_client.get_template_xml client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.get_template_xml client Noval).e_create (jo [
    ("template_name", (Str "example_template_name"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `GetTemplateXml` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## IntroduceMandator

```ocaml
let introduce_mandator = Sdk_client.introduce_mandator client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.introduce_mandator client Noval).e_create (jo [
    ("mandator_name", (Str "example_mandator_name"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `IntroduceMandator` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## IntroducePackage

```ocaml
let introduce_package = Sdk_client.introduce_package client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_template_description` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.introduce_package client Noval).e_create (jo [
    ("terminal_template_description", (Str "example_terminal_template_description"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `IntroducePackage` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## KeepAlive

```ocaml
let keep_alive = Sdk_client.keep_alive client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `ka_date_time_from` | `string` | No |  |
| `ka_date_time_to` | `string` | No |  |
| `keep_alive_data` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_date_time_from` | `string` | No |  |
| `terminal_date_time_to` | `string` | No |  |
| `terminal_id` | `int` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.keep_alive client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `KeepAlive` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## ListTerminal

```ocaml
let list_terminal = Sdk_client.list_terminal client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `value list` | No |  |
| `filter` | `value map` | No |  |
| `pagination` | `value map` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `value list` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.list_terminal client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `ListTerminal` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## MandatorClearingExport

```ocaml
let mandator_clearing_export = Sdk_client.mandator_clearing_export client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `pagination` | `value map` | No |  |
| `record` | `value list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `MandatorClearingExport` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## MandatorClearingExportDownload

```ocaml
let mandator_clearing_export_download = Sdk_client.mandator_clearing_export_download client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `file_id` | `string` | No |  |
| `filename_template` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export_download client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
]) Noval
```

#### `e_load reqmatch ctrl : value`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export_download client Noval).e_load (jo [("id", (Str "mandator_clearing_export_download_id"))]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `MandatorClearingExportDownload` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## MandatorClearingExportSummary

```ocaml
let mandator_clearing_export_summary = Sdk_client.mandator_clearing_export_summary client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `record` | `value list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export_summary client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `MandatorClearingExportSummary` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## MerchantPortalServicesApi

```ocaml
let merchant_portal_services_api = Sdk_client.merchant_portal_services_api client Noval
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
| `pagination` | `value map` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.merchant_portal_services_api client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `MerchantPortalServicesApi` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## MoveTid

```ocaml
let move_tid = Sdk_client.move_tid client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `value list` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `target_packageorderuuid` | `string` | No |  |
| `target_productorderuuid` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.move_tid client Noval).e_create (jo [
    ("productorderuuid", (empty_list ()));  (* value list *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `MoveTid` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## PaymentManual

```ocaml
let payment_manual = Sdk_client.payment_manual client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `int` | Yes |  |
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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.payment_manual client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("card_number", (Str "example_card_number"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("exp_date", (Str "example_exp_date"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `PaymentManual` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## PaymentSred

```ocaml
let payment_sred = Sdk_client.payment_sred client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `int` | Yes |  |
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
| `sred` | `value map` | No |  |
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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.payment_sred client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("device_payload", (Str "example_device_payload"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `PaymentSred` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## PreAuthTransactionCompletion

```ocaml
let pre_auth_transaction_completion = Sdk_client.pre_auth_transaction_completion client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `card_number_reference` | `string` | Yes |  |
| `client_id` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `int` | No |  |
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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.pre_auth_transaction_completion client Noval).e_create (jo [
    ("card_number_reference", (Str "example_card_number_reference"));  (* string *)
    ("client_id", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receipt_number", (Str "example_receipt_number"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
    ("transaction_type", (Str "example_transaction_type"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `PreAuthTransactionCompletion` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## ReactivateTerminal

```ocaml
let reactivate_terminal = Sdk_client.reactivate_terminal client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `reactivation_reason` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.reactivate_terminal client Noval).e_create (jo [
    ("reactivation_reason", (Str "example_reactivation_reason"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `ReactivateTerminal` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## RefundTransaction

```ocaml
let refund_transaction = Sdk_client.refund_transaction client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `int` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `int` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `int` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `int` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `int` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `int` | No |  |
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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.refund_transaction client Noval).e_create (jo [
    ("client_id", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receipt_number", (Str "example_receipt_number"));  (* string *)
    ("terminal_id", (Num 1.));  (* int *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `RefundTransaction` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## RegisterTecsCompany

```ocaml
let register_tecs_company = Sdk_client.register_tecs_company client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `partner_id` | `int` | No |  |
| `partner_name` | `string` | No |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.register_tecs_company client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
    ("package_order_uuid", (Str "example_package_order_uuid"));  (* string *)
    ("product_order_uuid", (Str "example_product_order_uuid"));  (* string *)
    ("template_name", (Str "example_template_name"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `RegisterTecsCompany` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## RegisterTerminal

```ocaml
let register_terminal = Sdk_client.register_terminal client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `value map` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `tecs_web_secret_key` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_country_code` | `string` | Yes |  |
| `terminal_id` | `int` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `terminal_language_code` | `string` | Yes |  |
| `terminal_location` | `string` | Yes |  |
| `terminal_serial_number` | `string` | No |  |
| `token_io_alia` | `string` | No |  |
| `token_io_iban` | `string` | No |  |
| `token_io_member_id` | `string` | No |  |
| `web_shop_url` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.register_terminal client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
    ("package_order_uuid", (Str "example_package_order_uuid"));  (* string *)
    ("product_order_uuid", (Str "example_product_order_uuid"));  (* string *)
    ("template_name", (Str "example_template_name"));  (* string *)
    ("terminal_country_code", (Str "example_terminal_country_code"));  (* string *)
    ("terminal_language_code", (Str "example_terminal_language_code"));  (* string *)
    ("terminal_location", (Str "example_terminal_location"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `RegisterTerminal` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## ReportData

```ocaml
let report_data = Sdk_client.report_data client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `value list` | No |  |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `corporate_id` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sum_over_credit_tx` | `value map` | No |  |
| `sum_over_debit_tx` | `value map` | No |  |
| `terminal_id` | `int` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.report_data client Noval).e_create (jo [
    ("clearing_date_from", (Str "example_clearing_date_from"));  (* string *)
    ("clearing_date_to", (Str "example_clearing_date_to"));  (* string *)
    ("corporate_id", (Str "example_corporate_id"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `ReportData` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## StatusTransaction

```ocaml
let status_transaction = Sdk_client.status_transaction client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `acquirer_terminal_id` | `string` | No |  |
| `amount` | `int` | No |  |
| `application_cryptogram` | `string` | No |  |
| `authorization_code` | `value` | No |  |
| `authorization_date` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_entry` | `string` | No |  |
| `card_expiration` | `string` | No |  |
| `card_number` | `string` | No |  |
| `clearing_amount` | `int` | No |  |
| `clearing_batch_id` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_date` | `string` | No |  |
| `clearing_processed_date` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `client_id` | `int` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_application_id` | `string` | No |  |
| `emv_application_label` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `original_client_id` | `string` | No |  |
| `original_terminal_id` | `int` | No |  |
| `original_transaction_id` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_code_from_a` | `string` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `service_code` | `string` | No |  |
| `settlement_status` | `string` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code` | `int` | No |  |
| `tecsengine_response_text` | `string` | No |  |
| `terminal_end_of_day_date` | `string` | No |  |
| `terminal_id` | `int` | No |  |
| `terminal_location` | `string` | No |  |
| `tip_amount` | `int` | No |  |
| `trace_number` | `int` | No |  |
| `transaction_clearing_date` | `string` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_seq_number` | `int` | No |  |
| `transaction_server_date` | `string` | No |  |
| `transaction_source` | `string` | No |  |
| `transaction_type` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.status_transaction client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `StatusTransaction` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## StoreTerminalParameter

```ocaml
let store_terminal_parameter = Sdk_client.store_terminal_parameter client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `value map` | No |  |
| `config_version` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | Yes |  |
| `tid_sent` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.store_terminal_parameter client Noval).e_create (jo [
    ("serial_number", (Str "example_serial_number"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `StoreTerminalParameter` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## TerminalId

```ocaml
let terminal_id = Sdk_client.terminal_id client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `value list` | Yes |  |
| `duplicate_terminal_id` | `value list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `value list` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.terminal_id client Noval).e_create (jo [
    ("device_serial_number", (empty_list ()));  (* value list *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `TerminalId` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## TransactionHistory

```ocaml
let transaction_history = Sdk_client.transaction_history client Noval
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
| `pagination` | `value map` | No |  |
| `payment_token_public_id` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `int` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `int` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_history` | `value list` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.transaction_history client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `TransactionHistory` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## TransactionsCount

```ocaml
let transactions_count = Sdk_client.transactions_count client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `value list` | No |  |

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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.transactions_count client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `TransactionsCount` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## TransactionsCountCardBrand

```ocaml
let transactions_count_card_brand = Sdk_client.transactions_count_card_brand client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `value list` | No |  |

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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.transactions_count_card_brand client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `TransactionsCountCardBrand` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## TransactionsTurnover

```ocaml
let transactions_turnover = Sdk_client.transactions_turnover client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `turnover` | `value list` | No |  |

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

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.transactions_turnover client Noval).e_create (jo [
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `TransactionsTurnover` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## UpdateMerchant

```ocaml
let update_merchant = Sdk_client.update_merchant client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchant_category_code` | `string` | No |  |
| `name` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vu_nummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.update_merchant client Noval).e_create (jo [
    ("corporate_uuid", (Str "example_corporate_uuid"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `UpdateMerchant` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## UpdateTemplateXml

```ocaml
let update_template_xml = Sdk_client.update_template_xml client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```ocaml
let result = (Sdk_client.update_template_xml client Noval).e_create (jo [
    ("template_name", (Str "example_template_name"));  (* string *)
    ("template_xml", (Str "example_template_xml"));  (* string *)
]) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `UpdateTemplateXml` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## Version

```ocaml
let version = Sdk_client.version client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `e_load reqmatch ctrl : value`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```ocaml
let result = (Sdk_client.version client Noval).e_load (Noval) Noval
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `Version` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ocaml
let client = Sdk_client.make (jo [
    ("feature", jo [
        ("test", jo [("active", Bool true)]);
    ]);
])
```

