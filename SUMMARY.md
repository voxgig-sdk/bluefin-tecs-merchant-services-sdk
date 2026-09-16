# Merchant Services

Merchant Services

## Start here

This guide introduces the API, the client libraries, and the companion tools in this repository. Start with the API capabilities, choose a client for your application, and use the linked reference when you need exact request and response details.

The selected API surface contains 39 entities and 45 HTTP routes. There are 23 SDK targets and 2 companion tools.

An entity groups related API operations. An operation can have several routes with different inputs or authentication requirements. The SDK exposes the entity and its operations using the conventions of the selected language.

## What the API provides

### [CancelTransaction](docs/api/cancel_transaction.html)

Results: Successful operation.

SDK operations: `create`.

### [CheckCardBlackListed](docs/api/check_card_black_listed.html)

Results: Successful operation.

SDK operations: `create`.

### [CreateProduct](docs/api/create_product.html)

Results: Successful operation.

SDK operations: `create`.

### [DeactivateTerminal](docs/api/deactivate_terminal.html)

Results: Successful operation.

SDK operations: `create`.

### [DigitalServicesApi](docs/api/digital_services_api.html)

Results: ZIP file download containing CSV data; Successful operation; Export concurrency status retrieved successfully.

SDK operations: `create`, `load`.

Key fields to recognise:

- `clearingDateFrom`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ssz
- `clearingDateTo`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ssz

### [EcDataEcom](docs/api/ec_data_ecom.html)

Results: Successful operation.

SDK operations: `create`.

### [EcomParameter](docs/api/ecom_parameter.html)

Results: Successful operation.

SDK operations: `create`.

### [EcrData](docs/api/ecr_data.html)

Results: Successful operation.

SDK operations: `create`.

### [EmvData](docs/api/emv_data.html)

Results: Successful operation.

SDK operations: `create`.

### [EnableAcquiring](docs/api/enable_acquiring.html)

Results: Successful operation.

SDK operations: `create`.

### [GetMerchantContractNumber](docs/api/get_merchant_contract_number.html)

Results: In case the merchant contract number is not registered yet.

SDK operations: `create`.

### [GetTemplateXml](docs/api/get_template_xml.html)

Results: Successful operation.

SDK operations: `create`.

### [IntroduceMandator](docs/api/introduce_mandator.html)

Results: Successful operation.

SDK operations: `create`.

### [IntroducePackage](docs/api/introduce_package.html)

Results: Successful operation.

SDK operations: `create`.

### [KeepAlive](docs/api/keep_alive.html)

Results: Successful operation.

SDK operations: `create`.

### [ListTerminal](docs/api/list_terminal.html)

Results: Successful operation.

SDK operations: `create`.

### [MandatorClearingExport](docs/api/mandator_clearing_export.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `clearingDateFrom`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ssZ
- `clearingDateTo`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ssZ

### [MandatorClearingExportDownload](docs/api/mandator_clearing_export_download.html)

Results: Successful operation - processing started; Status information.

SDK operations: `create`, `load`.

Key fields to recognise:

- `clearingDateFrom`: Start date for clearing export (inclusive)
- `clearingDateTo`: End date for clearing export (inclusive)
- `fileId`: Unique file identifier for tracking and downloading
- `filenameTemplate`: Optional filename template for the export file
- `status`: Processing status of the export request

### [MandatorClearingExportSummary](docs/api/mandator_clearing_export_summary.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `clearingDateFrom`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ssz
- `clearingDateTo`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ssz

### [MerchantPortalServicesApi](docs/api/merchant_portal_services_api.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `wallet`: Filter by wallet type.

### [MoveTid](docs/api/move_tid.html)

Results: In case the terminal ID is moved successfully.

SDK operations: `create`.

### [PaymentManual](docs/api/payment_manual.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `acquirerName`: Acquirer name parsed from KKG field
- `amount`: Transaction amount in minor units (cents)
- `authorizationNumber`: Authorization number from the gateway
- `cardNumber`: Card number - 12 to 19 digits, must pass Luhn validation
- `cardType`: Card type parsed from KKG field

### [PaymentSred](docs/api/payment_sred.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `amount`: Transaction amount in minor units (cents)
- `currency`: Currency code - 3 uppercase letters (ISO 4217)
- `device`: Device type that provided the SRED payload
- `devicePayload`: SRED encrypted device payload from the device (minimum 32 characters)
- `expDate`: Card expiry date in MMYY format

### [PreAuthTransactionCompletion](docs/api/pre_auth_transaction_completion.html)

Results: Successful operation.

SDK operations: `create`.

### [ReactivateTerminal](docs/api/reactivate_terminal.html)

Results: Successful operation.

SDK operations: `create`.

### [RefundTransaction](docs/api/refund_transaction.html)

Results: Successful operation.

SDK operations: `create`.

### [RegisterTecsCompany](docs/api/register_tecs_company.html)

Results: Successful operation.

SDK operations: `create`.

### [RegisterTerminal](docs/api/register_terminal.html)

Results: Successful operation.

SDK operations: `create`.

### [ReportData](docs/api/report_data.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `clearingDateFrom`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ss
- `clearingDateTo`: Date and time in the format yyyy-MM-dd&#39;T&#39;HH:mm:ss

### [StatusTransaction](docs/api/status_transaction.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `authorizationCode`: Authorization code returned by the acquirer; null when not available

### [StoreTerminalParameter](docs/api/store_terminal_parameter.html)

Results: Successful operation.

SDK operations: `create`.

### [TerminalId](docs/api/terminal_id.html)

Results: Successful operation.

SDK operations: `create`.

### [TransactionHistory](docs/api/transaction_history.html)

Results: Successful operation.

SDK operations: `create`.

Key fields to recognise:

- `wallet`: Filter by wallet type.

### [TransactionsCount](docs/api/transactions_count.html)

Results: Successful operation.

SDK operations: `create`.

### [TransactionsCountCardBrand](docs/api/transactions_count_card_brand.html)

Results: Successful operation.

SDK operations: `create`.

### [TransactionsTurnover](docs/api/transactions_turnover.html)

Results: Successful operation.

SDK operations: `create`.

### [UpdateMerchant](docs/api/update_merchant.html)

Results: Successful operation.

SDK operations: `create`.

### [UpdateTemplateXml](docs/api/update_template_xml.html)

Results: Successful operation.

SDK operations: `create`.

### [Version](docs/api/version.html)

Results: Successful operation.

SDK operations: `load`.

### Route map

Use this map to locate a capability. Consult the entity reference before supplying request data; routes for the same operation can require different fields.

| Entity | SDK operation | HTTP route | Authentication |
| --- | --- | --- | --- |
| [CancelTransaction](docs/api/cancel_transaction.html) | `create` | `POST /public/cancelTransaction` | Required |
| [CheckCardBlackListed](docs/api/check_card_black_listed.html) | `create` | `POST /checkCardBlackListed` | Required |
| [CreateProduct](docs/api/create_product.html) | `create` | `POST /createProduct` | Required |
| [DeactivateTerminal](docs/api/deactivate_terminal.html) | `create` | `POST /deactivateTerminal` | Required |
| [DigitalServicesApi](docs/api/digital_services_api.html) | `create` | `POST /public/digitalservices/mandatorClearingExportDownload/{fileId}` | Required |
| [DigitalServicesApi](docs/api/digital_services_api.html) | `create` | `POST /public/digitalservices/mandatorClearingExportMetadata` | Required |
| [DigitalServicesApi](docs/api/digital_services_api.html) | `load` | `GET /public/digitalservices/mandatorClearingExportDownload/status` | See reference |
| [EcDataEcom](docs/api/ec_data_ecom.html) | `create` | `POST /public/getEcData` | Required |
| [EcomParameter](docs/api/ecom_parameter.html) | `create` | `POST /public/getEcomParameters` | Required |
| [EcrData](docs/api/ecr_data.html) | `create` | `POST /public/getEcrData` | Required |
| [EmvData](docs/api/emv_data.html) | `create` | `POST /public/getEmvData` | Required |
| [EnableAcquiring](docs/api/enable_acquiring.html) | `create` | `POST /enableAcquiring` | Required |
| [GetMerchantContractNumber](docs/api/get_merchant_contract_number.html) | `create` | `POST /getMerchantContractNumber` | Required |
| [GetTemplateXml](docs/api/get_template_xml.html) | `create` | `POST /public/getTemplateXml` | Required |
| [IntroduceMandator](docs/api/introduce_mandator.html) | `create` | `POST /introduceMandator` | Required |
| [IntroducePackage](docs/api/introduce_package.html) | `create` | `POST /introducePackage` | Required |
| [KeepAlive](docs/api/keep_alive.html) | `create` | `POST /public/keepalive` | Required |
| [ListTerminal](docs/api/list_terminal.html) | `create` | `POST /public/listTerminals` | Required |
| [MandatorClearingExport](docs/api/mandator_clearing_export.html) | `create` | `POST /public/digitalservices/mandatorClearingExport` | Required |
| [MandatorClearingExportDownload](docs/api/mandator_clearing_export_download.html) | `create` | `POST /public/digitalservices/mandatorClearingExportDownload` | Required |
| [MandatorClearingExportDownload](docs/api/mandator_clearing_export_download.html) | `load` | `GET /public/digitalservices/mandatorClearingExportDownload/{fileId}` | Required |
| [MandatorClearingExportSummary](docs/api/mandator_clearing_export_summary.html) | `create` | `POST /public/digitalservices/mandatorClearingExportSummary` | Required |
| [MerchantPortalServicesApi](docs/api/merchant_portal_services_api.html) | `create` | `POST /public/transactionHistoryCsv` | Required |
| [MoveTid](docs/api/move_tid.html) | `create` | `POST /moveTid` | Required |
| [PaymentManual](docs/api/payment_manual.html) | `create` | `POST /public/paymentManual` | Required |
| [PaymentSred](docs/api/payment_sred.html) | `create` | `POST /public/paymentSred` | Required |
| [PreAuthTransactionCompletion](docs/api/pre_auth_transaction_completion.html) | `create` | `POST /public/paymentTransaction` | Required |
| [PreAuthTransactionCompletion](docs/api/pre_auth_transaction_completion.html) | `create` | `POST /public/preAuthCompletionTransaction` | Required |
| [ReactivateTerminal](docs/api/reactivate_terminal.html) | `create` | `POST /reactivateTerminal` | Required |
| [RefundTransaction](docs/api/refund_transaction.html) | `create` | `POST /public/refundTransaction` | Required |
| [RegisterTecsCompany](docs/api/register_tecs_company.html) | `create` | `POST /registerTecsCompany` | Required |
| [RegisterTerminal](docs/api/register_terminal.html) | `create` | `POST /registerTerminal` | Required |
| [ReportData](docs/api/report_data.html) | `create` | `POST /public/digitalservices/reportData` | Required |
| [StatusTransaction](docs/api/status_transaction.html) | `create` | `POST /public/statusTransaction` | Required |
| [StoreTerminalParameter](docs/api/store_terminal_parameter.html) | `create` | `POST /storeTerminalParameters` | Required |
| [TerminalId](docs/api/terminal_id.html) | `create` | `POST /public/getTerminalId` | Required |
| [TransactionHistory](docs/api/transaction_history.html) | `create` | `POST /public/mcom/transactionHistory` | Required |
| [TransactionHistory](docs/api/transaction_history.html) | `create` | `POST /public/transactionHistory` | Required |
| [TransactionsCount](docs/api/transactions_count.html) | `create` | `POST /public/countAuthorisedTransactions` | Required |
| [TransactionsCount](docs/api/transactions_count.html) | `create` | `POST /public/countNotAuthorisedTransactions` | Required |
| [TransactionsCountCardBrand](docs/api/transactions_count_card_brand.html) | `create` | `POST /public/countTransactionsByCardBrand` | Required |
| [TransactionsTurnover](docs/api/transactions_turnover.html) | `create` | `POST /public/transactionTurnover` | Required |
| [UpdateMerchant](docs/api/update_merchant.html) | `create` | `POST /public/updateMerchant` | Required |
| [UpdateTemplateXml](docs/api/update_template_xml.html) | `create` | `POST /public/updateTemplateXml` | Required |
| [Version](docs/api/version.html) | `load` | `GET /public/version` | See reference |

## Connect to the API

- Generated server url: `https://test.tecs.at/merchantservices`

The default credential is sent in the `Authorization` header with the `Bearer` prefix.

TecsWeb token

Check authentication for the route you plan to call. A route that declares no authentication can be used without credentials; this does not change the requirements of other routes. Keep credentials in environment variables or a configured secret provider, and keep them out of source control and logs.

## Make a first request

1. Choose the API server and an operation that matches your task.
2. Check the operation’s required input and authentication. Use values valid for your account and environment.
3. Send one request and inspect the returned data before adding retries, concurrency, or a larger batch.

For an SDK call, install or build the chosen client, create a client instance with its documented configuration, and call the required entity operation. Language references describe the argument shape, asynchronous behaviour, and returned values.

## Choose an SDK

Choose the language already used by your application or service. The clients represent the same API model, while package setup, naming, and return types follow each language. Check the selected client’s reference and tests before integrating it into an existing application.

| Client | Repository directory | Distribution |
| --- | --- | --- |
| [C](docs/sdks/c.html) | `c/` | Build from source |
| [Clojure](docs/sdks/clojure.html) | `clojure/` | Build from source |
| [C++](docs/sdks/cpp.html) | `cpp/` | Build from source |
| [C#](docs/sdks/csharp.html) | `csharp/` | Build from source |
| [Dart](docs/sdks/dart.html) | `dart/` | Build from source |
| [Elixir](docs/sdks/elixir.html) | `elixir/` | Build from source |
| [Golang](docs/sdks/go.html) | `go/` | Build from source |
| [Haskell](docs/sdks/haskell.html) | `haskell/` | Build from source |
| [Java](docs/sdks/java.html) | `java/` | Build from source |
| [JavaScript](docs/sdks/js.html) | `js/` | Build from source |
| [Kotlin](docs/sdks/kotlin.html) | `kotlin/` | Build from source |
| [Lean](docs/sdks/lean.html) | `lean/` | Build from source |
| [Lua](docs/sdks/lua.html) | `lua/` | Build from source |
| [OCaml](docs/sdks/ocaml.html) | `ocaml/` | Build from source |
| [Perl](docs/sdks/perl.html) | `perl/` | Build from source |
| [PHP](docs/sdks/php.html) | `php/` | Build from source |
| [Python](docs/sdks/py.html) | `py/` | Build from source |
| [Ruby](docs/sdks/rb.html) | `rb/` | Build from source |
| [Rust](docs/sdks/rust.html) | `rust/` | Build from source |
| [Scala](docs/sdks/scala.html) | `scala/` | Build from source |
| [Swift](docs/sdks/swift.html) | `swift/` | Build from source |
| [TypeScript](docs/sdks/ts.html) | `ts/` | Build from source |
| [Zig](docs/sdks/zig.html) | `zig/` | Build from source |

Build-from-source entries are not marked as published in the project model. Follow the build instructions in that target’s README, then consume the resulting package using your language’s local dependency mechanism. Published entries give the installation command recorded for that client.

## Companion tools

These targets provide another way to use the API. Their available commands or tools can cover a smaller set of operations than the client libraries.

### [Go CLI](docs/tools/go-cli.html)

Use the command-line interface for shell-based tasks and scripts.

Repository directory: `go-cli/`. Not published. Build from the go-cli directory.


### [Go MCP server](docs/tools/go-mcp.html)

Use the MCP server to expose supported API operations to an MCP client.

Repository directory: `go-mcp/`. Not published. Build from the go-mcp directory.

- `bluefin-tecs-merchant-services_list`: List records for an entity. No active entity supports this operation.
- `bluefin-tecs-merchant-services_load`: Load one record for an entity. Supported entities: `digital_services_api`, `mandator_clearing_export_download`, `version`.

## Operational features

Features supply behaviour around API calls, such as request handling, diagnostics, or local testing. Inclusion in this project does not mean a feature is enabled at runtime. Check the selected SDK’s supported features and configuration defaults, then enable the behaviour your application needs.

- [`audit`](docs/features/audit.html): Structured audit trail of operations
- [`clienttrack`](docs/features/clienttrack.html): Client identity and per-request correlation headers
- [`debug`](docs/features/debug.html): Request/response capture ring buffer for debugging
- [`idempotency`](docs/features/idempotency.html): Idempotency keys for safe retries of mutating operations
- [`log`](docs/features/log.html): Structured request and response logging
- [`metrics`](docs/features/metrics.html): Statistics capture: per-operation counters and latency
- [`paging`](docs/features/paging.html): Pagination signals for list operations
- [`ratelimit`](docs/features/ratelimit.html): Client-side rate limiting via a token bucket
- [`retry`](docs/features/retry.html): Automatic retry of transient failures with exponential backoff
- [`telemetry`](docs/features/telemetry.html): Distributed tracing spans with W3C trace-context propagation
- [`test`](docs/features/test.html): In-memory mock transport for testing without a live server
- [`timeout`](docs/features/timeout.html): Per-request timeout with transport abort

Start with the default client configuration. Add request limits and diagnostics as needed, test error paths, and review retry behaviour before using operations that change data. A retry can repeat an operation unless the API provides a suitable guarantee.

## Continue with the documentation

- Follow the [first-call guide](docs/guides/first-call.html) for the setup sequence.
- Read the [authentication guide](docs/guides/authentication.html) before using protected routes.
- Use the [API reference](docs/api/index.html) for request schemas, response formats, and status codes.
- Check the chosen SDK or companion tool reference for its configuration and supported operations.

