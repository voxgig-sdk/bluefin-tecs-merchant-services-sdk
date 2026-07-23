# BluefinTecsMerchantServices Clojure SDK Reference

Complete API reference for the BluefinTecsMerchantServices Clojure SDK.


## Client

### make-sdk

```clojure
(require '[sdk.api :as api]
         '[voxgig.struct :as vs])

(def client (api/make-sdk options))
```

Create a new SDK client instance. `options` is a `voxgig.struct` map.

**Options:**

| Key | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides (e.g. custom fetch). |


### Test client

#### `(api/test-sdk testopts sdkopts)`

Create a test client with mock features active. Both arguments may be `nil`.

```clojure
(def client (api/test-sdk nil nil))
```


### Client functions

#### `(api/cancel_transaction client data)`

Create a new `CancelTransaction` entity instance. Pass `nil` for no initial data.

#### `(api/check_card_black_listed client data)`

Create a new `CheckCardBlackListed` entity instance. Pass `nil` for no initial data.

#### `(api/create_product client data)`

Create a new `CreateProduct` entity instance. Pass `nil` for no initial data.

#### `(api/deactivate_terminal client data)`

Create a new `DeactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `(api/digital_services_api client data)`

Create a new `DigitalServicesApi` entity instance. Pass `nil` for no initial data.

#### `(api/ec_data_ecom client data)`

Create a new `EcDataEcom` entity instance. Pass `nil` for no initial data.

#### `(api/ecom_parameter client data)`

Create a new `EcomParameter` entity instance. Pass `nil` for no initial data.

#### `(api/ecr_data client data)`

Create a new `EcrData` entity instance. Pass `nil` for no initial data.

#### `(api/emv_data client data)`

Create a new `EmvData` entity instance. Pass `nil` for no initial data.

#### `(api/enable_acquiring client data)`

Create a new `EnableAcquiring` entity instance. Pass `nil` for no initial data.

#### `(api/get_merchant_contract_number client data)`

Create a new `GetMerchantContractNumber` entity instance. Pass `nil` for no initial data.

#### `(api/get_template_xml client data)`

Create a new `GetTemplateXml` entity instance. Pass `nil` for no initial data.

#### `(api/introduce_mandator client data)`

Create a new `IntroduceMandator` entity instance. Pass `nil` for no initial data.

#### `(api/introduce_package client data)`

Create a new `IntroducePackage` entity instance. Pass `nil` for no initial data.

#### `(api/keep_alive client data)`

Create a new `KeepAlive` entity instance. Pass `nil` for no initial data.

#### `(api/list_terminal client data)`

Create a new `ListTerminal` entity instance. Pass `nil` for no initial data.

#### `(api/mandator_clearing_export client data)`

Create a new `MandatorClearingExport` entity instance. Pass `nil` for no initial data.

#### `(api/mandator_clearing_export_download client data)`

Create a new `MandatorClearingExportDownload` entity instance. Pass `nil` for no initial data.

#### `(api/mandator_clearing_export_summary client data)`

Create a new `MandatorClearingExportSummary` entity instance. Pass `nil` for no initial data.

#### `(api/merchant_portal_services_api client data)`

Create a new `MerchantPortalServicesApi` entity instance. Pass `nil` for no initial data.

#### `(api/move_tid client data)`

Create a new `MoveTid` entity instance. Pass `nil` for no initial data.

#### `(api/payment_manual client data)`

Create a new `PaymentManual` entity instance. Pass `nil` for no initial data.

#### `(api/payment_sred client data)`

Create a new `PaymentSred` entity instance. Pass `nil` for no initial data.

#### `(api/pre_auth_transaction_completion client data)`

Create a new `PreAuthTransactionCompletion` entity instance. Pass `nil` for no initial data.

#### `(api/reactivate_terminal client data)`

Create a new `ReactivateTerminal` entity instance. Pass `nil` for no initial data.

#### `(api/refund_transaction client data)`

Create a new `RefundTransaction` entity instance. Pass `nil` for no initial data.

#### `(api/register_tecs_company client data)`

Create a new `RegisterTecsCompany` entity instance. Pass `nil` for no initial data.

#### `(api/register_terminal client data)`

Create a new `RegisterTerminal` entity instance. Pass `nil` for no initial data.

#### `(api/report_data client data)`

Create a new `ReportData` entity instance. Pass `nil` for no initial data.

#### `(api/status_transaction client data)`

Create a new `StatusTransaction` entity instance. Pass `nil` for no initial data.

#### `(api/store_terminal_parameter client data)`

Create a new `StoreTerminalParameter` entity instance. Pass `nil` for no initial data.

#### `(api/terminal_id client data)`

Create a new `TerminalId` entity instance. Pass `nil` for no initial data.

#### `(api/transaction_history client data)`

Create a new `TransactionHistory` entity instance. Pass `nil` for no initial data.

#### `(api/transactions_count client data)`

Create a new `TransactionsCount` entity instance. Pass `nil` for no initial data.

#### `(api/transactions_count_card_brand client data)`

Create a new `TransactionsCountCardBrand` entity instance. Pass `nil` for no initial data.

#### `(api/transactions_turnover client data)`

Create a new `TransactionsTurnover` entity instance. Pass `nil` for no initial data.

#### `(api/update_merchant client data)`

Create a new `UpdateMerchant` entity instance. Pass `nil` for no initial data.

#### `(api/update_template_xml client data)`

Create a new `UpdateTemplateXml` entity instance. Pass `nil` for no initial data.

#### `(api/version client data)`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `(api/options-map client) -> map`

Return a deep copy of the current SDK options.

#### `(api/get-utility client) -> utility`

Return a copy of the SDK utility object.

#### `(api/direct client fetchargs) -> map`

Make a direct HTTP request to any API endpoint. Returns a result `map` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `(vs/getprop result "ok")`.

**Fetch args:**

| Key | Type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

**Returns:** a result `map`.

#### `(api/prepare client fetchargs) -> map`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```clojure
(require '[sdk.entity.cancel_transaction :as e-cancel_transaction])

(def cancel_transaction (api/cancel_transaction client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `long` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `long` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `long` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-cancel_transaction/create (api/cancel_transaction client nil)
    (vs/jm
      "client_id" 1  ;; long
      "currency" "example_currency"  ;; string
      "receipt_number" "example_receipt_number"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `CancelTransaction` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## CheckCardBlackListed

```clojure
(require '[sdk.entity.check_card_black_listed :as e-check_card_black_listed])

(def check_card_black_listed (api/check_card_black_listed client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-check_card_black_listed/create (api/check_card_black_listed client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `CheckCardBlackListed` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## CreateProduct

```clojure
(require '[sdk.entity.create_product :as e-create_product])

(def create_product (api/create_product client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `long` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_type` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |
| `terminal_type` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-create_product/create (api/create_product client nil)
    (vs/jm
      "template_name" "example_template_name"  ;; string
      "template_type" "example_template_type"  ;; string
      "template_xml" "example_template_xml"  ;; string
      "terminal_type" "example_terminal_type"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `CreateProduct` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## DeactivateTerminal

```clojure
(require '[sdk.entity.deactivate_terminal :as e-deactivate_terminal])

(def deactivate_terminal (api/deactivate_terminal client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `deactivation_reason` | `string` | Yes |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-deactivate_terminal/create (api/deactivate_terminal client nil)
    (vs/jm
      "deactivation_reason" "example_deactivation_reason"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `DeactivateTerminal` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## DigitalServicesApi

```clojure
(require '[sdk.entity.digital_services_api :as e-digital_services_api])

(def digital_services_api (api/digital_services_api client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `tx_count` | `long` | No |  |
| `tx_id_end` | `string` | No |  |
| `tx_id_start` | `string` | No |  |
| `tx_seq_no_end` | `long` | No |  |
| `tx_seq_no_start` | `long` | No |  |
| `tx_total` | `long` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-digital_services_api/create (api/digital_services_api client nil)
    (vs/jm
      )
    nil))
```

#### `(load ent reqmatch ctrl) -> map`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```clojure
(def result (e-digital_services_api/load (api/digital_services_api client nil) nil nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `DigitalServicesApi` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## EcDataEcom

```clojure
(require '[sdk.entity.ec_data_ecom :as e-ec_data_ecom])

(def ec_data_ecom (api/ec_data_ecom client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-ec_data_ecom/create (api/ec_data_ecom client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      "transaction_id" "example_transaction_id"  ;; string
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `EcDataEcom` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## EcomParameter

```clojure
(require '[sdk.entity.ecom_parameter :as e-ecom_parameter])

(def ecom_parameter (api/ecom_parameter client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `string` | No |  |
| `ecom_skey` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-ecom_parameter/create (api/ecom_parameter client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `EcomParameter` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## EcrData

```clojure
(require '[sdk.entity.ecr_data :as e-ecr_data])

(def ecr_data (api/ecr_data client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-ecr_data/create (api/ecr_data client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      "transaction_id" "example_transaction_id"  ;; string
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `EcrData` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## EmvData

```clojure
(require '[sdk.entity.emv_data :as e-emv_data])

(def emv_data (api/emv_data client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `transaction_id` | `string` | Yes |  |
| `transaction_type` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-emv_data/create (api/emv_data client nil)
    (vs/jm
      "terminal_id" 1  ;; long
      "transaction_id" "example_transaction_id"  ;; string
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `EmvData` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## EnableAcquiring

```clojure
(require '[sdk.entity.enable_acquiring :as e-enable_acquiring])

(def enable_acquiring (api/enable_acquiring client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `long` | No |  |
| `additional_data` | `map` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchant_category_code` | `long` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `sorting_code` | `long` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_id` | `vector` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `vu_nummer` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-enable_acquiring/create (api/enable_acquiring client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      "currency" "example_currency"  ;; string
      "merchant_category_code" 1  ;; long
      "package_order_uuid" "example_package_order_uuid"  ;; string
      "product_order_uuid" "example_product_order_uuid"  ;; string
      "template_name" "example_template_name"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `EnableAcquiring` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## GetMerchantContractNumber

```clojure
(require '[sdk.entity.get_merchant_contract_number :as e-get_merchant_contract_number])

(def get_merchant_contract_number (api/get_merchant_contract_number client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-get_merchant_contract_number/create (api/get_merchant_contract_number client nil)
    (vs/jm
      "merchant_contract_number" "example_merchant_contract_number"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `GetMerchantContractNumber` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## GetTemplateXml

```clojure
(require '[sdk.entity.get_template_xml :as e-get_template_xml])

(def get_template_xml (api/get_template_xml client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-get_template_xml/create (api/get_template_xml client nil)
    (vs/jm
      "template_name" "example_template_name"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `GetTemplateXml` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## IntroduceMandator

```clojure
(require '[sdk.entity.introduce_mandator :as e-introduce_mandator])

(def introduce_mandator (api/introduce_mandator client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-introduce_mandator/create (api/introduce_mandator client nil)
    (vs/jm
      "mandator_name" "example_mandator_name"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `IntroduceMandator` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## IntroducePackage

```clojure
(require '[sdk.entity.introduce_package :as e-introduce_package])

(def introduce_package (api/introduce_package client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_template_description` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-introduce_package/create (api/introduce_package client nil)
    (vs/jm
      "terminal_template_description" "example_terminal_template_description"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `IntroducePackage` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## KeepAlive

```clojure
(require '[sdk.entity.keep_alive :as e-keep_alive])

(def keep_alive (api/keep_alive client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `string` | No |  |
| `ka_date_time_from` | `string` | No |  |
| `ka_date_time_to` | `string` | No |  |
| `keep_alive_data` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_date_time_from` | `string` | No |  |
| `terminal_date_time_to` | `string` | No |  |
| `terminal_id` | `long` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-keep_alive/create (api/keep_alive client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `KeepAlive` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## ListTerminal

```clojure
(require '[sdk.entity.list_terminal :as e-list_terminal])

(def list_terminal (api/list_terminal client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `vector` | No |  |
| `filter` | `map` | No |  |
| `pagination` | `map` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `vector` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-list_terminal/create (api/list_terminal client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `ListTerminal` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## MandatorClearingExport

```clojure
(require '[sdk.entity.mandator_clearing_export :as e-mandator_clearing_export])

(def mandator_clearing_export (api/mandator_clearing_export client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `pagination` | `map` | No |  |
| `record` | `vector` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-mandator_clearing_export/create (api/mandator_clearing_export client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `MandatorClearingExport` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## MandatorClearingExportDownload

```clojure
(require '[sdk.entity.mandator_clearing_export_download :as e-mandator_clearing_export_download])

(def mandator_clearing_export_download (api/mandator_clearing_export_download client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `file_id` | `string` | No |  |
| `filename_template` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `status` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-mandator_clearing_export_download/create (api/mandator_clearing_export_download client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      )
    nil))
```

#### `(load ent reqmatch ctrl) -> map`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```clojure
(def result (e-mandator_clearing_export_download/load (api/mandator_clearing_export_download client nil) (vs/jm "id" "mandator_clearing_export_download_id") nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `MandatorClearingExportDownload` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## MandatorClearingExportSummary

```clojure
(require '[sdk.entity.mandator_clearing_export_summary :as e-mandator_clearing_export_summary])

(def mandator_clearing_export_summary (api/mandator_clearing_export_summary client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `record` | `vector` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-mandator_clearing_export_summary/create (api/mandator_clearing_export_summary client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `MandatorClearingExportSummary` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## MerchantPortalServicesApi

```clojure
(require '[sdk.entity.merchant_portal_services_api :as e-merchant_portal_services_api])

(def merchant_portal_services_api (api/merchant_portal_services_api client nil))
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
| `pagination` | `map` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `long` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `long` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-merchant_portal_services_api/create (api/merchant_portal_services_api client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `MerchantPortalServicesApi` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## MoveTid

```clojure
(require '[sdk.entity.move_tid :as e-move_tid])

(def move_tid (api/move_tid client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `vector` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `target_packageorderuuid` | `string` | No |  |
| `target_productorderuuid` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-move_tid/create (api/move_tid client nil)
    (vs/jm
      "productorderuuid" (vs/jt)  ;; vector
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `MoveTid` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## PaymentManual

```clojure
(require '[sdk.entity.payment_manual :as e-payment_manual])

(def payment_manual (api/payment_manual client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `long` | Yes |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-payment_manual/create (api/payment_manual client nil)
    (vs/jm
      "amount" 1  ;; long
      "card_number" "example_card_number"  ;; string
      "currency" "example_currency"  ;; string
      "exp_date" "example_exp_date"  ;; string
      "txtype" "example_txtype"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `PaymentManual` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## PaymentSred

```clojure
(require '[sdk.entity.payment_sred :as e-payment_sred])

(def payment_sred (api/payment_sred client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `amount` | `long` | Yes |  |
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
| `sred` | `map` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-payment_sred/create (api/payment_sred client nil)
    (vs/jm
      "amount" 1  ;; long
      "currency" "example_currency"  ;; string
      "device_payload" "example_device_payload"  ;; string
      "txtype" "example_txtype"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `PaymentSred` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## PreAuthTransactionCompletion

```clojure
(require '[sdk.entity.pre_auth_transaction_completion :as e-pre_auth_transaction_completion])

(def pre_auth_transaction_completion (api/pre_auth_transaction_completion client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `card_number_reference` | `string` | Yes |  |
| `client_id` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `long` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `long` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `long` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-pre_auth_transaction_completion/create (api/pre_auth_transaction_completion client nil)
    (vs/jm
      "card_number_reference" "example_card_number_reference"  ;; string
      "client_id" 1  ;; long
      "currency" "example_currency"  ;; string
      "receipt_number" "example_receipt_number"  ;; string
      "terminal_id" 1  ;; long
      "transaction_type" "example_transaction_type"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `PreAuthTransactionCompletion` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## ReactivateTerminal

```clojure
(require '[sdk.entity.reactivate_terminal :as e-reactivate_terminal])

(def reactivate_terminal (api/reactivate_terminal client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | No |  |
| `package_order_uuid` | `string` | No |  |
| `product_order_uuid` | `string` | No |  |
| `reactivation_reason` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-reactivate_terminal/create (api/reactivate_terminal client nil)
    (vs/jm
      "reactivation_reason" "example_reactivation_reason"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `ReactivateTerminal` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## RefundTransaction

```clojure
(require '[sdk.entity.refund_transaction :as e-refund_transaction])

(def refund_transaction (api/refund_transaction client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `string` | No |  |
| `acquirer_name` | `string` | No |  |
| `actual_bonus_point` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorization_code` | `string` | No |  |
| `balance_amount` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_number` | `string` | No |  |
| `client_id` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ec_data` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_data` | `string` | No |  |
| `exchange_fee` | `long` | No |  |
| `exchange_rate` | `string` | No |  |
| `language_code` | `string` | No |  |
| `merchant_address` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `message_type` | `string` | No |  |
| `original_trace_number` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `password` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_footer` | `string` | No |  |
| `receipt_header` | `string` | No |  |
| `receipt_layout` | `long` | No |  |
| `receipt_number` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminal_id` | `long` | Yes |  |
| `terminal_location` | `string` | No |  |
| `trace_number` | `long` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-refund_transaction/create (api/refund_transaction client nil)
    (vs/jm
      "client_id" 1  ;; long
      "currency" "example_currency"  ;; string
      "receipt_number" "example_receipt_number"  ;; string
      "terminal_id" 1  ;; long
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `RefundTransaction` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## RegisterTecsCompany

```clojure
(require '[sdk.entity.register_tecs_company :as e-register_tecs_company])

(def register_tecs_company (api/register_tecs_company client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `partner_id` | `long` | No |  |
| `partner_name` | `string` | No |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-register_tecs_company/create (api/register_tecs_company client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      "package_order_uuid" "example_package_order_uuid"  ;; string
      "product_order_uuid" "example_product_order_uuid"  ;; string
      "template_name" "example_template_name"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `RegisterTecsCompany` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## RegisterTerminal

```clojure
(require '[sdk.entity.register_terminal :as e-register_terminal])

(def register_terminal (api/register_terminal client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `map` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `package_order_uuid` | `string` | Yes |  |
| `product_order_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `tecs_web_secret_key` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `terminal_country_code` | `string` | Yes |  |
| `terminal_id` | `long` | No |  |
| `terminal_id_acq` | `string` | No |  |
| `terminal_language_code` | `string` | Yes |  |
| `terminal_location` | `string` | Yes |  |
| `terminal_serial_number` | `string` | No |  |
| `token_io_alia` | `string` | No |  |
| `token_io_iban` | `string` | No |  |
| `token_io_member_id` | `string` | No |  |
| `web_shop_url` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-register_terminal/create (api/register_terminal client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      "package_order_uuid" "example_package_order_uuid"  ;; string
      "product_order_uuid" "example_product_order_uuid"  ;; string
      "template_name" "example_template_name"  ;; string
      "terminal_country_code" "example_terminal_country_code"  ;; string
      "terminal_language_code" "example_terminal_language_code"  ;; string
      "terminal_location" "example_terminal_location"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `RegisterTerminal` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## ReportData

```clojure
(require '[sdk.entity.report_data :as e-report_data])

(def report_data (api/report_data client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `vector` | No |  |
| `clearing_date_from` | `string` | Yes |  |
| `clearing_date_to` | `string` | Yes |  |
| `corporate_id` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `sum_over_credit_tx` | `map` | No |  |
| `sum_over_debit_tx` | `map` | No |  |
| `terminal_id` | `long` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-report_data/create (api/report_data client nil)
    (vs/jm
      "clearing_date_from" "example_clearing_date_from"  ;; string
      "clearing_date_to" "example_clearing_date_to"  ;; string
      "corporate_id" "example_corporate_id"  ;; string
      "currency" "example_currency"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `ReportData` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## StatusTransaction

```clojure
(require '[sdk.entity.status_transaction :as e-status_transaction])

(def status_transaction (api/status_transaction client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `string` | No |  |
| `acquirer_terminal_id` | `string` | No |  |
| `amount` | `long` | No |  |
| `application_cryptogram` | `string` | No |  |
| `authorization_code` | `any` | No |  |
| `authorization_date` | `string` | No |  |
| `card_brand` | `string` | No |  |
| `card_entry` | `string` | No |  |
| `card_expiration` | `string` | No |  |
| `card_number` | `string` | No |  |
| `clearing_amount` | `long` | No |  |
| `clearing_batch_id` | `string` | No |  |
| `clearing_currency` | `string` | No |  |
| `clearing_date` | `string` | No |  |
| `clearing_processed_date` | `string` | No |  |
| `clearing_status` | `string` | No |  |
| `client_id` | `long` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecr_data` | `string` | No |  |
| `emv_application_id` | `string` | No |  |
| `emv_application_label` | `string` | No |  |
| `merchant_name` | `string` | No |  |
| `merchant_number` | `string` | No |  |
| `original_client_id` | `string` | No |  |
| `original_terminal_id` | `long` | No |  |
| `original_transaction_id` | `string` | No |  |
| `payment_reason` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_code_from_a` | `string` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `service_code` | `string` | No |  |
| `settlement_status` | `string` | No |  |
| `source_id` | `long` | No |  |
| `tecsengine_response_code` | `long` | No |  |
| `tecsengine_response_text` | `string` | No |  |
| `terminal_end_of_day_date` | `string` | No |  |
| `terminal_id` | `long` | No |  |
| `terminal_location` | `string` | No |  |
| `tip_amount` | `long` | No |  |
| `trace_number` | `long` | No |  |
| `transaction_clearing_date` | `string` | No |  |
| `transaction_date` | `string` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_seq_number` | `long` | No |  |
| `transaction_server_date` | `string` | No |  |
| `transaction_source` | `string` | No |  |
| `transaction_type` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-status_transaction/create (api/status_transaction client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `StatusTransaction` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## StoreTerminalParameter

```clojure
(require '[sdk.entity.store_terminal_parameter :as e-store_terminal_parameter])

(def store_terminal_parameter (api/store_terminal_parameter client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `map` | No |  |
| `config_version` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `serial_number` | `string` | Yes |  |
| `tid_sent` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-store_terminal_parameter/create (api/store_terminal_parameter client nil)
    (vs/jm
      "serial_number" "example_serial_number"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `StoreTerminalParameter` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## TerminalId

```clojure
(require '[sdk.entity.terminal_id :as e-terminal_id])

(def terminal_id (api/terminal_id client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `vector` | Yes |  |
| `duplicate_terminal_id` | `vector` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `terminal` | `vector` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-terminal_id/create (api/terminal_id client nil)
    (vs/jm
      "device_serial_number" (vs/jt)  ;; vector
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `TerminalId` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## TransactionHistory

```clojure
(require '[sdk.entity.transaction_history :as e-transaction_history])

(def transaction_history (api/transaction_history client nil))
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
| `pagination` | `map` | No |  |
| `payment_token_public_id` | `string` | No |  |
| `receipt_number` | `string` | No |  |
| `referenced_transaction_id` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `retrieval_reference_number` | `string` | No |  |
| `source_id` | `long` | No |  |
| `tecsengine_response_code_from` | `string` | No |  |
| `tecsengine_response_code_to` | `string` | No |  |
| `terminal_id` | `long` | No |  |
| `trace_number` | `string` | No |  |
| `transaction_amount_from` | `string` | No |  |
| `transaction_amount_to` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transaction_history` | `vector` | No |  |
| `transaction_id` | `string` | No |  |
| `transaction_type` | `string` | No |  |
| `wallet` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-transaction_history/create (api/transaction_history client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `TransactionHistory` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## TransactionsCount

```clojure
(require '[sdk.entity.transactions_count :as e-transactions_count])

(def transactions_count (api/transactions_count client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `vector` | No |  |

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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-transactions_count/create (api/transactions_count client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `TransactionsCount` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## TransactionsCountCardBrand

```clojure
(require '[sdk.entity.transactions_count_card_brand :as e-transactions_count_card_brand])

(def transactions_count_card_brand (api/transactions_count_card_brand client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `transactions_count` | `vector` | No |  |

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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-transactions_count_card_brand/create (api/transactions_count_card_brand client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `TransactionsCountCardBrand` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## TransactionsTurnover

```clojure
(require '[sdk.entity.transactions_turnover :as e-transactions_turnover])

(def transactions_turnover (api/transactions_turnover client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `transaction_date_from` | `string` | No |  |
| `transaction_date_to` | `string` | No |  |
| `turnover` | `vector` | No |  |

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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-transactions_turnover/create (api/transactions_turnover client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `TransactionsTurnover` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## UpdateMerchant

```clojure
(require '[sdk.entity.update_merchant :as e-update_merchant])

(def update_merchant (api/update_merchant client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `corporate_uuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchant_category_code` | `string` | No |  |
| `name` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vu_nummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-update_merchant/create (api/update_merchant client nil)
    (vs/jm
      "corporate_uuid" "example_corporate_uuid"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `UpdateMerchant` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## UpdateTemplateXml

```clojure
(require '[sdk.entity.update_template_xml :as e-update_template_xml])

(def update_template_xml (api/update_template_xml client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `template_name` | `string` | Yes |  |
| `template_xml` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-update_template_xml/create (api/update_template_xml client nil)
    (vs/jm
      "template_name" "example_template_name"  ;; string
      "template_xml" "example_template_xml"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `UpdateTemplateXml` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## Version

```clojure
(require '[sdk.entity.version :as e-version])

(def version (api/version client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `(load ent reqmatch ctrl) -> map`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```clojure
(def result (e-version/load (api/version client nil) nil nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `Version` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```clojure
(def client
  (api/make-sdk
    (vs/jm "feature"
      (vs/jm
        "test" (vs/jm "active" true)
        ))))
```

