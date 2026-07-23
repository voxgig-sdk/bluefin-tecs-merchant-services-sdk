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
# Create — returns the bare created record (a dict)
created = client.CancelTransaction().create({"client_id": 1, "currency": "example_currency", "receipt_number": "example_receipt_number", "terminal_id": 1})

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

# Entity ops return the bare record and raise on error.
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

Entity operations return the bare result data (a `dict` for single-entity
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
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/cancelTransaction`

#### CheckCardBlackListed

| Field | Description |
| --- | --- |
| `card_no` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/checkCardBlackListed`

#### CreateProduct

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_type` |  |
| `template_xml` |  |
| `terminal_type` |  |

Operations: Create.

API path: `/createProduct`

#### DeactivateTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `deactivation_reason` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/deactivateTerminal`

#### DigitalServicesApi

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `response_code` |  |
| `response_message` |  |
| `tx_count` |  |
| `tx_id_end` |  |
| `tx_id_start` |  |
| `tx_seq_no_end` |  |
| `tx_seq_no_start` |  |
| `tx_total` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload/{fileId}`

#### EcDataEcom

| Field | Description |
| --- | --- |
| `ecom_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEcData`

#### EcomParameter

| Field | Description |
| --- | --- |
| `ecom_pass` |  |
| `ecom_skey` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/getEcomParameters`

#### EcrData

| Field | Description |
| --- | --- |
| `ecr_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEcrData`

#### EmvData

| Field | Description |
| --- | --- |
| `emv_data` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/getEmvData`

#### EnableAcquiring

| Field | Description |
| --- | --- |
| `account_no` |  |
| `additional_data` |  |
| `corporate_uuid` |  |
| `currency` |  |
| `merchant_category_code` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting_code` |  |
| `template_name` |  |
| `terminal_id` |  |
| `terminal_id_acq` |  |
| `vu_nummer` |  |

Operations: Create.

API path: `/enableAcquiring`

#### GetMerchantContractNumber

| Field | Description |
| --- | --- |
| `merchant_contract_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/getMerchantContractNumber`

#### GetTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: Create.

API path: `/public/getTemplateXml`

#### IntroduceMandator

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/introduceMandator`

#### IntroducePackage

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `terminal_template_description` |  |

Operations: Create.

API path: `/introducePackage`

#### KeepAlive

| Field | Description |
| --- | --- |
| `hwserialno` |  |
| `ka_date_time_from` |  |
| `ka_date_time_to` |  |
| `keep_alive_data` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_date_time_from` |  |
| `terminal_date_time_to` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/keepalive`

#### ListTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `filter` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: Create.

API path: `/public/listTerminals`

#### MandatorClearingExport

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `pagination` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `file_id` |  |
| `filename_template` |  |
| `response_code` |  |
| `response_message` |  |
| `status` |  |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `record` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExportSummary`

#### MerchantPortalServicesApi

| Field | Description |
| --- | --- |
| `3_d_secure` |  |
| `authorization_code` |  |
| `card_brand` |  |
| `clearing_amount_from` |  |
| `clearing_amount_to` |  |
| `clearing_currency` |  |
| `clearing_status` |  |
| `corporate_uuid` |  |
| `order_by_transaction_date` |  |
| `pagination` |  |
| `receipt_number` |  |
| `referenced_transaction_id` |  |
| `retrieval_reference_number` |  |
| `source_id` |  |
| `tecsengine_response_code_from` |  |
| `tecsengine_response_code_to` |  |
| `terminal_id` |  |
| `trace_number` |  |
| `transaction_amount_from` |  |
| `transaction_amount_to` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/transactionHistoryCsv`

#### MoveTid

| Field | Description |
| --- | --- |
| `productorderuuid` |  |
| `response_code` |  |
| `response_message` |  |
| `target_packageorderuuid` |  |
| `target_productorderuuid` |  |

Operations: Create.

API path: `/moveTid`

#### PaymentManual

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `amount` |  |
| `authorization_number` |  |
| `card_number` |  |
| `card_type` |  |
| `currency` |  |
| `cvc` |  |
| `date_time_tx` |  |
| `exp_date` |  |
| `merchant_id` |  |
| `original_transaction_id` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `amount` |  |
| `authorization_number` |  |
| `card_type` |  |
| `currency` |  |
| `date_time_tx` |  |
| `device_payload` |  |
| `merchant_id` |  |
| `original_transaction_id` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `sred` |  |
| `terminal_id` |  |
| `transaction_id` |  |
| `txtype` |  |

Operations: Create.

API path: `/public/paymentSred`

#### PreAuthTransactionCompletion

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `card_number_reference` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/paymentTransaction`

#### ReactivateTerminal

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `reactivation_reason` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/reactivateTerminal`

#### RefundTransaction

| Field | Description |
| --- | --- |
| `acquirer_id` |  |
| `acquirer_name` |  |
| `actual_bonus_point` |  |
| `amount` |  |
| `authorization_code` |  |
| `balance_amount` |  |
| `card_brand` |  |
| `card_number` |  |
| `client_id` |  |
| `currency` |  |
| `cvc` |  |
| `ec_data` |  |
| `ecr_data` |  |
| `emv_data` |  |
| `exchange_fee` |  |
| `exchange_rate` |  |
| `language_code` |  |
| `merchant_address` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `message_type` |  |
| `original_trace_number` |  |
| `original_transaction_id` |  |
| `password` |  |
| `payment_reason` |  |
| `receipt_footer` |  |
| `receipt_header` |  |
| `receipt_layout` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `svc` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `trace_number` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `tx_type` |  |
| `user_data` |  |

Operations: Create.

API path: `/public/refundTransaction`

#### RegisterTecsCompany

| Field | Description |
| --- | --- |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `partner_id` |  |
| `partner_name` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |

Operations: Create.

API path: `/registerTecsCompany`

#### RegisterTerminal

| Field | Description |
| --- | --- |
| `additional_data` |  |
| `corporate_uuid` |  |
| `package_order_uuid` |  |
| `product_order_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `tecs_web_secret_key` |  |
| `template_name` |  |
| `terminal_country_code` |  |
| `terminal_id` |  |
| `terminal_id_acq` |  |
| `terminal_language_code` |  |
| `terminal_location` |  |
| `terminal_serial_number` |  |
| `token_io_alia` |  |
| `token_io_iban` |  |
| `token_io_member_id` |  |
| `web_shop_url` |  |

Operations: Create.

API path: `/registerTerminal`

#### ReportData

| Field | Description |
| --- | --- |
| `card_brand_report_data` |  |
| `clearing_date_from` |  |
| `clearing_date_to` |  |
| `corporate_id` |  |
| `currency` |  |
| `response_code` |  |
| `response_message` |  |
| `sum_over_credit_tx` |  |
| `sum_over_debit_tx` |  |
| `terminal_id` |  |

Operations: Create.

API path: `/public/digitalservices/reportData`

#### StatusTransaction

| Field | Description |
| --- | --- |
| `acquirer_name` |  |
| `acquirer_terminal_id` |  |
| `amount` |  |
| `application_cryptogram` |  |
| `authorization_code` |  |
| `authorization_date` |  |
| `card_brand` |  |
| `card_entry` |  |
| `card_expiration` |  |
| `card_number` |  |
| `clearing_amount` |  |
| `clearing_batch_id` |  |
| `clearing_currency` |  |
| `clearing_date` |  |
| `clearing_processed_date` |  |
| `clearing_status` |  |
| `client_id` |  |
| `currency` |  |
| `cvm` |  |
| `ecr_data` |  |
| `emv_application_id` |  |
| `emv_application_label` |  |
| `merchant_name` |  |
| `merchant_number` |  |
| `original_client_id` |  |
| `original_terminal_id` |  |
| `original_transaction_id` |  |
| `payment_reason` |  |
| `receipt_number` |  |
| `response_code` |  |
| `response_code_from_a` |  |
| `response_message` |  |
| `retrieval_reference_number` |  |
| `service_code` |  |
| `settlement_status` |  |
| `source_id` |  |
| `tecsengine_response_code` |  |
| `tecsengine_response_text` |  |
| `terminal_end_of_day_date` |  |
| `terminal_id` |  |
| `terminal_location` |  |
| `tip_amount` |  |
| `trace_number` |  |
| `transaction_clearing_date` |  |
| `transaction_date` |  |
| `transaction_id` |  |
| `transaction_seq_number` |  |
| `transaction_server_date` |  |
| `transaction_source` |  |
| `transaction_type` |  |

Operations: Create.

API path: `/public/statusTransaction`

#### StoreTerminalParameter

| Field | Description |
| --- | --- |
| `acq_tab_nexo` |  |
| `config_version` |  |
| `response_code` |  |
| `response_message` |  |
| `serial_number` |  |
| `tid_sent` |  |

Operations: Create.

API path: `/storeTerminalParameters`

#### TerminalId

| Field | Description |
| --- | --- |
| `device_serial_number` |  |
| `duplicate_terminal_id` |  |
| `response_code` |  |
| `response_message` |  |
| `terminal` |  |

Operations: Create.

API path: `/public/getTerminalId`

#### TransactionHistory

| Field | Description |
| --- | --- |
| `3_d_secure` |  |
| `authorization_code` |  |
| `card_brand` |  |
| `clearing_amount_from` |  |
| `clearing_amount_to` |  |
| `clearing_currency` |  |
| `clearing_status` |  |
| `corporate_uuid` |  |
| `order_by_transaction_date` |  |
| `pagination` |  |
| `payment_token_public_id` |  |
| `receipt_number` |  |
| `referenced_transaction_id` |  |
| `response_code` |  |
| `response_message` |  |
| `retrieval_reference_number` |  |
| `source_id` |  |
| `tecsengine_response_code_from` |  |
| `tecsengine_response_code_to` |  |
| `terminal_id` |  |
| `trace_number` |  |
| `transaction_amount_from` |  |
| `transaction_amount_to` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transaction_history` |  |
| `transaction_id` |  |
| `transaction_type` |  |
| `wallet` |  |

Operations: Create.

API path: `/public/mcom/transactionHistory`

#### TransactionsCount

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transactions_count` |  |

Operations: Create.

API path: `/public/countAuthorisedTransactions`

#### TransactionsCountCardBrand

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `transactions_count` |  |

Operations: Create.

API path: `/public/countTransactionsByCardBrand`

#### TransactionsTurnover

| Field | Description |
| --- | --- |
| `period` |  |
| `response_code` |  |
| `response_message` |  |
| `transaction_date_from` |  |
| `transaction_date_to` |  |
| `turnover` |  |

Operations: Create.

API path: `/public/transactionTurnover`

#### UpdateMerchant

| Field | Description |
| --- | --- |
| `city` |  |
| `corporate_uuid` |  |
| `country` |  |
| `merchant_category_code` |  |
| `name` |  |
| `response_code` |  |
| `response_message` |  |
| `state` |  |
| `street` |  |
| `vu_nummer` |  |
| `zipcode` |  |

Operations: Create.

API path: `/public/updateMerchant`

#### UpdateTemplateXml

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |
| `template_name` |  |
| `template_xml` |  |

Operations: Create.

API path: `/public/updateTemplateXml`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
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
| `acquirer_id` | `str` |  |
| `acquirer_name` | `str` |  |
| `actual_bonus_point` | `str` |  |
| `amount` | `int` |  |
| `authorization_code` | `str` |  |
| `balance_amount` | `str` |  |
| `card_brand` | `str` |  |
| `card_number` | `str` |  |
| `client_id` | `int` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `ec_data` | `str` |  |
| `ecr_data` | `str` |  |
| `emv_data` | `str` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `str` |  |
| `language_code` | `str` |  |
| `merchant_address` | `str` |  |
| `merchant_name` | `str` |  |
| `merchant_number` | `str` |  |
| `message_type` | `str` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `str` |  |
| `password` | `str` |  |
| `payment_reason` | `str` |  |
| `receipt_footer` | `str` |  |
| `receipt_header` | `str` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `serial_number` | `str` |  |
| `svc` | `str` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `str` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `str` |  |
| `transaction_id` | `str` |  |
| `tx_type` | `str` |  |
| `user_data` | `str` |  |

#### Example: Create

```python
cancel_transaction = client.CancelTransaction().create({
    "client_id": 1,  # int
    "currency": "example_currency",  # str
    "receipt_number": "example_receipt_number",  # str
    "terminal_id": 1,  # int
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
| `card_no` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

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
| `acquirer_id` | `int` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `template_name` | `str` |  |
| `template_type` | `str` |  |
| `template_xml` | `str` |  |
| `terminal_type` | `str` |  |

#### Example: Create

```python
create_product = client.CreateProduct().create({
    "template_name": "example_template_name",  # str
    "template_type": "example_template_type",  # str
    "template_xml": "example_template_xml",  # str
    "terminal_type": "example_terminal_type",  # str
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
| `corporate_uuid` | `str` |  |
| `deactivation_reason` | `str` |  |
| `package_order_uuid` | `str` |  |
| `product_order_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```python
deactivate_terminal = client.DeactivateTerminal().create({
    "deactivation_reason": "example_deactivation_reason",  # str
    "terminal_id": 1,  # int
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
| `clearing_date_from` | `str` |  |
| `clearing_date_to` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `tx_count` | `int` |  |
| `tx_id_end` | `str` |  |
| `tx_id_start` | `str` |  |
| `tx_seq_no_end` | `int` |  |
| `tx_seq_no_start` | `int` |  |
| `tx_total` | `int` |  |

#### Example: Load

```python
digital_services_api = client.DigitalServicesApi().load()
```

#### Example: Create

```python
digital_services_api = client.DigitalServicesApi().create({
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
| `ecom_data` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `str` |  |
| `transaction_type` | `str` |  |

#### Example: Create

```python
ec_data_ecom = client.EcDataEcom().create({
    "terminal_id": 1,  # int
    "transaction_id": "example_transaction_id",  # str
    "transaction_type": "example_transaction_type",  # str
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
| `ecom_pass` | `str` |  |
| `ecom_skey` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```python
ecom_parameter = client.EcomParameter().create({
    "terminal_id": 1,  # int
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
| `ecr_data` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `str` |  |
| `transaction_type` | `str` |  |

#### Example: Create

```python
ecr_data = client.EcrData().create({
    "terminal_id": 1,  # int
    "transaction_id": "example_transaction_id",  # str
    "transaction_type": "example_transaction_type",  # str
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
| `emv_data` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_id` | `int` |  |
| `transaction_id` | `str` |  |
| `transaction_type` | `str` |  |

#### Example: Create

```python
emv_data = client.EmvData().create({
    "terminal_id": 1,  # int
    "transaction_id": "example_transaction_id",  # str
    "transaction_type": "example_transaction_type",  # str
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
| `account_no` | `int` |  |
| `additional_data` | `dict` |  |
| `corporate_uuid` | `str` |  |
| `currency` | `str` |  |
| `merchant_category_code` | `int` |  |
| `package_order_uuid` | `str` |  |
| `product_order_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `sorting_code` | `int` |  |
| `template_name` | `str` |  |
| `terminal_id` | `list` |  |
| `terminal_id_acq` | `str` |  |
| `vu_nummer` | `str` |  |

#### Example: Create

```python
enable_acquiring = client.EnableAcquiring().create({
    "corporate_uuid": "example_corporate_uuid",  # str
    "currency": "example_currency",  # str
    "merchant_category_code": 1,  # int
    "package_order_uuid": "example_package_order_uuid",  # str
    "product_order_uuid": "example_product_order_uuid",  # str
    "template_name": "example_template_name",  # str
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
| `merchant_contract_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
get_merchant_contract_number = client.GetMerchantContractNumber().create({
    "merchant_contract_number": "example_merchant_contract_number",  # str
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
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `template_name` | `str` |  |

#### Example: Create

```python
get_template_xml = client.GetTemplateXml().create({
    "template_name": "example_template_name",  # str
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
| `mandator_name` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
introduce_mandator = client.IntroduceMandator().create({
    "mandator_name": "example_mandator_name",  # str
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
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_template_description` | `str` |  |

#### Example: Create

```python
introduce_package = client.IntroducePackage().create({
    "terminal_template_description": "example_terminal_template_description",  # str
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
| `ka_date_time_from` | `str` |  |
| `ka_date_time_to` | `str` |  |
| `keep_alive_data` | `list` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_date_time_from` | `str` |  |
| `terminal_date_time_to` | `str` |  |
| `terminal_id` | `int` |  |

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
| `corporate_uuid` | `list` |  |
| `filter` | `dict` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal` | `list` |  |

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
| `clearing_date_from` | `str` |  |
| `clearing_date_to` | `str` |  |
| `pagination` | `dict` |  |
| `record` | `list` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
mandator_clearing_export = client.MandatorClearingExport().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
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
| `clearing_date_from` | `str` |  |
| `clearing_date_to` | `str` |  |
| `file_id` | `str` |  |
| `filename_template` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `status` | `str` |  |

#### Example: Load

```python
mandator_clearing_export_download = client.MandatorClearingExportDownload().load({"id": "mandator_clearing_export_download_id"})
```

#### Example: Create

```python
mandator_clearing_export_download = client.MandatorClearingExportDownload().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
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
| `clearing_date_from` | `str` |  |
| `clearing_date_to` | `str` |  |
| `record` | `list` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
mandator_clearing_export_summary = client.MandatorClearingExportSummary().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
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
| `3_d_secure` | `str` |  |
| `authorization_code` | `str` |  |
| `card_brand` | `str` |  |
| `clearing_amount_from` | `str` |  |
| `clearing_amount_to` | `str` |  |
| `clearing_currency` | `str` |  |
| `clearing_status` | `str` |  |
| `corporate_uuid` | `str` |  |
| `order_by_transaction_date` | `str` |  |
| `pagination` | `dict` |  |
| `receipt_number` | `str` |  |
| `referenced_transaction_id` | `str` |  |
| `retrieval_reference_number` | `str` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code_from` | `str` |  |
| `tecsengine_response_code_to` | `str` |  |
| `terminal_id` | `int` |  |
| `trace_number` | `str` |  |
| `transaction_amount_from` | `str` |  |
| `transaction_amount_to` | `str` |  |
| `transaction_date_from` | `str` |  |
| `transaction_date_to` | `str` |  |
| `transaction_id` | `str` |  |
| `transaction_type` | `str` |  |
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
| `productorderuuid` | `list` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `target_packageorderuuid` | `str` |  |
| `target_productorderuuid` | `str` |  |

#### Example: Create

```python
move_tid = client.MoveTid().create({
    "productorderuuid": [],  # list
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
| `acquirer_name` | `str` |  |
| `amount` | `int` |  |
| `authorization_number` | `str` |  |
| `card_number` | `str` |  |
| `card_type` | `str` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `date_time_tx` | `str` |  |
| `exp_date` | `str` |  |
| `merchant_id` | `str` |  |
| `original_transaction_id` | `str` |  |
| `password` | `str` |  |
| `response_code` | `str` |  |
| `response_message` | `str` |  |
| `terminal_id` | `str` |  |
| `transaction_id` | `str` |  |
| `txtype` | `str` |  |

#### Example: Create

```python
payment_manual = client.PaymentManual().create({
    "amount": 1,  # int
    "card_number": "example_card_number",  # str
    "currency": "example_currency",  # str
    "exp_date": "example_exp_date",  # str
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
| `acquirer_name` | `str` |  |
| `amount` | `int` |  |
| `authorization_number` | `str` |  |
| `card_type` | `str` |  |
| `currency` | `str` |  |
| `date_time_tx` | `str` |  |
| `device_payload` | `str` |  |
| `merchant_id` | `str` |  |
| `original_transaction_id` | `str` |  |
| `password` | `str` |  |
| `response_code` | `str` |  |
| `response_message` | `str` |  |
| `sred` | `dict` |  |
| `terminal_id` | `str` |  |
| `transaction_id` | `str` |  |
| `txtype` | `str` |  |

#### Example: Create

```python
payment_sred = client.PaymentSred().create({
    "amount": 1,  # int
    "currency": "example_currency",  # str
    "device_payload": "example_device_payload",  # str
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
| `acquirer_id` | `str` |  |
| `acquirer_name` | `str` |  |
| `actual_bonus_point` | `str` |  |
| `amount` | `int` |  |
| `authorization_code` | `str` |  |
| `balance_amount` | `str` |  |
| `card_brand` | `str` |  |
| `card_number` | `str` |  |
| `card_number_reference` | `str` |  |
| `client_id` | `int` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `ec_data` | `str` |  |
| `ecr_data` | `str` |  |
| `emv_data` | `str` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `str` |  |
| `language_code` | `str` |  |
| `merchant_address` | `str` |  |
| `merchant_name` | `str` |  |
| `merchant_number` | `str` |  |
| `message_type` | `str` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `str` |  |
| `password` | `str` |  |
| `payment_reason` | `str` |  |
| `receipt_footer` | `str` |  |
| `receipt_header` | `str` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `serial_number` | `str` |  |
| `svc` | `str` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `str` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `str` |  |
| `transaction_id` | `str` |  |
| `transaction_type` | `str` |  |
| `tx_type` | `str` |  |
| `user_data` | `str` |  |

#### Example: Create

```python
pre_auth_transaction_completion = client.PreAuthTransactionCompletion().create({
    "card_number_reference": "example_card_number_reference",  # str
    "client_id": 1,  # int
    "currency": "example_currency",  # str
    "receipt_number": "example_receipt_number",  # str
    "terminal_id": 1,  # int
    "transaction_type": "example_transaction_type",  # str
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
| `corporate_uuid` | `str` |  |
| `package_order_uuid` | `str` |  |
| `product_order_uuid` | `str` |  |
| `reactivation_reason` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```python
reactivate_terminal = client.ReactivateTerminal().create({
    "reactivation_reason": "example_reactivation_reason",  # str
    "terminal_id": 1,  # int
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
| `acquirer_id` | `str` |  |
| `acquirer_name` | `str` |  |
| `actual_bonus_point` | `str` |  |
| `amount` | `int` |  |
| `authorization_code` | `str` |  |
| `balance_amount` | `str` |  |
| `card_brand` | `str` |  |
| `card_number` | `str` |  |
| `client_id` | `int` |  |
| `currency` | `str` |  |
| `cvc` | `str` |  |
| `ec_data` | `str` |  |
| `ecr_data` | `str` |  |
| `emv_data` | `str` |  |
| `exchange_fee` | `int` |  |
| `exchange_rate` | `str` |  |
| `language_code` | `str` |  |
| `merchant_address` | `str` |  |
| `merchant_name` | `str` |  |
| `merchant_number` | `str` |  |
| `message_type` | `str` |  |
| `original_trace_number` | `int` |  |
| `original_transaction_id` | `str` |  |
| `password` | `str` |  |
| `payment_reason` | `str` |  |
| `receipt_footer` | `str` |  |
| `receipt_header` | `str` |  |
| `receipt_layout` | `int` |  |
| `receipt_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `serial_number` | `str` |  |
| `svc` | `str` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `str` |  |
| `trace_number` | `int` |  |
| `transaction_date` | `str` |  |
| `transaction_id` | `str` |  |
| `tx_type` | `str` |  |
| `user_data` | `str` |  |

#### Example: Create

```python
refund_transaction = client.RefundTransaction().create({
    "client_id": 1,  # int
    "currency": "example_currency",  # str
    "receipt_number": "example_receipt_number",  # str
    "terminal_id": 1,  # int
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
| `corporate_uuid` | `str` |  |
| `package_order_uuid` | `str` |  |
| `partner_id` | `int` |  |
| `partner_name` | `str` |  |
| `product_order_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `template_name` | `str` |  |

#### Example: Create

```python
register_tecs_company = client.RegisterTecsCompany().create({
    "corporate_uuid": "example_corporate_uuid",  # str
    "package_order_uuid": "example_package_order_uuid",  # str
    "product_order_uuid": "example_product_order_uuid",  # str
    "template_name": "example_template_name",  # str
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
| `additional_data` | `dict` |  |
| `corporate_uuid` | `str` |  |
| `package_order_uuid` | `str` |  |
| `product_order_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `tecs_web_secret_key` | `str` |  |
| `template_name` | `str` |  |
| `terminal_country_code` | `str` |  |
| `terminal_id` | `int` |  |
| `terminal_id_acq` | `str` |  |
| `terminal_language_code` | `str` |  |
| `terminal_location` | `str` |  |
| `terminal_serial_number` | `str` |  |
| `token_io_alia` | `str` |  |
| `token_io_iban` | `str` |  |
| `token_io_member_id` | `str` |  |
| `web_shop_url` | `str` |  |

#### Example: Create

```python
register_terminal = client.RegisterTerminal().create({
    "corporate_uuid": "example_corporate_uuid",  # str
    "package_order_uuid": "example_package_order_uuid",  # str
    "product_order_uuid": "example_product_order_uuid",  # str
    "template_name": "example_template_name",  # str
    "terminal_country_code": "example_terminal_country_code",  # str
    "terminal_language_code": "example_terminal_language_code",  # str
    "terminal_location": "example_terminal_location",  # str
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
| `card_brand_report_data` | `list` |  |
| `clearing_date_from` | `str` |  |
| `clearing_date_to` | `str` |  |
| `corporate_id` | `str` |  |
| `currency` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `sum_over_credit_tx` | `dict` |  |
| `sum_over_debit_tx` | `dict` |  |
| `terminal_id` | `int` |  |

#### Example: Create

```python
report_data = client.ReportData().create({
    "clearing_date_from": "example_clearing_date_from",  # str
    "clearing_date_to": "example_clearing_date_to",  # str
    "corporate_id": "example_corporate_id",  # str
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
| `acquirer_name` | `str` |  |
| `acquirer_terminal_id` | `str` |  |
| `amount` | `int` |  |
| `application_cryptogram` | `str` |  |
| `authorization_code` | `str | None` |  |
| `authorization_date` | `str` |  |
| `card_brand` | `str` |  |
| `card_entry` | `str` |  |
| `card_expiration` | `str` |  |
| `card_number` | `str` |  |
| `clearing_amount` | `int` |  |
| `clearing_batch_id` | `str` |  |
| `clearing_currency` | `str` |  |
| `clearing_date` | `str` |  |
| `clearing_processed_date` | `str` |  |
| `clearing_status` | `str` |  |
| `client_id` | `int` |  |
| `currency` | `str` |  |
| `cvm` | `str` |  |
| `ecr_data` | `str` |  |
| `emv_application_id` | `str` |  |
| `emv_application_label` | `str` |  |
| `merchant_name` | `str` |  |
| `merchant_number` | `str` |  |
| `original_client_id` | `str` |  |
| `original_terminal_id` | `int` |  |
| `original_transaction_id` | `str` |  |
| `payment_reason` | `str` |  |
| `receipt_number` | `str` |  |
| `response_code` | `int` |  |
| `response_code_from_a` | `str` |  |
| `response_message` | `str` |  |
| `retrieval_reference_number` | `str` |  |
| `service_code` | `str` |  |
| `settlement_status` | `str` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code` | `int` |  |
| `tecsengine_response_text` | `str` |  |
| `terminal_end_of_day_date` | `str` |  |
| `terminal_id` | `int` |  |
| `terminal_location` | `str` |  |
| `tip_amount` | `int` |  |
| `trace_number` | `int` |  |
| `transaction_clearing_date` | `str` |  |
| `transaction_date` | `str` |  |
| `transaction_id` | `str` |  |
| `transaction_seq_number` | `int` |  |
| `transaction_server_date` | `str` |  |
| `transaction_source` | `str` |  |
| `transaction_type` | `str` |  |

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
| `acq_tab_nexo` | `dict` |  |
| `config_version` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `serial_number` | `str` |  |
| `tid_sent` | `str` |  |

#### Example: Create

```python
store_terminal_parameter = client.StoreTerminalParameter().create({
    "serial_number": "example_serial_number",  # str
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
| `device_serial_number` | `list` |  |
| `duplicate_terminal_id` | `list` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `terminal` | `list` |  |

#### Example: Create

```python
terminal_id = client.TerminalId().create({
    "device_serial_number": [],  # list
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
| `3_d_secure` | `str` |  |
| `authorization_code` | `str` |  |
| `card_brand` | `str` |  |
| `clearing_amount_from` | `str` |  |
| `clearing_amount_to` | `str` |  |
| `clearing_currency` | `str` |  |
| `clearing_status` | `str` |  |
| `corporate_uuid` | `str` |  |
| `order_by_transaction_date` | `str` |  |
| `pagination` | `dict` |  |
| `payment_token_public_id` | `str` |  |
| `receipt_number` | `str` |  |
| `referenced_transaction_id` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `retrieval_reference_number` | `str` |  |
| `source_id` | `int` |  |
| `tecsengine_response_code_from` | `str` |  |
| `tecsengine_response_code_to` | `str` |  |
| `terminal_id` | `int` |  |
| `trace_number` | `str` |  |
| `transaction_amount_from` | `str` |  |
| `transaction_amount_to` | `str` |  |
| `transaction_date_from` | `str` |  |
| `transaction_date_to` | `str` |  |
| `transaction_history` | `list` |  |
| `transaction_id` | `str` |  |
| `transaction_type` | `str` |  |
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
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `transaction_date_from` | `str` |  |
| `transaction_date_to` | `str` |  |
| `transactions_count` | `list` |  |

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
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `transaction_date_from` | `str` |  |
| `transaction_date_to` | `str` |  |
| `transactions_count` | `list` |  |

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
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `transaction_date_from` | `str` |  |
| `transaction_date_to` | `str` |  |
| `turnover` | `list` |  |

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
| `corporate_uuid` | `str` |  |
| `country` | `str` |  |
| `merchant_category_code` | `str` |  |
| `name` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `state` | `str` |  |
| `street` | `str` |  |
| `vu_nummer` | `str` |  |
| `zipcode` | `str` |  |

#### Example: Create

```python
update_merchant = client.UpdateMerchant().create({
    "corporate_uuid": "example_corporate_uuid",  # str
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
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `template_name` | `str` |  |
| `template_xml` | `str` |  |

#### Example: Create

```python
update_template_xml = client.UpdateTemplateXml().create({
    "template_name": "example_template_name",  # str
    "template_xml": "example_template_xml",  # str
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
| `app_name` | `str` |  |
| `build_date` | `str` |  |
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
