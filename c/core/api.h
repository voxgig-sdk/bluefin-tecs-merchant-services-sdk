// BluefinTecsMerchantServices SDK public API (generated).

#ifndef BLUEFINTECSMERCHANTSERVICES_API_H
#define BLUEFINTECSMERCHANTSERVICES_API_H

#include "sdk.h"

// CancelTransaction entity.
Entity* cancel_transaction_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_cancel_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* cancel_transaction_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// CheckCardBlackListed entity.
Entity* check_card_black_listed_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_check_card_black_listed(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* check_card_black_listed_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// CreateProduct entity.
Entity* create_product_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_create_product(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* create_product_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// DeactivateTerminal entity.
Entity* deactivate_terminal_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_deactivate_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* deactivate_terminal_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// DigitalServicesApi entity.
Entity* digital_services_api_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_digital_services_api(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* digital_services_api_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// EcDataEcom entity.
Entity* ec_data_ecom_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_ec_data_ecom(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* ec_data_ecom_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// EcomParameter entity.
Entity* ecom_parameter_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_ecom_parameter(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* ecom_parameter_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// EcrData entity.
Entity* ecr_data_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_ecr_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* ecr_data_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// EmvData entity.
Entity* emv_data_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_emv_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* emv_data_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// EnableAcquiring entity.
Entity* enable_acquiring_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_enable_acquiring(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* enable_acquiring_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// GetMerchantContractNumber entity.
Entity* get_merchant_contract_number_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_get_merchant_contract_number(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* get_merchant_contract_number_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// GetTemplateXml entity.
Entity* get_template_xml_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_get_template_xml(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* get_template_xml_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// IntroduceMandator entity.
Entity* introduce_mandator_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_introduce_mandator(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* introduce_mandator_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// IntroducePackage entity.
Entity* introduce_package_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_introduce_package(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* introduce_package_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// KeepAlive entity.
Entity* keep_alive_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_keep_alive(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* keep_alive_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// ListTerminal entity.
Entity* list_terminal_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_list_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* list_terminal_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// MandatorClearingExport entity.
Entity* mandator_clearing_export_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_mandator_clearing_export(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* mandator_clearing_export_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// MandatorClearingExportDownload entity.
Entity* mandator_clearing_export_download_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_mandator_clearing_export_download(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* mandator_clearing_export_download_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// MandatorClearingExportSummary entity.
Entity* mandator_clearing_export_summary_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_mandator_clearing_export_summary(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* mandator_clearing_export_summary_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// MerchantPortalServicesApi entity.
Entity* merchant_portal_services_api_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_merchant_portal_services_api(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* merchant_portal_services_api_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// MoveTid entity.
Entity* move_tid_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_move_tid(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* move_tid_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// PaymentManual entity.
Entity* payment_manual_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_payment_manual(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* payment_manual_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// PaymentSred entity.
Entity* payment_sred_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_payment_sred(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* payment_sred_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// PreAuthTransactionCompletion entity.
Entity* pre_auth_transaction_completion_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_pre_auth_transaction_completion(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* pre_auth_transaction_completion_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// ReactivateTerminal entity.
Entity* reactivate_terminal_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_reactivate_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* reactivate_terminal_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// RefundTransaction entity.
Entity* refund_transaction_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_refund_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* refund_transaction_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// RegisterTecsCompany entity.
Entity* register_tecs_company_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_register_tecs_company(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* register_tecs_company_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// RegisterTerminal entity.
Entity* register_terminal_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_register_terminal(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* register_terminal_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// ReportData entity.
Entity* report_data_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_report_data(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* report_data_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// StatusTransaction entity.
Entity* status_transaction_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_status_transaction(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* status_transaction_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// StoreTerminalParameter entity.
Entity* store_terminal_parameter_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_store_terminal_parameter(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* store_terminal_parameter_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// TerminalId entity.
Entity* terminal_id_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_terminal_id(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* terminal_id_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// TransactionHistory entity.
Entity* transaction_history_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_transaction_history(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* transaction_history_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// TransactionsCount entity.
Entity* transactions_count_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_transactions_count(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* transactions_count_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// TransactionsCountCardBrand entity.
Entity* transactions_count_card_brand_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_transactions_count_card_brand(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* transactions_count_card_brand_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// TransactionsTurnover entity.
Entity* transactions_turnover_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_transactions_turnover(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* transactions_turnover_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// UpdateMerchant entity.
Entity* update_merchant_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_update_merchant(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* update_merchant_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// UpdateTemplateXml entity.
Entity* update_template_xml_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_update_template_xml(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* update_template_xml_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// Version entity.
Entity* version_entity_new(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
Entity* bluefintecsmerchantservices_version(BluefinTecsMerchantServicesSDK* client, voxgig_value* entopts);
voxgig_value* version_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);

#endif // BLUEFINTECSMERCHANTSERVICES_API_H
