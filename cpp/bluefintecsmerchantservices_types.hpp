// Typed reference models for the BluefinTecsMerchantServices SDK (C++).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params. The C++ SDK runtime is Value-based, so these structs are
// DOCUMENTATION / convenience types only — the SDK neither includes nor
// requires this header. Array fields surface as std::vector<Value>, object
// fields as std::map<std::string, Value>, and any/null fields as sdk::Value.
// Optional (req:false) members are flagged with a trailing "// optional"
// comment. Do not edit by hand.

#ifndef SDK_BLUEFINTECSMERCHANTSERVICES_TYPES_HPP
#define SDK_BLUEFINTECSMERCHANTSERVICES_TYPES_HPP

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "core/types.hpp"

namespace sdk {
namespace types {

struct CancelTransaction {
  std::string acquirer_id;  // optional
  std::string acquirer_name;  // optional
  std::string actual_bonus_point;  // optional
  int64_t amount;  // optional
  std::string authorization_code;  // optional
  std::string balance_amount;  // optional
  std::string card_brand;  // optional
  std::string card_number;  // optional
  int64_t client_id;
  std::string currency;
  std::string cvc;  // optional
  std::string ec_data;  // optional
  std::string ecr_data;  // optional
  std::string emv_data;  // optional
  int64_t exchange_fee;  // optional
  std::string exchange_rate;  // optional
  std::string language_code;  // optional
  std::string merchant_address;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string message_type;  // optional
  int64_t original_trace_number;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string payment_reason;  // optional
  std::string receipt_footer;  // optional
  std::string receipt_header;  // optional
  int64_t receipt_layout;  // optional
  std::string receipt_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;  // optional
  std::string svc;  // optional
  int64_t terminal_id;
  std::string terminal_location;  // optional
  int64_t trace_number;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  std::string tx_type;  // optional
  std::string user_data;  // optional
};

struct CancelTransactionCreateData {
  std::string acquirer_id;  // optional
  std::string acquirer_name;  // optional
  std::string actual_bonus_point;  // optional
  int64_t amount;  // optional
  std::string authorization_code;  // optional
  std::string balance_amount;  // optional
  std::string card_brand;  // optional
  std::string card_number;  // optional
  int64_t client_id;
  std::string currency;
  std::string cvc;  // optional
  std::string ec_data;  // optional
  std::string ecr_data;  // optional
  std::string emv_data;  // optional
  int64_t exchange_fee;  // optional
  std::string exchange_rate;  // optional
  std::string language_code;  // optional
  std::string merchant_address;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string message_type;  // optional
  int64_t original_trace_number;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string payment_reason;  // optional
  std::string receipt_footer;  // optional
  std::string receipt_header;  // optional
  int64_t receipt_layout;  // optional
  std::string receipt_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;  // optional
  std::string svc;  // optional
  int64_t terminal_id;
  std::string terminal_location;  // optional
  int64_t trace_number;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  std::string tx_type;  // optional
  std::string user_data;  // optional
};

struct CheckCardBlackListed {
  std::string card_no;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct CheckCardBlackListedCreateData {
  std::string card_no;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct CreateProduct {
  int64_t acquirer_id;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
  std::string template_type;
  std::string template_xml;
  std::string terminal_type;
};

struct CreateProductCreateData {
  int64_t acquirer_id;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
  std::string template_type;
  std::string template_xml;
  std::string terminal_type;
};

struct DeactivateTerminal {
  std::string corporate_uuid;  // optional
  std::string deactivation_reason;
  std::string package_order_uuid;  // optional
  std::string product_order_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
};

struct DeactivateTerminalCreateData {
  std::string corporate_uuid;  // optional
  std::string deactivation_reason;
  std::string package_order_uuid;  // optional
  std::string product_order_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
};

struct DigitalServicesApi {
  std::string clearing_date_from;
  std::string clearing_date_to;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t tx_count;  // optional
  std::string tx_id_end;  // optional
  std::string tx_id_start;  // optional
  int64_t tx_seq_no_end;  // optional
  int64_t tx_seq_no_start;  // optional
  int64_t tx_total;  // optional
};

struct DigitalServicesApiLoadMatch {
  std::string clearing_date_from;  // optional
  std::string clearing_date_to;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t tx_count;  // optional
  std::string tx_id_end;  // optional
  std::string tx_id_start;  // optional
  int64_t tx_seq_no_end;  // optional
  int64_t tx_seq_no_start;  // optional
  int64_t tx_total;  // optional
};

struct DigitalServicesApiCreateData {
  std::string file_id;  // optional
};

struct EcDataEcom {
  std::string ecom_data;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
  std::string transaction_id;
  std::string transaction_type;
};

struct EcDataEcomCreateData {
  std::string ecom_data;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
  std::string transaction_id;
  std::string transaction_type;
};

struct EcomParameter {
  std::string ecom_pass;  // optional
  std::string ecom_skey;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
};

struct EcomParameterCreateData {
  std::string ecom_pass;  // optional
  std::string ecom_skey;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
};

struct EcrData {
  std::string ecr_data;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
  std::string transaction_id;
  std::string transaction_type;
};

struct EcrDataCreateData {
  std::string ecr_data;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
  std::string transaction_id;
  std::string transaction_type;
};

struct EmvData {
  std::string emv_data;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
  std::string transaction_id;
  std::string transaction_type;
};

struct EmvDataCreateData {
  std::string emv_data;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
  std::string transaction_id;
  std::string transaction_type;
};

struct EnableAcquiring {
  int64_t account_no;  // optional
  std::map<std::string, Value> additional_data;  // optional
  std::string corporate_uuid;
  std::string currency;
  int64_t merchant_category_code;
  std::string package_order_uuid;
  std::string product_order_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t sorting_code;  // optional
  std::string template_name;
  std::vector<Value> terminal_id;  // optional
  std::string terminal_id_acq;  // optional
  std::string vu_nummer;  // optional
};

struct EnableAcquiringCreateData {
  int64_t account_no;  // optional
  std::map<std::string, Value> additional_data;  // optional
  std::string corporate_uuid;
  std::string currency;
  int64_t merchant_category_code;
  std::string package_order_uuid;
  std::string product_order_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t sorting_code;  // optional
  std::string template_name;
  std::vector<Value> terminal_id;  // optional
  std::string terminal_id_acq;  // optional
  std::string vu_nummer;  // optional
};

struct GetMerchantContractNumber {
  std::string merchant_contract_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct GetMerchantContractNumberCreateData {
  std::string merchant_contract_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct GetTemplateXml {
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
};

struct GetTemplateXmlCreateData {
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
};

struct IntroduceMandator {
  std::string mandator_name;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct IntroduceMandatorCreateData {
  std::string mandator_name;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct IntroducePackage {
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string terminal_template_description;
};

struct IntroducePackageCreateData {
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string terminal_template_description;
};

struct KeepAlive {
  std::string hwserialno;  // optional
  std::string ka_date_time_from;  // optional
  std::string ka_date_time_to;  // optional
  std::vector<Value> keep_alive_data;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string terminal_date_time_from;  // optional
  std::string terminal_date_time_to;  // optional
  int64_t terminal_id;  // optional
};

struct KeepAliveCreateData {
  std::string hwserialno;  // optional
  std::string ka_date_time_from;  // optional
  std::string ka_date_time_to;  // optional
  std::vector<Value> keep_alive_data;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string terminal_date_time_from;  // optional
  std::string terminal_date_time_to;  // optional
  int64_t terminal_id;  // optional
};

struct ListTerminal {
  std::vector<Value> corporate_uuid;  // optional
  std::map<std::string, Value> filter;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> terminal;  // optional
};

struct ListTerminalCreateData {
  std::vector<Value> corporate_uuid;  // optional
  std::map<std::string, Value> filter;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> terminal;  // optional
};

struct MandatorClearingExport {
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::map<std::string, Value> pagination;  // optional
  std::vector<Value> record;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct MandatorClearingExportCreateData {
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::map<std::string, Value> pagination;  // optional
  std::vector<Value> record;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct MandatorClearingExportDownload {
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::string file_id;  // optional
  std::string filename_template;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string status;  // optional
};

struct MandatorClearingExportDownloadLoadMatch {
  std::string id;
};

struct MandatorClearingExportDownloadCreateData {
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::string file_id;  // optional
  std::string filename_template;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string status;  // optional
};

struct MandatorClearingExportSummary {
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::vector<Value> record;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct MandatorClearingExportSummaryCreateData {
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::vector<Value> record;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct MerchantPortalServicesApi {
  std::string authorization_code;  // optional
  std::string card_brand;  // optional
  std::string clearing_amount_from;  // optional
  std::string clearing_amount_to;  // optional
  std::string clearing_currency;  // optional
  std::string clearing_status;  // optional
  std::string corporate_uuid;  // optional
  std::string order_by_transaction_date;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string receipt_number;  // optional
  std::string referenced_transaction_id;  // optional
  std::string retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  std::string tecsengine_response_code_from;  // optional
  std::string tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  std::string trace_number;  // optional
  std::string transaction_amount_from;  // optional
  std::string transaction_amount_to;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::string transaction_id;  // optional
  std::string transaction_type;  // optional
  std::string wallet;  // optional
};

struct MerchantPortalServicesApiCreateData {
  std::string authorization_code;  // optional
  std::string card_brand;  // optional
  std::string clearing_amount_from;  // optional
  std::string clearing_amount_to;  // optional
  std::string clearing_currency;  // optional
  std::string clearing_status;  // optional
  std::string corporate_uuid;  // optional
  std::string order_by_transaction_date;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string receipt_number;  // optional
  std::string referenced_transaction_id;  // optional
  std::string retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  std::string tecsengine_response_code_from;  // optional
  std::string tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  std::string trace_number;  // optional
  std::string transaction_amount_from;  // optional
  std::string transaction_amount_to;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::string transaction_id;  // optional
  std::string transaction_type;  // optional
  std::string wallet;  // optional
};

struct MoveTid {
  std::vector<Value> productorderuuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string target_packageorderuuid;  // optional
  std::string target_productorderuuid;  // optional
};

struct MoveTidCreateData {
  std::vector<Value> productorderuuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string target_packageorderuuid;  // optional
  std::string target_productorderuuid;  // optional
};

struct PaymentManual {
  std::string acquirer_name;  // optional
  int64_t amount;
  std::string authorization_number;  // optional
  std::string card_number;
  std::string card_type;  // optional
  std::string currency;
  std::string cvc;  // optional
  std::string date_time_tx;  // optional
  std::string exp_date;
  std::string merchant_id;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string response_code;  // optional
  std::string response_message;  // optional
  std::string terminal_id;  // optional
  std::string transaction_id;  // optional
  std::string txtype;
};

struct PaymentManualCreateData {
  std::string acquirer_name;  // optional
  int64_t amount;
  std::string authorization_number;  // optional
  std::string card_number;
  std::string card_type;  // optional
  std::string currency;
  std::string cvc;  // optional
  std::string date_time_tx;  // optional
  std::string exp_date;
  std::string merchant_id;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string response_code;  // optional
  std::string response_message;  // optional
  std::string terminal_id;  // optional
  std::string transaction_id;  // optional
  std::string txtype;
};

struct PaymentSred {
  std::string acquirer_name;  // optional
  int64_t amount;
  std::string authorization_number;  // optional
  std::string card_type;  // optional
  std::string currency;
  std::string date_time_tx;  // optional
  std::string device_payload;
  std::string merchant_id;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sred;  // optional
  std::string terminal_id;  // optional
  std::string transaction_id;  // optional
  std::string txtype;
};

struct PaymentSredCreateData {
  std::string acquirer_name;  // optional
  int64_t amount;
  std::string authorization_number;  // optional
  std::string card_type;  // optional
  std::string currency;
  std::string date_time_tx;  // optional
  std::string device_payload;
  std::string merchant_id;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sred;  // optional
  std::string terminal_id;  // optional
  std::string transaction_id;  // optional
  std::string txtype;
};

struct PreAuthTransactionCompletion {
  std::string acquirer_id;  // optional
  std::string acquirer_name;  // optional
  std::string actual_bonus_point;  // optional
  int64_t amount;  // optional
  std::string authorization_code;  // optional
  std::string balance_amount;  // optional
  std::string card_brand;  // optional
  std::string card_number;  // optional
  std::string card_number_reference;
  int64_t client_id;
  std::string currency;
  std::string cvc;  // optional
  std::string ec_data;  // optional
  std::string ecr_data;  // optional
  std::string emv_data;  // optional
  int64_t exchange_fee;  // optional
  std::string exchange_rate;  // optional
  std::string language_code;  // optional
  std::string merchant_address;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string message_type;  // optional
  int64_t original_trace_number;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string payment_reason;  // optional
  std::string receipt_footer;  // optional
  std::string receipt_header;  // optional
  int64_t receipt_layout;  // optional
  std::string receipt_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;  // optional
  std::string svc;  // optional
  int64_t terminal_id;
  std::string terminal_location;  // optional
  int64_t trace_number;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  std::string transaction_type;
  std::string tx_type;  // optional
  std::string user_data;  // optional
};

struct PreAuthTransactionCompletionCreateData {
  std::string acquirer_id;  // optional
  std::string acquirer_name;  // optional
  std::string actual_bonus_point;  // optional
  int64_t amount;  // optional
  std::string authorization_code;  // optional
  std::string balance_amount;  // optional
  std::string card_brand;  // optional
  std::string card_number;  // optional
  std::string card_number_reference;
  int64_t client_id;
  std::string currency;
  std::string cvc;  // optional
  std::string ec_data;  // optional
  std::string ecr_data;  // optional
  std::string emv_data;  // optional
  int64_t exchange_fee;  // optional
  std::string exchange_rate;  // optional
  std::string language_code;  // optional
  std::string merchant_address;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string message_type;  // optional
  int64_t original_trace_number;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string payment_reason;  // optional
  std::string receipt_footer;  // optional
  std::string receipt_header;  // optional
  int64_t receipt_layout;  // optional
  std::string receipt_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;  // optional
  std::string svc;  // optional
  int64_t terminal_id;
  std::string terminal_location;  // optional
  int64_t trace_number;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  std::string transaction_type;
  std::string tx_type;  // optional
  std::string user_data;  // optional
};

struct ReactivateTerminal {
  std::string corporate_uuid;  // optional
  std::string package_order_uuid;  // optional
  std::string product_order_uuid;  // optional
  std::string reactivation_reason;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
};

struct ReactivateTerminalCreateData {
  std::string corporate_uuid;  // optional
  std::string package_order_uuid;  // optional
  std::string product_order_uuid;  // optional
  std::string reactivation_reason;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  int64_t terminal_id;
};

struct RefundTransaction {
  std::string acquirer_id;  // optional
  std::string acquirer_name;  // optional
  std::string actual_bonus_point;  // optional
  int64_t amount;  // optional
  std::string authorization_code;  // optional
  std::string balance_amount;  // optional
  std::string card_brand;  // optional
  std::string card_number;  // optional
  int64_t client_id;
  std::string currency;
  std::string cvc;  // optional
  std::string ec_data;  // optional
  std::string ecr_data;  // optional
  std::string emv_data;  // optional
  int64_t exchange_fee;  // optional
  std::string exchange_rate;  // optional
  std::string language_code;  // optional
  std::string merchant_address;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string message_type;  // optional
  int64_t original_trace_number;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string payment_reason;  // optional
  std::string receipt_footer;  // optional
  std::string receipt_header;  // optional
  int64_t receipt_layout;  // optional
  std::string receipt_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;  // optional
  std::string svc;  // optional
  int64_t terminal_id;
  std::string terminal_location;  // optional
  int64_t trace_number;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  std::string tx_type;  // optional
  std::string user_data;  // optional
};

struct RefundTransactionCreateData {
  std::string acquirer_id;  // optional
  std::string acquirer_name;  // optional
  std::string actual_bonus_point;  // optional
  int64_t amount;  // optional
  std::string authorization_code;  // optional
  std::string balance_amount;  // optional
  std::string card_brand;  // optional
  std::string card_number;  // optional
  int64_t client_id;
  std::string currency;
  std::string cvc;  // optional
  std::string ec_data;  // optional
  std::string ecr_data;  // optional
  std::string emv_data;  // optional
  int64_t exchange_fee;  // optional
  std::string exchange_rate;  // optional
  std::string language_code;  // optional
  std::string merchant_address;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string message_type;  // optional
  int64_t original_trace_number;  // optional
  std::string original_transaction_id;  // optional
  std::string password;  // optional
  std::string payment_reason;  // optional
  std::string receipt_footer;  // optional
  std::string receipt_header;  // optional
  int64_t receipt_layout;  // optional
  std::string receipt_number;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;  // optional
  std::string svc;  // optional
  int64_t terminal_id;
  std::string terminal_location;  // optional
  int64_t trace_number;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  std::string tx_type;  // optional
  std::string user_data;  // optional
};

struct RegisterTecsCompany {
  std::string corporate_uuid;
  std::string package_order_uuid;
  int64_t partner_id;  // optional
  std::string partner_name;  // optional
  std::string product_order_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
};

struct RegisterTecsCompanyCreateData {
  std::string corporate_uuid;
  std::string package_order_uuid;
  int64_t partner_id;  // optional
  std::string partner_name;  // optional
  std::string product_order_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
};

struct RegisterTerminal {
  std::map<std::string, Value> additional_data;  // optional
  std::string corporate_uuid;
  std::string package_order_uuid;
  std::string product_order_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string tecs_web_secret_key;  // optional
  std::string template_name;
  std::string terminal_country_code;
  int64_t terminal_id;  // optional
  std::string terminal_id_acq;  // optional
  std::string terminal_language_code;
  std::string terminal_location;
  std::string terminal_serial_number;  // optional
  std::string token_io_alia;  // optional
  std::string token_io_iban;  // optional
  std::string token_io_member_id;  // optional
  std::string web_shop_url;  // optional
};

struct RegisterTerminalCreateData {
  std::map<std::string, Value> additional_data;  // optional
  std::string corporate_uuid;
  std::string package_order_uuid;
  std::string product_order_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string tecs_web_secret_key;  // optional
  std::string template_name;
  std::string terminal_country_code;
  int64_t terminal_id;  // optional
  std::string terminal_id_acq;  // optional
  std::string terminal_language_code;
  std::string terminal_location;
  std::string terminal_serial_number;  // optional
  std::string token_io_alia;  // optional
  std::string token_io_iban;  // optional
  std::string token_io_member_id;  // optional
  std::string web_shop_url;  // optional
};

struct ReportData {
  std::vector<Value> card_brand_report_data;  // optional
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::string corporate_id;
  std::string currency;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sum_over_credit_tx;  // optional
  std::map<std::string, Value> sum_over_debit_tx;  // optional
  int64_t terminal_id;  // optional
};

struct ReportDataCreateData {
  std::vector<Value> card_brand_report_data;  // optional
  std::string clearing_date_from;
  std::string clearing_date_to;
  std::string corporate_id;
  std::string currency;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sum_over_credit_tx;  // optional
  std::map<std::string, Value> sum_over_debit_tx;  // optional
  int64_t terminal_id;  // optional
};

struct StatusTransaction {
  std::string acquirer_name;  // optional
  std::string acquirer_terminal_id;  // optional
  int64_t amount;  // optional
  std::string application_cryptogram;  // optional
  Value authorization_code;  // optional
  std::string authorization_date;  // optional
  std::string card_brand;  // optional
  std::string card_entry;  // optional
  std::string card_expiration;  // optional
  std::string card_number;  // optional
  int64_t clearing_amount;  // optional
  std::string clearing_batch_id;  // optional
  std::string clearing_currency;  // optional
  std::string clearing_date;  // optional
  std::string clearing_processed_date;  // optional
  std::string clearing_status;  // optional
  int64_t client_id;  // optional
  std::string currency;  // optional
  std::string cvm;  // optional
  std::string ecr_data;  // optional
  std::string emv_application_id;  // optional
  std::string emv_application_label;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string original_client_id;  // optional
  int64_t original_terminal_id;  // optional
  std::string original_transaction_id;  // optional
  std::string payment_reason;  // optional
  std::string receipt_number;  // optional
  int64_t response_code;  // optional
  std::string response_code_from_a;  // optional
  std::string response_message;  // optional
  std::string retrieval_reference_number;  // optional
  std::string service_code;  // optional
  std::string settlement_status;  // optional
  int64_t source_id;  // optional
  int64_t tecsengine_response_code;  // optional
  std::string tecsengine_response_text;  // optional
  std::string terminal_end_of_day_date;  // optional
  int64_t terminal_id;  // optional
  std::string terminal_location;  // optional
  int64_t tip_amount;  // optional
  int64_t trace_number;  // optional
  std::string transaction_clearing_date;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  int64_t transaction_seq_number;  // optional
  std::string transaction_server_date;  // optional
  std::string transaction_source;  // optional
  std::string transaction_type;  // optional
};

struct StatusTransactionCreateData {
  std::string acquirer_name;  // optional
  std::string acquirer_terminal_id;  // optional
  int64_t amount;  // optional
  std::string application_cryptogram;  // optional
  Value authorization_code;  // optional
  std::string authorization_date;  // optional
  std::string card_brand;  // optional
  std::string card_entry;  // optional
  std::string card_expiration;  // optional
  std::string card_number;  // optional
  int64_t clearing_amount;  // optional
  std::string clearing_batch_id;  // optional
  std::string clearing_currency;  // optional
  std::string clearing_date;  // optional
  std::string clearing_processed_date;  // optional
  std::string clearing_status;  // optional
  int64_t client_id;  // optional
  std::string currency;  // optional
  std::string cvm;  // optional
  std::string ecr_data;  // optional
  std::string emv_application_id;  // optional
  std::string emv_application_label;  // optional
  std::string merchant_name;  // optional
  std::string merchant_number;  // optional
  std::string original_client_id;  // optional
  int64_t original_terminal_id;  // optional
  std::string original_transaction_id;  // optional
  std::string payment_reason;  // optional
  std::string receipt_number;  // optional
  int64_t response_code;  // optional
  std::string response_code_from_a;  // optional
  std::string response_message;  // optional
  std::string retrieval_reference_number;  // optional
  std::string service_code;  // optional
  std::string settlement_status;  // optional
  int64_t source_id;  // optional
  int64_t tecsengine_response_code;  // optional
  std::string tecsengine_response_text;  // optional
  std::string terminal_end_of_day_date;  // optional
  int64_t terminal_id;  // optional
  std::string terminal_location;  // optional
  int64_t tip_amount;  // optional
  int64_t trace_number;  // optional
  std::string transaction_clearing_date;  // optional
  std::string transaction_date;  // optional
  std::string transaction_id;  // optional
  int64_t transaction_seq_number;  // optional
  std::string transaction_server_date;  // optional
  std::string transaction_source;  // optional
  std::string transaction_type;  // optional
};

struct StoreTerminalParameter {
  std::map<std::string, Value> acq_tab_nexo;  // optional
  std::string config_version;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;
  std::string tid_sent;  // optional
};

struct StoreTerminalParameterCreateData {
  std::map<std::string, Value> acq_tab_nexo;  // optional
  std::string config_version;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string serial_number;
  std::string tid_sent;  // optional
};

struct TerminalId {
  std::vector<Value> device_serial_number;
  std::vector<Value> duplicate_terminal_id;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> terminal;  // optional
};

struct TerminalIdCreateData {
  std::vector<Value> device_serial_number;
  std::vector<Value> duplicate_terminal_id;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> terminal;  // optional
};

struct TransactionHistory {
  std::string authorization_code;  // optional
  std::string card_brand;  // optional
  std::string clearing_amount_from;  // optional
  std::string clearing_amount_to;  // optional
  std::string clearing_currency;  // optional
  std::string clearing_status;  // optional
  std::string corporate_uuid;  // optional
  std::string order_by_transaction_date;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string payment_token_public_id;  // optional
  std::string receipt_number;  // optional
  std::string referenced_transaction_id;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  std::string tecsengine_response_code_from;  // optional
  std::string tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  std::string trace_number;  // optional
  std::string transaction_amount_from;  // optional
  std::string transaction_amount_to;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> transaction_history;  // optional
  std::string transaction_id;  // optional
  std::string transaction_type;  // optional
  std::string wallet;  // optional
};

struct TransactionHistoryCreateData {
  std::string authorization_code;  // optional
  std::string card_brand;  // optional
  std::string clearing_amount_from;  // optional
  std::string clearing_amount_to;  // optional
  std::string clearing_currency;  // optional
  std::string clearing_status;  // optional
  std::string corporate_uuid;  // optional
  std::string order_by_transaction_date;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string payment_token_public_id;  // optional
  std::string receipt_number;  // optional
  std::string referenced_transaction_id;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string retrieval_reference_number;  // optional
  int64_t source_id;  // optional
  std::string tecsengine_response_code_from;  // optional
  std::string tecsengine_response_code_to;  // optional
  int64_t terminal_id;  // optional
  std::string trace_number;  // optional
  std::string transaction_amount_from;  // optional
  std::string transaction_amount_to;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> transaction_history;  // optional
  std::string transaction_id;  // optional
  std::string transaction_type;  // optional
  std::string wallet;  // optional
};

struct TransactionsCount {
  std::string period;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> transactions_count;  // optional
};

struct TransactionsCountCreateData {
  std::string period;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> transactions_count;  // optional
};

struct TransactionsCountCardBrand {
  std::string period;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> transactions_count;  // optional
};

struct TransactionsCountCardBrandCreateData {
  std::string period;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> transactions_count;  // optional
};

struct TransactionsTurnover {
  std::string period;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> turnover;  // optional
};

struct TransactionsTurnoverCreateData {
  std::string period;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string transaction_date_from;  // optional
  std::string transaction_date_to;  // optional
  std::vector<Value> turnover;  // optional
};

struct UpdateMerchant {
  std::string city;  // optional
  std::string corporate_uuid;
  std::string country;  // optional
  std::string merchant_category_code;  // optional
  std::string name;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string state;  // optional
  std::string street;  // optional
  std::string vu_nummer;  // optional
  std::string zipcode;  // optional
};

struct UpdateMerchantCreateData {
  std::string city;  // optional
  std::string corporate_uuid;
  std::string country;  // optional
  std::string merchant_category_code;  // optional
  std::string name;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string state;  // optional
  std::string street;  // optional
  std::string vu_nummer;  // optional
  std::string zipcode;  // optional
};

struct UpdateTemplateXml {
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
  std::string template_xml;
};

struct UpdateTemplateXmlCreateData {
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string template_name;
  std::string template_xml;
};

struct Version {
  std::string app_name;  // optional
  std::string build_date;  // optional
  std::string version;  // optional
};

struct VersionLoadMatch {
  std::string app_name;  // optional
  std::string build_date;  // optional
  std::string version;  // optional
};

} // namespace types
} // namespace sdk

#endif // SDK_BLUEFINTECSMERCHANTSERVICES_TYPES_HPP
