package voxgig.bluefintecsmerchantservicessdk.core

// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These case classes are documentation/DX reference shapes ONLY. The SDK ops
// take and return the loose object model (java.util.Map[String, Object] /
// Object) at runtime, so these types are not wired into the op signatures —
// use them to describe a payload before converting it to a map. Every
// component is a boxed (nullable) type, so an optional (req:false) key needs
// no distinct rendering.

object BluefinTecsMerchantServicesTypes {

  final case class CancelTransaction(acquirer_id: String, acquirer_name: String, actual_bonus_point: String, amount: java.lang.Long, authorization_code: String, balance_amount: String, card_brand: String, card_number: String, client_id: java.lang.Long, currency: String, cvc: String, ec_data: String, ecr_data: String, emv_data: String, exchange_fee: java.lang.Long, exchange_rate: String, language_code: String, merchant_address: String, merchant_name: String, merchant_number: String, message_type: String, original_trace_number: java.lang.Long, original_transaction_id: String, password: String, payment_reason: String, receipt_footer: String, receipt_header: String, receipt_layout: java.lang.Long, receipt_number: String, response_code: java.lang.Long, response_message: String, serial_number: String, svc: String, terminal_id: java.lang.Long, terminal_location: String, trace_number: java.lang.Long, transaction_date: String, transaction_id: String, tx_type: String, user_data: String)

  final case class CancelTransactionCreateData(acquirer_id: String, acquirer_name: String, actual_bonus_point: String, amount: java.lang.Long, authorization_code: String, balance_amount: String, card_brand: String, card_number: String, client_id: java.lang.Long, currency: String, cvc: String, ec_data: String, ecr_data: String, emv_data: String, exchange_fee: java.lang.Long, exchange_rate: String, language_code: String, merchant_address: String, merchant_name: String, merchant_number: String, message_type: String, original_trace_number: java.lang.Long, original_transaction_id: String, password: String, payment_reason: String, receipt_footer: String, receipt_header: String, receipt_layout: java.lang.Long, receipt_number: String, response_code: java.lang.Long, response_message: String, serial_number: String, svc: String, terminal_id: java.lang.Long, terminal_location: String, trace_number: java.lang.Long, transaction_date: String, transaction_id: String, tx_type: String, user_data: String)

  final case class CheckCardBlackListed(card_no: String, response_code: java.lang.Long, response_message: String)

  final case class CheckCardBlackListedCreateData(card_no: String, response_code: java.lang.Long, response_message: String)

  final case class CreateProduct(acquirer_id: java.lang.Long, response_code: java.lang.Long, response_message: String, template_name: String, template_type: String, template_xml: String, terminal_type: String)

  final case class CreateProductCreateData(acquirer_id: java.lang.Long, response_code: java.lang.Long, response_message: String, template_name: String, template_type: String, template_xml: String, terminal_type: String)

  final case class DeactivateTerminal(corporate_uuid: String, deactivation_reason: String, package_order_uuid: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long)

  final case class DeactivateTerminalCreateData(corporate_uuid: String, deactivation_reason: String, package_order_uuid: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long)

  final case class DigitalServicesApi(clearing_date_from: String, clearing_date_to: String, response_code: java.lang.Long, response_message: String, tx_count: java.lang.Long, tx_id_end: String, tx_id_start: String, tx_seq_no_end: java.lang.Long, tx_seq_no_start: java.lang.Long, tx_total: java.lang.Long)

  final case class DigitalServicesApiLoadMatch(clearing_date_from: String, clearing_date_to: String, response_code: java.lang.Long, response_message: String, tx_count: java.lang.Long, tx_id_end: String, tx_id_start: String, tx_seq_no_end: java.lang.Long, tx_seq_no_start: java.lang.Long, tx_total: java.lang.Long)

  final case class DigitalServicesApiCreateData(file_id: String)

  final case class EcDataEcom(ecom_data: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long, transaction_id: String, transaction_type: String)

  final case class EcDataEcomCreateData(ecom_data: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long, transaction_id: String, transaction_type: String)

  final case class EcomParameter(ecom_pass: String, ecom_skey: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long)

  final case class EcomParameterCreateData(ecom_pass: String, ecom_skey: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long)

  final case class EcrData(ecr_data: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long, transaction_id: String, transaction_type: String)

  final case class EcrDataCreateData(ecr_data: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long, transaction_id: String, transaction_type: String)

  final case class EmvData(emv_data: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long, transaction_id: String, transaction_type: String)

  final case class EmvDataCreateData(emv_data: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long, transaction_id: String, transaction_type: String)

  final case class EnableAcquiring(account_no: java.lang.Long, additional_data: java.util.Map[String, Object], corporate_uuid: String, currency: String, merchant_category_code: java.lang.Long, package_order_uuid: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, sorting_code: java.lang.Long, template_name: String, terminal_id: java.util.List[Object], terminal_id_acq: String, vu_nummer: String)

  final case class EnableAcquiringCreateData(account_no: java.lang.Long, additional_data: java.util.Map[String, Object], corporate_uuid: String, currency: String, merchant_category_code: java.lang.Long, package_order_uuid: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, sorting_code: java.lang.Long, template_name: String, terminal_id: java.util.List[Object], terminal_id_acq: String, vu_nummer: String)

  final case class GetMerchantContractNumber(merchant_contract_number: String, response_code: java.lang.Long, response_message: String)

  final case class GetMerchantContractNumberCreateData(merchant_contract_number: String, response_code: java.lang.Long, response_message: String)

  final case class GetTemplateXml(response_code: java.lang.Long, response_message: String, template_name: String)

  final case class GetTemplateXmlCreateData(response_code: java.lang.Long, response_message: String, template_name: String)

  final case class IntroduceMandator(mandator_name: String, response_code: java.lang.Long, response_message: String)

  final case class IntroduceMandatorCreateData(mandator_name: String, response_code: java.lang.Long, response_message: String)

  final case class IntroducePackage(response_code: java.lang.Long, response_message: String, terminal_template_description: String)

  final case class IntroducePackageCreateData(response_code: java.lang.Long, response_message: String, terminal_template_description: String)

  final case class KeepAlive(hwserialno: String, ka_date_time_from: String, ka_date_time_to: String, keep_alive_data: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, terminal_date_time_from: String, terminal_date_time_to: String, terminal_id: java.lang.Long)

  final case class KeepAliveCreateData(hwserialno: String, ka_date_time_from: String, ka_date_time_to: String, keep_alive_data: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, terminal_date_time_from: String, terminal_date_time_to: String, terminal_id: java.lang.Long)

  final case class ListTerminal(corporate_uuid: java.util.List[Object], filter: java.util.Map[String, Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, terminal: java.util.List[Object])

  final case class ListTerminalCreateData(corporate_uuid: java.util.List[Object], filter: java.util.Map[String, Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, terminal: java.util.List[Object])

  final case class MandatorClearingExport(clearing_date_from: String, clearing_date_to: String, pagination: java.util.Map[String, Object], record: java.util.List[Object], response_code: java.lang.Long, response_message: String)

  final case class MandatorClearingExportCreateData(clearing_date_from: String, clearing_date_to: String, pagination: java.util.Map[String, Object], record: java.util.List[Object], response_code: java.lang.Long, response_message: String)

  final case class MandatorClearingExportDownload(clearing_date_from: String, clearing_date_to: String, file_id: String, filename_template: String, response_code: java.lang.Long, response_message: String, status: String)

  final case class MandatorClearingExportDownloadLoadMatch(id: String)

  final case class MandatorClearingExportDownloadCreateData(clearing_date_from: String, clearing_date_to: String, file_id: String, filename_template: String, response_code: java.lang.Long, response_message: String, status: String)

  final case class MandatorClearingExportSummary(clearing_date_from: String, clearing_date_to: String, record: java.util.List[Object], response_code: java.lang.Long, response_message: String)

  final case class MandatorClearingExportSummaryCreateData(clearing_date_from: String, clearing_date_to: String, record: java.util.List[Object], response_code: java.lang.Long, response_message: String)

  final case class MerchantPortalServicesApi(authorization_code: String, card_brand: String, clearing_amount_from: String, clearing_amount_to: String, clearing_currency: String, clearing_status: String, corporate_uuid: String, order_by_transaction_date: String, pagination: java.util.Map[String, Object], receipt_number: String, referenced_transaction_id: String, retrieval_reference_number: String, source_id: java.lang.Long, tecsengine_response_code_from: String, tecsengine_response_code_to: String, terminal_id: java.lang.Long, trace_number: String, transaction_amount_from: String, transaction_amount_to: String, transaction_date_from: String, transaction_date_to: String, transaction_id: String, transaction_type: String, wallet: String)

  final case class MerchantPortalServicesApiCreateData(authorization_code: String, card_brand: String, clearing_amount_from: String, clearing_amount_to: String, clearing_currency: String, clearing_status: String, corporate_uuid: String, order_by_transaction_date: String, pagination: java.util.Map[String, Object], receipt_number: String, referenced_transaction_id: String, retrieval_reference_number: String, source_id: java.lang.Long, tecsengine_response_code_from: String, tecsengine_response_code_to: String, terminal_id: java.lang.Long, trace_number: String, transaction_amount_from: String, transaction_amount_to: String, transaction_date_from: String, transaction_date_to: String, transaction_id: String, transaction_type: String, wallet: String)

  final case class MoveTid(productorderuuid: java.util.List[Object], response_code: java.lang.Long, response_message: String, target_packageorderuuid: String, target_productorderuuid: String)

  final case class MoveTidCreateData(productorderuuid: java.util.List[Object], response_code: java.lang.Long, response_message: String, target_packageorderuuid: String, target_productorderuuid: String)

  final case class PaymentManual(acquirer_name: String, amount: java.lang.Long, authorization_number: String, card_number: String, card_type: String, currency: String, cvc: String, date_time_tx: String, exp_date: String, merchant_id: String, original_transaction_id: String, password: String, response_code: String, response_message: String, terminal_id: String, transaction_id: String, txtype: String)

  final case class PaymentManualCreateData(acquirer_name: String, amount: java.lang.Long, authorization_number: String, card_number: String, card_type: String, currency: String, cvc: String, date_time_tx: String, exp_date: String, merchant_id: String, original_transaction_id: String, password: String, response_code: String, response_message: String, terminal_id: String, transaction_id: String, txtype: String)

  final case class PaymentSred(acquirer_name: String, amount: java.lang.Long, authorization_number: String, card_type: String, currency: String, date_time_tx: String, device_payload: String, merchant_id: String, original_transaction_id: String, password: String, response_code: String, response_message: String, sred: java.util.Map[String, Object], terminal_id: String, transaction_id: String, txtype: String)

  final case class PaymentSredCreateData(acquirer_name: String, amount: java.lang.Long, authorization_number: String, card_type: String, currency: String, date_time_tx: String, device_payload: String, merchant_id: String, original_transaction_id: String, password: String, response_code: String, response_message: String, sred: java.util.Map[String, Object], terminal_id: String, transaction_id: String, txtype: String)

  final case class PreAuthTransactionCompletion(acquirer_id: String, acquirer_name: String, actual_bonus_point: String, amount: java.lang.Long, authorization_code: String, balance_amount: String, card_brand: String, card_number: String, card_number_reference: String, client_id: java.lang.Long, currency: String, cvc: String, ec_data: String, ecr_data: String, emv_data: String, exchange_fee: java.lang.Long, exchange_rate: String, language_code: String, merchant_address: String, merchant_name: String, merchant_number: String, message_type: String, original_trace_number: java.lang.Long, original_transaction_id: String, password: String, payment_reason: String, receipt_footer: String, receipt_header: String, receipt_layout: java.lang.Long, receipt_number: String, response_code: java.lang.Long, response_message: String, serial_number: String, svc: String, terminal_id: java.lang.Long, terminal_location: String, trace_number: java.lang.Long, transaction_date: String, transaction_id: String, transaction_type: String, tx_type: String, user_data: String)

  final case class PreAuthTransactionCompletionCreateData(acquirer_id: String, acquirer_name: String, actual_bonus_point: String, amount: java.lang.Long, authorization_code: String, balance_amount: String, card_brand: String, card_number: String, card_number_reference: String, client_id: java.lang.Long, currency: String, cvc: String, ec_data: String, ecr_data: String, emv_data: String, exchange_fee: java.lang.Long, exchange_rate: String, language_code: String, merchant_address: String, merchant_name: String, merchant_number: String, message_type: String, original_trace_number: java.lang.Long, original_transaction_id: String, password: String, payment_reason: String, receipt_footer: String, receipt_header: String, receipt_layout: java.lang.Long, receipt_number: String, response_code: java.lang.Long, response_message: String, serial_number: String, svc: String, terminal_id: java.lang.Long, terminal_location: String, trace_number: java.lang.Long, transaction_date: String, transaction_id: String, transaction_type: String, tx_type: String, user_data: String)

  final case class ReactivateTerminal(corporate_uuid: String, package_order_uuid: String, product_order_uuid: String, reactivation_reason: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long)

  final case class ReactivateTerminalCreateData(corporate_uuid: String, package_order_uuid: String, product_order_uuid: String, reactivation_reason: String, response_code: java.lang.Long, response_message: String, terminal_id: java.lang.Long)

  final case class RefundTransaction(acquirer_id: String, acquirer_name: String, actual_bonus_point: String, amount: java.lang.Long, authorization_code: String, balance_amount: String, card_brand: String, card_number: String, client_id: java.lang.Long, currency: String, cvc: String, ec_data: String, ecr_data: String, emv_data: String, exchange_fee: java.lang.Long, exchange_rate: String, language_code: String, merchant_address: String, merchant_name: String, merchant_number: String, message_type: String, original_trace_number: java.lang.Long, original_transaction_id: String, password: String, payment_reason: String, receipt_footer: String, receipt_header: String, receipt_layout: java.lang.Long, receipt_number: String, response_code: java.lang.Long, response_message: String, serial_number: String, svc: String, terminal_id: java.lang.Long, terminal_location: String, trace_number: java.lang.Long, transaction_date: String, transaction_id: String, tx_type: String, user_data: String)

  final case class RefundTransactionCreateData(acquirer_id: String, acquirer_name: String, actual_bonus_point: String, amount: java.lang.Long, authorization_code: String, balance_amount: String, card_brand: String, card_number: String, client_id: java.lang.Long, currency: String, cvc: String, ec_data: String, ecr_data: String, emv_data: String, exchange_fee: java.lang.Long, exchange_rate: String, language_code: String, merchant_address: String, merchant_name: String, merchant_number: String, message_type: String, original_trace_number: java.lang.Long, original_transaction_id: String, password: String, payment_reason: String, receipt_footer: String, receipt_header: String, receipt_layout: java.lang.Long, receipt_number: String, response_code: java.lang.Long, response_message: String, serial_number: String, svc: String, terminal_id: java.lang.Long, terminal_location: String, trace_number: java.lang.Long, transaction_date: String, transaction_id: String, tx_type: String, user_data: String)

  final case class RegisterTecsCompany(corporate_uuid: String, package_order_uuid: String, partner_id: java.lang.Long, partner_name: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, template_name: String)

  final case class RegisterTecsCompanyCreateData(corporate_uuid: String, package_order_uuid: String, partner_id: java.lang.Long, partner_name: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, template_name: String)

  final case class RegisterTerminal(additional_data: java.util.Map[String, Object], corporate_uuid: String, package_order_uuid: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, tecs_web_secret_key: String, template_name: String, terminal_country_code: String, terminal_id: java.lang.Long, terminal_id_acq: String, terminal_language_code: String, terminal_location: String, terminal_serial_number: String, token_io_alia: String, token_io_iban: String, token_io_member_id: String, web_shop_url: String)

  final case class RegisterTerminalCreateData(additional_data: java.util.Map[String, Object], corporate_uuid: String, package_order_uuid: String, product_order_uuid: String, response_code: java.lang.Long, response_message: String, tecs_web_secret_key: String, template_name: String, terminal_country_code: String, terminal_id: java.lang.Long, terminal_id_acq: String, terminal_language_code: String, terminal_location: String, terminal_serial_number: String, token_io_alia: String, token_io_iban: String, token_io_member_id: String, web_shop_url: String)

  final case class ReportData(card_brand_report_data: java.util.List[Object], clearing_date_from: String, clearing_date_to: String, corporate_id: String, currency: String, response_code: java.lang.Long, response_message: String, sum_over_credit_tx: java.util.Map[String, Object], sum_over_debit_tx: java.util.Map[String, Object], terminal_id: java.lang.Long)

  final case class ReportDataCreateData(card_brand_report_data: java.util.List[Object], clearing_date_from: String, clearing_date_to: String, corporate_id: String, currency: String, response_code: java.lang.Long, response_message: String, sum_over_credit_tx: java.util.Map[String, Object], sum_over_debit_tx: java.util.Map[String, Object], terminal_id: java.lang.Long)

  final case class StatusTransaction(acquirer_name: String, acquirer_terminal_id: String, amount: java.lang.Long, application_cryptogram: String, authorization_code: Object, authorization_date: String, card_brand: String, card_entry: String, card_expiration: String, card_number: String, clearing_amount: java.lang.Long, clearing_batch_id: String, clearing_currency: String, clearing_date: String, clearing_processed_date: String, clearing_status: String, client_id: java.lang.Long, currency: String, cvm: String, ecr_data: String, emv_application_id: String, emv_application_label: String, merchant_name: String, merchant_number: String, original_client_id: String, original_terminal_id: java.lang.Long, original_transaction_id: String, payment_reason: String, receipt_number: String, response_code: java.lang.Long, response_code_from_a: String, response_message: String, retrieval_reference_number: String, service_code: String, settlement_status: String, source_id: java.lang.Long, tecsengine_response_code: java.lang.Long, tecsengine_response_text: String, terminal_end_of_day_date: String, terminal_id: java.lang.Long, terminal_location: String, tip_amount: java.lang.Long, trace_number: java.lang.Long, transaction_clearing_date: String, transaction_date: String, transaction_id: String, transaction_seq_number: java.lang.Long, transaction_server_date: String, transaction_source: String, transaction_type: String)

  final case class StatusTransactionCreateData(acquirer_name: String, acquirer_terminal_id: String, amount: java.lang.Long, application_cryptogram: String, authorization_code: Object, authorization_date: String, card_brand: String, card_entry: String, card_expiration: String, card_number: String, clearing_amount: java.lang.Long, clearing_batch_id: String, clearing_currency: String, clearing_date: String, clearing_processed_date: String, clearing_status: String, client_id: java.lang.Long, currency: String, cvm: String, ecr_data: String, emv_application_id: String, emv_application_label: String, merchant_name: String, merchant_number: String, original_client_id: String, original_terminal_id: java.lang.Long, original_transaction_id: String, payment_reason: String, receipt_number: String, response_code: java.lang.Long, response_code_from_a: String, response_message: String, retrieval_reference_number: String, service_code: String, settlement_status: String, source_id: java.lang.Long, tecsengine_response_code: java.lang.Long, tecsengine_response_text: String, terminal_end_of_day_date: String, terminal_id: java.lang.Long, terminal_location: String, tip_amount: java.lang.Long, trace_number: java.lang.Long, transaction_clearing_date: String, transaction_date: String, transaction_id: String, transaction_seq_number: java.lang.Long, transaction_server_date: String, transaction_source: String, transaction_type: String)

  final case class StoreTerminalParameter(acq_tab_nexo: java.util.Map[String, Object], config_version: String, response_code: java.lang.Long, response_message: String, serial_number: String, tid_sent: String)

  final case class StoreTerminalParameterCreateData(acq_tab_nexo: java.util.Map[String, Object], config_version: String, response_code: java.lang.Long, response_message: String, serial_number: String, tid_sent: String)

  final case class TerminalId(device_serial_number: java.util.List[Object], duplicate_terminal_id: java.util.List[Object], response_code: java.lang.Long, response_message: String, terminal: java.util.List[Object])

  final case class TerminalIdCreateData(device_serial_number: java.util.List[Object], duplicate_terminal_id: java.util.List[Object], response_code: java.lang.Long, response_message: String, terminal: java.util.List[Object])

  final case class TransactionHistory(authorization_code: String, card_brand: String, clearing_amount_from: String, clearing_amount_to: String, clearing_currency: String, clearing_status: String, corporate_uuid: String, order_by_transaction_date: String, pagination: java.util.Map[String, Object], payment_token_public_id: String, receipt_number: String, referenced_transaction_id: String, response_code: java.lang.Long, response_message: String, retrieval_reference_number: String, source_id: java.lang.Long, tecsengine_response_code_from: String, tecsengine_response_code_to: String, terminal_id: java.lang.Long, trace_number: String, transaction_amount_from: String, transaction_amount_to: String, transaction_date_from: String, transaction_date_to: String, transaction_history: java.util.List[Object], transaction_id: String, transaction_type: String, wallet: String)

  final case class TransactionHistoryCreateData(authorization_code: String, card_brand: String, clearing_amount_from: String, clearing_amount_to: String, clearing_currency: String, clearing_status: String, corporate_uuid: String, order_by_transaction_date: String, pagination: java.util.Map[String, Object], payment_token_public_id: String, receipt_number: String, referenced_transaction_id: String, response_code: java.lang.Long, response_message: String, retrieval_reference_number: String, source_id: java.lang.Long, tecsengine_response_code_from: String, tecsengine_response_code_to: String, terminal_id: java.lang.Long, trace_number: String, transaction_amount_from: String, transaction_amount_to: String, transaction_date_from: String, transaction_date_to: String, transaction_history: java.util.List[Object], transaction_id: String, transaction_type: String, wallet: String)

  final case class TransactionsCount(period: String, response_code: java.lang.Long, response_message: String, transaction_date_from: String, transaction_date_to: String, transactions_count: java.util.List[Object])

  final case class TransactionsCountCreateData(period: String, response_code: java.lang.Long, response_message: String, transaction_date_from: String, transaction_date_to: String, transactions_count: java.util.List[Object])

  final case class TransactionsCountCardBrand(period: String, response_code: java.lang.Long, response_message: String, transaction_date_from: String, transaction_date_to: String, transactions_count: java.util.List[Object])

  final case class TransactionsCountCardBrandCreateData(period: String, response_code: java.lang.Long, response_message: String, transaction_date_from: String, transaction_date_to: String, transactions_count: java.util.List[Object])

  final case class TransactionsTurnover(period: String, response_code: java.lang.Long, response_message: String, transaction_date_from: String, transaction_date_to: String, turnover: java.util.List[Object])

  final case class TransactionsTurnoverCreateData(period: String, response_code: java.lang.Long, response_message: String, transaction_date_from: String, transaction_date_to: String, turnover: java.util.List[Object])

  final case class UpdateMerchant(city: String, corporate_uuid: String, country: String, merchant_category_code: String, name: String, response_code: java.lang.Long, response_message: String, state: String, street: String, vu_nummer: String, zipcode: String)

  final case class UpdateMerchantCreateData(city: String, corporate_uuid: String, country: String, merchant_category_code: String, name: String, response_code: java.lang.Long, response_message: String, state: String, street: String, vu_nummer: String, zipcode: String)

  final case class UpdateTemplateXml(response_code: java.lang.Long, response_message: String, template_name: String, template_xml: String)

  final case class UpdateTemplateXmlCreateData(response_code: java.lang.Long, response_message: String, template_name: String, template_xml: String)

  final case class Version(app_name: String, build_date: String, version: String)

  final case class VersionLoadMatch(app_name: String, build_date: String, version: String)

}
