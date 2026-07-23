// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return
// `voxgig_value*`), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support. This header is standalone
// and is not #included by any generated .c.

#ifndef BLUEFINTECSMERCHANTSERVICES_ENTITY_TYPES_H
#define BLUEFINTECSMERCHANTSERVICES_ENTITY_TYPES_H

#include "sdk.h"

// CancelTransaction is the typed data model for the cancel_transaction entity.
typedef struct {
  char*acquirer_id;  // optional
  char*acquirer_name;  // optional
  char*actual_bonus_point;  // optional
  int64_t amount;  // optional
  char*authorization_code;  // optional
  char*balance_amount;  // optional
  char*card_brand;  // optional
  char*card_number;  // optional
  int64_t client_id;
  char*currency;
  char*cvc;  // optional
  char*ec_data;  // optional
  char*ecr_data;  // optional
  char*emv_data;  // optional
  int64_t exchange_fee;  // optional
  char*exchange_rate;  // optional
  char*language_code;  // optional
  char*merchant_address;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*message_type;  // optional
  int64_t original_trace_number;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*payment_reason;  // optional
  char*receipt_footer;  // optional
  char*receipt_header;  // optional
  int64_t receipt_layout;  // optional
  char*receipt_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;  // optional
  char*svc;  // optional
  int64_t terminal_id;
  char*terminal_location;  // optional
  int64_t trace_number;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  char*tx_type;  // optional
  char*user_data;  // optional
} CancelTransaction;

// CancelTransactionCreateData is the typed request payload for CancelTransaction.create.
typedef struct {
  char*acquirer_id;  // optional
  char*acquirer_name;  // optional
  char*actual_bonus_point;  // optional
  int64_t amount;  // optional
  char*authorization_code;  // optional
  char*balance_amount;  // optional
  char*card_brand;  // optional
  char*card_number;  // optional
  int64_t client_id;
  char*currency;
  char*cvc;  // optional
  char*ec_data;  // optional
  char*ecr_data;  // optional
  char*emv_data;  // optional
  int64_t exchange_fee;  // optional
  char*exchange_rate;  // optional
  char*language_code;  // optional
  char*merchant_address;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*message_type;  // optional
  int64_t original_trace_number;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*payment_reason;  // optional
  char*receipt_footer;  // optional
  char*receipt_header;  // optional
  int64_t receipt_layout;  // optional
  char*receipt_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;  // optional
  char*svc;  // optional
  int64_t terminal_id;
  char*terminal_location;  // optional
  int64_t trace_number;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  char*tx_type;  // optional
  char*user_data;  // optional
} CancelTransactionCreateData;

// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
typedef struct {
  char*card_no;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} CheckCardBlackListed;

// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.create.
typedef struct {
  char*card_no;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} CheckCardBlackListedCreateData;

// CreateProduct is the typed data model for the create_product entity.
typedef struct {
  int64_t acquirer_id;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
  char*template_type;
  char*template_xml;
  char*terminal_type;
} CreateProduct;

// CreateProductCreateData is the typed request payload for CreateProduct.create.
typedef struct {
  int64_t acquirer_id;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
  char*template_type;
  char*template_xml;
  char*terminal_type;
} CreateProductCreateData;

// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
typedef struct {
  char*corporate_uuid;  // optional
  char*deactivation_reason;
  char*package_order_uuid;  // optional
  char*product_order_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
} DeactivateTerminal;

// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.create.
typedef struct {
  char*corporate_uuid;  // optional
  char*deactivation_reason;
  char*package_order_uuid;  // optional
  char*product_order_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
} DeactivateTerminalCreateData;

// DigitalServicesApi is the typed data model for the digital_services_api entity.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t tx_count;  // optional
  char*tx_id_end;  // optional
  char*tx_id_start;  // optional
  int64_t tx_seq_no_end;  // optional
  int64_t tx_seq_no_start;  // optional
  int64_t tx_total;  // optional
} DigitalServicesApi;

// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.load.
typedef struct {
  char*clearing_date_from;  // optional
  char*clearing_date_to;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t tx_count;  // optional
  char*tx_id_end;  // optional
  char*tx_id_start;  // optional
  int64_t tx_seq_no_end;  // optional
  int64_t tx_seq_no_start;  // optional
  int64_t tx_total;  // optional
} DigitalServicesApiLoadMatch;

// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.create.
typedef struct {
  char*file_id;  // optional
} DigitalServicesApiCreateData;

// EcDataEcom is the typed data model for the ec_data_ecom entity.
typedef struct {
  char*ecom_data;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
  char*transaction_id;
  char*transaction_type;
} EcDataEcom;

// EcDataEcomCreateData is the typed request payload for EcDataEcom.create.
typedef struct {
  char*ecom_data;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
  char*transaction_id;
  char*transaction_type;
} EcDataEcomCreateData;

// EcomParameter is the typed data model for the ecom_parameter entity.
typedef struct {
  char*ecom_pass;  // optional
  char*ecom_skey;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
} EcomParameter;

// EcomParameterCreateData is the typed request payload for EcomParameter.create.
typedef struct {
  char*ecom_pass;  // optional
  char*ecom_skey;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
} EcomParameterCreateData;

// EcrData is the typed data model for the ecr_data entity.
typedef struct {
  char*ecr_data;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
  char*transaction_id;
  char*transaction_type;
} EcrData;

// EcrDataCreateData is the typed request payload for EcrData.create.
typedef struct {
  char*ecr_data;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
  char*transaction_id;
  char*transaction_type;
} EcrDataCreateData;

// EmvData is the typed data model for the emv_data entity.
typedef struct {
  char*emv_data;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
  char*transaction_id;
  char*transaction_type;
} EmvData;

// EmvDataCreateData is the typed request payload for EmvData.create.
typedef struct {
  char*emv_data;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
  char*transaction_id;
  char*transaction_type;
} EmvDataCreateData;

// EnableAcquiring is the typed data model for the enable_acquiring entity.
typedef struct {
  int64_t account_no;  // optional
  voxgig_value*additional_data;  // optional
  char*corporate_uuid;
  char*currency;
  int64_t merchant_category_code;
  char*package_order_uuid;
  char*product_order_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t sorting_code;  // optional
  char*template_name;
  voxgig_value*terminal_id;  // optional
  char*terminal_id_acq;  // optional
  char*vu_nummer;  // optional
} EnableAcquiring;

// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.create.
typedef struct {
  int64_t account_no;  // optional
  voxgig_value*additional_data;  // optional
  char*corporate_uuid;
  char*currency;
  int64_t merchant_category_code;
  char*package_order_uuid;
  char*product_order_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t sorting_code;  // optional
  char*template_name;
  voxgig_value*terminal_id;  // optional
  char*terminal_id_acq;  // optional
  char*vu_nummer;  // optional
} EnableAcquiringCreateData;

// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
typedef struct {
  char*merchant_contract_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
} GetMerchantContractNumber;

// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.create.
typedef struct {
  char*merchant_contract_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
} GetMerchantContractNumberCreateData;

// GetTemplateXml is the typed data model for the get_template_xml entity.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
} GetTemplateXml;

// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.create.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
} GetTemplateXmlCreateData;

// IntroduceMandator is the typed data model for the introduce_mandator entity.
typedef struct {
  char*mandator_name;
  int64_t response_code;  // optional
  char*response_message;  // optional
} IntroduceMandator;

// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.create.
typedef struct {
  char*mandator_name;
  int64_t response_code;  // optional
  char*response_message;  // optional
} IntroduceMandatorCreateData;

// IntroducePackage is the typed data model for the introduce_package entity.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*terminal_template_description;
} IntroducePackage;

// IntroducePackageCreateData is the typed request payload for IntroducePackage.create.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*terminal_template_description;
} IntroducePackageCreateData;

// KeepAlive is the typed data model for the keep_alive entity.
typedef struct {
  char*hwserialno;  // optional
  char*ka_date_time_from;  // optional
  char*ka_date_time_to;  // optional
  voxgig_value*keep_alive_data;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*terminal_date_time_from;  // optional
  char*terminal_date_time_to;  // optional
  int64_t terminal_id;  // optional
} KeepAlive;

// KeepAliveCreateData is the typed request payload for KeepAlive.create.
typedef struct {
  char*hwserialno;  // optional
  char*ka_date_time_from;  // optional
  char*ka_date_time_to;  // optional
  voxgig_value*keep_alive_data;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*terminal_date_time_from;  // optional
  char*terminal_date_time_to;  // optional
  int64_t terminal_id;  // optional
} KeepAliveCreateData;

// ListTerminal is the typed data model for the list_terminal entity.
typedef struct {
  voxgig_value*corporate_uuid;  // optional
  voxgig_value*filter;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*terminal;  // optional
} ListTerminal;

// ListTerminalCreateData is the typed request payload for ListTerminal.create.
typedef struct {
  voxgig_value*corporate_uuid;  // optional
  voxgig_value*filter;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*terminal;  // optional
} ListTerminalCreateData;

// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  voxgig_value*pagination;  // optional
  voxgig_value*record;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} MandatorClearingExport;

// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.create.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  voxgig_value*pagination;  // optional
  voxgig_value*record;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} MandatorClearingExportCreateData;

// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  char*file_id;  // optional
  char*filename_template;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*status;  // optional
} MandatorClearingExportDownload;

// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.load.
typedef struct {
  char*id;
} MandatorClearingExportDownloadLoadMatch;

// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.create.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  char*file_id;  // optional
  char*filename_template;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*status;  // optional
} MandatorClearingExportDownloadCreateData;

// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  voxgig_value*record;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} MandatorClearingExportSummary;

// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.create.
typedef struct {
  char*clearing_date_from;
  char*clearing_date_to;
  voxgig_value*record;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} MandatorClearingExportSummaryCreateData;

// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
typedef struct {
  char*_3_d_secure;  // optional
  char*authorization_code;  // optional
  char*card_brand;  // optional
  char*clearing_amount_from;  // optional
  char*clearing_amount_to;  // optional
  char*clearing_currency;  // optional
  char*clearing_status;  // optional
  char*corporate_uuid;  // optional
  char*order_by_transaction_date;  // optional
  voxgig_value*pagination;  // optional
  char*receipt_number;  // optional
  char*referenced_transaction_id;  // optional
  char*retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  char*tecsengine_response_code_from;  // optional
  char*tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  char*trace_number;  // optional
  char*transaction_amount_from;  // optional
  char*transaction_amount_to;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  char*transaction_id;  // optional
  char*transaction_type;  // optional
  char*wallet;  // optional
} MerchantPortalServicesApi;

// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.create.
typedef struct {
  char*_3_d_secure;  // optional
  char*authorization_code;  // optional
  char*card_brand;  // optional
  char*clearing_amount_from;  // optional
  char*clearing_amount_to;  // optional
  char*clearing_currency;  // optional
  char*clearing_status;  // optional
  char*corporate_uuid;  // optional
  char*order_by_transaction_date;  // optional
  voxgig_value*pagination;  // optional
  char*receipt_number;  // optional
  char*referenced_transaction_id;  // optional
  char*retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  char*tecsengine_response_code_from;  // optional
  char*tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  char*trace_number;  // optional
  char*transaction_amount_from;  // optional
  char*transaction_amount_to;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  char*transaction_id;  // optional
  char*transaction_type;  // optional
  char*wallet;  // optional
} MerchantPortalServicesApiCreateData;

// MoveTid is the typed data model for the move_tid entity.
typedef struct {
  voxgig_value*productorderuuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*target_packageorderuuid;  // optional
  char*target_productorderuuid;  // optional
} MoveTid;

// MoveTidCreateData is the typed request payload for MoveTid.create.
typedef struct {
  voxgig_value*productorderuuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*target_packageorderuuid;  // optional
  char*target_productorderuuid;  // optional
} MoveTidCreateData;

// PaymentManual is the typed data model for the payment_manual entity.
typedef struct {
  char*acquirer_name;  // optional
  int64_t amount;
  char*authorization_number;  // optional
  char*card_number;
  char*card_type;  // optional
  char*currency;
  char*cvc;  // optional
  char*date_time_tx;  // optional
  char*exp_date;
  char*merchant_id;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*response_code;  // optional
  char*response_message;  // optional
  char*terminal_id;  // optional
  char*transaction_id;  // optional
  char*txtype;
} PaymentManual;

// PaymentManualCreateData is the typed request payload for PaymentManual.create.
typedef struct {
  char*acquirer_name;  // optional
  int64_t amount;
  char*authorization_number;  // optional
  char*card_number;
  char*card_type;  // optional
  char*currency;
  char*cvc;  // optional
  char*date_time_tx;  // optional
  char*exp_date;
  char*merchant_id;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*response_code;  // optional
  char*response_message;  // optional
  char*terminal_id;  // optional
  char*transaction_id;  // optional
  char*txtype;
} PaymentManualCreateData;

// PaymentSred is the typed data model for the payment_sred entity.
typedef struct {
  char*acquirer_name;  // optional
  int64_t amount;
  char*authorization_number;  // optional
  char*card_type;  // optional
  char*currency;
  char*date_time_tx;  // optional
  char*device_payload;
  char*merchant_id;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sred;  // optional
  char*terminal_id;  // optional
  char*transaction_id;  // optional
  char*txtype;
} PaymentSred;

// PaymentSredCreateData is the typed request payload for PaymentSred.create.
typedef struct {
  char*acquirer_name;  // optional
  int64_t amount;
  char*authorization_number;  // optional
  char*card_type;  // optional
  char*currency;
  char*date_time_tx;  // optional
  char*device_payload;
  char*merchant_id;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sred;  // optional
  char*terminal_id;  // optional
  char*transaction_id;  // optional
  char*txtype;
} PaymentSredCreateData;

// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
typedef struct {
  char*acquirer_id;  // optional
  char*acquirer_name;  // optional
  char*actual_bonus_point;  // optional
  int64_t amount;  // optional
  char*authorization_code;  // optional
  char*balance_amount;  // optional
  char*card_brand;  // optional
  char*card_number;  // optional
  char*card_number_reference;
  int64_t client_id;
  char*currency;
  char*cvc;  // optional
  char*ec_data;  // optional
  char*ecr_data;  // optional
  char*emv_data;  // optional
  int64_t exchange_fee;  // optional
  char*exchange_rate;  // optional
  char*language_code;  // optional
  char*merchant_address;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*message_type;  // optional
  int64_t original_trace_number;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*payment_reason;  // optional
  char*receipt_footer;  // optional
  char*receipt_header;  // optional
  int64_t receipt_layout;  // optional
  char*receipt_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;  // optional
  char*svc;  // optional
  int64_t terminal_id;
  char*terminal_location;  // optional
  int64_t trace_number;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  char*transaction_type;
  char*tx_type;  // optional
  char*user_data;  // optional
} PreAuthTransactionCompletion;

// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.create.
typedef struct {
  char*acquirer_id;  // optional
  char*acquirer_name;  // optional
  char*actual_bonus_point;  // optional
  int64_t amount;  // optional
  char*authorization_code;  // optional
  char*balance_amount;  // optional
  char*card_brand;  // optional
  char*card_number;  // optional
  char*card_number_reference;
  int64_t client_id;
  char*currency;
  char*cvc;  // optional
  char*ec_data;  // optional
  char*ecr_data;  // optional
  char*emv_data;  // optional
  int64_t exchange_fee;  // optional
  char*exchange_rate;  // optional
  char*language_code;  // optional
  char*merchant_address;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*message_type;  // optional
  int64_t original_trace_number;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*payment_reason;  // optional
  char*receipt_footer;  // optional
  char*receipt_header;  // optional
  int64_t receipt_layout;  // optional
  char*receipt_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;  // optional
  char*svc;  // optional
  int64_t terminal_id;
  char*terminal_location;  // optional
  int64_t trace_number;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  char*transaction_type;
  char*tx_type;  // optional
  char*user_data;  // optional
} PreAuthTransactionCompletionCreateData;

// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
typedef struct {
  char*corporate_uuid;  // optional
  char*package_order_uuid;  // optional
  char*product_order_uuid;  // optional
  char*reactivation_reason;
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
} ReactivateTerminal;

// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.create.
typedef struct {
  char*corporate_uuid;  // optional
  char*package_order_uuid;  // optional
  char*product_order_uuid;  // optional
  char*reactivation_reason;
  int64_t response_code;  // optional
  char*response_message;  // optional
  int64_t terminal_id;
} ReactivateTerminalCreateData;

// RefundTransaction is the typed data model for the refund_transaction entity.
typedef struct {
  char*acquirer_id;  // optional
  char*acquirer_name;  // optional
  char*actual_bonus_point;  // optional
  int64_t amount;  // optional
  char*authorization_code;  // optional
  char*balance_amount;  // optional
  char*card_brand;  // optional
  char*card_number;  // optional
  int64_t client_id;
  char*currency;
  char*cvc;  // optional
  char*ec_data;  // optional
  char*ecr_data;  // optional
  char*emv_data;  // optional
  int64_t exchange_fee;  // optional
  char*exchange_rate;  // optional
  char*language_code;  // optional
  char*merchant_address;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*message_type;  // optional
  int64_t original_trace_number;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*payment_reason;  // optional
  char*receipt_footer;  // optional
  char*receipt_header;  // optional
  int64_t receipt_layout;  // optional
  char*receipt_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;  // optional
  char*svc;  // optional
  int64_t terminal_id;
  char*terminal_location;  // optional
  int64_t trace_number;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  char*tx_type;  // optional
  char*user_data;  // optional
} RefundTransaction;

// RefundTransactionCreateData is the typed request payload for RefundTransaction.create.
typedef struct {
  char*acquirer_id;  // optional
  char*acquirer_name;  // optional
  char*actual_bonus_point;  // optional
  int64_t amount;  // optional
  char*authorization_code;  // optional
  char*balance_amount;  // optional
  char*card_brand;  // optional
  char*card_number;  // optional
  int64_t client_id;
  char*currency;
  char*cvc;  // optional
  char*ec_data;  // optional
  char*ecr_data;  // optional
  char*emv_data;  // optional
  int64_t exchange_fee;  // optional
  char*exchange_rate;  // optional
  char*language_code;  // optional
  char*merchant_address;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*message_type;  // optional
  int64_t original_trace_number;  // optional
  char*original_transaction_id;  // optional
  char*password;  // optional
  char*payment_reason;  // optional
  char*receipt_footer;  // optional
  char*receipt_header;  // optional
  int64_t receipt_layout;  // optional
  char*receipt_number;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;  // optional
  char*svc;  // optional
  int64_t terminal_id;
  char*terminal_location;  // optional
  int64_t trace_number;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  char*tx_type;  // optional
  char*user_data;  // optional
} RefundTransactionCreateData;

// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
typedef struct {
  char*corporate_uuid;
  char*package_order_uuid;
  int64_t partner_id;  // optional
  char*partner_name;  // optional
  char*product_order_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
} RegisterTecsCompany;

// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.create.
typedef struct {
  char*corporate_uuid;
  char*package_order_uuid;
  int64_t partner_id;  // optional
  char*partner_name;  // optional
  char*product_order_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
} RegisterTecsCompanyCreateData;

// RegisterTerminal is the typed data model for the register_terminal entity.
typedef struct {
  voxgig_value*additional_data;  // optional
  char*corporate_uuid;
  char*package_order_uuid;
  char*product_order_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*tecs_web_secret_key;  // optional
  char*template_name;
  char*terminal_country_code;
  int64_t terminal_id;  // optional
  char*terminal_id_acq;  // optional
  char*terminal_language_code;
  char*terminal_location;
  char*terminal_serial_number;  // optional
  char*token_io_alia;  // optional
  char*token_io_iban;  // optional
  char*token_io_member_id;  // optional
  char*web_shop_url;  // optional
} RegisterTerminal;

// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.create.
typedef struct {
  voxgig_value*additional_data;  // optional
  char*corporate_uuid;
  char*package_order_uuid;
  char*product_order_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*tecs_web_secret_key;  // optional
  char*template_name;
  char*terminal_country_code;
  int64_t terminal_id;  // optional
  char*terminal_id_acq;  // optional
  char*terminal_language_code;
  char*terminal_location;
  char*terminal_serial_number;  // optional
  char*token_io_alia;  // optional
  char*token_io_iban;  // optional
  char*token_io_member_id;  // optional
  char*web_shop_url;  // optional
} RegisterTerminalCreateData;

// ReportData is the typed data model for the report_data entity.
typedef struct {
  voxgig_value*card_brand_report_data;  // optional
  char*clearing_date_from;
  char*clearing_date_to;
  char*corporate_id;
  char*currency;
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sum_over_credit_tx;  // optional
  voxgig_value*sum_over_debit_tx;  // optional
  int64_t terminal_id;  // optional
} ReportData;

// ReportDataCreateData is the typed request payload for ReportData.create.
typedef struct {
  voxgig_value*card_brand_report_data;  // optional
  char*clearing_date_from;
  char*clearing_date_to;
  char*corporate_id;
  char*currency;
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sum_over_credit_tx;  // optional
  voxgig_value*sum_over_debit_tx;  // optional
  int64_t terminal_id;  // optional
} ReportDataCreateData;

// StatusTransaction is the typed data model for the status_transaction entity.
typedef struct {
  char*acquirer_name;  // optional
  char*acquirer_terminal_id;  // optional
  int64_t amount;  // optional
  char*application_cryptogram;  // optional
  voxgig_value*authorization_code;  // optional
  char*authorization_date;  // optional
  char*card_brand;  // optional
  char*card_entry;  // optional
  char*card_expiration;  // optional
  char*card_number;  // optional
  int64_t clearing_amount;  // optional
  char*clearing_batch_id;  // optional
  char*clearing_currency;  // optional
  char*clearing_date;  // optional
  char*clearing_processed_date;  // optional
  char*clearing_status;  // optional
  int64_t client_id;  // optional
  char*currency;  // optional
  char*cvm;  // optional
  char*ecr_data;  // optional
  char*emv_application_id;  // optional
  char*emv_application_label;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*original_client_id;  // optional
  int64_t original_terminal_id;  // optional
  char*original_transaction_id;  // optional
  char*payment_reason;  // optional
  char*receipt_number;  // optional
  int64_t response_code;  // optional
  char*response_code_from_a;  // optional
  char*response_message;  // optional
  char*retrieval_reference_number;  // optional
  char*service_code;  // optional
  char*settlement_status;  // optional
  int64_t source_id;  // optional
  int64_t tecsengine_response_code;  // optional
  char*tecsengine_response_text;  // optional
  char*terminal_end_of_day_date;  // optional
  int64_t terminal_id;  // optional
  char*terminal_location;  // optional
  int64_t tip_amount;  // optional
  int64_t trace_number;  // optional
  char*transaction_clearing_date;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  int64_t transaction_seq_number;  // optional
  char*transaction_server_date;  // optional
  char*transaction_source;  // optional
  char*transaction_type;  // optional
} StatusTransaction;

// StatusTransactionCreateData is the typed request payload for StatusTransaction.create.
typedef struct {
  char*acquirer_name;  // optional
  char*acquirer_terminal_id;  // optional
  int64_t amount;  // optional
  char*application_cryptogram;  // optional
  voxgig_value*authorization_code;  // optional
  char*authorization_date;  // optional
  char*card_brand;  // optional
  char*card_entry;  // optional
  char*card_expiration;  // optional
  char*card_number;  // optional
  int64_t clearing_amount;  // optional
  char*clearing_batch_id;  // optional
  char*clearing_currency;  // optional
  char*clearing_date;  // optional
  char*clearing_processed_date;  // optional
  char*clearing_status;  // optional
  int64_t client_id;  // optional
  char*currency;  // optional
  char*cvm;  // optional
  char*ecr_data;  // optional
  char*emv_application_id;  // optional
  char*emv_application_label;  // optional
  char*merchant_name;  // optional
  char*merchant_number;  // optional
  char*original_client_id;  // optional
  int64_t original_terminal_id;  // optional
  char*original_transaction_id;  // optional
  char*payment_reason;  // optional
  char*receipt_number;  // optional
  int64_t response_code;  // optional
  char*response_code_from_a;  // optional
  char*response_message;  // optional
  char*retrieval_reference_number;  // optional
  char*service_code;  // optional
  char*settlement_status;  // optional
  int64_t source_id;  // optional
  int64_t tecsengine_response_code;  // optional
  char*tecsengine_response_text;  // optional
  char*terminal_end_of_day_date;  // optional
  int64_t terminal_id;  // optional
  char*terminal_location;  // optional
  int64_t tip_amount;  // optional
  int64_t trace_number;  // optional
  char*transaction_clearing_date;  // optional
  char*transaction_date;  // optional
  char*transaction_id;  // optional
  int64_t transaction_seq_number;  // optional
  char*transaction_server_date;  // optional
  char*transaction_source;  // optional
  char*transaction_type;  // optional
} StatusTransactionCreateData;

// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
typedef struct {
  voxgig_value*acq_tab_nexo;  // optional
  char*config_version;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;
  char*tid_sent;  // optional
} StoreTerminalParameter;

// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.create.
typedef struct {
  voxgig_value*acq_tab_nexo;  // optional
  char*config_version;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*serial_number;
  char*tid_sent;  // optional
} StoreTerminalParameterCreateData;

// TerminalId is the typed data model for the terminal_id entity.
typedef struct {
  voxgig_value*device_serial_number;
  voxgig_value*duplicate_terminal_id;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*terminal;  // optional
} TerminalId;

// TerminalIdCreateData is the typed request payload for TerminalId.create.
typedef struct {
  voxgig_value*device_serial_number;
  voxgig_value*duplicate_terminal_id;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*terminal;  // optional
} TerminalIdCreateData;

// TransactionHistory is the typed data model for the transaction_history entity.
typedef struct {
  char*_3_d_secure;  // optional
  char*authorization_code;  // optional
  char*card_brand;  // optional
  char*clearing_amount_from;  // optional
  char*clearing_amount_to;  // optional
  char*clearing_currency;  // optional
  char*clearing_status;  // optional
  char*corporate_uuid;  // optional
  char*order_by_transaction_date;  // optional
  voxgig_value*pagination;  // optional
  char*payment_token_public_id;  // optional
  char*receipt_number;  // optional
  char*referenced_transaction_id;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  char*tecsengine_response_code_from;  // optional
  char*tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  char*trace_number;  // optional
  char*transaction_amount_from;  // optional
  char*transaction_amount_to;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*transaction_history;  // optional
  char*transaction_id;  // optional
  char*transaction_type;  // optional
  char*wallet;  // optional
} TransactionHistory;

// TransactionHistoryCreateData is the typed request payload for TransactionHistory.create.
typedef struct {
  char*_3_d_secure;  // optional
  char*authorization_code;  // optional
  char*card_brand;  // optional
  char*clearing_amount_from;  // optional
  char*clearing_amount_to;  // optional
  char*clearing_currency;  // optional
  char*clearing_status;  // optional
  char*corporate_uuid;  // optional
  char*order_by_transaction_date;  // optional
  voxgig_value*pagination;  // optional
  char*payment_token_public_id;  // optional
  char*receipt_number;  // optional
  char*referenced_transaction_id;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  char*tecsengine_response_code_from;  // optional
  char*tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  char*trace_number;  // optional
  char*transaction_amount_from;  // optional
  char*transaction_amount_to;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*transaction_history;  // optional
  char*transaction_id;  // optional
  char*transaction_type;  // optional
  char*wallet;  // optional
} TransactionHistoryCreateData;

// TransactionsCount is the typed data model for the transactions_count entity.
typedef struct {
  char*period;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*transactions_count;  // optional
} TransactionsCount;

// TransactionsCountCreateData is the typed request payload for TransactionsCount.create.
typedef struct {
  char*period;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*transactions_count;  // optional
} TransactionsCountCreateData;

// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
typedef struct {
  char*period;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*transactions_count;  // optional
} TransactionsCountCardBrand;

// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.create.
typedef struct {
  char*period;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*transactions_count;  // optional
} TransactionsCountCardBrandCreateData;

// TransactionsTurnover is the typed data model for the transactions_turnover entity.
typedef struct {
  char*period;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*turnover;  // optional
} TransactionsTurnover;

// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.create.
typedef struct {
  char*period;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*transaction_date_from;  // optional
  char*transaction_date_to;  // optional
  voxgig_value*turnover;  // optional
} TransactionsTurnoverCreateData;

// UpdateMerchant is the typed data model for the update_merchant entity.
typedef struct {
  char*city;  // optional
  char*corporate_uuid;
  char*country;  // optional
  char*merchant_category_code;  // optional
  char*name;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*state;  // optional
  char*street;  // optional
  char*vu_nummer;  // optional
  char*zipcode;  // optional
} UpdateMerchant;

// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.create.
typedef struct {
  char*city;  // optional
  char*corporate_uuid;
  char*country;  // optional
  char*merchant_category_code;  // optional
  char*name;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*state;  // optional
  char*street;  // optional
  char*vu_nummer;  // optional
  char*zipcode;  // optional
} UpdateMerchantCreateData;

// UpdateTemplateXml is the typed data model for the update_template_xml entity.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
  char*template_xml;
} UpdateTemplateXml;

// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.create.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*template_name;
  char*template_xml;
} UpdateTemplateXmlCreateData;

// Version is the typed data model for the version entity.
typedef struct {
  char*app_name;  // optional
  char*build_date;  // optional
  char*version;  // optional
} Version;

// VersionLoadMatch is the typed request payload for Version.load.
typedef struct {
  char*app_name;  // optional
  char*build_date;  // optional
  char*version;  // optional
} VersionLoadMatch;

#endif // BLUEFINTECSMERCHANTSERVICES_ENTITY_TYPES_H
