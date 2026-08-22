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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.cancel_transaction client Noval).e_create (jo [
    ("clientId", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receiptNumber", (Str "example_receiptNumber"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let result_data = result.e_data_get ()
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
| `cardNo` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.check_card_black_listed client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `acquirerId` | `int` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.create_product client Noval).e_create (jo [
    ("templateName", (Str "example_templateName"));  (* string *)
    ("templateType", (Str "example_templateType"));  (* string *)
    ("templateXml", (Str "example_templateXml"));  (* string *)
    ("terminalType", (Str "example_terminalType"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.deactivate_terminal client Noval).e_create (jo [
    ("deactivationReason", (Str "example_deactivationReason"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let result_data = result.e_data_get ()
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.digital_services_api client Noval).e_create (jo [
    ("file_id", (Str "example_file_id"));  (* string *)
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

#### `e_load reqmatch ctrl : entity_obj`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.digital_services_api client Noval).e_load (Noval) Noval
let result_data = result.e_data_get ()
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
| `ecomData` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.ec_data_ecom client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
    ("transactionId", (Str "example_transactionId"));  (* string *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.ecom_parameter client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let result_data = result.e_data_get ()
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
| `ecrData` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.ecr_data client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
    ("transactionId", (Str "example_transactionId"));  (* string *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `emvData` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.emv_data client Noval).e_create (jo [
    ("terminalId", (Num 1.));  (* int *)
    ("transactionId", (Str "example_transactionId"));  (* string *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `accountNo` | `int` | No |  |
| `additionalData` | `value map` | No |  |
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
| `terminalIds` | `value list` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.enable_acquiring client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("merchantCategoryCode", (Num 1.));  (* int *)
    ("packageOrderUuid", (Str "example_packageOrderUuid"));  (* string *)
    ("productOrderUuid", (Str "example_productOrderUuid"));  (* string *)
    ("templateName", (Str "example_templateName"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.get_merchant_contract_number client Noval).e_create (jo [
    ("merchantContractNumber", (Str "example_merchantContractNumber"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.get_template_xml client Noval).e_create (jo [
    ("templateName", (Str "example_templateName"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.introduce_mandator client Noval).e_create (jo [
    ("mandatorName", (Str "example_mandatorName"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.introduce_package client Noval).e_create (jo [
    ("terminalTemplateDescription", (Str "example_terminalTemplateDescription"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.keep_alive client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `corporateUuid` | `value list` | No |  |
| `filter` | `value map` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `value list` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.list_terminal client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `value map` | No |  |
| `records` | `value list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `clearingDateFrom` | `string` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | Yes | End date for clearing export (inclusive) |
| `fileId` | `string` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | No | Optional filename template for the export file |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No | Processing status of the export request |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export_download client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

#### `e_load reqmatch ctrl : entity_obj`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export_download client Noval).e_load (jo [("id", (Str "mandator_clearing_export_download_id"))]) Noval
let result_data = result.e_data_get ()
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
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `value list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.mandator_clearing_export_summary client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `value map` | No |  |
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.merchant_portal_services_api client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `productorderuuids` | `value list` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.move_tid client Noval).e_create (jo [
    ("productorderuuids", (empty_list ()));  (* value list *)
]) Noval
let result_data = result.e_data_get ()
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.payment_manual client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("cardNumber", (Str "example_cardNumber"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
    ("expDate", (Str "example_expDate"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.payment_sred client Noval).e_create (jo [
    ("amount", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("devicePayload", (Str "example_devicePayload"));  (* string *)
    ("terminalId", (Str "example_terminalId"));  (* string *)
    ("txtype", (Str "example_txtype"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.pre_auth_transaction_completion client Noval).e_create (jo [
    ("cardNumberReference", (Str "example_cardNumberReference"));  (* string *)
    ("clientId", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receiptNumber", (Str "example_receiptNumber"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
    ("transactionType", (Str "example_transactionType"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `int` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.reactivate_terminal client Noval).e_create (jo [
    ("reactivationReason", (Str "example_reactivationReason"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let result_data = result.e_data_get ()
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.refund_transaction client Noval).e_create (jo [
    ("clientId", (Num 1.));  (* int *)
    ("currency", (Str "example_currency"));  (* string *)
    ("receiptNumber", (Str "example_receiptNumber"));  (* string *)
    ("terminalId", (Num 1.));  (* int *)
]) Noval
let result_data = result.e_data_get ()
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
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `int` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.register_tecs_company client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
    ("packageOrderUuid", (Str "example_packageOrderUuid"));  (* string *)
    ("productOrderUuid", (Str "example_productOrderUuid"));  (* string *)
    ("templateName", (Str "example_templateName"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `additionalData` | `value map` | No |  |
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.register_terminal client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
    ("packageOrderUuid", (Str "example_packageOrderUuid"));  (* string *)
    ("productOrderUuid", (Str "example_productOrderUuid"));  (* string *)
    ("templateName", (Str "example_templateName"));  (* string *)
    ("terminalCountryCode", (Str "example_terminalCountryCode"));  (* string *)
    ("terminalLanguageCode", (Str "example_terminalLanguageCode"));  (* string *)
    ("terminalLocation", (Str "example_terminalLocation"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `cardBrandReportData` | `value list` | No |  |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `value map` | No |  |
| `sumOverDebitTx` | `value map` | No |  |
| `terminalId` | `int` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.report_data client Noval).e_create (jo [
    ("clearingDateFrom", (Str "example_clearingDateFrom"));  (* string *)
    ("clearingDateTo", (Str "example_clearingDateTo"));  (* string *)
    ("corporateId", (Str "example_corporateId"));  (* string *)
    ("currency", (Str "example_currency"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `int` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `value` | No | Authorization code returned by the acquirer; null when not available |
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.status_transaction client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `acqTabNexo` | `value map` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.store_terminal_parameter client Noval).e_create (jo [
    ("serialNumber", (Str "example_serialNumber"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `deviceSerialNumber` | `value list` | Yes |  |
| `duplicateTerminalIds` | `value list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `value list` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.terminal_id client Noval).e_create (jo [
    ("deviceSerialNumber", (empty_list ()));  (* value list *)
]) Noval
let result_data = result.e_data_get ()
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
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `value map` | No |  |
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
| `transactionHistories` | `value list` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.transaction_history client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `value list` | No |  |

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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.transactions_count client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `value list` | No |  |

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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.transactions_count_card_brand client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `value list` | No |  |

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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.transactions_turnover client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.update_merchant client Noval).e_create (jo [
    ("corporateUuid", (Str "example_corporateUuid"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.update_template_xml client Noval).e_create (jo [
    ("templateName", (Str "example_templateName"));  (* string *)
    ("templateXml", (Str "example_templateXml"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
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
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `e_load reqmatch ctrl : entity_obj`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.version client Noval).e_load (Noval) Noval
let result_data = result.e_data_get ()
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

