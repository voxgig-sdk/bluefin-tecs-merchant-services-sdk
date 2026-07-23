// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface CancelTransaction {
  acquirer_id?: string
  acquirer_name?: string
  actual_bonus_point?: string
  amount?: number
  authorization_code?: string
  balance_amount?: string
  card_brand?: string
  card_number?: string
  client_id: number
  currency: string
  cvc?: string
  ec_data?: string
  ecr_data?: string
  emv_data?: string
  exchange_fee?: number
  exchange_rate?: string
  language_code?: string
  merchant_address?: string
  merchant_name?: string
  merchant_number?: string
  message_type?: string
  original_trace_number?: number
  original_transaction_id?: string
  password?: string
  payment_reason?: string
  receipt_footer?: string
  receipt_header?: string
  receipt_layout?: number
  receipt_number: string
  response_code?: number
  response_message?: string
  serial_number?: string
  svc?: string
  terminal_id: number
  terminal_location?: string
  trace_number?: number
  transaction_date?: string
  transaction_id?: string
  tx_type?: string
  user_data?: string
}

export interface CancelTransactionCreateData {
  acquirer_id?: string
  acquirer_name?: string
  actual_bonus_point?: string
  amount?: number
  authorization_code?: string
  balance_amount?: string
  card_brand?: string
  card_number?: string
  client_id: number
  currency: string
  cvc?: string
  ec_data?: string
  ecr_data?: string
  emv_data?: string
  exchange_fee?: number
  exchange_rate?: string
  language_code?: string
  merchant_address?: string
  merchant_name?: string
  merchant_number?: string
  message_type?: string
  original_trace_number?: number
  original_transaction_id?: string
  password?: string
  payment_reason?: string
  receipt_footer?: string
  receipt_header?: string
  receipt_layout?: number
  receipt_number: string
  response_code?: number
  response_message?: string
  serial_number?: string
  svc?: string
  terminal_id: number
  terminal_location?: string
  trace_number?: number
  transaction_date?: string
  transaction_id?: string
  tx_type?: string
  user_data?: string
}

export interface CheckCardBlackListed {
  card_no?: string
  response_code?: number
  response_message?: string
}

export interface CheckCardBlackListedCreateData {
  card_no?: string
  response_code?: number
  response_message?: string
}

export interface CreateProduct {
  acquirer_id?: number
  response_code?: number
  response_message?: string
  template_name: string
  template_type: string
  template_xml: string
  terminal_type: string
}

export interface CreateProductCreateData {
  acquirer_id?: number
  response_code?: number
  response_message?: string
  template_name: string
  template_type: string
  template_xml: string
  terminal_type: string
}

export interface DeactivateTerminal {
  corporate_uuid?: string
  deactivation_reason: string
  package_order_uuid?: string
  product_order_uuid?: string
  response_code?: number
  response_message?: string
  terminal_id: number
}

export interface DeactivateTerminalCreateData {
  corporate_uuid?: string
  deactivation_reason: string
  package_order_uuid?: string
  product_order_uuid?: string
  response_code?: number
  response_message?: string
  terminal_id: number
}

export interface DigitalServicesApi {
  clearing_date_from: string
  clearing_date_to: string
  response_code?: number
  response_message?: string
  tx_count?: number
  tx_id_end?: string
  tx_id_start?: string
  tx_seq_no_end?: number
  tx_seq_no_start?: number
  tx_total?: number
}

export interface DigitalServicesApiLoadMatch {
  clearing_date_from?: string
  clearing_date_to?: string
  response_code?: number
  response_message?: string
  tx_count?: number
  tx_id_end?: string
  tx_id_start?: string
  tx_seq_no_end?: number
  tx_seq_no_start?: number
  tx_total?: number
}

export interface DigitalServicesApiCreateData {
  file_id?: string
}

export interface EcDataEcom {
  ecom_data?: string
  response_code?: number
  response_message?: string
  terminal_id: number
  transaction_id: string
  transaction_type: string
}

export interface EcDataEcomCreateData {
  ecom_data?: string
  response_code?: number
  response_message?: string
  terminal_id: number
  transaction_id: string
  transaction_type: string
}

export interface EcomParameter {
  ecom_pass?: string
  ecom_skey?: string
  response_code?: number
  response_message?: string
  terminal_id: number
}

export interface EcomParameterCreateData {
  ecom_pass?: string
  ecom_skey?: string
  response_code?: number
  response_message?: string
  terminal_id: number
}

export interface EcrData {
  ecr_data?: string
  response_code?: number
  response_message?: string
  terminal_id: number
  transaction_id: string
  transaction_type: string
}

export interface EcrDataCreateData {
  ecr_data?: string
  response_code?: number
  response_message?: string
  terminal_id: number
  transaction_id: string
  transaction_type: string
}

export interface EmvData {
  emv_data?: string
  response_code?: number
  response_message?: string
  terminal_id: number
  transaction_id: string
  transaction_type: string
}

export interface EmvDataCreateData {
  emv_data?: string
  response_code?: number
  response_message?: string
  terminal_id: number
  transaction_id: string
  transaction_type: string
}

export interface EnableAcquiring {
  account_no?: number
  additional_data?: Record<string, any>
  corporate_uuid: string
  currency: string
  merchant_category_code: number
  package_order_uuid: string
  product_order_uuid: string
  response_code?: number
  response_message?: string
  sorting_code?: number
  template_name: string
  terminal_id?: any[]
  terminal_id_acq?: string
  vu_nummer?: string
}

export interface EnableAcquiringCreateData {
  account_no?: number
  additional_data?: Record<string, any>
  corporate_uuid: string
  currency: string
  merchant_category_code: number
  package_order_uuid: string
  product_order_uuid: string
  response_code?: number
  response_message?: string
  sorting_code?: number
  template_name: string
  terminal_id?: any[]
  terminal_id_acq?: string
  vu_nummer?: string
}

export interface GetMerchantContractNumber {
  merchant_contract_number: string
  response_code?: number
  response_message?: string
}

export interface GetMerchantContractNumberCreateData {
  merchant_contract_number: string
  response_code?: number
  response_message?: string
}

export interface GetTemplateXml {
  response_code?: number
  response_message?: string
  template_name: string
}

export interface GetTemplateXmlCreateData {
  response_code?: number
  response_message?: string
  template_name: string
}

export interface IntroduceMandator {
  mandator_name: string
  response_code?: number
  response_message?: string
}

export interface IntroduceMandatorCreateData {
  mandator_name: string
  response_code?: number
  response_message?: string
}

export interface IntroducePackage {
  response_code?: number
  response_message?: string
  terminal_template_description: string
}

export interface IntroducePackageCreateData {
  response_code?: number
  response_message?: string
  terminal_template_description: string
}

export interface KeepAlive {
  hwserialno?: string
  ka_date_time_from?: string
  ka_date_time_to?: string
  keep_alive_data?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  terminal_date_time_from?: string
  terminal_date_time_to?: string
  terminal_id?: number
}

export interface KeepAliveCreateData {
  hwserialno?: string
  ka_date_time_from?: string
  ka_date_time_to?: string
  keep_alive_data?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  terminal_date_time_from?: string
  terminal_date_time_to?: string
  terminal_id?: number
}

export interface ListTerminal {
  corporate_uuid?: any[]
  filter?: Record<string, any>
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  terminal?: any[]
}

export interface ListTerminalCreateData {
  corporate_uuid?: any[]
  filter?: Record<string, any>
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  terminal?: any[]
}

export interface MandatorClearingExport {
  clearing_date_from: string
  clearing_date_to: string
  pagination?: Record<string, any>
  record?: any[]
  response_code?: number
  response_message?: string
}

export interface MandatorClearingExportCreateData {
  clearing_date_from: string
  clearing_date_to: string
  pagination?: Record<string, any>
  record?: any[]
  response_code?: number
  response_message?: string
}

export interface MandatorClearingExportDownload {
  clearing_date_from: string
  clearing_date_to: string
  file_id?: string
  filename_template?: string
  response_code?: number
  response_message?: string
  status?: string
}

export interface MandatorClearingExportDownloadLoadMatch {
  id: string
}

export interface MandatorClearingExportDownloadCreateData {
  clearing_date_from: string
  clearing_date_to: string
  file_id?: string
  filename_template?: string
  response_code?: number
  response_message?: string
  status?: string
}

export interface MandatorClearingExportSummary {
  clearing_date_from: string
  clearing_date_to: string
  record?: any[]
  response_code?: number
  response_message?: string
}

export interface MandatorClearingExportSummaryCreateData {
  clearing_date_from: string
  clearing_date_to: string
  record?: any[]
  response_code?: number
  response_message?: string
}

export interface MerchantPortalServicesApi {
  "3_d_secure"?: string
  authorization_code?: string
  card_brand?: string
  clearing_amount_from?: string
  clearing_amount_to?: string
  clearing_currency?: string
  clearing_status?: string
  corporate_uuid?: string
  order_by_transaction_date?: string
  pagination?: Record<string, any>
  receipt_number?: string
  referenced_transaction_id?: string
  retrieval_reference_number?: string
  source_id?: number
  tecsengine_response_code_from?: string
  tecsengine_response_code_to?: string
  terminal_id?: number
  trace_number?: string
  transaction_amount_from?: string
  transaction_amount_to?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transaction_id?: string
  transaction_type?: string
  wallet?: string
}

export interface MerchantPortalServicesApiCreateData {
  "3_d_secure"?: string
  authorization_code?: string
  card_brand?: string
  clearing_amount_from?: string
  clearing_amount_to?: string
  clearing_currency?: string
  clearing_status?: string
  corporate_uuid?: string
  order_by_transaction_date?: string
  pagination?: Record<string, any>
  receipt_number?: string
  referenced_transaction_id?: string
  retrieval_reference_number?: string
  source_id?: number
  tecsengine_response_code_from?: string
  tecsengine_response_code_to?: string
  terminal_id?: number
  trace_number?: string
  transaction_amount_from?: string
  transaction_amount_to?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transaction_id?: string
  transaction_type?: string
  wallet?: string
}

export interface MoveTid {
  productorderuuid: any[]
  response_code?: number
  response_message?: string
  target_packageorderuuid?: string
  target_productorderuuid?: string
}

export interface MoveTidCreateData {
  productorderuuid: any[]
  response_code?: number
  response_message?: string
  target_packageorderuuid?: string
  target_productorderuuid?: string
}

export interface PaymentManual {
  acquirer_name?: string
  amount: number
  authorization_number?: string
  card_number: string
  card_type?: string
  currency: string
  cvc?: string
  date_time_tx?: string
  exp_date: string
  merchant_id?: string
  original_transaction_id?: string
  password?: string
  response_code?: string
  response_message?: string
  terminal_id?: string
  transaction_id?: string
  txtype: string
}

export interface PaymentManualCreateData {
  acquirer_name?: string
  amount: number
  authorization_number?: string
  card_number: string
  card_type?: string
  currency: string
  cvc?: string
  date_time_tx?: string
  exp_date: string
  merchant_id?: string
  original_transaction_id?: string
  password?: string
  response_code?: string
  response_message?: string
  terminal_id?: string
  transaction_id?: string
  txtype: string
}

export interface PaymentSred {
  acquirer_name?: string
  amount: number
  authorization_number?: string
  card_type?: string
  currency: string
  date_time_tx?: string
  device_payload: string
  merchant_id?: string
  original_transaction_id?: string
  password?: string
  response_code?: string
  response_message?: string
  sred?: Record<string, any>
  terminal_id?: string
  transaction_id?: string
  txtype: string
}

export interface PaymentSredCreateData {
  acquirer_name?: string
  amount: number
  authorization_number?: string
  card_type?: string
  currency: string
  date_time_tx?: string
  device_payload: string
  merchant_id?: string
  original_transaction_id?: string
  password?: string
  response_code?: string
  response_message?: string
  sred?: Record<string, any>
  terminal_id?: string
  transaction_id?: string
  txtype: string
}

export interface PreAuthTransactionCompletion {
  acquirer_id?: string
  acquirer_name?: string
  actual_bonus_point?: string
  amount?: number
  authorization_code?: string
  balance_amount?: string
  card_brand?: string
  card_number?: string
  card_number_reference: string
  client_id: number
  currency: string
  cvc?: string
  ec_data?: string
  ecr_data?: string
  emv_data?: string
  exchange_fee?: number
  exchange_rate?: string
  language_code?: string
  merchant_address?: string
  merchant_name?: string
  merchant_number?: string
  message_type?: string
  original_trace_number?: number
  original_transaction_id?: string
  password?: string
  payment_reason?: string
  receipt_footer?: string
  receipt_header?: string
  receipt_layout?: number
  receipt_number: string
  response_code?: number
  response_message?: string
  serial_number?: string
  svc?: string
  terminal_id: number
  terminal_location?: string
  trace_number?: number
  transaction_date?: string
  transaction_id?: string
  transaction_type: string
  tx_type?: string
  user_data?: string
}

export interface PreAuthTransactionCompletionCreateData {
  acquirer_id?: string
  acquirer_name?: string
  actual_bonus_point?: string
  amount?: number
  authorization_code?: string
  balance_amount?: string
  card_brand?: string
  card_number?: string
  card_number_reference: string
  client_id: number
  currency: string
  cvc?: string
  ec_data?: string
  ecr_data?: string
  emv_data?: string
  exchange_fee?: number
  exchange_rate?: string
  language_code?: string
  merchant_address?: string
  merchant_name?: string
  merchant_number?: string
  message_type?: string
  original_trace_number?: number
  original_transaction_id?: string
  password?: string
  payment_reason?: string
  receipt_footer?: string
  receipt_header?: string
  receipt_layout?: number
  receipt_number: string
  response_code?: number
  response_message?: string
  serial_number?: string
  svc?: string
  terminal_id: number
  terminal_location?: string
  trace_number?: number
  transaction_date?: string
  transaction_id?: string
  transaction_type: string
  tx_type?: string
  user_data?: string
}

export interface ReactivateTerminal {
  corporate_uuid?: string
  package_order_uuid?: string
  product_order_uuid?: string
  reactivation_reason: string
  response_code?: number
  response_message?: string
  terminal_id: number
}

export interface ReactivateTerminalCreateData {
  corporate_uuid?: string
  package_order_uuid?: string
  product_order_uuid?: string
  reactivation_reason: string
  response_code?: number
  response_message?: string
  terminal_id: number
}

export interface RefundTransaction {
  acquirer_id?: string
  acquirer_name?: string
  actual_bonus_point?: string
  amount?: number
  authorization_code?: string
  balance_amount?: string
  card_brand?: string
  card_number?: string
  client_id: number
  currency: string
  cvc?: string
  ec_data?: string
  ecr_data?: string
  emv_data?: string
  exchange_fee?: number
  exchange_rate?: string
  language_code?: string
  merchant_address?: string
  merchant_name?: string
  merchant_number?: string
  message_type?: string
  original_trace_number?: number
  original_transaction_id?: string
  password?: string
  payment_reason?: string
  receipt_footer?: string
  receipt_header?: string
  receipt_layout?: number
  receipt_number: string
  response_code?: number
  response_message?: string
  serial_number?: string
  svc?: string
  terminal_id: number
  terminal_location?: string
  trace_number?: number
  transaction_date?: string
  transaction_id?: string
  tx_type?: string
  user_data?: string
}

export interface RefundTransactionCreateData {
  acquirer_id?: string
  acquirer_name?: string
  actual_bonus_point?: string
  amount?: number
  authorization_code?: string
  balance_amount?: string
  card_brand?: string
  card_number?: string
  client_id: number
  currency: string
  cvc?: string
  ec_data?: string
  ecr_data?: string
  emv_data?: string
  exchange_fee?: number
  exchange_rate?: string
  language_code?: string
  merchant_address?: string
  merchant_name?: string
  merchant_number?: string
  message_type?: string
  original_trace_number?: number
  original_transaction_id?: string
  password?: string
  payment_reason?: string
  receipt_footer?: string
  receipt_header?: string
  receipt_layout?: number
  receipt_number: string
  response_code?: number
  response_message?: string
  serial_number?: string
  svc?: string
  terminal_id: number
  terminal_location?: string
  trace_number?: number
  transaction_date?: string
  transaction_id?: string
  tx_type?: string
  user_data?: string
}

export interface RegisterTecsCompany {
  corporate_uuid: string
  package_order_uuid: string
  partner_id?: number
  partner_name?: string
  product_order_uuid: string
  response_code?: number
  response_message?: string
  template_name: string
}

export interface RegisterTecsCompanyCreateData {
  corporate_uuid: string
  package_order_uuid: string
  partner_id?: number
  partner_name?: string
  product_order_uuid: string
  response_code?: number
  response_message?: string
  template_name: string
}

export interface RegisterTerminal {
  additional_data?: Record<string, any>
  corporate_uuid: string
  package_order_uuid: string
  product_order_uuid: string
  response_code?: number
  response_message?: string
  tecs_web_secret_key?: string
  template_name: string
  terminal_country_code: string
  terminal_id?: number
  terminal_id_acq?: string
  terminal_language_code: string
  terminal_location: string
  terminal_serial_number?: string
  token_io_alia?: string
  token_io_iban?: string
  token_io_member_id?: string
  web_shop_url?: string
}

export interface RegisterTerminalCreateData {
  additional_data?: Record<string, any>
  corporate_uuid: string
  package_order_uuid: string
  product_order_uuid: string
  response_code?: number
  response_message?: string
  tecs_web_secret_key?: string
  template_name: string
  terminal_country_code: string
  terminal_id?: number
  terminal_id_acq?: string
  terminal_language_code: string
  terminal_location: string
  terminal_serial_number?: string
  token_io_alia?: string
  token_io_iban?: string
  token_io_member_id?: string
  web_shop_url?: string
}

export interface ReportData {
  card_brand_report_data?: any[]
  clearing_date_from: string
  clearing_date_to: string
  corporate_id: string
  currency: string
  response_code?: number
  response_message?: string
  sum_over_credit_tx?: Record<string, any>
  sum_over_debit_tx?: Record<string, any>
  terminal_id?: number
}

export interface ReportDataCreateData {
  card_brand_report_data?: any[]
  clearing_date_from: string
  clearing_date_to: string
  corporate_id: string
  currency: string
  response_code?: number
  response_message?: string
  sum_over_credit_tx?: Record<string, any>
  sum_over_debit_tx?: Record<string, any>
  terminal_id?: number
}

export interface StatusTransaction {
  acquirer_name?: string
  acquirer_terminal_id?: string
  amount?: number
  application_cryptogram?: string
  authorization_code?: string | null
  authorization_date?: string
  card_brand?: string
  card_entry?: string
  card_expiration?: string
  card_number?: string
  clearing_amount?: number
  clearing_batch_id?: string
  clearing_currency?: string
  clearing_date?: string
  clearing_processed_date?: string
  clearing_status?: string
  client_id?: number
  currency?: string
  cvm?: string
  ecr_data?: string
  emv_application_id?: string
  emv_application_label?: string
  merchant_name?: string
  merchant_number?: string
  original_client_id?: string
  original_terminal_id?: number
  original_transaction_id?: string
  payment_reason?: string
  receipt_number?: string
  response_code?: number
  response_code_from_a?: string
  response_message?: string
  retrieval_reference_number?: string
  service_code?: string
  settlement_status?: string
  source_id?: number
  tecsengine_response_code?: number
  tecsengine_response_text?: string
  terminal_end_of_day_date?: string
  terminal_id?: number
  terminal_location?: string
  tip_amount?: number
  trace_number?: number
  transaction_clearing_date?: string
  transaction_date?: string
  transaction_id?: string
  transaction_seq_number?: number
  transaction_server_date?: string
  transaction_source?: string
  transaction_type?: string
}

export interface StatusTransactionCreateData {
  acquirer_name?: string
  acquirer_terminal_id?: string
  amount?: number
  application_cryptogram?: string
  authorization_code?: string | null
  authorization_date?: string
  card_brand?: string
  card_entry?: string
  card_expiration?: string
  card_number?: string
  clearing_amount?: number
  clearing_batch_id?: string
  clearing_currency?: string
  clearing_date?: string
  clearing_processed_date?: string
  clearing_status?: string
  client_id?: number
  currency?: string
  cvm?: string
  ecr_data?: string
  emv_application_id?: string
  emv_application_label?: string
  merchant_name?: string
  merchant_number?: string
  original_client_id?: string
  original_terminal_id?: number
  original_transaction_id?: string
  payment_reason?: string
  receipt_number?: string
  response_code?: number
  response_code_from_a?: string
  response_message?: string
  retrieval_reference_number?: string
  service_code?: string
  settlement_status?: string
  source_id?: number
  tecsengine_response_code?: number
  tecsengine_response_text?: string
  terminal_end_of_day_date?: string
  terminal_id?: number
  terminal_location?: string
  tip_amount?: number
  trace_number?: number
  transaction_clearing_date?: string
  transaction_date?: string
  transaction_id?: string
  transaction_seq_number?: number
  transaction_server_date?: string
  transaction_source?: string
  transaction_type?: string
}

export interface StoreTerminalParameter {
  acq_tab_nexo?: Record<string, any>
  config_version?: string
  response_code?: number
  response_message?: string
  serial_number: string
  tid_sent?: string
}

export interface StoreTerminalParameterCreateData {
  acq_tab_nexo?: Record<string, any>
  config_version?: string
  response_code?: number
  response_message?: string
  serial_number: string
  tid_sent?: string
}

export interface TerminalId {
  device_serial_number: any[]
  duplicate_terminal_id?: any[]
  response_code?: number
  response_message?: string
  terminal?: any[]
}

export interface TerminalIdCreateData {
  device_serial_number: any[]
  duplicate_terminal_id?: any[]
  response_code?: number
  response_message?: string
  terminal?: any[]
}

export interface TransactionHistory {
  "3_d_secure"?: string
  authorization_code?: string
  card_brand?: string
  clearing_amount_from?: string
  clearing_amount_to?: string
  clearing_currency?: string
  clearing_status?: string
  corporate_uuid?: string
  order_by_transaction_date?: string
  pagination?: Record<string, any>
  payment_token_public_id?: string
  receipt_number?: string
  referenced_transaction_id?: string
  response_code?: number
  response_message?: string
  retrieval_reference_number?: string
  source_id?: number
  tecsengine_response_code_from?: string
  tecsengine_response_code_to?: string
  terminal_id?: number
  trace_number?: string
  transaction_amount_from?: string
  transaction_amount_to?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transaction_history?: any[]
  transaction_id?: string
  transaction_type?: string
  wallet?: string
}

export interface TransactionHistoryCreateData {
  "3_d_secure"?: string
  authorization_code?: string
  card_brand?: string
  clearing_amount_from?: string
  clearing_amount_to?: string
  clearing_currency?: string
  clearing_status?: string
  corporate_uuid?: string
  order_by_transaction_date?: string
  pagination?: Record<string, any>
  payment_token_public_id?: string
  receipt_number?: string
  referenced_transaction_id?: string
  response_code?: number
  response_message?: string
  retrieval_reference_number?: string
  source_id?: number
  tecsengine_response_code_from?: string
  tecsengine_response_code_to?: string
  terminal_id?: number
  trace_number?: string
  transaction_amount_from?: string
  transaction_amount_to?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transaction_history?: any[]
  transaction_id?: string
  transaction_type?: string
  wallet?: string
}

export interface TransactionsCount {
  period?: string
  response_code?: number
  response_message?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transactions_count?: any[]
}

export interface TransactionsCountCreateData {
  period?: string
  response_code?: number
  response_message?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transactions_count?: any[]
}

export interface TransactionsCountCardBrand {
  period?: string
  response_code?: number
  response_message?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transactions_count?: any[]
}

export interface TransactionsCountCardBrandCreateData {
  period?: string
  response_code?: number
  response_message?: string
  transaction_date_from?: string
  transaction_date_to?: string
  transactions_count?: any[]
}

export interface TransactionsTurnover {
  period?: string
  response_code?: number
  response_message?: string
  transaction_date_from?: string
  transaction_date_to?: string
  turnover?: any[]
}

export interface TransactionsTurnoverCreateData {
  period?: string
  response_code?: number
  response_message?: string
  transaction_date_from?: string
  transaction_date_to?: string
  turnover?: any[]
}

export interface UpdateMerchant {
  city?: string
  corporate_uuid: string
  country?: string
  merchant_category_code?: string
  name?: string
  response_code?: number
  response_message?: string
  state?: string
  street?: string
  vu_nummer?: string
  zipcode?: string
}

export interface UpdateMerchantCreateData {
  city?: string
  corporate_uuid: string
  country?: string
  merchant_category_code?: string
  name?: string
  response_code?: number
  response_message?: string
  state?: string
  street?: string
  vu_nummer?: string
  zipcode?: string
}

export interface UpdateTemplateXml {
  response_code?: number
  response_message?: string
  template_name: string
  template_xml: string
}

export interface UpdateTemplateXmlCreateData {
  response_code?: number
  response_message?: string
  template_name: string
  template_xml: string
}

export interface Version {
  app_name?: string
  build_date?: string
  version?: string
}

export interface VersionLoadMatch {
  app_name?: string
  build_date?: string
  version?: string
}

