# BluefinTecsMerchantServices Python SDK



The Python SDK for the BluefinTecsMerchantServices API — an entity-oriented client following Pythonic conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.CancelTransaction()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to PyPI. Install it from the GitHub
release tag (`py/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout:

```bash
pip install -e .
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```python
import os
from bluefintecsmerchantservices_sdk import BluefinTecsMerchantServicesSDK

client = BluefinTecsMerchantServicesSDK({
    "apikey": os.environ.get("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"),
})
```

### 4. Create, update, and remove

```python
# Create — returns the ENTITY (call data_get() for the record)
created = client.CancelTransaction().create({"clientId": 1, "currency": "example_currency", "receiptNumber": "example_receiptNumber", "terminalId": 1})

```


## Error handling

Entity operations raise on failure, so wrap them in `try` / `except`:

```python
try:
    digitalservicesapi = client.DigitalServicesApi().load()
    print(digitalservicesapi)
except Exception as err:
    print(f"load failed: {err}")
```

`direct()` does **not** raise — it returns the result envelope. Branch
on `ok`; on failure `status` holds the HTTP status (for error responses)
and `err` holds a transport error, so read both defensively:

```python
result = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example_id"},
})

if not result["ok"]:
    print("request failed:", result.get("status"), result.get("err"))
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```python
result = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})

if result["ok"]:
    print(result["status"])  # 200
    print(result["data"])    # response body
else:
    # A non-2xx response carries status + data (the error body); a
    # transport-level failure carries err instead. Only one is present, so
    # read both with .get() rather than indexing a key that may be absent.
    print(result.get("status"), result.get("err"))
```

### Prepare a request without sending it

```python
# prepare() returns the fetch definition and raises on error.
fetchdef = client.prepare({
    "path": "/api/resource/{id}",
    "method": "DELETE",
    "params": {"id": "example"},
})

print(fetchdef["url"])
print(fetchdef["method"])
print(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```python
client = BluefinTecsMerchantServicesSDK.test()

# Entity ops return the ENTITY and raises on error;
# call data_get() for the record.
digitalservicesapi = client.DigitalServicesApi().load()
# digitalservicesapi contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```python
def mock_fetch(url, init):
    return {
        "status": 200,
        "statusText": "OK",
        "headers": {},
        "json": lambda: {"id": "mock01"},
    }, None

client = BluefinTecsMerchantServicesSDK({
    "base": "http://localhost:8080",
    "system": {
        "fetch": mock_fetch,
    },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd py && pytest test/
```


## Reference

### BluefinTecsMerchantServicesSDK

```python
from bluefintecsmerchantservices_sdk import BluefinTecsMerchantServicesSDK

client = BluefinTecsMerchantServicesSDK(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `str` | API key for authentication. |
| `base` | `str` | Base URL of the API server. |
| `prefix` | `str` | URL path prefix prepended to all requests. |
| `suffix` | `str` | URL path suffix appended to all requests. |
| `feature` | `dict` | Feature activation flags. |
| `extend` | `list` | Additional Feature instances to load. |
| `system` | `dict` | System overrides (e.g. custom `fetch` function). |

### test

```python
client = BluefinTecsMerchantServicesSDK.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `None`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> dict` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> dict` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> dict` | Build and send an HTTP request. Returns a result dict (branch on `ok`). |
| `CancelTransaction` | `(data) -> CancelTransactionEntity` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `(data) -> CheckCardBlackListedEntity` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `(data) -> CreateProductEntity` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `(data) -> DeactivateTerminalEntity` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `(data) -> DigitalServicesApiEntity` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `(data) -> EcDataEcomEntity` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `(data) -> EcomParameterEntity` | Create an EcomParameter entity instance. |
| `EcrData` | `(data) -> EcrDataEntity` | Create an EcrData entity instance. |
| `EmvData` | `(data) -> EmvDataEntity` | Create an EmvData entity instance. |
| `EnableAcquiring` | `(data) -> EnableAcquiringEntity` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `(data) -> GetMerchantContractNumberEntity` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `(data) -> GetTemplateXmlEntity` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `(data) -> IntroduceMandatorEntity` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `(data) -> IntroducePackageEntity` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `(data) -> KeepAliveEntity` | Create a KeepAlive entity instance. |
| `ListTerminal` | `(data) -> ListTerminalEntity` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `(data) -> MandatorClearingExportEntity` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `(data) -> MandatorClearingExportDownloadEntity` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `(data) -> MandatorClearingExportSummaryEntity` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `(data) -> MerchantPortalServicesApiEntity` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `(data) -> MoveTidEntity` | Create a MoveTid entity instance. |
| `PaymentManual` | `(data) -> PaymentManualEntity` | Create a PaymentManual entity instance. |
| `PaymentSred` | `(data) -> PaymentSredEntity` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `(data) -> PreAuthTransactionCompletionEntity` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `(data) -> ReactivateTerminalEntity` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `(data) -> RefundTransactionEntity` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `(data) -> RegisterTecsCompanyEntity` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `(data) -> RegisterTerminalEntity` | Create a RegisterTerminal entity instance. |
| `ReportData` | `(data) -> ReportDataEntity` | Create a ReportData entity instance. |
| `StatusTransaction` | `(data) -> StatusTransactionEntity` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `(data) -> StoreTerminalParameterEntity` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `(data) -> TerminalIdEntity` | Create a TerminalId entity instance. |
| `TransactionHistory` | `(data) -> TransactionHistoryEntity` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `(data) -> TransactionsCountEntity` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `(data) -> TransactionsCountCardBrandEntity` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `(data) -> TransactionsTurnoverEntity` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `(data) -> UpdateMerchantEntity` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `(data) -> UpdateTemplateXmlEntity` | Create an UpdateTemplateXml entity instance. |
| `Version` | `(data) -> VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> any` | Load a single entity by match criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> any` | Create a new entity. Raises on error. |
| `data_get` | `() -> dict` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> dict` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> str` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data_get() for the record) (a `dict` for single-entity
ops, a `list` for `list`) and raise on error. Wrap calls in
`try`/`except` to handle failures.

The `direct()` escape hatch never raises — it returns a result `dict`
you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `True` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `dict` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `False` and `err` contains the error value.

### Entities

#### CancelTransaction

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `cardNo` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateType` |  |
| `templateXml` |  |
| `terminalType` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `deactivationReason` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `txCount` |  |
| `txIdEnd` |  |
| `txIdStart` |  |
| `txSeqNoEnd` |  |
| `txSeqNoStart` |  |
| `txTotal` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `ecomData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecomPass` |  |
| `ecomSkey` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `ecrData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `emvData` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `accountNo` |  |
| `additionalData` |  |
| `corporateUuid` |  |
| `currency` |  |
| `merchantCategoryCode` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sortingCode` |  |
| `templateName` |  |
| `terminalIdAcq` |  |
| `terminalIds` |  |
| `vuNummer` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchantContractNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalTemplateDescription` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `hwserialno` |  |
| `kaDateTimeFrom` |  |
| `kaDateTimeTo` |  |
| `keepAliveData` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalDateTimeFrom` |  |
| `terminalDateTimeTo` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `filter` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `pagination` |  |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `fileId` |  |
| `filenameTemplate` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `status` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `3DSecure` |  |
| `authorizationCode` |  |
| `cardBrand` |  |
| `clearingAmountFrom` |  |
| `clearingAmountTo` |  |
| `clearingCurrency` |  |
| `clearingStatus` |  |
| `corporateUUID` |  |
| `orderByTransactionDate` |  |
| `pagination` |  |
| `receiptNumber` |  |
| `referencedTransactionId` |  |
| `retrievalReferenceNumber` |  |
| `sourceId` |  |
| `tecsengineResponseCodeFrom` |  |
| `tecsengineResponseCodeTo` |  |
| `terminalId` |  |
| `traceNumber` |  |
| `transactionAmountFrom` |  |
| `transactionAmountTo` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionId` |  |
| `transactionType` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuids` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `targetPackageorderuuid` |  |
| `targetProductorderuuid` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `acquirerName` |  |
| `amount` |  |
| `authorizationNumber` |  |
| `cardNumber` |  |
| `cardType` |  |
| `currency` |  |
| `cvc` |  |
| `dateTimeTx` |  |
| `expDate` |  |
| `merchantId` |  |
| `originalTransactionId` |  |
| `password` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |
| `transactionId` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `amount` |  |
| `currency` |  |
| `device` |  |
| `devicePayload` |  |
| `expDate` |  |
| `mode` |  |
| `panMasked` |  |
| `password` |  |
| `serial` |  |
| `serviceCode` |  |
| `terminalId` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `cardNumberReference` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `transactionType` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `reactivationReason` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminalId` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `acquirerId` |  |
| `acquirerName` |  |
| `actualBonusPoints` |  |
| `amount` |  |
| `authorizationCode` |  |
| `balanceAmount` |  |
| `cardBrand` |  |
| `cardNumber` |  |
| `clientId` |  |
| `currency` |  |
| `cvc` |  |
| `ecData` |  |
| `ecrData` |  |
| `emvData` |  |
| `exchangeFee` |  |
| `exchangeRate` |  |
| `languageCode` |  |
| `merchantAddress` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `messageType` |  |
| `originalTraceNumber` |  |
| `originalTransactionId` |  |
| `password` |  |
| `paymentReason` |  |
| `receiptFooter` |  |
| `receiptHeader` |  |
| `receiptLayout` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `svc` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `traceNumber` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `txType` |  |
| `userData` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `partnerId` |  |
| `partnerName` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `additionalData` |  |
| `corporateUuid` |  |
| `packageOrderUuid` |  |
| `productOrderUuid` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `tecsWebSecretKey` |  |
| `templateName` |  |
| `terminalCountryCode` |  |
| `terminalId` |  |
| `terminalIdAcq` |  |
| `terminalLanguageCode` |  |
| `terminalLocation` |  |
| `terminalSerialNumber` |  |
| `tokenIOAlias` |  |
| `tokenIOIban` |  |
| `tokenIOMemberId` |  |
| `webShopUrl` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `cardBrandReportData` |  |
| `clearingDateFrom` |  |
| `clearingDateTo` |  |
| `corporateId` |  |
| `currency` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sumOverCreditTx` |  |
| `sumOverDebitTx` |  |
| `terminalId` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `acquirerName` |  |
| `acquirerTerminalId` |  |
| `amount` |  |
| `applicationCryptogram` |  |
| `authorizationCode` |  |
| `authorizationDate` |  |
| `cardBrand` |  |
| `cardEntry` |  |
| `cardExpiration` |  |
| `cardNumber` |  |
| `clearingAmount` |  |
| `clearingBatchId` |  |
| `clearingCurrency` |  |
| `clearingDate` |  |
| `clearingProcessedDate` |  |
| `clearingStatus` |  |
| `clientId` |  |
| `currency` |  |
| `cvm` |  |
| `ecrData` |  |
| `emvApplicationId` |  |
| `emvApplicationLabel` |  |
| `merchantName` |  |
| `merchantNumber` |  |
| `originalClientId` |  |
| `originalTerminalId` |  |
| `originalTransactionId` |  |
| `paymentReason` |  |
| `receiptNumber` |  |
| `responseCode` |  |
| `responseCodeFromAS` |  |
| `responseMessage` |  |
| `retrievalReferenceNumber` |  |
| `serviceCode` |  |
| `settlementStatus` |  |
| `sourceId` |  |
| `tecsengineResponseCode` |  |
| `tecsengineResponseText` |  |
| `terminalEndOfDayDate` |  |
| `terminalId` |  |
| `terminalLocation` |  |
| `tipAmount` |  |
| `traceNumber` |  |
| `transactionClearingDate` |  |
| `transactionDate` |  |
| `transactionId` |  |
| `transactionSeqNumber` |  |
| `transactionServerDate` |  |
| `transactionSource` |  |
| `transactionType` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `acqTabNexo` |  |
| `configVersion` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `serialNumber` |  |
| `tidSent` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `deviceSerialNumber` |  |
| `duplicateTerminalIds` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `terminals` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `3DSecure` |  |
| `authorizationCode` |  |
| `cardBrand` |  |
| `clearingAmountFrom` |  |
| `clearingAmountTo` |  |
| `clearingCurrency` |  |
| `clearingStatus` |  |
| `corporateUUID` |  |
| `orderByTransactionDate` |  |
| `pagination` |  |
| `paymentTokenPublicId` |  |
| `receiptNumber` |  |
| `referencedTransactionId` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `retrievalReferenceNumber` |  |
| `sourceId` |  |
| `tecsengineResponseCodeFrom` |  |
| `tecsengineResponseCodeTo` |  |
| `terminalId` |  |
| `traceNumber` |  |
| `transactionAmountFrom` |  |
| `transactionAmountTo` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionHistories` |  |
| `transactionId` |  |
| `transactionType` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionsCount` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `transactionsCount` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `period` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `transactionDateFrom` |  |
| `transactionDateTo` |  |
| `turnovers` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `city` |  |
| `corporateUuid` |  |
| `country` |  |
| `merchantCategoryCode` |  |
| `name` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `state` |  |
| `street` |  |
| `vuNummer` |  |
| `zipcode` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |
| `templateName` |  |
| `templateXml` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
| `version` |  |

Operations: Load.

API path: `/public/version`



## Entities


### CancelTransaction

Create an instance: `cancel_transaction = client.CancelTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `str` |  |
| `acquirerName` | `str` |  |
| `actualBonusPoints` | `str` |  |
| `amount` | `int` |  |
| `authorizationCode` | `str` |  |
| `balanceAmount` | `str` |  |
| `cardBrand` | `str` |  |
| `cardNumber` | `str` |  |
| `clientId` | `int` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `ecData` | `str` |  |
| `ecrData` | `str` |  |
| `emvData` | `str` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `str` |  |
| `languageCode` | `str` |  |
| `merchantAddress` | `str` |  |
| `merchantName` | `str` |  |
| `merchantNumber` | `str` |  |
| `messageType` | `str` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `str` |  |
| `password` | `str` |  |
| `paymentReason` | `str` |  |
| `receiptFooter` | `str` |  |
| `receiptHeader` | `str` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `serialNumber` | `str` |  |
| `svc` | `str` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `str` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `str` |  |
| `transactionId` | `str` |  |
| `txType` | `str` |  |
| `userData` | `str` |  |

#### Example: Create

```python
cancel_transaction = client.CancelTransaction().create({
    "clientId": 1,  # int
    "currency": "example_currency",  # str
    "receiptNumber": "example_receiptNumber",  # str
    "terminalId": 1,  # int
})
```


### CheckCardBlackListed

Create an instance: `check_card_black_listed = client.CheckCardBlackListed()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
check_card_black_listed = client.CheckCardBlackListed().create({
})
```


### CreateProduct

Create an instance: `create_product = client.CreateProduct()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `int` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `templateName` | `str` |  |
| `templateType` | `str` |  |
| `templateXml` | `str` |  |
| `terminalType` | `str` |  |

#### Example: Create

```python
create_product = client.CreateProduct().create({
    "templateName": "example_templateName",  # str
    "templateType": "example_templateType",  # str
    "templateXml": "example_templateXml",  # str
    "terminalType": "example_terminalType",  # str
})
```


### DeactivateTerminal

Create an instance: `deactivate_terminal = client.DeactivateTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `str` |  |
| `deactivationReason` | `str` |  |
| `packageOrderUuid` | `str` |  |
| `productOrderUuid` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `int` |  |

#### Example: Create

```python
deactivate_terminal = client.DeactivateTerminal().create({
    "deactivationReason": "example_deactivationReason",  # str
    "terminalId": 1,  # int
})
```


### DigitalServicesApi

Create an instance: `digital_services_api = client.DigitalServicesApi()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `str` |  |
| `clearingDateTo` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `txCount` | `int` |  |
| `txIdEnd` | `str` |  |
| `txIdStart` | `str` |  |
| `txSeqNoEnd` | `int` |  |
| `txSeqNoStart` | `int` |  |
| `txTotal` | `int` |  |

#### Example: Load

```python
digital_services_api = client.DigitalServicesApi().load()
```

#### Example: Create

```python
digital_services_api = client.DigitalServicesApi().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```


### EcDataEcom

Create an instance: `ec_data_ecom = client.EcDataEcom()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `int` |  |
| `transactionId` | `str` |  |
| `transactionType` | `str` |  |

#### Example: Create

```python
ec_data_ecom = client.EcDataEcom().create({
    "terminalId": 1,  # int
    "transactionId": "example_transactionId",  # str
    "transactionType": "example_transactionType",  # str
})
```


### EcomParameter

Create an instance: `ecom_parameter = client.EcomParameter()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `str` |  |
| `ecomSkey` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `int` |  |

#### Example: Create

```python
ecom_parameter = client.EcomParameter().create({
    "terminalId": 1,  # int
})
```


### EcrData

Create an instance: `ecr_data = client.EcrData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `int` |  |
| `transactionId` | `str` |  |
| `transactionType` | `str` |  |

#### Example: Create

```python
ecr_data = client.EcrData().create({
    "terminalId": 1,  # int
    "transactionId": "example_transactionId",  # str
    "transactionType": "example_transactionType",  # str
})
```


### EmvData

Create an instance: `emv_data = client.EmvData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `int` |  |
| `transactionId` | `str` |  |
| `transactionType` | `str` |  |

#### Example: Create

```python
emv_data = client.EmvData().create({
    "terminalId": 1,  # int
    "transactionId": "example_transactionId",  # str
    "transactionType": "example_transactionType",  # str
})
```


### EnableAcquiring

Create an instance: `enable_acquiring = client.EnableAcquiring()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `int` |  |
| `additionalData` | `dict` |  |
| `corporateUuid` | `str` |  |
| `currency` | `str` |  |
| `merchantCategoryCode` | `int` |  |
| `packageOrderUuid` | `str` |  |
| `productOrderUuid` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `sortingCode` | `int` |  |
| `templateName` | `str` |  |
| `terminalIdAcq` | `str` |  |
| `terminalIds` | `list` |  |
| `vuNummer` | `str` |  |

#### Example: Create

```python
enable_acquiring = client.EnableAcquiring().create({
    "corporateUuid": "example_corporateUuid",  # str
    "currency": "example_currency",  # str
    "merchantCategoryCode": 1,  # int
    "packageOrderUuid": "example_packageOrderUuid",  # str
    "productOrderUuid": "example_productOrderUuid",  # str
    "templateName": "example_templateName",  # str
})
```


### GetMerchantContractNumber

Create an instance: `get_merchant_contract_number = client.GetMerchantContractNumber()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
get_merchant_contract_number = client.GetMerchantContractNumber().create({
    "merchantContractNumber": "example_merchantContractNumber",  # str
})
```


### GetTemplateXml

Create an instance: `get_template_xml = client.GetTemplateXml()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `templateName` | `str` |  |

#### Example: Create

```python
get_template_xml = client.GetTemplateXml().create({
    "templateName": "example_templateName",  # str
})
```


### IntroduceMandator

Create an instance: `introduce_mandator = client.IntroduceMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
introduce_mandator = client.IntroduceMandator().create({
    "mandatorName": "example_mandatorName",  # str
})
```


### IntroducePackage

Create an instance: `introduce_package = client.IntroducePackage()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalTemplateDescription` | `str` |  |

#### Example: Create

```python
introduce_package = client.IntroducePackage().create({
    "terminalTemplateDescription": "example_terminalTemplateDescription",  # str
})
```


### KeepAlive

Create an instance: `keep_alive = client.KeepAlive()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `str` |  |
| `kaDateTimeFrom` | `str` |  |
| `kaDateTimeTo` | `str` |  |
| `keepAliveData` | `list` |  |
| `pagination` | `dict` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalDateTimeFrom` | `str` |  |
| `terminalDateTimeTo` | `str` |  |
| `terminalId` | `int` |  |

#### Example: Create

```python
keep_alive = client.KeepAlive().create({
})
```


### ListTerminal

Create an instance: `list_terminal = client.ListTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `list` |  |
| `filter` | `dict` |  |
| `pagination` | `dict` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminals` | `list` |  |

#### Example: Create

```python
list_terminal = client.ListTerminal().create({
})
```


### MandatorClearingExport

Create an instance: `mandator_clearing_export = client.MandatorClearingExport()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `str` |  |
| `clearingDateTo` | `str` |  |
| `pagination` | `dict` |  |
| `records` | `list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
mandator_clearing_export = client.MandatorClearingExport().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```


### MandatorClearingExportDownload

Create an instance: `mandator_clearing_export_download = client.MandatorClearingExportDownload()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `str` |  |
| `clearingDateTo` | `str` |  |
| `fileId` | `str` |  |
| `filenameTemplate` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `status` | `str` |  |

#### Example: Load

```python
mandator_clearing_export_download = client.MandatorClearingExportDownload().load({"id": "mandator_clearing_export_download_id"})
```

#### Example: Create

```python
mandator_clearing_export_download = client.MandatorClearingExportDownload().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```


### MandatorClearingExportSummary

Create an instance: `mandator_clearing_export_summary = client.MandatorClearingExportSummary()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `str` |  |
| `clearingDateTo` | `str` |  |
| `records` | `list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
mandator_clearing_export_summary = client.MandatorClearingExportSummary().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
})
```


### MerchantPortalServicesApi

Create an instance: `merchant_portal_services_api = client.MerchantPortalServicesApi()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `str` |  |
| `authorizationCode` | `str` |  |
| `cardBrand` | `str` |  |
| `clearingAmountFrom` | `str` |  |
| `clearingAmountTo` | `str` |  |
| `clearingCurrency` | `str` |  |
| `clearingStatus` | `str` |  |
| `corporateUUID` | `str` |  |
| `orderByTransactionDate` | `str` |  |
| `pagination` | `dict` |  |
| `receiptNumber` | `str` |  |
| `referencedTransactionId` | `str` |  |
| `retrievalReferenceNumber` | `str` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCodeFrom` | `str` |  |
| `tecsengineResponseCodeTo` | `str` |  |
| `terminalId` | `int` |  |
| `traceNumber` | `str` |  |
| `transactionAmountFrom` | `str` |  |
| `transactionAmountTo` | `str` |  |
| `transactionDateFrom` | `str` |  |
| `transactionDateTo` | `str` |  |
| `transactionId` | `str` |  |
| `transactionType` | `str` |  |
| `wallet` | `str` |  |

#### Example: Create

```python
merchant_portal_services_api = client.MerchantPortalServicesApi().create({
})
```


### MoveTid

Create an instance: `move_tid = client.MoveTid()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `targetPackageorderuuid` | `str` |  |
| `targetProductorderuuid` | `str` |  |

#### Example: Create

```python
move_tid = client.MoveTid().create({
    "productorderuuids": [],  # list
})
```


### PaymentManual

Create an instance: `payment_manual = client.PaymentManual()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `str` |  |
| `amount` | `int` |  |
| `authorizationNumber` | `str` |  |
| `cardNumber` | `str` |  |
| `cardType` | `str` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `dateTimeTx` | `str` |  |
| `expDate` | `str` |  |
| `merchantId` | `str` |  |
| `originalTransactionId` | `str` |  |
| `password` | `str` |  |
| `responseCode` | `str` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `str` |  |
| `transactionId` | `str` |  |
| `txtype` | `str` |  |

#### Example: Create

```python
payment_manual = client.PaymentManual().create({
    "amount": 1,  # int
    "cardNumber": "example_cardNumber",  # str
    "currency": "example_currency",  # str
    "expDate": "example_expDate",  # str
    "txtype": "example_txtype",  # str
})
```


### PaymentSred

Create an instance: `payment_sred = client.PaymentSred()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `int` |  |
| `currency` | `str` |  |
| `device` | `str` |  |
| `devicePayload` | `str` |  |
| `expDate` | `str` |  |
| `mode` | `str` |  |
| `panMasked` | `str` |  |
| `password` | `str` |  |
| `serial` | `str` |  |
| `serviceCode` | `str` |  |
| `terminalId` | `str` |  |
| `txtype` | `str` |  |

#### Example: Create

```python
payment_sred = client.PaymentSred().create({
    "amount": 1,  # int
    "currency": "example_currency",  # str
    "devicePayload": "example_devicePayload",  # str
    "terminalId": "example_terminalId",  # str
    "txtype": "example_txtype",  # str
})
```


### PreAuthTransactionCompletion

Create an instance: `pre_auth_transaction_completion = client.PreAuthTransactionCompletion()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `str` |  |
| `acquirerName` | `str` |  |
| `actualBonusPoints` | `str` |  |
| `amount` | `int` |  |
| `authorizationCode` | `str` |  |
| `balanceAmount` | `str` |  |
| `cardBrand` | `str` |  |
| `cardNumber` | `str` |  |
| `cardNumberReference` | `str` |  |
| `clientId` | `int` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `ecData` | `str` |  |
| `ecrData` | `str` |  |
| `emvData` | `str` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `str` |  |
| `languageCode` | `str` |  |
| `merchantAddress` | `str` |  |
| `merchantName` | `str` |  |
| `merchantNumber` | `str` |  |
| `messageType` | `str` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `str` |  |
| `password` | `str` |  |
| `paymentReason` | `str` |  |
| `receiptFooter` | `str` |  |
| `receiptHeader` | `str` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `serialNumber` | `str` |  |
| `svc` | `str` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `str` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `str` |  |
| `transactionId` | `str` |  |
| `transactionType` | `str` |  |
| `txType` | `str` |  |
| `userData` | `str` |  |

#### Example: Create

```python
pre_auth_transaction_completion = client.PreAuthTransactionCompletion().create({
    "cardNumberReference": "example_cardNumberReference",  # str
    "clientId": 1,  # int
    "currency": "example_currency",  # str
    "receiptNumber": "example_receiptNumber",  # str
    "terminalId": 1,  # int
    "transactionType": "example_transactionType",  # str
})
```


### ReactivateTerminal

Create an instance: `reactivate_terminal = client.ReactivateTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `str` |  |
| `packageOrderUuid` | `str` |  |
| `productOrderUuid` | `str` |  |
| `reactivationReason` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminalId` | `int` |  |

#### Example: Create

```python
reactivate_terminal = client.ReactivateTerminal().create({
    "reactivationReason": "example_reactivationReason",  # str
    "terminalId": 1,  # int
})
```


### RefundTransaction

Create an instance: `refund_transaction = client.RefundTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `str` |  |
| `acquirerName` | `str` |  |
| `actualBonusPoints` | `str` |  |
| `amount` | `int` |  |
| `authorizationCode` | `str` |  |
| `balanceAmount` | `str` |  |
| `cardBrand` | `str` |  |
| `cardNumber` | `str` |  |
| `clientId` | `int` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `ecData` | `str` |  |
| `ecrData` | `str` |  |
| `emvData` | `str` |  |
| `exchangeFee` | `int` |  |
| `exchangeRate` | `str` |  |
| `languageCode` | `str` |  |
| `merchantAddress` | `str` |  |
| `merchantName` | `str` |  |
| `merchantNumber` | `str` |  |
| `messageType` | `str` |  |
| `originalTraceNumber` | `int` |  |
| `originalTransactionId` | `str` |  |
| `password` | `str` |  |
| `paymentReason` | `str` |  |
| `receiptFooter` | `str` |  |
| `receiptHeader` | `str` |  |
| `receiptLayout` | `int` |  |
| `receiptNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `serialNumber` | `str` |  |
| `svc` | `str` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `str` |  |
| `traceNumber` | `int` |  |
| `transactionDate` | `str` |  |
| `transactionId` | `str` |  |
| `txType` | `str` |  |
| `userData` | `str` |  |

#### Example: Create

```python
refund_transaction = client.RefundTransaction().create({
    "clientId": 1,  # int
    "currency": "example_currency",  # str
    "receiptNumber": "example_receiptNumber",  # str
    "terminalId": 1,  # int
})
```


### RegisterTecsCompany

Create an instance: `register_tecs_company = client.RegisterTecsCompany()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `str` |  |
| `packageOrderUuid` | `str` |  |
| `partnerId` | `int` |  |
| `partnerName` | `str` |  |
| `productOrderUuid` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `templateName` | `str` |  |

#### Example: Create

```python
register_tecs_company = client.RegisterTecsCompany().create({
    "corporateUuid": "example_corporateUuid",  # str
    "packageOrderUuid": "example_packageOrderUuid",  # str
    "productOrderUuid": "example_productOrderUuid",  # str
    "templateName": "example_templateName",  # str
})
```


### RegisterTerminal

Create an instance: `register_terminal = client.RegisterTerminal()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `dict` |  |
| `corporateUuid` | `str` |  |
| `packageOrderUuid` | `str` |  |
| `productOrderUuid` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `tecsWebSecretKey` | `str` |  |
| `templateName` | `str` |  |
| `terminalCountryCode` | `str` |  |
| `terminalId` | `int` |  |
| `terminalIdAcq` | `str` |  |
| `terminalLanguageCode` | `str` |  |
| `terminalLocation` | `str` |  |
| `terminalSerialNumber` | `str` |  |
| `tokenIOAlias` | `str` |  |
| `tokenIOIban` | `str` |  |
| `tokenIOMemberId` | `str` |  |
| `webShopUrl` | `str` |  |

#### Example: Create

```python
register_terminal = client.RegisterTerminal().create({
    "corporateUuid": "example_corporateUuid",  # str
    "packageOrderUuid": "example_packageOrderUuid",  # str
    "productOrderUuid": "example_productOrderUuid",  # str
    "templateName": "example_templateName",  # str
    "terminalCountryCode": "example_terminalCountryCode",  # str
    "terminalLanguageCode": "example_terminalLanguageCode",  # str
    "terminalLocation": "example_terminalLocation",  # str
})
```


### ReportData

Create an instance: `report_data = client.ReportData()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `list` |  |
| `clearingDateFrom` | `str` |  |
| `clearingDateTo` | `str` |  |
| `corporateId` | `str` |  |
| `currency` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `sumOverCreditTx` | `dict` |  |
| `sumOverDebitTx` | `dict` |  |
| `terminalId` | `int` |  |

#### Example: Create

```python
report_data = client.ReportData().create({
    "clearingDateFrom": "example_clearingDateFrom",  # str
    "clearingDateTo": "example_clearingDateTo",  # str
    "corporateId": "example_corporateId",  # str
    "currency": "example_currency",  # str
})
```


### StatusTransaction

Create an instance: `status_transaction = client.StatusTransaction()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `str` |  |
| `acquirerTerminalId` | `str` |  |
| `amount` | `int` |  |
| `applicationCryptogram` | `str` |  |
| `authorizationCode` | `str | None` |  |
| `authorizationDate` | `str` |  |
| `cardBrand` | `str` |  |
| `cardEntry` | `str` |  |
| `cardExpiration` | `str` |  |
| `cardNumber` | `str` |  |
| `clearingAmount` | `int` |  |
| `clearingBatchId` | `str` |  |
| `clearingCurrency` | `str` |  |
| `clearingDate` | `str` |  |
| `clearingProcessedDate` | `str` |  |
| `clearingStatus` | `str` |  |
| `clientId` | `int` |  |
| `currency` | `str` |  |
| `cvm` | `str` |  |
| `ecrData` | `str` |  |
| `emvApplicationId` | `str` |  |
| `emvApplicationLabel` | `str` |  |
| `merchantName` | `str` |  |
| `merchantNumber` | `str` |  |
| `originalClientId` | `str` |  |
| `originalTerminalId` | `int` |  |
| `originalTransactionId` | `str` |  |
| `paymentReason` | `str` |  |
| `receiptNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseCodeFromAS` | `str` |  |
| `responseMessage` | `str` |  |
| `retrievalReferenceNumber` | `str` |  |
| `serviceCode` | `str` |  |
| `settlementStatus` | `str` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCode` | `int` |  |
| `tecsengineResponseText` | `str` |  |
| `terminalEndOfDayDate` | `str` |  |
| `terminalId` | `int` |  |
| `terminalLocation` | `str` |  |
| `tipAmount` | `int` |  |
| `traceNumber` | `int` |  |
| `transactionClearingDate` | `str` |  |
| `transactionDate` | `str` |  |
| `transactionId` | `str` |  |
| `transactionSeqNumber` | `int` |  |
| `transactionServerDate` | `str` |  |
| `transactionSource` | `str` |  |
| `transactionType` | `str` |  |

#### Example: Create

```python
status_transaction = client.StatusTransaction().create({
})
```


### StoreTerminalParameter

Create an instance: `store_terminal_parameter = client.StoreTerminalParameter()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `dict` |  |
| `configVersion` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `serialNumber` | `str` |  |
| `tidSent` | `str` |  |

#### Example: Create

```python
store_terminal_parameter = client.StoreTerminalParameter().create({
    "serialNumber": "example_serialNumber",  # str
})
```


### TerminalId

Create an instance: `terminal_id = client.TerminalId()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `list` |  |
| `duplicateTerminalIds` | `list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `terminals` | `list` |  |

#### Example: Create

```python
terminal_id = client.TerminalId().create({
    "deviceSerialNumber": [],  # list
})
```


### TransactionHistory

Create an instance: `transaction_history = client.TransactionHistory()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `str` |  |
| `authorizationCode` | `str` |  |
| `cardBrand` | `str` |  |
| `clearingAmountFrom` | `str` |  |
| `clearingAmountTo` | `str` |  |
| `clearingCurrency` | `str` |  |
| `clearingStatus` | `str` |  |
| `corporateUUID` | `str` |  |
| `orderByTransactionDate` | `str` |  |
| `pagination` | `dict` |  |
| `paymentTokenPublicId` | `str` |  |
| `receiptNumber` | `str` |  |
| `referencedTransactionId` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `retrievalReferenceNumber` | `str` |  |
| `sourceId` | `int` |  |
| `tecsengineResponseCodeFrom` | `str` |  |
| `tecsengineResponseCodeTo` | `str` |  |
| `terminalId` | `int` |  |
| `traceNumber` | `str` |  |
| `transactionAmountFrom` | `str` |  |
| `transactionAmountTo` | `str` |  |
| `transactionDateFrom` | `str` |  |
| `transactionDateTo` | `str` |  |
| `transactionHistories` | `list` |  |
| `transactionId` | `str` |  |
| `transactionType` | `str` |  |
| `wallet` | `str` |  |

#### Example: Create

```python
transaction_history = client.TransactionHistory().create({
})
```


### TransactionsCount

Create an instance: `transactions_count = client.TransactionsCount()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `transactionDateFrom` | `str` |  |
| `transactionDateTo` | `str` |  |
| `transactionsCount` | `list` |  |

#### Example: Create

```python
transactions_count = client.TransactionsCount().create({
})
```


### TransactionsCountCardBrand

Create an instance: `transactions_count_card_brand = client.TransactionsCountCardBrand()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `transactionDateFrom` | `str` |  |
| `transactionDateTo` | `str` |  |
| `transactionsCount` | `list` |  |

#### Example: Create

```python
transactions_count_card_brand = client.TransactionsCountCardBrand().create({
})
```


### TransactionsTurnover

Create an instance: `transactions_turnover = client.TransactionsTurnover()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `transactionDateFrom` | `str` |  |
| `transactionDateTo` | `str` |  |
| `turnovers` | `list` |  |

#### Example: Create

```python
transactions_turnover = client.TransactionsTurnover().create({
})
```


### UpdateMerchant

Create an instance: `update_merchant = client.UpdateMerchant()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `str` |  |
| `corporateUuid` | `str` |  |
| `country` | `str` |  |
| `merchantCategoryCode` | `str` |  |
| `name` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `state` | `str` |  |
| `street` | `str` |  |
| `vuNummer` | `str` |  |
| `zipcode` | `str` |  |

#### Example: Create

```python
update_merchant = client.UpdateMerchant().create({
    "corporateUuid": "example_corporateUuid",  # str
})
```


### UpdateTemplateXml

Create an instance: `update_template_xml = client.UpdateTemplateXml()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `templateName` | `str` |  |
| `templateXml` | `str` |  |

#### Example: Create

```python
update_template_xml = client.UpdateTemplateXml().create({
    "templateName": "example_templateName",  # str
    "templateXml": "example_templateXml",  # str
})
```


### Version

Create an instance: `version = client.Version()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `str` |  |
| `buildDate` | `str` |  |
| `version` | `str` |  |

#### Example: Load

```python
version = client.Version().load()
```


## Advanced

> The sections above cover everyday use. The material below explains the
> SDK's internals — useful when extending it with custom features, but not
> needed for normal use.

### The operation pipeline

Every entity operation follows a six-stage pipeline. Each stage fires a
feature hook before executing:

```
PrePoint → PreSpec → PreRequest → PreResponse → PreResult → PreDone
```

- **PrePoint**: Resolves which API endpoint to call based on the
  operation name and entity configuration.
- **PreSpec**: Builds the HTTP spec — URL, method, headers, body —
  from the resolved point and the caller's parameters.
- **PreRequest**: Sends the HTTP request. Features can intercept here
  to replace the transport (as TestFeature does with mocks).
- **PreResponse**: Parses the raw HTTP response.
- **PreResult**: Extracts the business data from the parsed response.
- **PreDone**: Final stage before returning to the caller. Entity
  state (match, data) is updated here.

If any stage errors, the pipeline short-circuits and the error surfaces
to the caller — see [Error handling](#error-handling) for how that looks
in this language.

### Features and hooks

Features are the extension mechanism. A feature is a Python class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as dicts

The Python SDK uses plain dicts throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `helpers.to_map()` to safely validate that a value is a dict.

### Module structure

```
py/
├── bluefintecsmerchantservices_sdk.py         -- Main SDK module
├── config.py                    -- Configuration
├── features.py                  -- Feature factory
├── core/                        -- Core types and context
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (Base, Test, Log)
├── utility/                     -- Utility functions and struct library
└── test/                        -- Test suites
```

The main module (`bluefintecsmerchantservices_sdk`) exports the SDK class.
Import entity or utility modules directly only when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```python
digitalservicesapi = client.DigitalServicesApi()
digitalservicesapi.load()

# digitalservicesapi.data_get() now returns the digitalservicesapi data from the last load
# digitalservicesapi.match_get() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
