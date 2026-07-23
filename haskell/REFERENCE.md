# BluefinTecsMerchantServices Haskell SDK Reference

Complete API reference for the BluefinTecsMerchantServices Haskell SDK.


## Client

### Constructors

```haskell
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..))
import SdkHelpers (jo)

makeClient :: IO Sdk.Client
makeClient = do
  opts <- jo [("base", VStr "https://api.example.com")]
  Sdk.newSdk opts
```

Construct a live SDK client.

**Functions:**

| Function | Signature | Description |
| --- | --- | --- |
| `newSdk` | `Value -> IO Client` | Construct a client from an options map. |
| `newSdk0` | `IO Client` | Construct a client with defaults. |

**Options (map keys):**

| Key | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL for API requests. |
| `prefix` | `String` | URL prefix appended after base. |
| `suffix` | `String` | URL suffix appended after path. |
| `headers` | `Value` | Custom headers for all requests. |
| `feature` | `Value` | Feature configuration. |
| `system` | `Value` | System overrides (e.g. custom fetch). |


### Test constructors

```haskell
client <- Sdk.testSdk0
```

`testSdk :: Value -> Value -> IO Client` constructs a test client with mock
features active (`testSdk0 :: IO Client` for the no-argument form). Pass
`VNoval` for defaults.


### Entity accessors

#### `cancel_transaction :: Client -> Value -> IO Entity`

Construct a `CancelTransaction` entity bound to the client. Pass `VNoval` for no initial options.

#### `check_card_black_listed :: Client -> Value -> IO Entity`

Construct a `CheckCardBlackListed` entity bound to the client. Pass `VNoval` for no initial options.

#### `create_product :: Client -> Value -> IO Entity`

Construct a `CreateProduct` entity bound to the client. Pass `VNoval` for no initial options.

#### `deactivate_terminal :: Client -> Value -> IO Entity`

Construct a `DeactivateTerminal` entity bound to the client. Pass `VNoval` for no initial options.

#### `digital_services_api :: Client -> Value -> IO Entity`

Construct a `DigitalServicesApi` entity bound to the client. Pass `VNoval` for no initial options.

#### `ec_data_ecom :: Client -> Value -> IO Entity`

Construct a `EcDataEcom` entity bound to the client. Pass `VNoval` for no initial options.

#### `ecom_parameter :: Client -> Value -> IO Entity`

Construct a `EcomParameter` entity bound to the client. Pass `VNoval` for no initial options.

#### `ecr_data :: Client -> Value -> IO Entity`

Construct a `EcrData` entity bound to the client. Pass `VNoval` for no initial options.

#### `emv_data :: Client -> Value -> IO Entity`

Construct a `EmvData` entity bound to the client. Pass `VNoval` for no initial options.

#### `enable_acquiring :: Client -> Value -> IO Entity`

Construct a `EnableAcquiring` entity bound to the client. Pass `VNoval` for no initial options.

#### `get_merchant_contract_number :: Client -> Value -> IO Entity`

Construct a `GetMerchantContractNumber` entity bound to the client. Pass `VNoval` for no initial options.

#### `get_template_xml :: Client -> Value -> IO Entity`

Construct a `GetTemplateXml` entity bound to the client. Pass `VNoval` for no initial options.

#### `introduce_mandator :: Client -> Value -> IO Entity`

Construct a `IntroduceMandator` entity bound to the client. Pass `VNoval` for no initial options.

#### `introduce_package :: Client -> Value -> IO Entity`

Construct a `IntroducePackage` entity bound to the client. Pass `VNoval` for no initial options.

#### `keep_alive :: Client -> Value -> IO Entity`

Construct a `KeepAlive` entity bound to the client. Pass `VNoval` for no initial options.

#### `list_terminal :: Client -> Value -> IO Entity`

Construct a `ListTerminal` entity bound to the client. Pass `VNoval` for no initial options.

#### `mandator_clearing_export :: Client -> Value -> IO Entity`

Construct a `MandatorClearingExport` entity bound to the client. Pass `VNoval` for no initial options.

#### `mandator_clearing_export_download :: Client -> Value -> IO Entity`

Construct a `MandatorClearingExportDownload` entity bound to the client. Pass `VNoval` for no initial options.

#### `mandator_clearing_export_summary :: Client -> Value -> IO Entity`

Construct a `MandatorClearingExportSummary` entity bound to the client. Pass `VNoval` for no initial options.

#### `merchant_portal_services_api :: Client -> Value -> IO Entity`

Construct a `MerchantPortalServicesApi` entity bound to the client. Pass `VNoval` for no initial options.

#### `move_tid :: Client -> Value -> IO Entity`

Construct a `MoveTid` entity bound to the client. Pass `VNoval` for no initial options.

#### `payment_manual :: Client -> Value -> IO Entity`

Construct a `PaymentManual` entity bound to the client. Pass `VNoval` for no initial options.

#### `payment_sred :: Client -> Value -> IO Entity`

Construct a `PaymentSred` entity bound to the client. Pass `VNoval` for no initial options.

#### `pre_auth_transaction_completion :: Client -> Value -> IO Entity`

Construct a `PreAuthTransactionCompletion` entity bound to the client. Pass `VNoval` for no initial options.

#### `reactivate_terminal :: Client -> Value -> IO Entity`

Construct a `ReactivateTerminal` entity bound to the client. Pass `VNoval` for no initial options.

#### `refund_transaction :: Client -> Value -> IO Entity`

Construct a `RefundTransaction` entity bound to the client. Pass `VNoval` for no initial options.

#### `register_tecs_company :: Client -> Value -> IO Entity`

Construct a `RegisterTecsCompany` entity bound to the client. Pass `VNoval` for no initial options.

#### `register_terminal :: Client -> Value -> IO Entity`

Construct a `RegisterTerminal` entity bound to the client. Pass `VNoval` for no initial options.

#### `report_data :: Client -> Value -> IO Entity`

Construct a `ReportData` entity bound to the client. Pass `VNoval` for no initial options.

#### `status_transaction :: Client -> Value -> IO Entity`

Construct a `StatusTransaction` entity bound to the client. Pass `VNoval` for no initial options.

#### `store_terminal_parameter :: Client -> Value -> IO Entity`

Construct a `StoreTerminalParameter` entity bound to the client. Pass `VNoval` for no initial options.

#### `terminal_id :: Client -> Value -> IO Entity`

Construct a `TerminalId` entity bound to the client. Pass `VNoval` for no initial options.

#### `transaction_history :: Client -> Value -> IO Entity`

Construct a `TransactionHistory` entity bound to the client. Pass `VNoval` for no initial options.

#### `transactions_count :: Client -> Value -> IO Entity`

Construct a `TransactionsCount` entity bound to the client. Pass `VNoval` for no initial options.

#### `transactions_count_card_brand :: Client -> Value -> IO Entity`

Construct a `TransactionsCountCardBrand` entity bound to the client. Pass `VNoval` for no initial options.

#### `transactions_turnover :: Client -> Value -> IO Entity`

Construct a `TransactionsTurnover` entity bound to the client. Pass `VNoval` for no initial options.

#### `update_merchant :: Client -> Value -> IO Entity`

Construct a `UpdateMerchant` entity bound to the client. Pass `VNoval` for no initial options.

#### `update_template_xml :: Client -> Value -> IO Entity`

Construct a `UpdateTemplateXml` entity bound to the client. Pass `VNoval` for no initial options.

#### `version :: Client -> Value -> IO Entity`

Construct a `Version` entity bound to the client. Pass `VNoval` for no initial options.

### HTTP escape hatches

#### `direct :: Client -> Value -> IO Value` (module `SdkFeatures`)

Make a direct HTTP request to any API endpoint. Returns a result `Value` with
`ok`, `status`, `headers`, and `data` (or `err` on failure). This escape
hatch never raises — branch on `getp result "ok"`.

**Argument (map keys):**

| Key | Type | Description |
| --- | --- | --- |
| `path` | `String` | URL path with optional `{param}` placeholders. |
| `method` | `String` | HTTP method (default: `"GET"`). |
| `params` | `Value` | Path parameter values. |
| `query` | `Value` | Query string parameters. |
| `headers` | `Value` | Request headers (merged with defaults). |
| `body` | `Value` | Request body (maps are JSON-serialized). |

#### `prepare :: Client -> Value -> IO Value` (module `SdkFeatures`)

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CancelTransaction

```haskell
  ent <- Sdk.cancel_transaction sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Int` | No |  |
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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.cancel_transaction sdk VNoval
  d <- jo
    [ ("client_id", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receipt_number", VStr "example_receipt_number")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `CancelTransaction` entity with the same options.

#### `eName :: String`

The entity name.


---

## CheckCardBlackListed

```haskell
  ent <- Sdk.check_card_black_listed sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_no` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.check_card_black_listed sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `CheckCardBlackListed` entity with the same options.

#### `eName :: String`

The entity name.


---

## CreateProduct

```haskell
  ent <- Sdk.create_product sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `Int` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_type` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |
| `terminal_type` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.create_product sdk VNoval
  d <- jo
    [ ("template_name", VStr "example_template_name")   -- String
    , ("template_type", VStr "example_template_type")   -- String
    , ("template_xml", VStr "example_template_xml")   -- String
    , ("terminal_type", VStr "example_terminal_type")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `CreateProduct` entity with the same options.

#### `eName :: String`

The entity name.


---

## DeactivateTerminal

```haskell
  ent <- Sdk.deactivate_terminal sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `deactivation_reason` | `String` | Yes |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.deactivate_terminal sdk VNoval
  d <- jo
    [ ("deactivation_reason", VStr "example_deactivation_reason")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `DeactivateTerminal` entity with the same options.

#### `eName :: String`

The entity name.


---

## DigitalServicesApi

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `tx_count` | `Int` | No |  |
| `tx_id_end` | `String` | No |  |
| `tx_id_start` | `String` | No |  |
| `tx_seq_no_end` | `Int` | No |  |
| `tx_seq_no_start` | `Int` | No |  |
| `tx_total` | `Int` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

#### `eLoad ent match ctrl :: IO Value`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  result <- Sdk.eLoad ent match ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `DigitalServicesApi` entity with the same options.

#### `eName :: String`

The entity name.


---

## EcDataEcom

```haskell
  ent <- Sdk.ec_data_ecom sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_data` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.ec_data_ecom sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    , ("transaction_id", VStr "example_transaction_id")   -- String
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `EcDataEcom` entity with the same options.

#### `eName :: String`

The entity name.


---

## EcomParameter

```haskell
  ent <- Sdk.ecom_parameter sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecom_pass` | `String` | No |  |
| `ecom_skey` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.ecom_parameter sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `EcomParameter` entity with the same options.

#### `eName :: String`

The entity name.


---

## EcrData

```haskell
  ent <- Sdk.ecr_data sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `ecr_data` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.ecr_data sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    , ("transaction_id", VStr "example_transaction_id")   -- String
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `EcrData` entity with the same options.

#### `eName :: String`

The entity name.


---

## EmvData

```haskell
  ent <- Sdk.emv_data sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `emv_data` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `transaction_id` | `String` | Yes |  |
| `transaction_type` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.emv_data sdk VNoval
  d <- jo
    [ ("terminal_id", VNum 1)   -- Int
    , ("transaction_id", VStr "example_transaction_id")   -- String
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `EmvData` entity with the same options.

#### `eName :: String`

The entity name.


---

## EnableAcquiring

```haskell
  ent <- Sdk.enable_acquiring sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `account_no` | `Int` | No |  |
| `additional_data` | `Value` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchant_category_code` | `Int` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `sorting_code` | `Int` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_id` | `[Value]` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `vu_nummer` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.enable_acquiring sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("merchant_category_code", VNum 1)   -- Int
    , ("package_order_uuid", VStr "example_package_order_uuid")   -- String
    , ("product_order_uuid", VStr "example_product_order_uuid")   -- String
    , ("template_name", VStr "example_template_name")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `EnableAcquiring` entity with the same options.

#### `eName :: String`

The entity name.


---

## GetMerchantContractNumber

```haskell
  ent <- Sdk.get_merchant_contract_number sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `merchant_contract_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.get_merchant_contract_number sdk VNoval
  d <- jo
    [ ("merchant_contract_number", VStr "example_merchant_contract_number")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `GetMerchantContractNumber` entity with the same options.

#### `eName :: String`

The entity name.


---

## GetTemplateXml

```haskell
  ent <- Sdk.get_template_xml sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.get_template_xml sdk VNoval
  d <- jo
    [ ("template_name", VStr "example_template_name")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `GetTemplateXml` entity with the same options.

#### `eName :: String`

The entity name.


---

## IntroduceMandator

```haskell
  ent <- Sdk.introduce_mandator sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.introduce_mandator sdk VNoval
  d <- jo
    [ ("mandator_name", VStr "example_mandator_name")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `IntroduceMandator` entity with the same options.

#### `eName :: String`

The entity name.


---

## IntroducePackage

```haskell
  ent <- Sdk.introduce_package sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_template_description` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.introduce_package sdk VNoval
  d <- jo
    [ ("terminal_template_description", VStr "example_terminal_template_description")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `IntroducePackage` entity with the same options.

#### `eName :: String`

The entity name.


---

## KeepAlive

```haskell
  ent <- Sdk.keep_alive sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `hwserialno` | `String` | No |  |
| `ka_date_time_from` | `String` | No |  |
| `ka_date_time_to` | `String` | No |  |
| `keep_alive_data` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_date_time_from` | `String` | No |  |
| `terminal_date_time_to` | `String` | No |  |
| `terminal_id` | `Int` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.keep_alive sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `KeepAlive` entity with the same options.

#### `eName :: String`

The entity name.


---

## ListTerminal

```haskell
  ent <- Sdk.list_terminal sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `[Value]` | No |  |
| `filter` | `Value` | No |  |
| `pagination` | `Value` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `[Value]` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.list_terminal sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `ListTerminal` entity with the same options.

#### `eName :: String`

The entity name.


---

## MandatorClearingExport

```haskell
  ent <- Sdk.mandator_clearing_export sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `pagination` | `Value` | No |  |
| `record` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `MandatorClearingExport` entity with the same options.

#### `eName :: String`

The entity name.


---

## MandatorClearingExportDownload

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `file_id` | `String` | No |  |
| `filename_template` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

#### `eLoad ent match ctrl :: IO Value`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  match <- jo [("id", VStr "mandator_clearing_export_download_id")]
  ctrl <- emptyMap
  result <- Sdk.eLoad ent match ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `MandatorClearingExportDownload` entity with the same options.

#### `eName :: String`

The entity name.


---

## MandatorClearingExportSummary

```haskell
  ent <- Sdk.mandator_clearing_export_summary sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `record` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export_summary sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `MandatorClearingExportSummary` entity with the same options.

#### `eName :: String`

The entity name.


---

## MerchantPortalServicesApi

```haskell
  ent <- Sdk.merchant_portal_services_api sdk VNoval
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
| `pagination` | `Value` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `Int` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `Int` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.merchant_portal_services_api sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `MerchantPortalServicesApi` entity with the same options.

#### `eName :: String`

The entity name.


---

## MoveTid

```haskell
  ent <- Sdk.move_tid sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `productorderuuid` | `[Value]` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `target_packageorderuuid` | `String` | No |  |
| `target_productorderuuid` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.move_tid sdk VNoval
  d <- jo
    [ ("productorderuuid", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `MoveTid` entity with the same options.

#### `eName :: String`

The entity name.


---

## PaymentManual

```haskell
  ent <- Sdk.payment_manual sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `Int` | Yes |  |
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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.payment_manual sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("card_number", VStr "example_card_number")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("exp_date", VStr "example_exp_date")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `PaymentManual` entity with the same options.

#### `eName :: String`

The entity name.


---

## PaymentSred

```haskell
  ent <- Sdk.payment_sred sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `amount` | `Int` | Yes |  |
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
| `sred` | `Value` | No |  |
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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.payment_sred sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("device_payload", VStr "example_device_payload")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `PaymentSred` entity with the same options.

#### `eName :: String`

The entity name.


---

## PreAuthTransactionCompletion

```haskell
  ent <- Sdk.pre_auth_transaction_completion sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `card_number_reference` | `String` | Yes |  |
| `client_id` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Int` | No |  |
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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.pre_auth_transaction_completion sdk VNoval
  d <- jo
    [ ("card_number_reference", VStr "example_card_number_reference")   -- String
    , ("client_id", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receipt_number", VStr "example_receipt_number")   -- String
    , ("terminal_id", VNum 1)   -- Int
    , ("transaction_type", VStr "example_transaction_type")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `PreAuthTransactionCompletion` entity with the same options.

#### `eName :: String`

The entity name.


---

## ReactivateTerminal

```haskell
  ent <- Sdk.reactivate_terminal sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | No |  |
| `package_order_uuid` | `String` | No |  |
| `product_order_uuid` | `String` | No |  |
| `reactivation_reason` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.reactivate_terminal sdk VNoval
  d <- jo
    [ ("reactivation_reason", VStr "example_reactivation_reason")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `ReactivateTerminal` entity with the same options.

#### `eName :: String`

The entity name.


---

## RefundTransaction

```haskell
  ent <- Sdk.refund_transaction sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_id` | `String` | No |  |
| `acquirer_name` | `String` | No |  |
| `actual_bonus_point` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorization_code` | `String` | No |  |
| `balance_amount` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_number` | `String` | No |  |
| `client_id` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ec_data` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_data` | `String` | No |  |
| `exchange_fee` | `Int` | No |  |
| `exchange_rate` | `String` | No |  |
| `language_code` | `String` | No |  |
| `merchant_address` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `message_type` | `String` | No |  |
| `original_trace_number` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `password` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_footer` | `String` | No |  |
| `receipt_header` | `String` | No |  |
| `receipt_layout` | `Int` | No |  |
| `receipt_number` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminal_id` | `Int` | Yes |  |
| `terminal_location` | `String` | No |  |
| `trace_number` | `Int` | No |  |
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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.refund_transaction sdk VNoval
  d <- jo
    [ ("client_id", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receipt_number", VStr "example_receipt_number")   -- String
    , ("terminal_id", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `RefundTransaction` entity with the same options.

#### `eName :: String`

The entity name.


---

## RegisterTecsCompany

```haskell
  ent <- Sdk.register_tecs_company sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `partner_id` | `Int` | No |  |
| `partner_name` | `String` | No |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.register_tecs_company sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    , ("package_order_uuid", VStr "example_package_order_uuid")   -- String
    , ("product_order_uuid", VStr "example_product_order_uuid")   -- String
    , ("template_name", VStr "example_template_name")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `RegisterTecsCompany` entity with the same options.

#### `eName :: String`

The entity name.


---

## RegisterTerminal

```haskell
  ent <- Sdk.register_terminal sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `additional_data` | `Value` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `package_order_uuid` | `String` | Yes |  |
| `product_order_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `tecs_web_secret_key` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `terminal_country_code` | `String` | Yes |  |
| `terminal_id` | `Int` | No |  |
| `terminal_id_acq` | `String` | No |  |
| `terminal_language_code` | `String` | Yes |  |
| `terminal_location` | `String` | Yes |  |
| `terminal_serial_number` | `String` | No |  |
| `token_io_alia` | `String` | No |  |
| `token_io_iban` | `String` | No |  |
| `token_io_member_id` | `String` | No |  |
| `web_shop_url` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.register_terminal sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    , ("package_order_uuid", VStr "example_package_order_uuid")   -- String
    , ("product_order_uuid", VStr "example_product_order_uuid")   -- String
    , ("template_name", VStr "example_template_name")   -- String
    , ("terminal_country_code", VStr "example_terminal_country_code")   -- String
    , ("terminal_language_code", VStr "example_terminal_language_code")   -- String
    , ("terminal_location", VStr "example_terminal_location")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `RegisterTerminal` entity with the same options.

#### `eName :: String`

The entity name.


---

## ReportData

```haskell
  ent <- Sdk.report_data sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `card_brand_report_data` | `[Value]` | No |  |
| `clearing_date_from` | `String` | Yes |  |
| `clearing_date_to` | `String` | Yes |  |
| `corporate_id` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `sum_over_credit_tx` | `Value` | No |  |
| `sum_over_debit_tx` | `Value` | No |  |
| `terminal_id` | `Int` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.report_data sdk VNoval
  d <- jo
    [ ("clearing_date_from", VStr "example_clearing_date_from")   -- String
    , ("clearing_date_to", VStr "example_clearing_date_to")   -- String
    , ("corporate_id", VStr "example_corporate_id")   -- String
    , ("currency", VStr "example_currency")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `ReportData` entity with the same options.

#### `eName :: String`

The entity name.


---

## StatusTransaction

```haskell
  ent <- Sdk.status_transaction sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acquirer_name` | `String` | No |  |
| `acquirer_terminal_id` | `String` | No |  |
| `amount` | `Int` | No |  |
| `application_cryptogram` | `String` | No |  |
| `authorization_code` | `Value` | No |  |
| `authorization_date` | `String` | No |  |
| `card_brand` | `String` | No |  |
| `card_entry` | `String` | No |  |
| `card_expiration` | `String` | No |  |
| `card_number` | `String` | No |  |
| `clearing_amount` | `Int` | No |  |
| `clearing_batch_id` | `String` | No |  |
| `clearing_currency` | `String` | No |  |
| `clearing_date` | `String` | No |  |
| `clearing_processed_date` | `String` | No |  |
| `clearing_status` | `String` | No |  |
| `client_id` | `Int` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecr_data` | `String` | No |  |
| `emv_application_id` | `String` | No |  |
| `emv_application_label` | `String` | No |  |
| `merchant_name` | `String` | No |  |
| `merchant_number` | `String` | No |  |
| `original_client_id` | `String` | No |  |
| `original_terminal_id` | `Int` | No |  |
| `original_transaction_id` | `String` | No |  |
| `payment_reason` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_code_from_a` | `String` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `service_code` | `String` | No |  |
| `settlement_status` | `String` | No |  |
| `source_id` | `Int` | No |  |
| `tecsengine_response_code` | `Int` | No |  |
| `tecsengine_response_text` | `String` | No |  |
| `terminal_end_of_day_date` | `String` | No |  |
| `terminal_id` | `Int` | No |  |
| `terminal_location` | `String` | No |  |
| `tip_amount` | `Int` | No |  |
| `trace_number` | `Int` | No |  |
| `transaction_clearing_date` | `String` | No |  |
| `transaction_date` | `String` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_seq_number` | `Int` | No |  |
| `transaction_server_date` | `String` | No |  |
| `transaction_source` | `String` | No |  |
| `transaction_type` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.status_transaction sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `StatusTransaction` entity with the same options.

#### `eName :: String`

The entity name.


---

## StoreTerminalParameter

```haskell
  ent <- Sdk.store_terminal_parameter sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `acq_tab_nexo` | `Value` | No |  |
| `config_version` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `serial_number` | `String` | Yes |  |
| `tid_sent` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.store_terminal_parameter sdk VNoval
  d <- jo
    [ ("serial_number", VStr "example_serial_number")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `StoreTerminalParameter` entity with the same options.

#### `eName :: String`

The entity name.


---

## TerminalId

```haskell
  ent <- Sdk.terminal_id sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `device_serial_number` | `[Value]` | Yes |  |
| `duplicate_terminal_id` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `terminal` | `[Value]` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.terminal_id sdk VNoval
  d <- jo
    [ ("device_serial_number", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `TerminalId` entity with the same options.

#### `eName :: String`

The entity name.


---

## TransactionHistory

```haskell
  ent <- Sdk.transaction_history sdk VNoval
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
| `pagination` | `Value` | No |  |
| `payment_token_public_id` | `String` | No |  |
| `receipt_number` | `String` | No |  |
| `referenced_transaction_id` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `retrieval_reference_number` | `String` | No |  |
| `source_id` | `Int` | No |  |
| `tecsengine_response_code_from` | `String` | No |  |
| `tecsengine_response_code_to` | `String` | No |  |
| `terminal_id` | `Int` | No |  |
| `trace_number` | `String` | No |  |
| `transaction_amount_from` | `String` | No |  |
| `transaction_amount_to` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transaction_history` | `[Value]` | No |  |
| `transaction_id` | `String` | No |  |
| `transaction_type` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.transaction_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `TransactionHistory` entity with the same options.

#### `eName :: String`

The entity name.


---

## TransactionsCount

```haskell
  ent <- Sdk.transactions_count sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `[Value]` | No |  |

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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.transactions_count sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `TransactionsCount` entity with the same options.

#### `eName :: String`

The entity name.


---

## TransactionsCountCardBrand

```haskell
  ent <- Sdk.transactions_count_card_brand sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `transactions_count` | `[Value]` | No |  |

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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.transactions_count_card_brand sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `TransactionsCountCardBrand` entity with the same options.

#### `eName :: String`

The entity name.


---

## TransactionsTurnover

```haskell
  ent <- Sdk.transactions_turnover sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `period` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `transaction_date_from` | `String` | No |  |
| `transaction_date_to` | `String` | No |  |
| `turnover` | `[Value]` | No |  |

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

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.transactions_turnover sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `TransactionsTurnover` entity with the same options.

#### `eName :: String`

The entity name.


---

## UpdateMerchant

```haskell
  ent <- Sdk.update_merchant sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `corporate_uuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchant_category_code` | `String` | No |  |
| `name` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vu_nummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.update_merchant sdk VNoval
  d <- jo
    [ ("corporate_uuid", VStr "example_corporate_uuid")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `UpdateMerchant` entity with the same options.

#### `eName :: String`

The entity name.


---

## UpdateTemplateXml

```haskell
  ent <- Sdk.update_template_xml sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `template_name` | `String` | Yes |  |
| `template_xml` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Value`

Create a new entity with the given data. Returns the created entity data and raises on error.

```haskell
  ent <- Sdk.update_template_xml sdk VNoval
  d <- jo
    [ ("template_name", VStr "example_template_name")   -- String
    , ("template_xml", VStr "example_template_xml")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `UpdateTemplateXml` entity with the same options.

#### `eName :: String`

The entity name.


---

## Version

```haskell
  ent <- Sdk.version sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `eLoad ent match ctrl :: IO Value`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```haskell
  ent <- Sdk.version sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  result <- Sdk.eLoad ent match ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `Version` entity with the same options.

#### `eName :: String`

The entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```haskell
  active <- jo [("active", VBool True)]
  featureCfg <- jo
    [ ("test", active)
    ]
  opts <- jo [("feature", featureCfg)]
  client <- Sdk.newSdk opts
```

