package voxgig.bluefintecsmerchantservicessdk.core;

// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These records are documentation/DX reference shapes ONLY. The SDK ops take
// and return the loose object model (Map<String, Object> / Object) at runtime,
// so these types are not wired into the op signatures — use them to describe a
// payload before converting it to a map. Every component is a boxed (nullable)
// type, so an optional (req:false) key needs no distinct rendering.

import java.util.List;
import java.util.Map;

public final class BluefinTecsMerchantServicesTypes {

  private BluefinTecsMerchantServicesTypes() {}

  public record CancelTransaction(String acquirer_id, String acquirer_name, String actual_bonus_point, Long amount, String authorization_code, String balance_amount, String card_brand, String card_number, Long client_id, String currency, String cvc, String ec_data, String ecr_data, String emv_data, Long exchange_fee, String exchange_rate, String language_code, String merchant_address, String merchant_name, String merchant_number, String message_type, Long original_trace_number, String original_transaction_id, String password, String payment_reason, String receipt_footer, String receipt_header, Long receipt_layout, String receipt_number, Long response_code, String response_message, String serial_number, String svc, Long terminal_id, String terminal_location, Long trace_number, String transaction_date, String transaction_id, String tx_type, String user_data) {}

  public record CancelTransactionCreateData(String acquirer_id, String acquirer_name, String actual_bonus_point, Long amount, String authorization_code, String balance_amount, String card_brand, String card_number, Long client_id, String currency, String cvc, String ec_data, String ecr_data, String emv_data, Long exchange_fee, String exchange_rate, String language_code, String merchant_address, String merchant_name, String merchant_number, String message_type, Long original_trace_number, String original_transaction_id, String password, String payment_reason, String receipt_footer, String receipt_header, Long receipt_layout, String receipt_number, Long response_code, String response_message, String serial_number, String svc, Long terminal_id, String terminal_location, Long trace_number, String transaction_date, String transaction_id, String tx_type, String user_data) {}

  public record CheckCardBlackListed(String card_no, Long response_code, String response_message) {}

  public record CheckCardBlackListedCreateData(String card_no, Long response_code, String response_message) {}

  public record CreateProduct(Long acquirer_id, Long response_code, String response_message, String template_name, String template_type, String template_xml, String terminal_type) {}

  public record CreateProductCreateData(Long acquirer_id, Long response_code, String response_message, String template_name, String template_type, String template_xml, String terminal_type) {}

  public record DeactivateTerminal(String corporate_uuid, String deactivation_reason, String package_order_uuid, String product_order_uuid, Long response_code, String response_message, Long terminal_id) {}

  public record DeactivateTerminalCreateData(String corporate_uuid, String deactivation_reason, String package_order_uuid, String product_order_uuid, Long response_code, String response_message, Long terminal_id) {}

  public record DigitalServicesApi(String clearing_date_from, String clearing_date_to, Long response_code, String response_message, Long tx_count, String tx_id_end, String tx_id_start, Long tx_seq_no_end, Long tx_seq_no_start, Long tx_total) {}

  public record DigitalServicesApiLoadMatch(String clearing_date_from, String clearing_date_to, Long response_code, String response_message, Long tx_count, String tx_id_end, String tx_id_start, Long tx_seq_no_end, Long tx_seq_no_start, Long tx_total) {}

  public record DigitalServicesApiCreateData(String file_id) {}

  public record EcDataEcom(String ecom_data, Long response_code, String response_message, Long terminal_id, String transaction_id, String transaction_type) {}

  public record EcDataEcomCreateData(String ecom_data, Long response_code, String response_message, Long terminal_id, String transaction_id, String transaction_type) {}

  public record EcomParameter(String ecom_pass, String ecom_skey, Long response_code, String response_message, Long terminal_id) {}

  public record EcomParameterCreateData(String ecom_pass, String ecom_skey, Long response_code, String response_message, Long terminal_id) {}

  public record EcrData(String ecr_data, Long response_code, String response_message, Long terminal_id, String transaction_id, String transaction_type) {}

  public record EcrDataCreateData(String ecr_data, Long response_code, String response_message, Long terminal_id, String transaction_id, String transaction_type) {}

  public record EmvData(String emv_data, Long response_code, String response_message, Long terminal_id, String transaction_id, String transaction_type) {}

  public record EmvDataCreateData(String emv_data, Long response_code, String response_message, Long terminal_id, String transaction_id, String transaction_type) {}

  public record EnableAcquiring(Long account_no, Map<String, Object> additional_data, String corporate_uuid, String currency, Long merchant_category_code, String package_order_uuid, String product_order_uuid, Long response_code, String response_message, Long sorting_code, String template_name, List<Object> terminal_id, String terminal_id_acq, String vu_nummer) {}

  public record EnableAcquiringCreateData(Long account_no, Map<String, Object> additional_data, String corporate_uuid, String currency, Long merchant_category_code, String package_order_uuid, String product_order_uuid, Long response_code, String response_message, Long sorting_code, String template_name, List<Object> terminal_id, String terminal_id_acq, String vu_nummer) {}

  public record GetMerchantContractNumber(String merchant_contract_number, Long response_code, String response_message) {}

  public record GetMerchantContractNumberCreateData(String merchant_contract_number, Long response_code, String response_message) {}

  public record GetTemplateXml(Long response_code, String response_message, String template_name) {}

  public record GetTemplateXmlCreateData(Long response_code, String response_message, String template_name) {}

  public record IntroduceMandator(String mandator_name, Long response_code, String response_message) {}

  public record IntroduceMandatorCreateData(String mandator_name, Long response_code, String response_message) {}

  public record IntroducePackage(Long response_code, String response_message, String terminal_template_description) {}

  public record IntroducePackageCreateData(Long response_code, String response_message, String terminal_template_description) {}

  public record KeepAlive(String hwserialno, String ka_date_time_from, String ka_date_time_to, List<Object> keep_alive_data, Map<String, Object> pagination, Long response_code, String response_message, String terminal_date_time_from, String terminal_date_time_to, Long terminal_id) {}

  public record KeepAliveCreateData(String hwserialno, String ka_date_time_from, String ka_date_time_to, List<Object> keep_alive_data, Map<String, Object> pagination, Long response_code, String response_message, String terminal_date_time_from, String terminal_date_time_to, Long terminal_id) {}

  public record ListTerminal(List<Object> corporate_uuid, Map<String, Object> filter, Map<String, Object> pagination, Long response_code, String response_message, List<Object> terminal) {}

  public record ListTerminalCreateData(List<Object> corporate_uuid, Map<String, Object> filter, Map<String, Object> pagination, Long response_code, String response_message, List<Object> terminal) {}

  public record MandatorClearingExport(String clearing_date_from, String clearing_date_to, Map<String, Object> pagination, Long response_code, String response_message) {}

  public record MandatorClearingExportCreateData(String clearing_date_from, String clearing_date_to, Map<String, Object> pagination, Long response_code, String response_message) {}

  public record MandatorClearingExportDownload(String clearing_date_from, String clearing_date_to, String file_id, String filename_template, Long response_code, String response_message, String status) {}

  public record MandatorClearingExportDownloadLoadMatch(String id) {}

  public record MandatorClearingExportDownloadCreateData(String clearing_date_from, String clearing_date_to, String file_id, String filename_template, Long response_code, String response_message, String status) {}

  public record MandatorClearingExportSummary(String clearing_date_from, String clearing_date_to, Long response_code, String response_message) {}

  public record MandatorClearingExportSummaryCreateData(String clearing_date_from, String clearing_date_to, Long response_code, String response_message) {}

  public record MerchantPortalServicesApi(String authorization_code, String card_brand, String clearing_amount_from, String clearing_amount_to, String clearing_currency, String clearing_status, String corporate_uuid, String order_by_transaction_date, Map<String, Object> pagination, String receipt_number, String referenced_transaction_id, String retrieval_reference_number, Long source_id, String tecsengine_response_code_from, String tecsengine_response_code_to, Long terminal_id, String trace_number, String transaction_amount_from, String transaction_amount_to, String transaction_date_from, String transaction_date_to, String transaction_id, String transaction_type, String wallet) {}

  public record MerchantPortalServicesApiCreateData(String authorization_code, String card_brand, String clearing_amount_from, String clearing_amount_to, String clearing_currency, String clearing_status, String corporate_uuid, String order_by_transaction_date, Map<String, Object> pagination, String receipt_number, String referenced_transaction_id, String retrieval_reference_number, Long source_id, String tecsengine_response_code_from, String tecsengine_response_code_to, Long terminal_id, String trace_number, String transaction_amount_from, String transaction_amount_to, String transaction_date_from, String transaction_date_to, String transaction_id, String transaction_type, String wallet) {}

  public record MoveTid(List<Object> productorderuuid, Long response_code, String response_message, String target_packageorderuuid, String target_productorderuuid) {}

  public record MoveTidCreateData(List<Object> productorderuuid, Long response_code, String response_message, String target_packageorderuuid, String target_productorderuuid) {}

  public record PaymentManual(String acquirer_name, Long amount, String authorization_number, String card_number, String card_type, String currency, String cvc, String date_time_tx, String exp_date, String merchant_id, String original_transaction_id, String password, String response_code, String response_message, String terminal_id, String transaction_id, String txtype) {}

  public record PaymentManualCreateData(String acquirer_name, Long amount, String authorization_number, String card_number, String card_type, String currency, String cvc, String date_time_tx, String exp_date, String merchant_id, String original_transaction_id, String password, String response_code, String response_message, String terminal_id, String transaction_id, String txtype) {}

  public record PaymentSred(String acquirer_name, Long amount, String authorization_number, String card_type, String currency, String date_time_tx, String device_payload, String merchant_id, String original_transaction_id, String password, String response_code, String response_message, Map<String, Object> sred, String terminal_id, String transaction_id, String txtype) {}

  public record PaymentSredCreateData(String acquirer_name, Long amount, String authorization_number, String card_type, String currency, String date_time_tx, String device_payload, String merchant_id, String original_transaction_id, String password, String response_code, String response_message, Map<String, Object> sred, String terminal_id, String transaction_id, String txtype) {}

  public record PreAuthTransactionCompletion(String acquirer_id, String acquirer_name, String actual_bonus_point, Long amount, String authorization_code, String balance_amount, String card_brand, String card_number, String card_number_reference, Long client_id, String currency, String cvc, String ec_data, String ecr_data, String emv_data, Long exchange_fee, String exchange_rate, String language_code, String merchant_address, String merchant_name, String merchant_number, String message_type, Long original_trace_number, String original_transaction_id, String password, String payment_reason, String receipt_footer, String receipt_header, Long receipt_layout, String receipt_number, Long response_code, String response_message, String serial_number, String svc, Long terminal_id, String terminal_location, Long trace_number, String transaction_date, String transaction_id, String transaction_type, String tx_type, String user_data) {}

  public record PreAuthTransactionCompletionCreateData(String acquirer_id, String acquirer_name, String actual_bonus_point, Long amount, String authorization_code, String balance_amount, String card_brand, String card_number, String card_number_reference, Long client_id, String currency, String cvc, String ec_data, String ecr_data, String emv_data, Long exchange_fee, String exchange_rate, String language_code, String merchant_address, String merchant_name, String merchant_number, String message_type, Long original_trace_number, String original_transaction_id, String password, String payment_reason, String receipt_footer, String receipt_header, Long receipt_layout, String receipt_number, Long response_code, String response_message, String serial_number, String svc, Long terminal_id, String terminal_location, Long trace_number, String transaction_date, String transaction_id, String transaction_type, String tx_type, String user_data) {}

  public record ReactivateTerminal(String corporate_uuid, String package_order_uuid, String product_order_uuid, String reactivation_reason, Long response_code, String response_message, Long terminal_id) {}

  public record ReactivateTerminalCreateData(String corporate_uuid, String package_order_uuid, String product_order_uuid, String reactivation_reason, Long response_code, String response_message, Long terminal_id) {}

  public record RefundTransaction(String acquirer_id, String acquirer_name, String actual_bonus_point, Long amount, String authorization_code, String balance_amount, String card_brand, String card_number, Long client_id, String currency, String cvc, String ec_data, String ecr_data, String emv_data, Long exchange_fee, String exchange_rate, String language_code, String merchant_address, String merchant_name, String merchant_number, String message_type, Long original_trace_number, String original_transaction_id, String password, String payment_reason, String receipt_footer, String receipt_header, Long receipt_layout, String receipt_number, Long response_code, String response_message, String serial_number, String svc, Long terminal_id, String terminal_location, Long trace_number, String transaction_date, String transaction_id, String tx_type, String user_data) {}

  public record RefundTransactionCreateData(String acquirer_id, String acquirer_name, String actual_bonus_point, Long amount, String authorization_code, String balance_amount, String card_brand, String card_number, Long client_id, String currency, String cvc, String ec_data, String ecr_data, String emv_data, Long exchange_fee, String exchange_rate, String language_code, String merchant_address, String merchant_name, String merchant_number, String message_type, Long original_trace_number, String original_transaction_id, String password, String payment_reason, String receipt_footer, String receipt_header, Long receipt_layout, String receipt_number, Long response_code, String response_message, String serial_number, String svc, Long terminal_id, String terminal_location, Long trace_number, String transaction_date, String transaction_id, String tx_type, String user_data) {}

  public record RegisterTecsCompany(String corporate_uuid, String package_order_uuid, Long partner_id, String partner_name, String product_order_uuid, Long response_code, String response_message, String template_name) {}

  public record RegisterTecsCompanyCreateData(String corporate_uuid, String package_order_uuid, Long partner_id, String partner_name, String product_order_uuid, Long response_code, String response_message, String template_name) {}

  public record RegisterTerminal(Map<String, Object> additional_data, String corporate_uuid, String package_order_uuid, String product_order_uuid, Long response_code, String response_message, String tecs_web_secret_key, String template_name, String terminal_country_code, Long terminal_id, String terminal_id_acq, String terminal_language_code, String terminal_location, String terminal_serial_number, String token_io_alia, String token_io_iban, String token_io_member_id, String web_shop_url) {}

  public record RegisterTerminalCreateData(Map<String, Object> additional_data, String corporate_uuid, String package_order_uuid, String product_order_uuid, Long response_code, String response_message, String tecs_web_secret_key, String template_name, String terminal_country_code, Long terminal_id, String terminal_id_acq, String terminal_language_code, String terminal_location, String terminal_serial_number, String token_io_alia, String token_io_iban, String token_io_member_id, String web_shop_url) {}

  public record ReportData(List<Object> card_brand_report_data, String clearing_date_from, String clearing_date_to, String corporate_id, String currency, Long response_code, String response_message, Map<String, Object> sum_over_credit_tx, Map<String, Object> sum_over_debit_tx, Long terminal_id) {}

  public record ReportDataCreateData(List<Object> card_brand_report_data, String clearing_date_from, String clearing_date_to, String corporate_id, String currency, Long response_code, String response_message, Map<String, Object> sum_over_credit_tx, Map<String, Object> sum_over_debit_tx, Long terminal_id) {}

  public record StatusTransaction(String acquirer_name, String acquirer_terminal_id, Long amount, String application_cryptogram, Object authorization_code, String authorization_date, String card_brand, String card_entry, String card_expiration, String card_number, Long clearing_amount, String clearing_batch_id, String clearing_currency, String clearing_date, String clearing_processed_date, String clearing_status, Long client_id, String currency, String cvm, String ecr_data, String emv_application_id, String emv_application_label, String merchant_name, String merchant_number, String original_client_id, Long original_terminal_id, String original_transaction_id, String payment_reason, String receipt_number, Long response_code, String response_code_from_a, String response_message, String retrieval_reference_number, String service_code, String settlement_status, Long source_id, Long tecsengine_response_code, String tecsengine_response_text, String terminal_end_of_day_date, Long terminal_id, String terminal_location, Long tip_amount, Long trace_number, String transaction_clearing_date, String transaction_date, String transaction_id, Long transaction_seq_number, String transaction_server_date, String transaction_source, String transaction_type) {}

  public record StatusTransactionCreateData(String acquirer_name, String acquirer_terminal_id, Long amount, String application_cryptogram, Object authorization_code, String authorization_date, String card_brand, String card_entry, String card_expiration, String card_number, Long clearing_amount, String clearing_batch_id, String clearing_currency, String clearing_date, String clearing_processed_date, String clearing_status, Long client_id, String currency, String cvm, String ecr_data, String emv_application_id, String emv_application_label, String merchant_name, String merchant_number, String original_client_id, Long original_terminal_id, String original_transaction_id, String payment_reason, String receipt_number, Long response_code, String response_code_from_a, String response_message, String retrieval_reference_number, String service_code, String settlement_status, Long source_id, Long tecsengine_response_code, String tecsengine_response_text, String terminal_end_of_day_date, Long terminal_id, String terminal_location, Long tip_amount, Long trace_number, String transaction_clearing_date, String transaction_date, String transaction_id, Long transaction_seq_number, String transaction_server_date, String transaction_source, String transaction_type) {}

  public record StoreTerminalParameter(Map<String, Object> acq_tab_nexo, String config_version, Long response_code, String response_message, String serial_number, String tid_sent) {}

  public record StoreTerminalParameterCreateData(Map<String, Object> acq_tab_nexo, String config_version, Long response_code, String response_message, String serial_number, String tid_sent) {}

  public record TerminalId(List<Object> device_serial_number, List<Object> duplicate_terminal_id, Long response_code, String response_message, List<Object> terminal) {}

  public record TerminalIdCreateData(List<Object> device_serial_number, List<Object> duplicate_terminal_id, Long response_code, String response_message, List<Object> terminal) {}

  public record TransactionHistory(String authorization_code, String card_brand, String clearing_amount_from, String clearing_amount_to, String clearing_currency, String clearing_status, String corporate_uuid, String order_by_transaction_date, Map<String, Object> pagination, String payment_token_public_id, String receipt_number, String referenced_transaction_id, Long response_code, String response_message, String retrieval_reference_number, Long source_id, String tecsengine_response_code_from, String tecsengine_response_code_to, Long terminal_id, String trace_number, String transaction_amount_from, String transaction_amount_to, String transaction_date_from, String transaction_date_to, List<Object> transaction_history, String transaction_id, String transaction_type, String wallet) {}

  public record TransactionHistoryCreateData(String authorization_code, String card_brand, String clearing_amount_from, String clearing_amount_to, String clearing_currency, String clearing_status, String corporate_uuid, String order_by_transaction_date, Map<String, Object> pagination, String payment_token_public_id, String receipt_number, String referenced_transaction_id, Long response_code, String response_message, String retrieval_reference_number, Long source_id, String tecsengine_response_code_from, String tecsengine_response_code_to, Long terminal_id, String trace_number, String transaction_amount_from, String transaction_amount_to, String transaction_date_from, String transaction_date_to, List<Object> transaction_history, String transaction_id, String transaction_type, String wallet) {}

  public record TransactionsCount(String period, Long response_code, String response_message, String transaction_date_from, String transaction_date_to, List<Object> transactions_count) {}

  public record TransactionsCountCreateData(String period, Long response_code, String response_message, String transaction_date_from, String transaction_date_to, List<Object> transactions_count) {}

  public record TransactionsCountCardBrand(String period, Long response_code, String response_message, String transaction_date_from, String transaction_date_to, List<Object> transactions_count) {}

  public record TransactionsCountCardBrandCreateData(String period, Long response_code, String response_message, String transaction_date_from, String transaction_date_to, List<Object> transactions_count) {}

  public record TransactionsTurnover(String period, Long response_code, String response_message, String transaction_date_from, String transaction_date_to, List<Object> turnover) {}

  public record TransactionsTurnoverCreateData(String period, Long response_code, String response_message, String transaction_date_from, String transaction_date_to, List<Object> turnover) {}

  public record UpdateMerchant(String city, String corporate_uuid, String country, String merchant_category_code, String name, Long response_code, String response_message, String state, String street, String vu_nummer, String zipcode) {}

  public record UpdateMerchantCreateData(String city, String corporate_uuid, String country, String merchant_category_code, String name, Long response_code, String response_message, String state, String street, String vu_nummer, String zipcode) {}

  public record UpdateTemplateXml(Long response_code, String response_message, String template_name, String template_xml) {}

  public record UpdateTemplateXmlCreateData(Long response_code, String response_message, String template_name, String template_xml) {}

  public record Version(String app_name, String build_date, String version) {}

  public record VersionLoadMatch(String app_name, String build_date, String version) {}

}
