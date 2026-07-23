// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return the
// `Value` enum), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support.
#![allow(dead_code, non_snake_case, unused_imports)]

use crate::utility::voxgigstruct::Value;

/// CancelTransaction is the typed data model for the cancel_transaction entity.
#[derive(Debug, Clone)]
pub struct CancelTransaction {
    pub acquirer_id: Option<String>,
    pub acquirer_name: Option<String>,
    pub actual_bonus_point: Option<String>,
    pub amount: Option<i64>,
    pub authorization_code: Option<String>,
    pub balance_amount: Option<String>,
    pub card_brand: Option<String>,
    pub card_number: Option<String>,
    pub client_id: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ec_data: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_data: Option<String>,
    pub exchange_fee: Option<i64>,
    pub exchange_rate: Option<String>,
    pub language_code: Option<String>,
    pub merchant_address: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub message_type: Option<String>,
    pub original_trace_number: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_footer: Option<String>,
    pub receipt_header: Option<String>,
    pub receipt_layout: Option<i64>,
    pub receipt_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: Option<String>,
    pub svc: Option<String>,
    pub terminal_id: i64,
    pub terminal_location: Option<String>,
    pub trace_number: Option<i64>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub tx_type: Option<String>,
    pub user_data: Option<String>,
}

/// CancelTransactionCreateData is the typed request payload for CancelTransaction.create.
#[derive(Debug, Clone)]
pub struct CancelTransactionCreateData {
    pub acquirer_id: Option<String>,
    pub acquirer_name: Option<String>,
    pub actual_bonus_point: Option<String>,
    pub amount: Option<i64>,
    pub authorization_code: Option<String>,
    pub balance_amount: Option<String>,
    pub card_brand: Option<String>,
    pub card_number: Option<String>,
    pub client_id: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ec_data: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_data: Option<String>,
    pub exchange_fee: Option<i64>,
    pub exchange_rate: Option<String>,
    pub language_code: Option<String>,
    pub merchant_address: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub message_type: Option<String>,
    pub original_trace_number: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_footer: Option<String>,
    pub receipt_header: Option<String>,
    pub receipt_layout: Option<i64>,
    pub receipt_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: Option<String>,
    pub svc: Option<String>,
    pub terminal_id: i64,
    pub terminal_location: Option<String>,
    pub trace_number: Option<i64>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub tx_type: Option<String>,
    pub user_data: Option<String>,
}

/// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
#[derive(Debug, Clone)]
pub struct CheckCardBlackListed {
    pub card_no: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.create.
#[derive(Debug, Clone)]
pub struct CheckCardBlackListedCreateData {
    pub card_no: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// CreateProduct is the typed data model for the create_product entity.
#[derive(Debug, Clone)]
pub struct CreateProduct {
    pub acquirer_id: Option<i64>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
    pub template_type: String,
    pub template_xml: String,
    pub terminal_type: String,
}

/// CreateProductCreateData is the typed request payload for CreateProduct.create.
#[derive(Debug, Clone)]
pub struct CreateProductCreateData {
    pub acquirer_id: Option<i64>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
    pub template_type: String,
    pub template_xml: String,
    pub terminal_type: String,
}

/// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
#[derive(Debug, Clone)]
pub struct DeactivateTerminal {
    pub corporate_uuid: Option<String>,
    pub deactivation_reason: String,
    pub package_order_uuid: Option<String>,
    pub product_order_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
}

/// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.create.
#[derive(Debug, Clone)]
pub struct DeactivateTerminalCreateData {
    pub corporate_uuid: Option<String>,
    pub deactivation_reason: String,
    pub package_order_uuid: Option<String>,
    pub product_order_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
}

/// DigitalServicesApi is the typed data model for the digital_services_api entity.
#[derive(Debug, Clone)]
pub struct DigitalServicesApi {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub tx_count: Option<i64>,
    pub tx_id_end: Option<String>,
    pub tx_id_start: Option<String>,
    pub tx_seq_no_end: Option<i64>,
    pub tx_seq_no_start: Option<i64>,
    pub tx_total: Option<i64>,
}

/// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.load.
#[derive(Debug, Clone)]
pub struct DigitalServicesApiLoadMatch {
    pub clearing_date_from: Option<String>,
    pub clearing_date_to: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub tx_count: Option<i64>,
    pub tx_id_end: Option<String>,
    pub tx_id_start: Option<String>,
    pub tx_seq_no_end: Option<i64>,
    pub tx_seq_no_start: Option<i64>,
    pub tx_total: Option<i64>,
}

/// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.create.
#[derive(Debug, Clone)]
pub struct DigitalServicesApiCreateData {
    pub file_id: Option<String>,
}

/// EcDataEcom is the typed data model for the ec_data_ecom entity.
#[derive(Debug, Clone)]
pub struct EcDataEcom {
    pub ecom_data: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
    pub transaction_id: String,
    pub transaction_type: String,
}

/// EcDataEcomCreateData is the typed request payload for EcDataEcom.create.
#[derive(Debug, Clone)]
pub struct EcDataEcomCreateData {
    pub ecom_data: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
    pub transaction_id: String,
    pub transaction_type: String,
}

/// EcomParameter is the typed data model for the ecom_parameter entity.
#[derive(Debug, Clone)]
pub struct EcomParameter {
    pub ecom_pass: Option<String>,
    pub ecom_skey: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
}

/// EcomParameterCreateData is the typed request payload for EcomParameter.create.
#[derive(Debug, Clone)]
pub struct EcomParameterCreateData {
    pub ecom_pass: Option<String>,
    pub ecom_skey: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
}

/// EcrData is the typed data model for the ecr_data entity.
#[derive(Debug, Clone)]
pub struct EcrData {
    pub ecr_data: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
    pub transaction_id: String,
    pub transaction_type: String,
}

/// EcrDataCreateData is the typed request payload for EcrData.create.
#[derive(Debug, Clone)]
pub struct EcrDataCreateData {
    pub ecr_data: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
    pub transaction_id: String,
    pub transaction_type: String,
}

/// EmvData is the typed data model for the emv_data entity.
#[derive(Debug, Clone)]
pub struct EmvData {
    pub emv_data: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
    pub transaction_id: String,
    pub transaction_type: String,
}

/// EmvDataCreateData is the typed request payload for EmvData.create.
#[derive(Debug, Clone)]
pub struct EmvDataCreateData {
    pub emv_data: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
    pub transaction_id: String,
    pub transaction_type: String,
}

/// EnableAcquiring is the typed data model for the enable_acquiring entity.
#[derive(Debug, Clone)]
pub struct EnableAcquiring {
    pub account_no: Option<i64>,
    pub additional_data: Option<std::collections::HashMap<String, Value>>,
    pub corporate_uuid: String,
    pub currency: String,
    pub merchant_category_code: i64,
    pub package_order_uuid: String,
    pub product_order_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting_code: Option<i64>,
    pub template_name: String,
    pub terminal_id: Option<Vec<Value>>,
    pub terminal_id_acq: Option<String>,
    pub vu_nummer: Option<String>,
}

/// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.create.
#[derive(Debug, Clone)]
pub struct EnableAcquiringCreateData {
    pub account_no: Option<i64>,
    pub additional_data: Option<std::collections::HashMap<String, Value>>,
    pub corporate_uuid: String,
    pub currency: String,
    pub merchant_category_code: i64,
    pub package_order_uuid: String,
    pub product_order_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting_code: Option<i64>,
    pub template_name: String,
    pub terminal_id: Option<Vec<Value>>,
    pub terminal_id_acq: Option<String>,
    pub vu_nummer: Option<String>,
}

/// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
#[derive(Debug, Clone)]
pub struct GetMerchantContractNumber {
    pub merchant_contract_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.create.
#[derive(Debug, Clone)]
pub struct GetMerchantContractNumberCreateData {
    pub merchant_contract_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// GetTemplateXml is the typed data model for the get_template_xml entity.
#[derive(Debug, Clone)]
pub struct GetTemplateXml {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
}

/// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.create.
#[derive(Debug, Clone)]
pub struct GetTemplateXmlCreateData {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
}

/// IntroduceMandator is the typed data model for the introduce_mandator entity.
#[derive(Debug, Clone)]
pub struct IntroduceMandator {
    pub mandator_name: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.create.
#[derive(Debug, Clone)]
pub struct IntroduceMandatorCreateData {
    pub mandator_name: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// IntroducePackage is the typed data model for the introduce_package entity.
#[derive(Debug, Clone)]
pub struct IntroducePackage {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_template_description: String,
}

/// IntroducePackageCreateData is the typed request payload for IntroducePackage.create.
#[derive(Debug, Clone)]
pub struct IntroducePackageCreateData {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_template_description: String,
}

/// KeepAlive is the typed data model for the keep_alive entity.
#[derive(Debug, Clone)]
pub struct KeepAlive {
    pub hwserialno: Option<String>,
    pub ka_date_time_from: Option<String>,
    pub ka_date_time_to: Option<String>,
    pub keep_alive_data: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_date_time_from: Option<String>,
    pub terminal_date_time_to: Option<String>,
    pub terminal_id: Option<i64>,
}

/// KeepAliveCreateData is the typed request payload for KeepAlive.create.
#[derive(Debug, Clone)]
pub struct KeepAliveCreateData {
    pub hwserialno: Option<String>,
    pub ka_date_time_from: Option<String>,
    pub ka_date_time_to: Option<String>,
    pub keep_alive_data: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_date_time_from: Option<String>,
    pub terminal_date_time_to: Option<String>,
    pub terminal_id: Option<i64>,
}

/// ListTerminal is the typed data model for the list_terminal entity.
#[derive(Debug, Clone)]
pub struct ListTerminal {
    pub corporate_uuid: Option<Vec<Value>>,
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal: Option<Vec<Value>>,
}

/// ListTerminalCreateData is the typed request payload for ListTerminal.create.
#[derive(Debug, Clone)]
pub struct ListTerminalCreateData {
    pub corporate_uuid: Option<Vec<Value>>,
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal: Option<Vec<Value>>,
}

/// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
#[derive(Debug, Clone)]
pub struct MandatorClearingExport {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub record: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.create.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportCreateData {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub record: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportDownload {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub file_id: Option<String>,
    pub filename_template: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub status: Option<String>,
}

/// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.load.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportDownloadLoadMatch {
    pub id: String,
}

/// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.create.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportDownloadCreateData {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub file_id: Option<String>,
    pub filename_template: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub status: Option<String>,
}

/// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportSummary {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub record: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.create.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportSummaryCreateData {
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub record: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
#[derive(Debug, Clone)]
pub struct MerchantPortalServicesApi {
    pub 3_d_secure: Option<String>,
    pub authorization_code: Option<String>,
    pub card_brand: Option<String>,
    pub clearing_amount_from: Option<String>,
    pub clearing_amount_to: Option<String>,
    pub clearing_currency: Option<String>,
    pub clearing_status: Option<String>,
    pub corporate_uuid: Option<String>,
    pub order_by_transaction_date: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub receipt_number: Option<String>,
    pub referenced_transaction_id: Option<String>,
    pub retrieval_reference_number: Option<String>,
    pub source_id: Option<i64>,
    pub tecsengine_response_code_from: Option<String>,
    pub tecsengine_response_code_to: Option<String>,
    pub terminal_id: Option<i64>,
    pub trace_number: Option<String>,
    pub transaction_amount_from: Option<String>,
    pub transaction_amount_to: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transaction_id: Option<String>,
    pub transaction_type: Option<String>,
    pub wallet: Option<String>,
}

/// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.create.
#[derive(Debug, Clone)]
pub struct MerchantPortalServicesApiCreateData {
    pub 3_d_secure: Option<String>,
    pub authorization_code: Option<String>,
    pub card_brand: Option<String>,
    pub clearing_amount_from: Option<String>,
    pub clearing_amount_to: Option<String>,
    pub clearing_currency: Option<String>,
    pub clearing_status: Option<String>,
    pub corporate_uuid: Option<String>,
    pub order_by_transaction_date: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub receipt_number: Option<String>,
    pub referenced_transaction_id: Option<String>,
    pub retrieval_reference_number: Option<String>,
    pub source_id: Option<i64>,
    pub tecsengine_response_code_from: Option<String>,
    pub tecsengine_response_code_to: Option<String>,
    pub terminal_id: Option<i64>,
    pub trace_number: Option<String>,
    pub transaction_amount_from: Option<String>,
    pub transaction_amount_to: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transaction_id: Option<String>,
    pub transaction_type: Option<String>,
    pub wallet: Option<String>,
}

/// MoveTid is the typed data model for the move_tid entity.
#[derive(Debug, Clone)]
pub struct MoveTid {
    pub productorderuuid: Vec<Value>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub target_packageorderuuid: Option<String>,
    pub target_productorderuuid: Option<String>,
}

/// MoveTidCreateData is the typed request payload for MoveTid.create.
#[derive(Debug, Clone)]
pub struct MoveTidCreateData {
    pub productorderuuid: Vec<Value>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub target_packageorderuuid: Option<String>,
    pub target_productorderuuid: Option<String>,
}

/// PaymentManual is the typed data model for the payment_manual entity.
#[derive(Debug, Clone)]
pub struct PaymentManual {
    pub acquirer_name: Option<String>,
    pub amount: i64,
    pub authorization_number: Option<String>,
    pub card_number: String,
    pub card_type: Option<String>,
    pub currency: String,
    pub cvc: Option<String>,
    pub date_time_tx: Option<String>,
    pub exp_date: String,
    pub merchant_id: Option<String>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub response_code: Option<String>,
    pub response_message: Option<String>,
    pub terminal_id: Option<String>,
    pub transaction_id: Option<String>,
    pub txtype: String,
}

/// PaymentManualCreateData is the typed request payload for PaymentManual.create.
#[derive(Debug, Clone)]
pub struct PaymentManualCreateData {
    pub acquirer_name: Option<String>,
    pub amount: i64,
    pub authorization_number: Option<String>,
    pub card_number: String,
    pub card_type: Option<String>,
    pub currency: String,
    pub cvc: Option<String>,
    pub date_time_tx: Option<String>,
    pub exp_date: String,
    pub merchant_id: Option<String>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub response_code: Option<String>,
    pub response_message: Option<String>,
    pub terminal_id: Option<String>,
    pub transaction_id: Option<String>,
    pub txtype: String,
}

/// PaymentSred is the typed data model for the payment_sred entity.
#[derive(Debug, Clone)]
pub struct PaymentSred {
    pub acquirer_name: Option<String>,
    pub amount: i64,
    pub authorization_number: Option<String>,
    pub card_type: Option<String>,
    pub currency: String,
    pub date_time_tx: Option<String>,
    pub device_payload: String,
    pub merchant_id: Option<String>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub response_code: Option<String>,
    pub response_message: Option<String>,
    pub sred: Option<std::collections::HashMap<String, Value>>,
    pub terminal_id: Option<String>,
    pub transaction_id: Option<String>,
    pub txtype: String,
}

/// PaymentSredCreateData is the typed request payload for PaymentSred.create.
#[derive(Debug, Clone)]
pub struct PaymentSredCreateData {
    pub acquirer_name: Option<String>,
    pub amount: i64,
    pub authorization_number: Option<String>,
    pub card_type: Option<String>,
    pub currency: String,
    pub date_time_tx: Option<String>,
    pub device_payload: String,
    pub merchant_id: Option<String>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub response_code: Option<String>,
    pub response_message: Option<String>,
    pub sred: Option<std::collections::HashMap<String, Value>>,
    pub terminal_id: Option<String>,
    pub transaction_id: Option<String>,
    pub txtype: String,
}

/// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
#[derive(Debug, Clone)]
pub struct PreAuthTransactionCompletion {
    pub acquirer_id: Option<String>,
    pub acquirer_name: Option<String>,
    pub actual_bonus_point: Option<String>,
    pub amount: Option<i64>,
    pub authorization_code: Option<String>,
    pub balance_amount: Option<String>,
    pub card_brand: Option<String>,
    pub card_number: Option<String>,
    pub card_number_reference: String,
    pub client_id: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ec_data: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_data: Option<String>,
    pub exchange_fee: Option<i64>,
    pub exchange_rate: Option<String>,
    pub language_code: Option<String>,
    pub merchant_address: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub message_type: Option<String>,
    pub original_trace_number: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_footer: Option<String>,
    pub receipt_header: Option<String>,
    pub receipt_layout: Option<i64>,
    pub receipt_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: Option<String>,
    pub svc: Option<String>,
    pub terminal_id: i64,
    pub terminal_location: Option<String>,
    pub trace_number: Option<i64>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub transaction_type: String,
    pub tx_type: Option<String>,
    pub user_data: Option<String>,
}

/// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.create.
#[derive(Debug, Clone)]
pub struct PreAuthTransactionCompletionCreateData {
    pub acquirer_id: Option<String>,
    pub acquirer_name: Option<String>,
    pub actual_bonus_point: Option<String>,
    pub amount: Option<i64>,
    pub authorization_code: Option<String>,
    pub balance_amount: Option<String>,
    pub card_brand: Option<String>,
    pub card_number: Option<String>,
    pub card_number_reference: String,
    pub client_id: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ec_data: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_data: Option<String>,
    pub exchange_fee: Option<i64>,
    pub exchange_rate: Option<String>,
    pub language_code: Option<String>,
    pub merchant_address: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub message_type: Option<String>,
    pub original_trace_number: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_footer: Option<String>,
    pub receipt_header: Option<String>,
    pub receipt_layout: Option<i64>,
    pub receipt_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: Option<String>,
    pub svc: Option<String>,
    pub terminal_id: i64,
    pub terminal_location: Option<String>,
    pub trace_number: Option<i64>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub transaction_type: String,
    pub tx_type: Option<String>,
    pub user_data: Option<String>,
}

/// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
#[derive(Debug, Clone)]
pub struct ReactivateTerminal {
    pub corporate_uuid: Option<String>,
    pub package_order_uuid: Option<String>,
    pub product_order_uuid: Option<String>,
    pub reactivation_reason: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
}

/// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.create.
#[derive(Debug, Clone)]
pub struct ReactivateTerminalCreateData {
    pub corporate_uuid: Option<String>,
    pub package_order_uuid: Option<String>,
    pub product_order_uuid: Option<String>,
    pub reactivation_reason: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal_id: i64,
}

/// RefundTransaction is the typed data model for the refund_transaction entity.
#[derive(Debug, Clone)]
pub struct RefundTransaction {
    pub acquirer_id: Option<String>,
    pub acquirer_name: Option<String>,
    pub actual_bonus_point: Option<String>,
    pub amount: Option<i64>,
    pub authorization_code: Option<String>,
    pub balance_amount: Option<String>,
    pub card_brand: Option<String>,
    pub card_number: Option<String>,
    pub client_id: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ec_data: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_data: Option<String>,
    pub exchange_fee: Option<i64>,
    pub exchange_rate: Option<String>,
    pub language_code: Option<String>,
    pub merchant_address: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub message_type: Option<String>,
    pub original_trace_number: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_footer: Option<String>,
    pub receipt_header: Option<String>,
    pub receipt_layout: Option<i64>,
    pub receipt_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: Option<String>,
    pub svc: Option<String>,
    pub terminal_id: i64,
    pub terminal_location: Option<String>,
    pub trace_number: Option<i64>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub tx_type: Option<String>,
    pub user_data: Option<String>,
}

/// RefundTransactionCreateData is the typed request payload for RefundTransaction.create.
#[derive(Debug, Clone)]
pub struct RefundTransactionCreateData {
    pub acquirer_id: Option<String>,
    pub acquirer_name: Option<String>,
    pub actual_bonus_point: Option<String>,
    pub amount: Option<i64>,
    pub authorization_code: Option<String>,
    pub balance_amount: Option<String>,
    pub card_brand: Option<String>,
    pub card_number: Option<String>,
    pub client_id: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ec_data: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_data: Option<String>,
    pub exchange_fee: Option<i64>,
    pub exchange_rate: Option<String>,
    pub language_code: Option<String>,
    pub merchant_address: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub message_type: Option<String>,
    pub original_trace_number: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub password: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_footer: Option<String>,
    pub receipt_header: Option<String>,
    pub receipt_layout: Option<i64>,
    pub receipt_number: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: Option<String>,
    pub svc: Option<String>,
    pub terminal_id: i64,
    pub terminal_location: Option<String>,
    pub trace_number: Option<i64>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub tx_type: Option<String>,
    pub user_data: Option<String>,
}

/// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
#[derive(Debug, Clone)]
pub struct RegisterTecsCompany {
    pub corporate_uuid: String,
    pub package_order_uuid: String,
    pub partner_id: Option<i64>,
    pub partner_name: Option<String>,
    pub product_order_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
}

/// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.create.
#[derive(Debug, Clone)]
pub struct RegisterTecsCompanyCreateData {
    pub corporate_uuid: String,
    pub package_order_uuid: String,
    pub partner_id: Option<i64>,
    pub partner_name: Option<String>,
    pub product_order_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
}

/// RegisterTerminal is the typed data model for the register_terminal entity.
#[derive(Debug, Clone)]
pub struct RegisterTerminal {
    pub additional_data: Option<std::collections::HashMap<String, Value>>,
    pub corporate_uuid: String,
    pub package_order_uuid: String,
    pub product_order_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub tecs_web_secret_key: Option<String>,
    pub template_name: String,
    pub terminal_country_code: String,
    pub terminal_id: Option<i64>,
    pub terminal_id_acq: Option<String>,
    pub terminal_language_code: String,
    pub terminal_location: String,
    pub terminal_serial_number: Option<String>,
    pub token_io_alia: Option<String>,
    pub token_io_iban: Option<String>,
    pub token_io_member_id: Option<String>,
    pub web_shop_url: Option<String>,
}

/// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.create.
#[derive(Debug, Clone)]
pub struct RegisterTerminalCreateData {
    pub additional_data: Option<std::collections::HashMap<String, Value>>,
    pub corporate_uuid: String,
    pub package_order_uuid: String,
    pub product_order_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub tecs_web_secret_key: Option<String>,
    pub template_name: String,
    pub terminal_country_code: String,
    pub terminal_id: Option<i64>,
    pub terminal_id_acq: Option<String>,
    pub terminal_language_code: String,
    pub terminal_location: String,
    pub terminal_serial_number: Option<String>,
    pub token_io_alia: Option<String>,
    pub token_io_iban: Option<String>,
    pub token_io_member_id: Option<String>,
    pub web_shop_url: Option<String>,
}

/// ReportData is the typed data model for the report_data entity.
#[derive(Debug, Clone)]
pub struct ReportData {
    pub card_brand_report_data: Option<Vec<Value>>,
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub corporate_id: String,
    pub currency: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sum_over_credit_tx: Option<std::collections::HashMap<String, Value>>,
    pub sum_over_debit_tx: Option<std::collections::HashMap<String, Value>>,
    pub terminal_id: Option<i64>,
}

/// ReportDataCreateData is the typed request payload for ReportData.create.
#[derive(Debug, Clone)]
pub struct ReportDataCreateData {
    pub card_brand_report_data: Option<Vec<Value>>,
    pub clearing_date_from: String,
    pub clearing_date_to: String,
    pub corporate_id: String,
    pub currency: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sum_over_credit_tx: Option<std::collections::HashMap<String, Value>>,
    pub sum_over_debit_tx: Option<std::collections::HashMap<String, Value>>,
    pub terminal_id: Option<i64>,
}

/// StatusTransaction is the typed data model for the status_transaction entity.
#[derive(Debug, Clone)]
pub struct StatusTransaction {
    pub acquirer_name: Option<String>,
    pub acquirer_terminal_id: Option<String>,
    pub amount: Option<i64>,
    pub application_cryptogram: Option<String>,
    pub authorization_code: Option<Value>,
    pub authorization_date: Option<String>,
    pub card_brand: Option<String>,
    pub card_entry: Option<String>,
    pub card_expiration: Option<String>,
    pub card_number: Option<String>,
    pub clearing_amount: Option<i64>,
    pub clearing_batch_id: Option<String>,
    pub clearing_currency: Option<String>,
    pub clearing_date: Option<String>,
    pub clearing_processed_date: Option<String>,
    pub clearing_status: Option<String>,
    pub client_id: Option<i64>,
    pub currency: Option<String>,
    pub cvm: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_application_id: Option<String>,
    pub emv_application_label: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub original_client_id: Option<String>,
    pub original_terminal_id: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_code_from_a: Option<String>,
    pub response_message: Option<String>,
    pub retrieval_reference_number: Option<String>,
    pub service_code: Option<String>,
    pub settlement_status: Option<String>,
    pub source_id: Option<i64>,
    pub tecsengine_response_code: Option<i64>,
    pub tecsengine_response_text: Option<String>,
    pub terminal_end_of_day_date: Option<String>,
    pub terminal_id: Option<i64>,
    pub terminal_location: Option<String>,
    pub tip_amount: Option<i64>,
    pub trace_number: Option<i64>,
    pub transaction_clearing_date: Option<String>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub transaction_seq_number: Option<i64>,
    pub transaction_server_date: Option<String>,
    pub transaction_source: Option<String>,
    pub transaction_type: Option<String>,
}

/// StatusTransactionCreateData is the typed request payload for StatusTransaction.create.
#[derive(Debug, Clone)]
pub struct StatusTransactionCreateData {
    pub acquirer_name: Option<String>,
    pub acquirer_terminal_id: Option<String>,
    pub amount: Option<i64>,
    pub application_cryptogram: Option<String>,
    pub authorization_code: Option<Value>,
    pub authorization_date: Option<String>,
    pub card_brand: Option<String>,
    pub card_entry: Option<String>,
    pub card_expiration: Option<String>,
    pub card_number: Option<String>,
    pub clearing_amount: Option<i64>,
    pub clearing_batch_id: Option<String>,
    pub clearing_currency: Option<String>,
    pub clearing_date: Option<String>,
    pub clearing_processed_date: Option<String>,
    pub clearing_status: Option<String>,
    pub client_id: Option<i64>,
    pub currency: Option<String>,
    pub cvm: Option<String>,
    pub ecr_data: Option<String>,
    pub emv_application_id: Option<String>,
    pub emv_application_label: Option<String>,
    pub merchant_name: Option<String>,
    pub merchant_number: Option<String>,
    pub original_client_id: Option<String>,
    pub original_terminal_id: Option<i64>,
    pub original_transaction_id: Option<String>,
    pub payment_reason: Option<String>,
    pub receipt_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_code_from_a: Option<String>,
    pub response_message: Option<String>,
    pub retrieval_reference_number: Option<String>,
    pub service_code: Option<String>,
    pub settlement_status: Option<String>,
    pub source_id: Option<i64>,
    pub tecsengine_response_code: Option<i64>,
    pub tecsengine_response_text: Option<String>,
    pub terminal_end_of_day_date: Option<String>,
    pub terminal_id: Option<i64>,
    pub terminal_location: Option<String>,
    pub tip_amount: Option<i64>,
    pub trace_number: Option<i64>,
    pub transaction_clearing_date: Option<String>,
    pub transaction_date: Option<String>,
    pub transaction_id: Option<String>,
    pub transaction_seq_number: Option<i64>,
    pub transaction_server_date: Option<String>,
    pub transaction_source: Option<String>,
    pub transaction_type: Option<String>,
}

/// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
#[derive(Debug, Clone)]
pub struct StoreTerminalParameter {
    pub acq_tab_nexo: Option<std::collections::HashMap<String, Value>>,
    pub config_version: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: String,
    pub tid_sent: Option<String>,
}

/// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.create.
#[derive(Debug, Clone)]
pub struct StoreTerminalParameterCreateData {
    pub acq_tab_nexo: Option<std::collections::HashMap<String, Value>>,
    pub config_version: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub serial_number: String,
    pub tid_sent: Option<String>,
}

/// TerminalId is the typed data model for the terminal_id entity.
#[derive(Debug, Clone)]
pub struct TerminalId {
    pub device_serial_number: Vec<Value>,
    pub duplicate_terminal_id: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal: Option<Vec<Value>>,
}

/// TerminalIdCreateData is the typed request payload for TerminalId.create.
#[derive(Debug, Clone)]
pub struct TerminalIdCreateData {
    pub device_serial_number: Vec<Value>,
    pub duplicate_terminal_id: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub terminal: Option<Vec<Value>>,
}

/// TransactionHistory is the typed data model for the transaction_history entity.
#[derive(Debug, Clone)]
pub struct TransactionHistory {
    pub 3_d_secure: Option<String>,
    pub authorization_code: Option<String>,
    pub card_brand: Option<String>,
    pub clearing_amount_from: Option<String>,
    pub clearing_amount_to: Option<String>,
    pub clearing_currency: Option<String>,
    pub clearing_status: Option<String>,
    pub corporate_uuid: Option<String>,
    pub order_by_transaction_date: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub payment_token_public_id: Option<String>,
    pub receipt_number: Option<String>,
    pub referenced_transaction_id: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub retrieval_reference_number: Option<String>,
    pub source_id: Option<i64>,
    pub tecsengine_response_code_from: Option<String>,
    pub tecsengine_response_code_to: Option<String>,
    pub terminal_id: Option<i64>,
    pub trace_number: Option<String>,
    pub transaction_amount_from: Option<String>,
    pub transaction_amount_to: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transaction_history: Option<Vec<Value>>,
    pub transaction_id: Option<String>,
    pub transaction_type: Option<String>,
    pub wallet: Option<String>,
}

/// TransactionHistoryCreateData is the typed request payload for TransactionHistory.create.
#[derive(Debug, Clone)]
pub struct TransactionHistoryCreateData {
    pub 3_d_secure: Option<String>,
    pub authorization_code: Option<String>,
    pub card_brand: Option<String>,
    pub clearing_amount_from: Option<String>,
    pub clearing_amount_to: Option<String>,
    pub clearing_currency: Option<String>,
    pub clearing_status: Option<String>,
    pub corporate_uuid: Option<String>,
    pub order_by_transaction_date: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub payment_token_public_id: Option<String>,
    pub receipt_number: Option<String>,
    pub referenced_transaction_id: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub retrieval_reference_number: Option<String>,
    pub source_id: Option<i64>,
    pub tecsengine_response_code_from: Option<String>,
    pub tecsengine_response_code_to: Option<String>,
    pub terminal_id: Option<i64>,
    pub trace_number: Option<String>,
    pub transaction_amount_from: Option<String>,
    pub transaction_amount_to: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transaction_history: Option<Vec<Value>>,
    pub transaction_id: Option<String>,
    pub transaction_type: Option<String>,
    pub wallet: Option<String>,
}

/// TransactionsCount is the typed data model for the transactions_count entity.
#[derive(Debug, Clone)]
pub struct TransactionsCount {
    pub period: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transactions_count: Option<Vec<Value>>,
}

/// TransactionsCountCreateData is the typed request payload for TransactionsCount.create.
#[derive(Debug, Clone)]
pub struct TransactionsCountCreateData {
    pub period: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transactions_count: Option<Vec<Value>>,
}

/// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
#[derive(Debug, Clone)]
pub struct TransactionsCountCardBrand {
    pub period: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transactions_count: Option<Vec<Value>>,
}

/// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.create.
#[derive(Debug, Clone)]
pub struct TransactionsCountCardBrandCreateData {
    pub period: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub transactions_count: Option<Vec<Value>>,
}

/// TransactionsTurnover is the typed data model for the transactions_turnover entity.
#[derive(Debug, Clone)]
pub struct TransactionsTurnover {
    pub period: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub turnover: Option<Vec<Value>>,
}

/// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.create.
#[derive(Debug, Clone)]
pub struct TransactionsTurnoverCreateData {
    pub period: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub transaction_date_from: Option<String>,
    pub transaction_date_to: Option<String>,
    pub turnover: Option<Vec<Value>>,
}

/// UpdateMerchant is the typed data model for the update_merchant entity.
#[derive(Debug, Clone)]
pub struct UpdateMerchant {
    pub city: Option<String>,
    pub corporate_uuid: String,
    pub country: Option<String>,
    pub merchant_category_code: Option<String>,
    pub name: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub state: Option<String>,
    pub street: Option<String>,
    pub vu_nummer: Option<String>,
    pub zipcode: Option<String>,
}

/// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.create.
#[derive(Debug, Clone)]
pub struct UpdateMerchantCreateData {
    pub city: Option<String>,
    pub corporate_uuid: String,
    pub country: Option<String>,
    pub merchant_category_code: Option<String>,
    pub name: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub state: Option<String>,
    pub street: Option<String>,
    pub vu_nummer: Option<String>,
    pub zipcode: Option<String>,
}

/// UpdateTemplateXml is the typed data model for the update_template_xml entity.
#[derive(Debug, Clone)]
pub struct UpdateTemplateXml {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
    pub template_xml: String,
}

/// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.create.
#[derive(Debug, Clone)]
pub struct UpdateTemplateXmlCreateData {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub template_name: String,
    pub template_xml: String,
}

/// Version is the typed data model for the version entity.
#[derive(Debug, Clone)]
pub struct Version {
    pub app_name: Option<String>,
    pub build_date: Option<String>,
    pub version: Option<String>,
}

/// VersionLoadMatch is the typed request payload for Version.load.
#[derive(Debug, Clone)]
pub struct VersionLoadMatch {
    pub app_name: Option<String>,
    pub build_date: Option<String>,
    pub version: Option<String>,
}

