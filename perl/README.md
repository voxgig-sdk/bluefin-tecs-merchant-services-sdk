# BluefinTecsMerchantServices Perl SDK



The Perl SDK for the BluefinTecsMerchantServices API — an entity-oriented client
following idiomatic Perl conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `$client->CancelTransaction` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to CPAN. Install it from the GitHub
release tag (`perl/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/releases)) or
from a source checkout.

The SDK is pure Perl with zero non-core runtime dependencies, so no build
step is required — just put its `lib` directory on `@INC`:

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;

my $client = BluefinTecsMerchantServicesSDK->new({
    'apikey' => $ENV{'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY'},
});
```

### 4. Create, update, and remove

```perl
# Create — returns the ENTITY (call data_get for the record)
my $created = $client->CancelTransaction->create({ 'clientId' => 1, 'currency' => 'example_currency', 'receiptNumber' => 'example_receiptNumber', 'terminalId' => 1 });

```


## Error handling

Entity operations reject on failure, so wrap them in `try` / `catch`:

```ts
try {
  const digitalservicesapi = await client.DigitalServicesApi().load()
  console.log(digitalservicesapi)
} catch (err) {
  console.error('load failed:', err)
}
```

The low-level `direct()` method does **not** throw — it returns the
value or an `Error`, so check the result before using it:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example_id' },
})

if (result instanceof Error) {
  throw result
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```perl
my $result = $client->direct({
    'path' => '/api/resource/{id}',
    'method' => 'GET',
    'params' => { 'id' => 'example' },
});

if ($result->{ok}) {
    print $result->{status}, "\n";  # 200
    print $result->{data}, "\n";    # response body
}
else {
    # A non-2xx response carries status + data (the error body); a
    # transport-level failure carries err instead. Only one is present, so
    # read whichever is defined.
    print $result->{status}, ' ', ($result->{err} // ''), "\n";
}
```

### Prepare a request without sending it

```perl
# prepare() returns the fetch definition and dies on error.
my $fetchdef = $client->prepare({
    'path' => '/api/resource/{id}',
    'method' => 'DELETE',
    'params' => { 'id' => 'example' },
});

print $fetchdef->{url}, "\n";
print $fetchdef->{method}, "\n";
print $fetchdef->{headers}, "\n";
```

### Use test mode

Create a mock client for unit testing — no server required:

```perl
my $client = BluefinTecsMerchantServicesSDK->test(undef, undef);

# Entity ops return the ENTITY and dies on error;
# call data_get for the record.
my $digitalservicesapi = $client->DigitalServicesApi->load();
# $digitalservicesapi contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own coderef:

```perl
my $mock_fetch = sub {
    my ($url, $init) = @_;
    return ({
        'status' => 200,
        'statusText' => 'OK',
        'headers' => {},
        'json' => sub { { 'id' => 'mock01' } },
    }, undef);
};

my $client = BluefinTecsMerchantServicesSDK->new({
    'base' => 'http://localhost:8080',
    'system' => { 'fetch' => $mock_fetch },
});
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE
BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY=<your-key>
```

Then run:

```bash
cd perl && prove -Ilib t/
```


## Reference

### BluefinTecsMerchantServicesSDK

```perl
use lib 'lib';
use BluefinTecsMerchantServicesSDK;

my $client = BluefinTecsMerchantServicesSDK->new($options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `hashref` | Feature activation flags. |
| `extend` | `arrayref` | Additional feature instances to load. |
| `system` | `hashref` | System overrides (e.g. custom `fetch` coderef). |

### test

```perl
my $client = BluefinTecsMerchantServicesSDK->test($testopts, $sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `undef`.

### BluefinTecsMerchantServicesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> hashref` | Deep copy of current SDK options. |
| `get_utility` | `() -> utility` | Copy of the SDK utility object. |
| `prepare` | `($fetchargs) -> hashref` | Build an HTTP request definition without sending. Dies on error. |
| `direct` | `($fetchargs) -> hashref` | Build and send an HTTP request. Returns a result hashref (branch on `ok`). |
| `CancelTransaction` | `($data) -> CancelTransaction entity` | Create a CancelTransaction entity instance. |
| `CheckCardBlackListed` | `($data) -> CheckCardBlackListed entity` | Create a CheckCardBlackListed entity instance. |
| `CreateProduct` | `($data) -> CreateProduct entity` | Create a CreateProduct entity instance. |
| `DeactivateTerminal` | `($data) -> DeactivateTerminal entity` | Create a DeactivateTerminal entity instance. |
| `DigitalServicesApi` | `($data) -> DigitalServicesApi entity` | Create a DigitalServicesApi entity instance. |
| `EcDataEcom` | `($data) -> EcDataEcom entity` | Create an EcDataEcom entity instance. |
| `EcomParameter` | `($data) -> EcomParameter entity` | Create an EcomParameter entity instance. |
| `EcrData` | `($data) -> EcrData entity` | Create an EcrData entity instance. |
| `EmvData` | `($data) -> EmvData entity` | Create an EmvData entity instance. |
| `EnableAcquiring` | `($data) -> EnableAcquiring entity` | Create an EnableAcquiring entity instance. |
| `GetMerchantContractNumber` | `($data) -> GetMerchantContractNumber entity` | Create a GetMerchantContractNumber entity instance. |
| `GetTemplateXml` | `($data) -> GetTemplateXml entity` | Create a GetTemplateXml entity instance. |
| `IntroduceMandator` | `($data) -> IntroduceMandator entity` | Create an IntroduceMandator entity instance. |
| `IntroducePackage` | `($data) -> IntroducePackage entity` | Create an IntroducePackage entity instance. |
| `KeepAlive` | `($data) -> KeepAlive entity` | Create a KeepAlive entity instance. |
| `ListTerminal` | `($data) -> ListTerminal entity` | Create a ListTerminal entity instance. |
| `MandatorClearingExport` | `($data) -> MandatorClearingExport entity` | Create a MandatorClearingExport entity instance. |
| `MandatorClearingExportDownload` | `($data) -> MandatorClearingExportDownload entity` | Create a MandatorClearingExportDownload entity instance. |
| `MandatorClearingExportSummary` | `($data) -> MandatorClearingExportSummary entity` | Create a MandatorClearingExportSummary entity instance. |
| `MerchantPortalServicesApi` | `($data) -> MerchantPortalServicesApi entity` | Create a MerchantPortalServicesApi entity instance. |
| `MoveTid` | `($data) -> MoveTid entity` | Create a MoveTid entity instance. |
| `PaymentManual` | `($data) -> PaymentManual entity` | Create a PaymentManual entity instance. |
| `PaymentSred` | `($data) -> PaymentSred entity` | Create a PaymentSred entity instance. |
| `PreAuthTransactionCompletion` | `($data) -> PreAuthTransactionCompletion entity` | Create a PreAuthTransactionCompletion entity instance. |
| `ReactivateTerminal` | `($data) -> ReactivateTerminal entity` | Create a ReactivateTerminal entity instance. |
| `RefundTransaction` | `($data) -> RefundTransaction entity` | Create a RefundTransaction entity instance. |
| `RegisterTecsCompany` | `($data) -> RegisterTecsCompany entity` | Create a RegisterTecsCompany entity instance. |
| `RegisterTerminal` | `($data) -> RegisterTerminal entity` | Create a RegisterTerminal entity instance. |
| `ReportData` | `($data) -> ReportData entity` | Create a ReportData entity instance. |
| `StatusTransaction` | `($data) -> StatusTransaction entity` | Create a StatusTransaction entity instance. |
| `StoreTerminalParameter` | `($data) -> StoreTerminalParameter entity` | Create a StoreTerminalParameter entity instance. |
| `TerminalId` | `($data) -> TerminalId entity` | Create a TerminalId entity instance. |
| `TransactionHistory` | `($data) -> TransactionHistory entity` | Create a TransactionHistory entity instance. |
| `TransactionsCount` | `($data) -> TransactionsCount entity` | Create a TransactionsCount entity instance. |
| `TransactionsCountCardBrand` | `($data) -> TransactionsCountCardBrand entity` | Create a TransactionsCountCardBrand entity instance. |
| `TransactionsTurnover` | `($data) -> TransactionsTurnover entity` | Create a TransactionsTurnover entity instance. |
| `UpdateMerchant` | `($data) -> UpdateMerchant entity` | Create an UpdateMerchant entity instance. |
| `UpdateTemplateXml` | `($data) -> UpdateTemplateXml entity` | Create an UpdateTemplateXml entity instance. |
| `Version` | `($data) -> Version entity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `($reqmatch, $ctrl) -> hashref` | Load a single entity by match criteria. Dies on error. |
| `create` | `($reqdata, $ctrl) -> hashref` | Create a new entity. Dies on error. |
| `data_get` | `() -> hashref` | Get entity data. |
| `data_set` | `($data)` | Set entity data. |
| `match_get` | `() -> hashref` | Get entity match criteria. |
| `match_set` | `($match)` | Set entity match criteria. |
| `make` | `() -> entity` | Create a new instance with the same options. |
| `get_name` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data_get for the record) (a `hashref` for single-entity
ops, an `arrayref` for `list`) and die on error. Wrap calls in
`eval { ... }` and inspect `$@` to handle failures.

The `direct()` escape hatch never dies — it returns a result `hashref`
you branch on via `$result->{ok}`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean` | True if the HTTP status is 2xx. |
| `status` | `integer` | HTTP status code. |
| `headers` | `hashref` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is false and `err` contains the error value.

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
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
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
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` |  |
| `records` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/public/digitalservices/mandatorClearingExport`

#### MandatorClearingExportDownload

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Start date for clearing export (inclusive) |
| `clearingDateTo` | End date for clearing export (inclusive) |
| `fileId` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | Optional filename template for the export file |
| `id` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `status` | Processing status of the export request |

Operations: Create, Load.

API path: `/public/digitalservices/mandatorClearingExportDownload`

#### MandatorClearingExportSummary

| Field | Description |
| --- | --- |
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
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
| `wallet` | Filter by wallet type. |

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
| `acquirerName` | Acquirer name parsed from KKG field |
| `amount` | Transaction amount in minor units (cents) |
| `authorizationNumber` | Authorization number from the gateway |
| `cardNumber` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | Card type parsed from KKG field |
| `currency` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | Date and time of the transaction |
| `expDate` | Card expiry date in MMYY format |
| `merchantId` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | Original transaction ID from gateway |
| `password` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | Response code - 00 for success, otherwise error code |
| `responseMessage` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | Terminal ID used for the transaction |
| `transactionId` | Transaction ID generated by the backend |
| `txtype` | Transaction type |

Operations: Create.

API path: `/public/paymentManual`

#### PaymentSred

| Field | Description |
| --- | --- |
| `amount` | Transaction amount in minor units (cents) |
| `currency` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | Device type that provided the SRED payload |
| `devicePayload` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | Card expiry date in MMYY format |
| `mode` | Decryption mode |
| `panMasked` | Masked PAN (first 6 and last 4 digits) |
| `password` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | Device serial number |
| `serviceCode` | Service code from the card |
| `terminalId` | Terminal ID - 8 digits |
| `txtype` | Transaction type |

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
| `clearingDateFrom` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
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
| `authorizationCode` | Authorization code returned by the acquirer; null when not available |
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
| `wallet` | Filter by wallet type. |

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

Create an instance: `my $cancel_transaction = $client->CancelTransaction;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `integer` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `integer` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `integer` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `integer` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `integer` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `integer` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `integer` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```perl
my $cancel_transaction = $client->CancelTransaction->create({
    'clientId' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receiptNumber' => 'example_receiptNumber',  # string
    'terminalId' => 1,  # integer
});
```


### CheckCardBlackListed

Create an instance: `my $check_card_black_listed = $client->CheckCardBlackListed;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardNo` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $check_card_black_listed = $client->CheckCardBlackListed->create({
});
```


### CreateProduct

Create an instance: `my $create_product = $client->CreateProduct;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `integer` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateType` | `string` |  |
| `templateXml` | `string` |  |
| `terminalType` | `string` |  |

#### Example: Create

```perl
my $create_product = $client->CreateProduct->create({
    'templateName' => 'example_templateName',  # string
    'templateType' => 'example_templateType',  # string
    'templateXml' => 'example_templateXml',  # string
    'terminalType' => 'example_terminalType',  # string
});
```


### DeactivateTerminal

Create an instance: `my $deactivate_terminal = $client->DeactivateTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `deactivationReason` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `integer` |  |

#### Example: Create

```perl
my $deactivate_terminal = $client->DeactivateTerminal->create({
    'deactivationReason' => 'example_deactivationReason',  # string
    'terminalId' => 1,  # integer
});
```


### DigitalServicesApi

Create an instance: `my $digital_services_api = $client->DigitalServicesApi;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `txCount` | `integer` |  |
| `txIdEnd` | `string` |  |
| `txIdStart` | `string` |  |
| `txSeqNoEnd` | `integer` |  |
| `txSeqNoStart` | `integer` |  |
| `txTotal` | `integer` |  |

#### Example: Load

```perl
my $digital_services_api = $client->DigitalServicesApi->load();
```

#### Example: Create

```perl
my $digital_services_api = $client->DigitalServicesApi->create({
    'file_id' => 'example_file_id',  # string
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```


### EcDataEcom

Create an instance: `my $ec_data_ecom = $client->EcDataEcom;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomData` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `integer` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```perl
my $ec_data_ecom = $client->EcDataEcom->create({
    'terminalId' => 1,  # integer
    'transactionId' => 'example_transactionId',  # string
    'transactionType' => 'example_transactionType',  # string
});
```


### EcomParameter

Create an instance: `my $ecom_parameter = $client->EcomParameter;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecomPass` | `string` |  |
| `ecomSkey` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `integer` |  |

#### Example: Create

```perl
my $ecom_parameter = $client->EcomParameter->create({
    'terminalId' => 1,  # integer
});
```


### EcrData

Create an instance: `my $ecr_data = $client->EcrData;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `ecrData` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `integer` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```perl
my $ecr_data = $client->EcrData->create({
    'terminalId' => 1,  # integer
    'transactionId' => 'example_transactionId',  # string
    'transactionType' => 'example_transactionType',  # string
});
```


### EmvData

Create an instance: `my $emv_data = $client->EmvData;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `emvData` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `integer` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```perl
my $emv_data = $client->EmvData->create({
    'terminalId' => 1,  # integer
    'transactionId' => 'example_transactionId',  # string
    'transactionType' => 'example_transactionType',  # string
});
```


### EnableAcquiring

Create an instance: `my $enable_acquiring = $client->EnableAcquiring;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `accountNo` | `integer` |  |
| `additionalData` | `hashref` |  |
| `corporateUuid` | `string` |  |
| `currency` | `string` |  |
| `merchantCategoryCode` | `integer` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `sortingCode` | `integer` |  |
| `templateName` | `string` |  |
| `terminalIdAcq` | `string` |  |
| `terminalIds` | `arrayref` |  |
| `vuNummer` | `string` |  |

#### Example: Create

```perl
my $enable_acquiring = $client->EnableAcquiring->create({
    'corporateUuid' => 'example_corporateUuid',  # string
    'currency' => 'example_currency',  # string
    'merchantCategoryCode' => 1,  # integer
    'packageOrderUuid' => 'example_packageOrderUuid',  # string
    'productOrderUuid' => 'example_productOrderUuid',  # string
    'templateName' => 'example_templateName',  # string
});
```


### GetMerchantContractNumber

Create an instance: `my $get_merchant_contract_number = $client->GetMerchantContractNumber;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `merchantContractNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $get_merchant_contract_number = $client->GetMerchantContractNumber->create({
    'merchantContractNumber' => 'example_merchantContractNumber',  # string
});
```


### GetTemplateXml

Create an instance: `my $get_template_xml = $client->GetTemplateXml;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```perl
my $get_template_xml = $client->GetTemplateXml->create({
    'templateName' => 'example_templateName',  # string
});
```


### IntroduceMandator

Create an instance: `my $introduce_mandator = $client->IntroduceMandator;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $introduce_mandator = $client->IntroduceMandator->create({
    'mandatorName' => 'example_mandatorName',  # string
});
```


### IntroducePackage

Create an instance: `my $introduce_package = $client->IntroducePackage;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalTemplateDescription` | `string` |  |

#### Example: Create

```perl
my $introduce_package = $client->IntroducePackage->create({
    'terminalTemplateDescription' => 'example_terminalTemplateDescription',  # string
});
```


### KeepAlive

Create an instance: `my $keep_alive = $client->KeepAlive;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `hwserialno` | `string` |  |
| `kaDateTimeFrom` | `string` |  |
| `kaDateTimeTo` | `string` |  |
| `keepAliveData` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalDateTimeFrom` | `string` |  |
| `terminalDateTimeTo` | `string` |  |
| `terminalId` | `integer` |  |

#### Example: Create

```perl
my $keep_alive = $client->KeepAlive->create({
});
```


### ListTerminal

Create an instance: `my $list_terminal = $client->ListTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `arrayref` |  |
| `filter` | `hashref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminals` | `arrayref` |  |

#### Example: Create

```perl
my $list_terminal = $client->ListTerminal->create({
});
```


### MandatorClearingExport

Create an instance: `my $mandator_clearing_export = $client->MandatorClearingExport;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ |
| `pagination` | `hashref` |  |
| `records` | `arrayref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $mandator_clearing_export = $client->MandatorClearingExport->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```


### MandatorClearingExportDownload

Create an instance: `my $mandator_clearing_export_download = $client->MandatorClearingExportDownload;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Start date for clearing export (inclusive) |
| `clearingDateTo` | `string` | End date for clearing export (inclusive) |
| `fileId` | `string` | Unique file identifier for tracking and downloading |
| `filenameTemplate` | `string` | Optional filename template for the export file |
| `id` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `status` | `string` | Processing status of the export request |

#### Example: Load

```perl
my $mandator_clearing_export_download = $client->MandatorClearingExportDownload->load({ 'id' => 'mandator_clearing_export_download_id' });
```

#### Example: Create

```perl
my $mandator_clearing_export_download = $client->MandatorClearingExportDownload->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```


### MandatorClearingExportSummary

Create an instance: `my $mandator_clearing_export_summary = $client->MandatorClearingExportSummary;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ssz |
| `records` | `arrayref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $mandator_clearing_export_summary = $client->MandatorClearingExportSummary->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
});
```


### MerchantPortalServicesApi

Create an instance: `my $merchant_portal_services_api = $client->MerchantPortalServicesApi;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `hashref` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `integer` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `integer` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

#### Example: Create

```perl
my $merchant_portal_services_api = $client->MerchantPortalServicesApi->create({
});
```


### MoveTid

Create an instance: `my $move_tid = $client->MoveTid;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `productorderuuids` | `arrayref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `targetPackageorderuuid` | `string` |  |
| `targetProductorderuuid` | `string` |  |

#### Example: Create

```perl
my $move_tid = $client->MoveTid->create({
    'productorderuuids' => [],  # arrayref
});
```


### PaymentManual

Create an instance: `my $payment_manual = $client->PaymentManual;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `string` | Acquirer name parsed from KKG field |
| `amount` | `integer` | Transaction amount in minor units (cents) |
| `authorizationNumber` | `string` | Authorization number from the gateway |
| `cardNumber` | `string` | Card number - 12 to 19 digits, must pass Luhn validation |
| `cardType` | `string` | Card type parsed from KKG field |
| `currency` | `string` | Currency code - 3 uppercase letters (ISO 4217) |
| `cvc` | `string` | Card verification code - 3-4 digits (optional) |
| `dateTimeTx` | `string` | Date and time of the transaction |
| `expDate` | `string` | Card expiry date in MMYY format |
| `merchantId` | `string` | Merchant ID (VU-NUMMER) |
| `originalTransactionId` | `string` | Original transaction ID from gateway |
| `password` | `string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `responseCode` | `string` | Response code - 00 for success, otherwise error code |
| `responseMessage` | `string` | Response message - 'Approved' for success, error description otherwise |
| `terminalId` | `string` | Terminal ID used for the transaction |
| `transactionId` | `string` | Transaction ID generated by the backend |
| `txtype` | `string` | Transaction type |

#### Example: Create

```perl
my $payment_manual = $client->PaymentManual->create({
    'amount' => 1,  # integer
    'cardNumber' => 'example_cardNumber',  # string
    'currency' => 'example_currency',  # string
    'expDate' => 'example_expDate',  # string
    'txtype' => 'example_txtype',  # string
});
```


### PaymentSred

Create an instance: `my $payment_sred = $client->PaymentSred;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `amount` | `integer` | Transaction amount in minor units (cents) |
| `currency` | `string` | Currency code - 3 uppercase letters (ISO 4217) |
| `device` | `string` | Device type that provided the SRED payload |
| `devicePayload` | `string` | SRED encrypted device payload from the device (minimum 32 characters) |
| `expDate` | `string` | Card expiry date in MMYY format |
| `mode` | `string` | Decryption mode |
| `panMasked` | `string` | Masked PAN (first 6 and last 4 digits) |
| `password` | `string` | Terminal password sent as Kennwort in TECS XML (optional) |
| `serial` | `string` | Device serial number |
| `serviceCode` | `string` | Service code from the card |
| `terminalId` | `string` | Terminal ID - 8 digits |
| `txtype` | `string` | Transaction type |

#### Example: Create

```perl
my $payment_sred = $client->PaymentSred->create({
    'amount' => 1,  # integer
    'currency' => 'example_currency',  # string
    'devicePayload' => 'example_devicePayload',  # string
    'terminalId' => 'example_terminalId',  # string
    'txtype' => 'example_txtype',  # string
});
```


### PreAuthTransactionCompletion

Create an instance: `my $pre_auth_transaction_completion = $client->PreAuthTransactionCompletion;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `integer` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `cardNumberReference` | `string` |  |
| `clientId` | `integer` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `integer` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `integer` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `integer` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `integer` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `integer` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```perl
my $pre_auth_transaction_completion = $client->PreAuthTransactionCompletion->create({
    'cardNumberReference' => 'example_cardNumberReference',  # string
    'clientId' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receiptNumber' => 'example_receiptNumber',  # string
    'terminalId' => 1,  # integer
    'transactionType' => 'example_transactionType',  # string
});
```


### ReactivateTerminal

Create an instance: `my $reactivate_terminal = $client->ReactivateTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `reactivationReason` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminalId` | `integer` |  |

#### Example: Create

```perl
my $reactivate_terminal = $client->ReactivateTerminal->create({
    'reactivationReason' => 'example_reactivationReason',  # string
    'terminalId' => 1,  # integer
});
```


### RefundTransaction

Create an instance: `my $refund_transaction = $client->RefundTransaction;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerId` | `string` |  |
| `acquirerName` | `string` |  |
| `actualBonusPoints` | `string` |  |
| `amount` | `integer` |  |
| `authorizationCode` | `string` |  |
| `balanceAmount` | `string` |  |
| `cardBrand` | `string` |  |
| `cardNumber` | `string` |  |
| `clientId` | `integer` |  |
| `currency` | `string` |  |
| `cvc` | `string` |  |
| `ecData` | `string` |  |
| `ecrData` | `string` |  |
| `emvData` | `string` |  |
| `exchangeFee` | `integer` |  |
| `exchangeRate` | `string` |  |
| `languageCode` | `string` |  |
| `merchantAddress` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `messageType` | `string` |  |
| `originalTraceNumber` | `integer` |  |
| `originalTransactionId` | `string` |  |
| `password` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptFooter` | `string` |  |
| `receiptHeader` | `string` |  |
| `receiptLayout` | `integer` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `svc` | `string` |  |
| `terminalId` | `integer` |  |
| `terminalLocation` | `string` |  |
| `traceNumber` | `integer` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `txType` | `string` |  |
| `userData` | `string` |  |

#### Example: Create

```perl
my $refund_transaction = $client->RefundTransaction->create({
    'clientId' => 1,  # integer
    'currency' => 'example_currency',  # string
    'receiptNumber' => 'example_receiptNumber',  # string
    'terminalId' => 1,  # integer
});
```


### RegisterTecsCompany

Create an instance: `my $register_tecs_company = $client->RegisterTecsCompany;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `partnerId` | `integer` |  |
| `partnerName` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |

#### Example: Create

```perl
my $register_tecs_company = $client->RegisterTecsCompany->create({
    'corporateUuid' => 'example_corporateUuid',  # string
    'packageOrderUuid' => 'example_packageOrderUuid',  # string
    'productOrderUuid' => 'example_productOrderUuid',  # string
    'templateName' => 'example_templateName',  # string
});
```


### RegisterTerminal

Create an instance: `my $register_terminal = $client->RegisterTerminal;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `additionalData` | `hashref` |  |
| `corporateUuid` | `string` |  |
| `packageOrderUuid` | `string` |  |
| `productOrderUuid` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `tecsWebSecretKey` | `string` |  |
| `templateName` | `string` |  |
| `terminalCountryCode` | `string` |  |
| `terminalId` | `integer` |  |
| `terminalIdAcq` | `string` |  |
| `terminalLanguageCode` | `string` |  |
| `terminalLocation` | `string` |  |
| `terminalSerialNumber` | `string` |  |
| `tokenIOAlias` | `string` |  |
| `tokenIOIban` | `string` |  |
| `tokenIOMemberId` | `string` |  |
| `webShopUrl` | `string` |  |

#### Example: Create

```perl
my $register_terminal = $client->RegisterTerminal->create({
    'corporateUuid' => 'example_corporateUuid',  # string
    'packageOrderUuid' => 'example_packageOrderUuid',  # string
    'productOrderUuid' => 'example_productOrderUuid',  # string
    'templateName' => 'example_templateName',  # string
    'terminalCountryCode' => 'example_terminalCountryCode',  # string
    'terminalLanguageCode' => 'example_terminalLanguageCode',  # string
    'terminalLocation' => 'example_terminalLocation',  # string
});
```


### ReportData

Create an instance: `my $report_data = $client->ReportData;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `cardBrandReportData` | `arrayref` |  |
| `clearingDateFrom` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `clearingDateTo` | `string` | Date and time in the format yyyy-MM-dd'T'HH:mm:ss |
| `corporateId` | `string` |  |
| `currency` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `sumOverCreditTx` | `hashref` |  |
| `sumOverDebitTx` | `hashref` |  |
| `terminalId` | `integer` |  |

#### Example: Create

```perl
my $report_data = $client->ReportData->create({
    'clearingDateFrom' => 'example_clearingDateFrom',  # string
    'clearingDateTo' => 'example_clearingDateTo',  # string
    'corporateId' => 'example_corporateId',  # string
    'currency' => 'example_currency',  # string
});
```


### StatusTransaction

Create an instance: `my $status_transaction = $client->StatusTransaction;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acquirerName` | `string` |  |
| `acquirerTerminalId` | `string` |  |
| `amount` | `integer` |  |
| `applicationCryptogram` | `string` |  |
| `authorizationCode` | `scalar` | Authorization code returned by the acquirer; null when not available |
| `authorizationDate` | `string` |  |
| `cardBrand` | `string` |  |
| `cardEntry` | `string` |  |
| `cardExpiration` | `string` |  |
| `cardNumber` | `string` |  |
| `clearingAmount` | `integer` |  |
| `clearingBatchId` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingDate` | `string` |  |
| `clearingProcessedDate` | `string` |  |
| `clearingStatus` | `string` |  |
| `clientId` | `integer` |  |
| `currency` | `string` |  |
| `cvm` | `string` |  |
| `ecrData` | `string` |  |
| `emvApplicationId` | `string` |  |
| `emvApplicationLabel` | `string` |  |
| `merchantName` | `string` |  |
| `merchantNumber` | `string` |  |
| `originalClientId` | `string` |  |
| `originalTerminalId` | `integer` |  |
| `originalTransactionId` | `string` |  |
| `paymentReason` | `string` |  |
| `receiptNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseCodeFromAS` | `string` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `serviceCode` | `string` |  |
| `settlementStatus` | `string` |  |
| `sourceId` | `integer` |  |
| `tecsengineResponseCode` | `integer` |  |
| `tecsengineResponseText` | `string` |  |
| `terminalEndOfDayDate` | `string` |  |
| `terminalId` | `integer` |  |
| `terminalLocation` | `string` |  |
| `tipAmount` | `integer` |  |
| `traceNumber` | `integer` |  |
| `transactionClearingDate` | `string` |  |
| `transactionDate` | `string` |  |
| `transactionId` | `string` |  |
| `transactionSeqNumber` | `integer` |  |
| `transactionServerDate` | `string` |  |
| `transactionSource` | `string` |  |
| `transactionType` | `string` |  |

#### Example: Create

```perl
my $status_transaction = $client->StatusTransaction->create({
});
```


### StoreTerminalParameter

Create an instance: `my $store_terminal_parameter = $client->StoreTerminalParameter;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `acqTabNexo` | `hashref` |  |
| `configVersion` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `serialNumber` | `string` |  |
| `tidSent` | `string` |  |

#### Example: Create

```perl
my $store_terminal_parameter = $client->StoreTerminalParameter->create({
    'serialNumber' => 'example_serialNumber',  # string
});
```


### TerminalId

Create an instance: `my $terminal_id = $client->TerminalId;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deviceSerialNumber` | `arrayref` |  |
| `duplicateTerminalIds` | `arrayref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `terminals` | `arrayref` |  |

#### Example: Create

```perl
my $terminal_id = $client->TerminalId->create({
    'deviceSerialNumber' => [],  # arrayref
});
```


### TransactionHistory

Create an instance: `my $transaction_history = $client->TransactionHistory;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `3DSecure` | `string` |  |
| `authorizationCode` | `string` |  |
| `cardBrand` | `string` |  |
| `clearingAmountFrom` | `string` |  |
| `clearingAmountTo` | `string` |  |
| `clearingCurrency` | `string` |  |
| `clearingStatus` | `string` |  |
| `corporateUUID` | `string` |  |
| `orderByTransactionDate` | `string` |  |
| `pagination` | `hashref` |  |
| `paymentTokenPublicId` | `string` |  |
| `receiptNumber` | `string` |  |
| `referencedTransactionId` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `retrievalReferenceNumber` | `string` |  |
| `sourceId` | `integer` |  |
| `tecsengineResponseCodeFrom` | `string` |  |
| `tecsengineResponseCodeTo` | `string` |  |
| `terminalId` | `integer` |  |
| `traceNumber` | `string` |  |
| `transactionAmountFrom` | `string` |  |
| `transactionAmountTo` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionHistories` | `arrayref` |  |
| `transactionId` | `string` |  |
| `transactionType` | `string` |  |
| `wallet` | `string` | Filter by wallet type. |

#### Example: Create

```perl
my $transaction_history = $client->TransactionHistory->create({
});
```


### TransactionsCount

Create an instance: `my $transactions_count = $client->TransactionsCount;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `arrayref` |  |

#### Example: Create

```perl
my $transactions_count = $client->TransactionsCount->create({
});
```


### TransactionsCountCardBrand

Create an instance: `my $transactions_count_card_brand = $client->TransactionsCountCardBrand;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `transactionsCount` | `arrayref` |  |

#### Example: Create

```perl
my $transactions_count_card_brand = $client->TransactionsCountCardBrand->create({
});
```


### TransactionsTurnover

Create an instance: `my $transactions_turnover = $client->TransactionsTurnover;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `period` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `transactionDateFrom` | `string` |  |
| `transactionDateTo` | `string` |  |
| `turnovers` | `arrayref` |  |

#### Example: Create

```perl
my $transactions_turnover = $client->TransactionsTurnover->create({
});
```


### UpdateMerchant

Create an instance: `my $update_merchant = $client->UpdateMerchant;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `corporateUuid` | `string` |  |
| `country` | `string` |  |
| `merchantCategoryCode` | `string` |  |
| `name` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street` | `string` |  |
| `vuNummer` | `string` |  |
| `zipcode` | `string` |  |

#### Example: Create

```perl
my $update_merchant = $client->UpdateMerchant->create({
    'corporateUuid' => 'example_corporateUuid',  # string
});
```


### UpdateTemplateXml

Create an instance: `my $update_template_xml = $client->UpdateTemplateXml;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `templateName` | `string` |  |
| `templateXml` | `string` |  |

#### Example: Create

```perl
my $update_template_xml = $client->UpdateTemplateXml->create({
    'templateName' => 'example_templateName',  # string
    'templateXml' => 'example_templateXml',  # string
});
```


### Version

Create an instance: `my $version = $client->Version;`

#### Operations

| Method | Description |
| --- | --- |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```perl
my $version = $client->Version->load();
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as hashrefs

The Perl SDK uses plain hashrefs and arrayrefs throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Use `BluefinTecsMerchantServicesHelpers::to_map()` to safely validate that a value
is a hashref.

### Module structure

```
perl/
├── lib/BluefinTecsMerchantServicesSDK.pm    -- Main SDK module (package BluefinTecsMerchantServicesSDK)
├── config.pm                    -- Configuration
├── features.pm                  -- Feature factory
├── core/                        -- Core types and context
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (base, test, log)
├── utility/                     -- Utility functions
├── lib/Voxgig/Struct.pm         -- Vendored struct library
└── t/                           -- Test suites
```

Load the main module with `use lib 'lib'; use BluefinTecsMerchantServicesSDK;` — it
pulls in the config, features, and core modules for you. Require entity or
utility modules directly only when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const digitalservicesapi = client.DigitalServicesApi()
await digitalservicesapi.load()

// digitalservicesapi.data() now returns the digitalservicesapi data from the last `load`
// digitalservicesapi.match() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
