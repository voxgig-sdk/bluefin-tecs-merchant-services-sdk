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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Int` | No |  |
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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.cancel_transaction sdk VNoval
  d <- jo
    [ ("clientId", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receiptNumber", VStr "example_receiptNumber")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `cardNo` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.check_card_black_listed sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `acquirerId` | `Int` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateType` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |
| `terminalType` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.create_product sdk VNoval
  d <- jo
    [ ("templateName", VStr "example_templateName")   -- String
    , ("templateType", VStr "example_templateType")   -- String
    , ("templateXml", VStr "example_templateXml")   -- String
    , ("terminalType", VStr "example_terminalType")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `corporateUuid` | `String` | No |  |
| `deactivationReason` | `String` | Yes |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.deactivate_terminal sdk VNoval
  d <- jo
    [ ("deactivationReason", VStr "example_deactivationReason")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `txCount` | `Int` | No |  |
| `txIdEnd` | `String` | No |  |
| `txIdStart` | `String` | No |  |
| `txSeqNoEnd` | `Int` | No |  |
| `txSeqNoStart` | `Int` | No |  |
| `txTotal` | `Int` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.digital_services_api sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

#### `eLoad ent match ctrl :: IO Entity`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

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
| `ecomData` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.ec_data_ecom sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    , ("transactionId", VStr "example_transactionId")   -- String
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `ecomPass` | `String` | No |  |
| `ecomSkey` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.ecom_parameter sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `ecrData` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.ecr_data sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    , ("transactionId", VStr "example_transactionId")   -- String
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `emvData` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `transactionId` | `String` | Yes |  |
| `transactionType` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.emv_data sdk VNoval
  d <- jo
    [ ("terminalId", VNum 1)   -- Int
    , ("transactionId", VStr "example_transactionId")   -- String
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `accountNo` | `Int` | No |  |
| `additionalData` | `Value` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `merchantCategoryCode` | `Int` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sortingCode` | `Int` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalIds` | `[Value]` | No |  |
| `vuNummer` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.enable_acquiring sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("merchantCategoryCode", VNum 1)   -- Int
    , ("packageOrderUuid", VStr "example_packageOrderUuid")   -- String
    , ("productOrderUuid", VStr "example_productOrderUuid")   -- String
    , ("templateName", VStr "example_templateName")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `merchantContractNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.get_merchant_contract_number sdk VNoval
  d <- jo
    [ ("merchantContractNumber", VStr "example_merchantContractNumber")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.get_template_xml sdk VNoval
  d <- jo
    [ ("templateName", VStr "example_templateName")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.introduce_mandator sdk VNoval
  d <- jo
    [ ("mandatorName", VStr "example_mandatorName")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalTemplateDescription` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.introduce_package sdk VNoval
  d <- jo
    [ ("terminalTemplateDescription", VStr "example_terminalTemplateDescription")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `kaDateTimeFrom` | `String` | No |  |
| `kaDateTimeTo` | `String` | No |  |
| `keepAliveData` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalDateTimeFrom` | `String` | No |  |
| `terminalDateTimeTo` | `String` | No |  |
| `terminalId` | `Int` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.keep_alive sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `corporateUuid` | `[Value]` | No |  |
| `filter` | `Value` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `[Value]` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.list_terminal sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `pagination` | `Value` | No |  |
| `records` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `fileId` | `String` | No |  |
| `filenameTemplate` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `status` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export_download sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

#### `eLoad ent match ctrl :: IO Entity`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

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
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `records` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.mandator_clearing_export_summary sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `Value` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `Int` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `Int` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.merchant_portal_services_api sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `productorderuuids` | `[Value]` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `targetPackageorderuuid` | `String` | No |  |
| `targetProductorderuuid` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.move_tid sdk VNoval
  d <- jo
    [ ("productorderuuids", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `acquirerName` | `String` | No |  |
| `amount` | `Int` | Yes |  |
| `authorizationNumber` | `String` | No |  |
| `cardNumber` | `String` | Yes |  |
| `cardType` | `String` | No |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `dateTimeTx` | `String` | No |  |
| `expDate` | `String` | Yes |  |
| `merchantId` | `String` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `responseCode` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `txtype` | `String` | Yes |  |

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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.payment_manual sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("cardNumber", VStr "example_cardNumber")   -- String
    , ("currency", VStr "example_currency")   -- String
    , ("expDate", VStr "example_expDate")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `amount` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `device` | `String` | No |  |
| `devicePayload` | `String` | Yes |  |
| `expDate` | `String` | No |  |
| `mode` | `String` | No |  |
| `panMasked` | `String` | No |  |
| `password` | `String` | No |  |
| `serial` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `terminalId` | `String` | Yes |  |
| `txtype` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.payment_sred sdk VNoval
  d <- jo
    [ ("amount", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("devicePayload", VStr "example_devicePayload")   -- String
    , ("terminalId", VStr "example_terminalId")   -- String
    , ("txtype", VStr "example_txtype")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `cardNumberReference` | `String` | Yes |  |
| `clientId` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Int` | No |  |
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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.pre_auth_transaction_completion sdk VNoval
  d <- jo
    [ ("cardNumberReference", VStr "example_cardNumberReference")   -- String
    , ("clientId", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receiptNumber", VStr "example_receiptNumber")   -- String
    , ("terminalId", VNum 1)   -- Int
    , ("transactionType", VStr "example_transactionType")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `corporateUuid` | `String` | No |  |
| `packageOrderUuid` | `String` | No |  |
| `productOrderUuid` | `String` | No |  |
| `reactivationReason` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.reactivate_terminal sdk VNoval
  d <- jo
    [ ("reactivationReason", VStr "example_reactivationReason")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `acquirerId` | `String` | No |  |
| `acquirerName` | `String` | No |  |
| `actualBonusPoints` | `String` | No |  |
| `amount` | `Int` | No |  |
| `authorizationCode` | `String` | No |  |
| `balanceAmount` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clientId` | `Int` | Yes |  |
| `currency` | `String` | Yes |  |
| `cvc` | `String` | No |  |
| `ecData` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvData` | `String` | No |  |
| `exchangeFee` | `Int` | No |  |
| `exchangeRate` | `String` | No |  |
| `languageCode` | `String` | No |  |
| `merchantAddress` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `messageType` | `String` | No |  |
| `originalTraceNumber` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `password` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptFooter` | `String` | No |  |
| `receiptHeader` | `String` | No |  |
| `receiptLayout` | `Int` | No |  |
| `receiptNumber` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | No |  |
| `svc` | `String` | No |  |
| `terminalId` | `Int` | Yes |  |
| `terminalLocation` | `String` | No |  |
| `traceNumber` | `Int` | No |  |
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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.refund_transaction sdk VNoval
  d <- jo
    [ ("clientId", VNum 1)   -- Int
    , ("currency", VStr "example_currency")   -- String
    , ("receiptNumber", VStr "example_receiptNumber")   -- String
    , ("terminalId", VNum 1)   -- Int
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `partnerId` | `Int` | No |  |
| `partnerName` | `String` | No |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.register_tecs_company sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    , ("packageOrderUuid", VStr "example_packageOrderUuid")   -- String
    , ("productOrderUuid", VStr "example_productOrderUuid")   -- String
    , ("templateName", VStr "example_templateName")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `additionalData` | `Value` | No |  |
| `corporateUuid` | `String` | Yes |  |
| `packageOrderUuid` | `String` | Yes |  |
| `productOrderUuid` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `tecsWebSecretKey` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `terminalCountryCode` | `String` | Yes |  |
| `terminalId` | `Int` | No |  |
| `terminalIdAcq` | `String` | No |  |
| `terminalLanguageCode` | `String` | Yes |  |
| `terminalLocation` | `String` | Yes |  |
| `terminalSerialNumber` | `String` | No |  |
| `tokenIOAlias` | `String` | No |  |
| `tokenIOIban` | `String` | No |  |
| `tokenIOMemberId` | `String` | No |  |
| `webShopUrl` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.register_terminal sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    , ("packageOrderUuid", VStr "example_packageOrderUuid")   -- String
    , ("productOrderUuid", VStr "example_productOrderUuid")   -- String
    , ("templateName", VStr "example_templateName")   -- String
    , ("terminalCountryCode", VStr "example_terminalCountryCode")   -- String
    , ("terminalLanguageCode", VStr "example_terminalLanguageCode")   -- String
    , ("terminalLocation", VStr "example_terminalLocation")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `cardBrandReportData` | `[Value]` | No |  |
| `clearingDateFrom` | `String` | Yes |  |
| `clearingDateTo` | `String` | Yes |  |
| `corporateId` | `String` | Yes |  |
| `currency` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sumOverCreditTx` | `Value` | No |  |
| `sumOverDebitTx` | `Value` | No |  |
| `terminalId` | `Int` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.report_data sdk VNoval
  d <- jo
    [ ("clearingDateFrom", VStr "example_clearingDateFrom")   -- String
    , ("clearingDateTo", VStr "example_clearingDateTo")   -- String
    , ("corporateId", VStr "example_corporateId")   -- String
    , ("currency", VStr "example_currency")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `acquirerName` | `String` | No |  |
| `acquirerTerminalId` | `String` | No |  |
| `amount` | `Int` | No |  |
| `applicationCryptogram` | `String` | No |  |
| `authorizationCode` | `Value` | No |  |
| `authorizationDate` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `cardEntry` | `String` | No |  |
| `cardExpiration` | `String` | No |  |
| `cardNumber` | `String` | No |  |
| `clearingAmount` | `Int` | No |  |
| `clearingBatchId` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingDate` | `String` | No |  |
| `clearingProcessedDate` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `clientId` | `Int` | No |  |
| `currency` | `String` | No |  |
| `cvm` | `String` | No |  |
| `ecrData` | `String` | No |  |
| `emvApplicationId` | `String` | No |  |
| `emvApplicationLabel` | `String` | No |  |
| `merchantName` | `String` | No |  |
| `merchantNumber` | `String` | No |  |
| `originalClientId` | `String` | No |  |
| `originalTerminalId` | `Int` | No |  |
| `originalTransactionId` | `String` | No |  |
| `paymentReason` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseCodeFromAS` | `String` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `serviceCode` | `String` | No |  |
| `settlementStatus` | `String` | No |  |
| `sourceId` | `Int` | No |  |
| `tecsengineResponseCode` | `Int` | No |  |
| `tecsengineResponseText` | `String` | No |  |
| `terminalEndOfDayDate` | `String` | No |  |
| `terminalId` | `Int` | No |  |
| `terminalLocation` | `String` | No |  |
| `tipAmount` | `Int` | No |  |
| `traceNumber` | `Int` | No |  |
| `transactionClearingDate` | `String` | No |  |
| `transactionDate` | `String` | No |  |
| `transactionId` | `String` | No |  |
| `transactionSeqNumber` | `Int` | No |  |
| `transactionServerDate` | `String` | No |  |
| `transactionSource` | `String` | No |  |
| `transactionType` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.status_transaction sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `acqTabNexo` | `Value` | No |  |
| `configVersion` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `serialNumber` | `String` | Yes |  |
| `tidSent` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.store_terminal_parameter sdk VNoval
  d <- jo
    [ ("serialNumber", VStr "example_serialNumber")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `deviceSerialNumber` | `[Value]` | Yes |  |
| `duplicateTerminalIds` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `terminals` | `[Value]` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.terminal_id sdk VNoval
  d <- jo
    [ ("deviceSerialNumber", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `3DSecure` | `String` | No |  |
| `authorizationCode` | `String` | No |  |
| `cardBrand` | `String` | No |  |
| `clearingAmountFrom` | `String` | No |  |
| `clearingAmountTo` | `String` | No |  |
| `clearingCurrency` | `String` | No |  |
| `clearingStatus` | `String` | No |  |
| `corporateUUID` | `String` | No |  |
| `orderByTransactionDate` | `String` | No |  |
| `pagination` | `Value` | No |  |
| `paymentTokenPublicId` | `String` | No |  |
| `receiptNumber` | `String` | No |  |
| `referencedTransactionId` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `retrievalReferenceNumber` | `String` | No |  |
| `sourceId` | `Int` | No |  |
| `tecsengineResponseCodeFrom` | `String` | No |  |
| `tecsengineResponseCodeTo` | `String` | No |  |
| `terminalId` | `Int` | No |  |
| `traceNumber` | `String` | No |  |
| `transactionAmountFrom` | `String` | No |  |
| `transactionAmountTo` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionHistories` | `[Value]` | No |  |
| `transactionId` | `String` | No |  |
| `transactionType` | `String` | No |  |
| `wallet` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.transaction_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `[Value]` | No |  |

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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.transactions_count sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `transactionsCount` | `[Value]` | No |  |

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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.transactions_count_card_brand sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `transactionDateFrom` | `String` | No |  |
| `transactionDateTo` | `String` | No |  |
| `turnovers` | `[Value]` | No |  |

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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.transactions_turnover sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `corporateUuid` | `String` | Yes |  |
| `country` | `String` | No |  |
| `merchantCategoryCode` | `String` | No |  |
| `name` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street` | `String` | No |  |
| `vuNummer` | `String` | No |  |
| `zipcode` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.update_merchant sdk VNoval
  d <- jo
    [ ("corporateUuid", VStr "example_corporateUuid")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `templateName` | `String` | Yes |  |
| `templateXml` | `String` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.update_template_xml sdk VNoval
  d <- jo
    [ ("templateName", VStr "example_templateName")   -- String
    , ("templateXml", VStr "example_templateXml")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
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
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `eLoad ent match ctrl :: IO Entity`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

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

