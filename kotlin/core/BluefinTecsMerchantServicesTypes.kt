package voxgig.bluefintecsmerchantservicessdk.core

// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These types are documentation/DX reference shapes ONLY. The SDK ops take and
// return the loose object model (MutableMap<String, Any?> / Any?) at runtime,
// so these types are not wired into the op signatures — use them to describe a
// payload before converting it to a map. Every component is a nullable type, so
// an optional (req:false) key needs no distinct rendering.

@Suppress("unused")
object BluefinTecsMerchantServicesTypes {

  data class CancelTransaction(val acquirer_id: String?, val acquirer_name: String?, val actual_bonus_point: String?, val amount: Long?, val authorization_code: String?, val balance_amount: String?, val card_brand: String?, val card_number: String?, val client_id: Long?, val currency: String?, val cvc: String?, val ec_data: String?, val ecr_data: String?, val emv_data: String?, val exchange_fee: Long?, val exchange_rate: String?, val language_code: String?, val merchant_address: String?, val merchant_name: String?, val merchant_number: String?, val message_type: String?, val original_trace_number: Long?, val original_transaction_id: String?, val password: String?, val payment_reason: String?, val receipt_footer: String?, val receipt_header: String?, val receipt_layout: Long?, val receipt_number: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val svc: String?, val terminal_id: Long?, val terminal_location: String?, val trace_number: Long?, val transaction_date: String?, val transaction_id: String?, val tx_type: String?, val user_data: String?)

  data class CancelTransactionCreateData(val acquirer_id: String?, val acquirer_name: String?, val actual_bonus_point: String?, val amount: Long?, val authorization_code: String?, val balance_amount: String?, val card_brand: String?, val card_number: String?, val client_id: Long?, val currency: String?, val cvc: String?, val ec_data: String?, val ecr_data: String?, val emv_data: String?, val exchange_fee: Long?, val exchange_rate: String?, val language_code: String?, val merchant_address: String?, val merchant_name: String?, val merchant_number: String?, val message_type: String?, val original_trace_number: Long?, val original_transaction_id: String?, val password: String?, val payment_reason: String?, val receipt_footer: String?, val receipt_header: String?, val receipt_layout: Long?, val receipt_number: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val svc: String?, val terminal_id: Long?, val terminal_location: String?, val trace_number: Long?, val transaction_date: String?, val transaction_id: String?, val tx_type: String?, val user_data: String?)

  data class CheckCardBlackListed(val card_no: String?, val response_code: Long?, val response_message: String?)

  data class CheckCardBlackListedCreateData(val card_no: String?, val response_code: Long?, val response_message: String?)

  data class CreateProduct(val acquirer_id: Long?, val response_code: Long?, val response_message: String?, val template_name: String?, val template_type: String?, val template_xml: String?, val terminal_type: String?)

  data class CreateProductCreateData(val acquirer_id: Long?, val response_code: Long?, val response_message: String?, val template_name: String?, val template_type: String?, val template_xml: String?, val terminal_type: String?)

  data class DeactivateTerminal(val corporate_uuid: String?, val deactivation_reason: String?, val package_order_uuid: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?)

  data class DeactivateTerminalCreateData(val corporate_uuid: String?, val deactivation_reason: String?, val package_order_uuid: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?)

  data class DigitalServicesApi(val clearing_date_from: String?, val clearing_date_to: String?, val response_code: Long?, val response_message: String?, val tx_count: Long?, val tx_id_end: String?, val tx_id_start: String?, val tx_seq_no_end: Long?, val tx_seq_no_start: Long?, val tx_total: Long?)

  data class DigitalServicesApiLoadMatch(val clearing_date_from: String?, val clearing_date_to: String?, val response_code: Long?, val response_message: String?, val tx_count: Long?, val tx_id_end: String?, val tx_id_start: String?, val tx_seq_no_end: Long?, val tx_seq_no_start: Long?, val tx_total: Long?)

  data class DigitalServicesApiCreateData(val file_id: String?)

  data class EcDataEcom(val ecom_data: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?, val transaction_id: String?, val transaction_type: String?)

  data class EcDataEcomCreateData(val ecom_data: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?, val transaction_id: String?, val transaction_type: String?)

  data class EcomParameter(val ecom_pass: String?, val ecom_skey: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?)

  data class EcomParameterCreateData(val ecom_pass: String?, val ecom_skey: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?)

  data class EcrData(val ecr_data: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?, val transaction_id: String?, val transaction_type: String?)

  data class EcrDataCreateData(val ecr_data: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?, val transaction_id: String?, val transaction_type: String?)

  data class EmvData(val emv_data: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?, val transaction_id: String?, val transaction_type: String?)

  data class EmvDataCreateData(val emv_data: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?, val transaction_id: String?, val transaction_type: String?)

  data class EnableAcquiring(val account_no: Long?, val additional_data: Map<String, Any?>?, val corporate_uuid: String?, val currency: String?, val merchant_category_code: Long?, val package_order_uuid: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val sorting_code: Long?, val template_name: String?, val terminal_id: List<Any?>?, val terminal_id_acq: String?, val vu_nummer: String?)

  data class EnableAcquiringCreateData(val account_no: Long?, val additional_data: Map<String, Any?>?, val corporate_uuid: String?, val currency: String?, val merchant_category_code: Long?, val package_order_uuid: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val sorting_code: Long?, val template_name: String?, val terminal_id: List<Any?>?, val terminal_id_acq: String?, val vu_nummer: String?)

  data class GetMerchantContractNumber(val merchant_contract_number: String?, val response_code: Long?, val response_message: String?)

  data class GetMerchantContractNumberCreateData(val merchant_contract_number: String?, val response_code: Long?, val response_message: String?)

  data class GetTemplateXml(val response_code: Long?, val response_message: String?, val template_name: String?)

  data class GetTemplateXmlCreateData(val response_code: Long?, val response_message: String?, val template_name: String?)

  data class IntroduceMandator(val mandator_name: String?, val response_code: Long?, val response_message: String?)

  data class IntroduceMandatorCreateData(val mandator_name: String?, val response_code: Long?, val response_message: String?)

  data class IntroducePackage(val response_code: Long?, val response_message: String?, val terminal_template_description: String?)

  data class IntroducePackageCreateData(val response_code: Long?, val response_message: String?, val terminal_template_description: String?)

  data class KeepAlive(val hwserialno: String?, val ka_date_time_from: String?, val ka_date_time_to: String?, val keep_alive_data: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val terminal_date_time_from: String?, val terminal_date_time_to: String?, val terminal_id: Long?)

  data class KeepAliveCreateData(val hwserialno: String?, val ka_date_time_from: String?, val ka_date_time_to: String?, val keep_alive_data: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val terminal_date_time_from: String?, val terminal_date_time_to: String?, val terminal_id: Long?)

  data class ListTerminal(val corporate_uuid: List<Any?>?, val filter: Map<String, Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val terminal: List<Any?>?)

  data class ListTerminalCreateData(val corporate_uuid: List<Any?>?, val filter: Map<String, Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val terminal: List<Any?>?)

  data class MandatorClearingExport(val clearing_date_from: String?, val clearing_date_to: String?, val pagination: Map<String, Any?>?, val record: List<Any?>?, val response_code: Long?, val response_message: String?)

  data class MandatorClearingExportCreateData(val clearing_date_from: String?, val clearing_date_to: String?, val pagination: Map<String, Any?>?, val record: List<Any?>?, val response_code: Long?, val response_message: String?)

  data class MandatorClearingExportDownload(val clearing_date_from: String?, val clearing_date_to: String?, val file_id: String?, val filename_template: String?, val response_code: Long?, val response_message: String?, val status: String?)

  data class MandatorClearingExportDownloadLoadMatch(val id: String?)

  data class MandatorClearingExportDownloadCreateData(val clearing_date_from: String?, val clearing_date_to: String?, val file_id: String?, val filename_template: String?, val response_code: Long?, val response_message: String?, val status: String?)

  data class MandatorClearingExportSummary(val clearing_date_from: String?, val clearing_date_to: String?, val record: List<Any?>?, val response_code: Long?, val response_message: String?)

  data class MandatorClearingExportSummaryCreateData(val clearing_date_from: String?, val clearing_date_to: String?, val record: List<Any?>?, val response_code: Long?, val response_message: String?)

  data class MerchantPortalServicesApi(val authorization_code: String?, val card_brand: String?, val clearing_amount_from: String?, val clearing_amount_to: String?, val clearing_currency: String?, val clearing_status: String?, val corporate_uuid: String?, val order_by_transaction_date: String?, val pagination: Map<String, Any?>?, val receipt_number: String?, val referenced_transaction_id: String?, val retrieval_reference_number: String?, val source_id: Long?, val tecsengine_response_code_from: String?, val tecsengine_response_code_to: String?, val terminal_id: Long?, val trace_number: String?, val transaction_amount_from: String?, val transaction_amount_to: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transaction_id: String?, val transaction_type: String?, val wallet: String?)

  data class MerchantPortalServicesApiCreateData(val authorization_code: String?, val card_brand: String?, val clearing_amount_from: String?, val clearing_amount_to: String?, val clearing_currency: String?, val clearing_status: String?, val corporate_uuid: String?, val order_by_transaction_date: String?, val pagination: Map<String, Any?>?, val receipt_number: String?, val referenced_transaction_id: String?, val retrieval_reference_number: String?, val source_id: Long?, val tecsengine_response_code_from: String?, val tecsengine_response_code_to: String?, val terminal_id: Long?, val trace_number: String?, val transaction_amount_from: String?, val transaction_amount_to: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transaction_id: String?, val transaction_type: String?, val wallet: String?)

  data class MoveTid(val productorderuuid: List<Any?>?, val response_code: Long?, val response_message: String?, val target_packageorderuuid: String?, val target_productorderuuid: String?)

  data class MoveTidCreateData(val productorderuuid: List<Any?>?, val response_code: Long?, val response_message: String?, val target_packageorderuuid: String?, val target_productorderuuid: String?)

  data class PaymentManual(val acquirer_name: String?, val amount: Long?, val authorization_number: String?, val card_number: String?, val card_type: String?, val currency: String?, val cvc: String?, val date_time_tx: String?, val exp_date: String?, val merchant_id: String?, val original_transaction_id: String?, val password: String?, val response_code: String?, val response_message: String?, val terminal_id: String?, val transaction_id: String?, val txtype: String?)

  data class PaymentManualCreateData(val acquirer_name: String?, val amount: Long?, val authorization_number: String?, val card_number: String?, val card_type: String?, val currency: String?, val cvc: String?, val date_time_tx: String?, val exp_date: String?, val merchant_id: String?, val original_transaction_id: String?, val password: String?, val response_code: String?, val response_message: String?, val terminal_id: String?, val transaction_id: String?, val txtype: String?)

  data class PaymentSred(val acquirer_name: String?, val amount: Long?, val authorization_number: String?, val card_type: String?, val currency: String?, val date_time_tx: String?, val device_payload: String?, val merchant_id: String?, val original_transaction_id: String?, val password: String?, val response_code: String?, val response_message: String?, val sred: Map<String, Any?>?, val terminal_id: String?, val transaction_id: String?, val txtype: String?)

  data class PaymentSredCreateData(val acquirer_name: String?, val amount: Long?, val authorization_number: String?, val card_type: String?, val currency: String?, val date_time_tx: String?, val device_payload: String?, val merchant_id: String?, val original_transaction_id: String?, val password: String?, val response_code: String?, val response_message: String?, val sred: Map<String, Any?>?, val terminal_id: String?, val transaction_id: String?, val txtype: String?)

  data class PreAuthTransactionCompletion(val acquirer_id: String?, val acquirer_name: String?, val actual_bonus_point: String?, val amount: Long?, val authorization_code: String?, val balance_amount: String?, val card_brand: String?, val card_number: String?, val card_number_reference: String?, val client_id: Long?, val currency: String?, val cvc: String?, val ec_data: String?, val ecr_data: String?, val emv_data: String?, val exchange_fee: Long?, val exchange_rate: String?, val language_code: String?, val merchant_address: String?, val merchant_name: String?, val merchant_number: String?, val message_type: String?, val original_trace_number: Long?, val original_transaction_id: String?, val password: String?, val payment_reason: String?, val receipt_footer: String?, val receipt_header: String?, val receipt_layout: Long?, val receipt_number: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val svc: String?, val terminal_id: Long?, val terminal_location: String?, val trace_number: Long?, val transaction_date: String?, val transaction_id: String?, val transaction_type: String?, val tx_type: String?, val user_data: String?)

  data class PreAuthTransactionCompletionCreateData(val acquirer_id: String?, val acquirer_name: String?, val actual_bonus_point: String?, val amount: Long?, val authorization_code: String?, val balance_amount: String?, val card_brand: String?, val card_number: String?, val card_number_reference: String?, val client_id: Long?, val currency: String?, val cvc: String?, val ec_data: String?, val ecr_data: String?, val emv_data: String?, val exchange_fee: Long?, val exchange_rate: String?, val language_code: String?, val merchant_address: String?, val merchant_name: String?, val merchant_number: String?, val message_type: String?, val original_trace_number: Long?, val original_transaction_id: String?, val password: String?, val payment_reason: String?, val receipt_footer: String?, val receipt_header: String?, val receipt_layout: Long?, val receipt_number: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val svc: String?, val terminal_id: Long?, val terminal_location: String?, val trace_number: Long?, val transaction_date: String?, val transaction_id: String?, val transaction_type: String?, val tx_type: String?, val user_data: String?)

  data class ReactivateTerminal(val corporate_uuid: String?, val package_order_uuid: String?, val product_order_uuid: String?, val reactivation_reason: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?)

  data class ReactivateTerminalCreateData(val corporate_uuid: String?, val package_order_uuid: String?, val product_order_uuid: String?, val reactivation_reason: String?, val response_code: Long?, val response_message: String?, val terminal_id: Long?)

  data class RefundTransaction(val acquirer_id: String?, val acquirer_name: String?, val actual_bonus_point: String?, val amount: Long?, val authorization_code: String?, val balance_amount: String?, val card_brand: String?, val card_number: String?, val client_id: Long?, val currency: String?, val cvc: String?, val ec_data: String?, val ecr_data: String?, val emv_data: String?, val exchange_fee: Long?, val exchange_rate: String?, val language_code: String?, val merchant_address: String?, val merchant_name: String?, val merchant_number: String?, val message_type: String?, val original_trace_number: Long?, val original_transaction_id: String?, val password: String?, val payment_reason: String?, val receipt_footer: String?, val receipt_header: String?, val receipt_layout: Long?, val receipt_number: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val svc: String?, val terminal_id: Long?, val terminal_location: String?, val trace_number: Long?, val transaction_date: String?, val transaction_id: String?, val tx_type: String?, val user_data: String?)

  data class RefundTransactionCreateData(val acquirer_id: String?, val acquirer_name: String?, val actual_bonus_point: String?, val amount: Long?, val authorization_code: String?, val balance_amount: String?, val card_brand: String?, val card_number: String?, val client_id: Long?, val currency: String?, val cvc: String?, val ec_data: String?, val ecr_data: String?, val emv_data: String?, val exchange_fee: Long?, val exchange_rate: String?, val language_code: String?, val merchant_address: String?, val merchant_name: String?, val merchant_number: String?, val message_type: String?, val original_trace_number: Long?, val original_transaction_id: String?, val password: String?, val payment_reason: String?, val receipt_footer: String?, val receipt_header: String?, val receipt_layout: Long?, val receipt_number: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val svc: String?, val terminal_id: Long?, val terminal_location: String?, val trace_number: Long?, val transaction_date: String?, val transaction_id: String?, val tx_type: String?, val user_data: String?)

  data class RegisterTecsCompany(val corporate_uuid: String?, val package_order_uuid: String?, val partner_id: Long?, val partner_name: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val template_name: String?)

  data class RegisterTecsCompanyCreateData(val corporate_uuid: String?, val package_order_uuid: String?, val partner_id: Long?, val partner_name: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val template_name: String?)

  data class RegisterTerminal(val additional_data: Map<String, Any?>?, val corporate_uuid: String?, val package_order_uuid: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val tecs_web_secret_key: String?, val template_name: String?, val terminal_country_code: String?, val terminal_id: Long?, val terminal_id_acq: String?, val terminal_language_code: String?, val terminal_location: String?, val terminal_serial_number: String?, val token_io_alia: String?, val token_io_iban: String?, val token_io_member_id: String?, val web_shop_url: String?)

  data class RegisterTerminalCreateData(val additional_data: Map<String, Any?>?, val corporate_uuid: String?, val package_order_uuid: String?, val product_order_uuid: String?, val response_code: Long?, val response_message: String?, val tecs_web_secret_key: String?, val template_name: String?, val terminal_country_code: String?, val terminal_id: Long?, val terminal_id_acq: String?, val terminal_language_code: String?, val terminal_location: String?, val terminal_serial_number: String?, val token_io_alia: String?, val token_io_iban: String?, val token_io_member_id: String?, val web_shop_url: String?)

  data class ReportData(val card_brand_report_data: List<Any?>?, val clearing_date_from: String?, val clearing_date_to: String?, val corporate_id: String?, val currency: String?, val response_code: Long?, val response_message: String?, val sum_over_credit_tx: Map<String, Any?>?, val sum_over_debit_tx: Map<String, Any?>?, val terminal_id: Long?)

  data class ReportDataCreateData(val card_brand_report_data: List<Any?>?, val clearing_date_from: String?, val clearing_date_to: String?, val corporate_id: String?, val currency: String?, val response_code: Long?, val response_message: String?, val sum_over_credit_tx: Map<String, Any?>?, val sum_over_debit_tx: Map<String, Any?>?, val terminal_id: Long?)

  data class StatusTransaction(val acquirer_name: String?, val acquirer_terminal_id: String?, val amount: Long?, val application_cryptogram: String?, val authorization_code: Any?, val authorization_date: String?, val card_brand: String?, val card_entry: String?, val card_expiration: String?, val card_number: String?, val clearing_amount: Long?, val clearing_batch_id: String?, val clearing_currency: String?, val clearing_date: String?, val clearing_processed_date: String?, val clearing_status: String?, val client_id: Long?, val currency: String?, val cvm: String?, val ecr_data: String?, val emv_application_id: String?, val emv_application_label: String?, val merchant_name: String?, val merchant_number: String?, val original_client_id: String?, val original_terminal_id: Long?, val original_transaction_id: String?, val payment_reason: String?, val receipt_number: String?, val response_code: Long?, val response_code_from_a: String?, val response_message: String?, val retrieval_reference_number: String?, val service_code: String?, val settlement_status: String?, val source_id: Long?, val tecsengine_response_code: Long?, val tecsengine_response_text: String?, val terminal_end_of_day_date: String?, val terminal_id: Long?, val terminal_location: String?, val tip_amount: Long?, val trace_number: Long?, val transaction_clearing_date: String?, val transaction_date: String?, val transaction_id: String?, val transaction_seq_number: Long?, val transaction_server_date: String?, val transaction_source: String?, val transaction_type: String?)

  data class StatusTransactionCreateData(val acquirer_name: String?, val acquirer_terminal_id: String?, val amount: Long?, val application_cryptogram: String?, val authorization_code: Any?, val authorization_date: String?, val card_brand: String?, val card_entry: String?, val card_expiration: String?, val card_number: String?, val clearing_amount: Long?, val clearing_batch_id: String?, val clearing_currency: String?, val clearing_date: String?, val clearing_processed_date: String?, val clearing_status: String?, val client_id: Long?, val currency: String?, val cvm: String?, val ecr_data: String?, val emv_application_id: String?, val emv_application_label: String?, val merchant_name: String?, val merchant_number: String?, val original_client_id: String?, val original_terminal_id: Long?, val original_transaction_id: String?, val payment_reason: String?, val receipt_number: String?, val response_code: Long?, val response_code_from_a: String?, val response_message: String?, val retrieval_reference_number: String?, val service_code: String?, val settlement_status: String?, val source_id: Long?, val tecsengine_response_code: Long?, val tecsengine_response_text: String?, val terminal_end_of_day_date: String?, val terminal_id: Long?, val terminal_location: String?, val tip_amount: Long?, val trace_number: Long?, val transaction_clearing_date: String?, val transaction_date: String?, val transaction_id: String?, val transaction_seq_number: Long?, val transaction_server_date: String?, val transaction_source: String?, val transaction_type: String?)

  data class StoreTerminalParameter(val acq_tab_nexo: Map<String, Any?>?, val config_version: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val tid_sent: String?)

  data class StoreTerminalParameterCreateData(val acq_tab_nexo: Map<String, Any?>?, val config_version: String?, val response_code: Long?, val response_message: String?, val serial_number: String?, val tid_sent: String?)

  data class TerminalId(val device_serial_number: List<Any?>?, val duplicate_terminal_id: List<Any?>?, val response_code: Long?, val response_message: String?, val terminal: List<Any?>?)

  data class TerminalIdCreateData(val device_serial_number: List<Any?>?, val duplicate_terminal_id: List<Any?>?, val response_code: Long?, val response_message: String?, val terminal: List<Any?>?)

  data class TransactionHistory(val authorization_code: String?, val card_brand: String?, val clearing_amount_from: String?, val clearing_amount_to: String?, val clearing_currency: String?, val clearing_status: String?, val corporate_uuid: String?, val order_by_transaction_date: String?, val pagination: Map<String, Any?>?, val payment_token_public_id: String?, val receipt_number: String?, val referenced_transaction_id: String?, val response_code: Long?, val response_message: String?, val retrieval_reference_number: String?, val source_id: Long?, val tecsengine_response_code_from: String?, val tecsengine_response_code_to: String?, val terminal_id: Long?, val trace_number: String?, val transaction_amount_from: String?, val transaction_amount_to: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transaction_history: List<Any?>?, val transaction_id: String?, val transaction_type: String?, val wallet: String?)

  data class TransactionHistoryCreateData(val authorization_code: String?, val card_brand: String?, val clearing_amount_from: String?, val clearing_amount_to: String?, val clearing_currency: String?, val clearing_status: String?, val corporate_uuid: String?, val order_by_transaction_date: String?, val pagination: Map<String, Any?>?, val payment_token_public_id: String?, val receipt_number: String?, val referenced_transaction_id: String?, val response_code: Long?, val response_message: String?, val retrieval_reference_number: String?, val source_id: Long?, val tecsengine_response_code_from: String?, val tecsengine_response_code_to: String?, val terminal_id: Long?, val trace_number: String?, val transaction_amount_from: String?, val transaction_amount_to: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transaction_history: List<Any?>?, val transaction_id: String?, val transaction_type: String?, val wallet: String?)

  data class TransactionsCount(val period: String?, val response_code: Long?, val response_message: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transactions_count: List<Any?>?)

  data class TransactionsCountCreateData(val period: String?, val response_code: Long?, val response_message: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transactions_count: List<Any?>?)

  data class TransactionsCountCardBrand(val period: String?, val response_code: Long?, val response_message: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transactions_count: List<Any?>?)

  data class TransactionsCountCardBrandCreateData(val period: String?, val response_code: Long?, val response_message: String?, val transaction_date_from: String?, val transaction_date_to: String?, val transactions_count: List<Any?>?)

  data class TransactionsTurnover(val period: String?, val response_code: Long?, val response_message: String?, val transaction_date_from: String?, val transaction_date_to: String?, val turnover: List<Any?>?)

  data class TransactionsTurnoverCreateData(val period: String?, val response_code: Long?, val response_message: String?, val transaction_date_from: String?, val transaction_date_to: String?, val turnover: List<Any?>?)

  data class UpdateMerchant(val city: String?, val corporate_uuid: String?, val country: String?, val merchant_category_code: String?, val name: String?, val response_code: Long?, val response_message: String?, val state: String?, val street: String?, val vu_nummer: String?, val zipcode: String?)

  data class UpdateMerchantCreateData(val city: String?, val corporate_uuid: String?, val country: String?, val merchant_category_code: String?, val name: String?, val response_code: Long?, val response_message: String?, val state: String?, val street: String?, val vu_nummer: String?, val zipcode: String?)

  data class UpdateTemplateXml(val response_code: Long?, val response_message: String?, val template_name: String?, val template_xml: String?)

  data class UpdateTemplateXmlCreateData(val response_code: Long?, val response_message: String?, val template_name: String?, val template_xml: String?)

  data class Version(val app_name: String?, val build_date: String?, val version: String?)

  data class VersionLoadMatch(val app_name: String?, val build_date: String?, val version: String?)

}
