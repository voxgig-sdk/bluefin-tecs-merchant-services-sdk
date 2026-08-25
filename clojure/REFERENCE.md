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
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `long` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `long` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `long` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-cancel_transaction/create (api/cancel_transaction client nil)
    (vs/jm
      "clientId" 1  ;; long
      "currency" "example_currency"  ;; string
      "receiptNumber" "example_receiptNumber"  ;; string
      "terminalId" 1  ;; long
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
| `cardNo` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

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
| `acquirerId` | `long` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateType` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |
| `terminalType` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-create_product/create (api/create_product client nil)
    (vs/jm
      "templateName" "example_templateName"  ;; string
      "templateType" "example_templateType"  ;; string
      "templateXml" "example_templateXml"  ;; string
      "terminalType" "example_terminalType"  ;; string
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
| `corporateUuid` | `string` | No |  |
| `deactivationReason` | `string` | Yes |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-deactivate_terminal/create (api/deactivate_terminal client nil)
    (vs/jm
      "deactivationReason" "example_deactivationReason"  ;; string
      "terminalId" 1  ;; long
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
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `txCount` | `long` | No |  |
| `txIdEnd` | `string` | No |  |
| `txIdStart` | `string` | No |  |
| `txSeqNoEnd` | `long` | No |  |
| `txSeqNoStart` | `long` | No |  |
| `txTotal` | `long` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-digital_services_api/create (api/digital_services_api client nil)
    (vs/jm
      "file_id" "example_file_id"  ;; string
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `ecomData` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-ec_data_ecom/create (api/ec_data_ecom client nil)
    (vs/jm
      "terminalId" 1  ;; long
      "transactionId" "example_transactionId"  ;; string
      "transactionType" "example_transactionType"  ;; string
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
| `ecomPass` | `string` | No |  |
| `ecomSkey` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-ecom_parameter/create (api/ecom_parameter client nil)
    (vs/jm
      "terminalId" 1  ;; long
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
| `ecrData` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-ecr_data/create (api/ecr_data client nil)
    (vs/jm
      "terminalId" 1  ;; long
      "transactionId" "example_transactionId"  ;; string
      "transactionType" "example_transactionType"  ;; string
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
| `emvData` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `transactionId` | `string` | Yes |  |
| `transactionType` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-emv_data/create (api/emv_data client nil)
    (vs/jm
      "terminalId" 1  ;; long
      "transactionId" "example_transactionId"  ;; string
      "transactionType" "example_transactionType"  ;; string
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
| `accountNo` | `long` | No |  |
| `additionalData` | `map` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `merchantCategoryCode` | `long` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sortingCode` | `long` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalIds` | `vector` | No |  |
| `vuNummer` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-enable_acquiring/create (api/enable_acquiring client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
      "currency" "example_currency"  ;; string
      "merchantCategoryCode" 1  ;; long
      "packageOrderUuid" "example_packageOrderUuid"  ;; string
      "productOrderUuid" "example_productOrderUuid"  ;; string
      "templateName" "example_templateName"  ;; string
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
| `merchantContractNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-get_merchant_contract_number/create (api/get_merchant_contract_number client nil)
    (vs/jm
      "merchantContractNumber" "example_merchantContractNumber"  ;; string
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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-get_template_xml/create (api/get_template_xml client nil)
    (vs/jm
      "templateName" "example_templateName"  ;; string
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
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-introduce_mandator/create (api/introduce_mandator client nil)
    (vs/jm
      "mandatorName" "example_mandatorName"  ;; string
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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalTemplateDescription` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-introduce_package/create (api/introduce_package client nil)
    (vs/jm
      "terminalTemplateDescription" "example_terminalTemplateDescription"  ;; string
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
| `kaDateTimeFrom` | `string` | No |  |
| `kaDateTimeTo` | `string` | No |  |
| `keepAliveData` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalDateTimeFrom` | `string` | No |  |
| `terminalDateTimeTo` | `string` | No |  |
| `terminalId` | `long` | No |  |

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
| `corporateUuid` | `vector` | No |  |
| `filter` | `map` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `vector` | No |  |

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
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `map` | No |  |
| `records` | `vector` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-mandator_clearing_export/create (api/mandator_clearing_export client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `clearingDateFrom` | `string` | Yes | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | Yes | End date for clearing export (inclusive) |
| `fileId` | `string` | No | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | No | Optional filename template for the export file |
| `id` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `status` | `string` | No | Processing status of the export request |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-mandator_clearing_export_download/create (api/mandator_clearing_export_download client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `vector` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-mandator_clearing_export_summary/create (api/mandator_clearing_export_summary client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
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
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `map` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `long` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `long` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

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
| `productorderuuids` | `vector` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `targetPackageorderuuid` | `string` | No |  |
| `targetProductorderuuid` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-move_tid/create (api/move_tid client nil)
    (vs/jm
      "productorderuuids" (vs/jt)  ;; vector
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
| `acquirerName` | `string` | No | Acquirer name parsed from KKG field |
| `amount` | `long` | Yes | Transaction amount in minor units (cents) |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-payment_manual/create (api/payment_manual client nil)
    (vs/jm
      "amount" 1  ;; long
      "cardNumber" "example_cardNumber"  ;; string
      "currency" "example_currency"  ;; string
      "expDate" "example_expDate"  ;; string
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
| `amount` | `long` | Yes | Transaction amount in minor units (cents) |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-payment_sred/create (api/payment_sred client nil)
    (vs/jm
      "amount" 1  ;; long
      "currency" "example_currency"  ;; string
      "devicePayload" "example_devicePayload"  ;; string
      "terminalId" "example_terminalId"  ;; string
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
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `cardNumberReference` | `string` | Yes |  |
| `clientId` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `long` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `long` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `long` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-pre_auth_transaction_completion/create (api/pre_auth_transaction_completion client nil)
    (vs/jm
      "cardNumberReference" "example_cardNumberReference"  ;; string
      "clientId" 1  ;; long
      "currency" "example_currency"  ;; string
      "receiptNumber" "example_receiptNumber"  ;; string
      "terminalId" 1  ;; long
      "transactionType" "example_transactionType"  ;; string
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
| `corporateUuid` | `string` | No |  |
| `packageOrderUuid` | `string` | No |  |
| `productOrderUuid` | `string` | No |  |
| `reactivationReason` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminalId` | `long` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-reactivate_terminal/create (api/reactivate_terminal client nil)
    (vs/jm
      "reactivationReason" "example_reactivationReason"  ;; string
      "terminalId" 1  ;; long
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
| `acquirerId` | `string` | No |  |
| `acquirerName` | `string` | No |  |
| `actualBonusPoints` | `string` | No |  |
| `amount` | `long` | No |  |
| `authorizationCode` | `string` | No |  |
| `balanceAmount` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clientId` | `long` | Yes |  |
| `currency` | `string` | Yes |  |
| `cvc` | `string` | No |  |
| `ecData` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvData` | `string` | No |  |
| `exchangeFee` | `long` | No |  |
| `exchangeRate` | `string` | No |  |
| `languageCode` | `string` | No |  |
| `merchantAddress` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `messageType` | `string` | No |  |
| `originalTraceNumber` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `password` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptFooter` | `string` | No |  |
| `receiptHeader` | `string` | No |  |
| `receiptLayout` | `long` | No |  |
| `receiptNumber` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | No |  |
| `svc` | `string` | No |  |
| `terminalId` | `long` | Yes |  |
| `terminalLocation` | `string` | No |  |
| `traceNumber` | `long` | No |  |
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-refund_transaction/create (api/refund_transaction client nil)
    (vs/jm
      "clientId" 1  ;; long
      "currency" "example_currency"  ;; string
      "receiptNumber" "example_receiptNumber"  ;; string
      "terminalId" 1  ;; long
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
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `partnerId` | `long` | No |  |
| `partnerName` | `string` | No |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-register_tecs_company/create (api/register_tecs_company client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
      "packageOrderUuid" "example_packageOrderUuid"  ;; string
      "productOrderUuid" "example_productOrderUuid"  ;; string
      "templateName" "example_templateName"  ;; string
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
| `additionalData` | `map` | No |  |
| `corporateUuid` | `string` | Yes |  |
| `packageOrderUuid` | `string` | Yes |  |
| `productOrderUuid` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `tecsWebSecretKey` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `terminalCountryCode` | `string` | Yes |  |
| `terminalId` | `long` | No |  |
| `terminalIdAcq` | `string` | No |  |
| `terminalLanguageCode` | `string` | Yes |  |
| `terminalLocation` | `string` | Yes |  |
| `terminalSerialNumber` | `string` | No |  |
| `tokenIOAlias` | `string` | No |  |
| `tokenIOIban` | `string` | No |  |
| `tokenIOMemberId` | `string` | No |  |
| `webShopUrl` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-register_terminal/create (api/register_terminal client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
      "packageOrderUuid" "example_packageOrderUuid"  ;; string
      "productOrderUuid" "example_productOrderUuid"  ;; string
      "templateName" "example_templateName"  ;; string
      "terminalCountryCode" "example_terminalCountryCode"  ;; string
      "terminalLanguageCode" "example_terminalLanguageCode"  ;; string
      "terminalLocation" "example_terminalLocation"  ;; string
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
| `cardBrandReportData` | `vector` | No |  |
| `clearingDateFrom` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Yes | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` | Yes |  |
| `currency` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sumOverCreditTx` | `map` | No |  |
| `sumOverDebitTx` | `map` | No |  |
| `terminalId` | `long` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-report_data/create (api/report_data client nil)
    (vs/jm
      "clearingDateFrom" "example_clearingDateFrom"  ;; string
      "clearingDateTo" "example_clearingDateTo"  ;; string
      "corporateId" "example_corporateId"  ;; string
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
| `acquirerName` | `string` | No |  |
| `acquirerTerminalId` | `string` | No |  |
| `amount` | `long` | No |  |
| `applicationCryptogram` | `string` | No |  |
| `authorizationCode` | `any` | No | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `cardEntry` | `string` | No |  |
| `cardExpiration` | `string` | No |  |
| `cardNumber` | `string` | No |  |
| `clearingAmount` | `long` | No |  |
| `clearingBatchId` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingDate` | `string` | No |  |
| `clearingProcessedDate` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `clientId` | `long` | No |  |
| `currency` | `string` | No |  |
| `cvm` | `string` | No |  |
| `ecrData` | `string` | No |  |
| `emvApplicationId` | `string` | No |  |
| `emvApplicationLabel` | `string` | No |  |
| `merchantName` | `string` | No |  |
| `merchantNumber` | `string` | No |  |
| `originalClientId` | `string` | No |  |
| `originalTerminalId` | `long` | No |  |
| `originalTransactionId` | `string` | No |  |
| `paymentReason` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseCodeFromAS` | `string` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `serviceCode` | `string` | No |  |
| `settlementStatus` | `string` | No |  |
| `sourceId` | `long` | No |  |
| `tecsengineResponseCode` | `long` | No |  |
| `tecsengineResponseText` | `string` | No |  |
| `terminalEndOfDayDate` | `string` | No |  |
| `terminalId` | `long` | No |  |
| `terminalLocation` | `string` | No |  |
| `tipAmount` | `long` | No |  |
| `traceNumber` | `long` | No |  |
| `transactionClearingDate` | `string` | No |  |
| `transactionDate` | `string` | No |  |
| `transactionId` | `string` | No |  |
| `transactionSeqNumber` | `long` | No |  |
| `transactionServerDate` | `string` | No |  |
| `transactionSource` | `string` | No |  |
| `transactionType` | `string` | No |  |

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
| `acqTabNexo` | `map` | No |  |
| `configVersion` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `serialNumber` | `string` | Yes |  |
| `tidSent` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-store_terminal_parameter/create (api/store_terminal_parameter client nil)
    (vs/jm
      "serialNumber" "example_serialNumber"  ;; string
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
| `deviceSerialNumber` | `vector` | Yes |  |
| `duplicateTerminalIds` | `vector` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `terminals` | `vector` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-terminal_id/create (api/terminal_id client nil)
    (vs/jm
      "deviceSerialNumber" (vs/jt)  ;; vector
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
| `3DSecure` | `string` | No |  |
| `authorizationCode` | `string` | No |  |
| `cardBrand` | `string` | No |  |
| `clearingAmountFrom` | `string` | No |  |
| `clearingAmountTo` | `string` | No |  |
| `clearingCurrency` | `string` | No |  |
| `clearingStatus` | `string` | No |  |
| `corporateUUID` | `string` | No |  |
| `orderByTransactionDate` | `string` | No |  |
| `pagination` | `map` | No |  |
| `paymentTokenPublicId` | `string` | No |  |
| `receiptNumber` | `string` | No |  |
| `referencedTransactionId` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `retrievalReferenceNumber` | `string` | No |  |
| `sourceId` | `long` | No |  |
| `tecsengineResponseCodeFrom` | `string` | No |  |
| `tecsengineResponseCodeTo` | `string` | No |  |
| `terminalId` | `long` | No |  |
| `traceNumber` | `string` | No |  |
| `transactionAmountFrom` | `string` | No |  |
| `transactionAmountTo` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionHistories` | `vector` | No |  |
| `transactionId` | `string` | No |  |
| `transactionType` | `string` | No |  |
| `wallet` | `string` | No | Filter by wallet type. |

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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `vector` | No |  |

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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `transactionsCount` | `vector` | No |  |

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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `transactionDateFrom` | `string` | No |  |
| `transactionDateTo` | `string` | No |  |
| `turnovers` | `vector` | No |  |

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
| `corporateUuid` | `string` | Yes |  |
| `country` | `string` | No |  |
| `merchantCategoryCode` | `string` | No |  |
| `name` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street` | `string` | No |  |
| `vuNummer` | `string` | No |  |
| `zipcode` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-update_merchant/create (api/update_merchant client nil)
    (vs/jm
      "corporateUuid" "example_corporateUuid"  ;; string
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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `templateName` | `string` | Yes |  |
| `templateXml` | `string` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-update_template_xml/create (api/update_template_xml client nil)
    (vs/jm
      "templateName" "example_templateName"  ;; string
      "templateXml" "example_templateXml"  ;; string
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
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
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

