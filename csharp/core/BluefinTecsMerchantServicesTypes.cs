// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These records are documentation/DX reference shapes ONLY. The SDK ops take
// and return the loose object model (Dictionary<string, object?> / object?) at
// runtime, so these types are not wired into the op signatures — use them to
// describe a payload before converting it to a dictionary. Optional (req:false)
// keys are modelled as nullable properties.

namespace BluefinTecsMerchantServicesSdk.Types;

public record CancelTransaction
{
    public string? acquirer_id { get; init; }
    public string? acquirer_name { get; init; }
    public string? actual_bonus_point { get; init; }
    public long? amount { get; init; }
    public string? authorization_code { get; init; }
    public string? balance_amount { get; init; }
    public string? card_brand { get; init; }
    public string? card_number { get; init; }
    public long client_id { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ec_data { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_data { get; init; }
    public long? exchange_fee { get; init; }
    public string? exchange_rate { get; init; }
    public string? language_code { get; init; }
    public string? merchant_address { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? message_type { get; init; }
    public long? original_trace_number { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_footer { get; init; }
    public string? receipt_header { get; init; }
    public long? receipt_layout { get; init; }
    public string receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? serial_number { get; init; }
    public string? svc { get; init; }
    public long terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public string? tx_type { get; init; }
    public string? user_data { get; init; }
}

public record CancelTransactionCreateData
{
    public string? acquirer_id { get; init; }
    public string? acquirer_name { get; init; }
    public string? actual_bonus_point { get; init; }
    public long? amount { get; init; }
    public string? authorization_code { get; init; }
    public string? balance_amount { get; init; }
    public string? card_brand { get; init; }
    public string? card_number { get; init; }
    public long client_id { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ec_data { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_data { get; init; }
    public long? exchange_fee { get; init; }
    public string? exchange_rate { get; init; }
    public string? language_code { get; init; }
    public string? merchant_address { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? message_type { get; init; }
    public long? original_trace_number { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_footer { get; init; }
    public string? receipt_header { get; init; }
    public long? receipt_layout { get; init; }
    public string receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? serial_number { get; init; }
    public string? svc { get; init; }
    public long terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public string? tx_type { get; init; }
    public string? user_data { get; init; }
}

public record CheckCardBlackListed
{
    public string? card_no { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record CheckCardBlackListedCreateData
{
    public string? card_no { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record CreateProduct
{
    public long? acquirer_id { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
    public string template_type { get; init; }
    public string template_xml { get; init; }
    public string terminal_type { get; init; }
}

public record CreateProductCreateData
{
    public long? acquirer_id { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
    public string template_type { get; init; }
    public string template_xml { get; init; }
    public string terminal_type { get; init; }
}

public record DeactivateTerminal
{
    public string? corporate_uuid { get; init; }
    public string deactivation_reason { get; init; }
    public string? package_order_uuid { get; init; }
    public string? product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
}

public record DeactivateTerminalCreateData
{
    public string? corporate_uuid { get; init; }
    public string deactivation_reason { get; init; }
    public string? package_order_uuid { get; init; }
    public string? product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
}

public record DigitalServicesApi
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long? tx_count { get; init; }
    public string? tx_id_end { get; init; }
    public string? tx_id_start { get; init; }
    public long? tx_seq_no_end { get; init; }
    public long? tx_seq_no_start { get; init; }
    public long? tx_total { get; init; }
}

public record DigitalServicesApiLoadMatch
{
    public string? clearing_date_from { get; init; }
    public string? clearing_date_to { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long? tx_count { get; init; }
    public string? tx_id_end { get; init; }
    public string? tx_id_start { get; init; }
    public long? tx_seq_no_end { get; init; }
    public long? tx_seq_no_start { get; init; }
    public long? tx_total { get; init; }
}

public record DigitalServicesApiCreateData
{
    public string? file_id { get; init; }
}

public record EcDataEcom
{
    public string? ecom_data { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
    public string transaction_id { get; init; }
    public string transaction_type { get; init; }
}

public record EcDataEcomCreateData
{
    public string? ecom_data { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
    public string transaction_id { get; init; }
    public string transaction_type { get; init; }
}

public record EcomParameter
{
    public string? ecom_pass { get; init; }
    public string? ecom_skey { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
}

public record EcomParameterCreateData
{
    public string? ecom_pass { get; init; }
    public string? ecom_skey { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
}

public record EcrData
{
    public string? ecr_data { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
    public string transaction_id { get; init; }
    public string transaction_type { get; init; }
}

public record EcrDataCreateData
{
    public string? ecr_data { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
    public string transaction_id { get; init; }
    public string transaction_type { get; init; }
}

public record EmvData
{
    public string? emv_data { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
    public string transaction_id { get; init; }
    public string transaction_type { get; init; }
}

public record EmvDataCreateData
{
    public string? emv_data { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
    public string transaction_id { get; init; }
    public string transaction_type { get; init; }
}

public record EnableAcquiring
{
    public long? account_no { get; init; }
    public Dictionary<string, object?>? additional_data { get; init; }
    public string corporate_uuid { get; init; }
    public string currency { get; init; }
    public long merchant_category_code { get; init; }
    public string package_order_uuid { get; init; }
    public string product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long? sorting_code { get; init; }
    public string template_name { get; init; }
    public List<object?>? terminal_id { get; init; }
    public string? terminal_id_acq { get; init; }
    public string? vu_nummer { get; init; }
}

public record EnableAcquiringCreateData
{
    public long? account_no { get; init; }
    public Dictionary<string, object?>? additional_data { get; init; }
    public string corporate_uuid { get; init; }
    public string currency { get; init; }
    public long merchant_category_code { get; init; }
    public string package_order_uuid { get; init; }
    public string product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long? sorting_code { get; init; }
    public string template_name { get; init; }
    public List<object?>? terminal_id { get; init; }
    public string? terminal_id_acq { get; init; }
    public string? vu_nummer { get; init; }
}

public record GetMerchantContractNumber
{
    public string merchant_contract_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record GetMerchantContractNumberCreateData
{
    public string merchant_contract_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record GetTemplateXml
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
}

public record GetTemplateXmlCreateData
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
}

public record IntroduceMandator
{
    public string mandator_name { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record IntroduceMandatorCreateData
{
    public string mandator_name { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record IntroducePackage
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string terminal_template_description { get; init; }
}

public record IntroducePackageCreateData
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string terminal_template_description { get; init; }
}

public record KeepAlive
{
    public string? hwserialno { get; init; }
    public string? ka_date_time_from { get; init; }
    public string? ka_date_time_to { get; init; }
    public List<object?>? keep_alive_data { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? terminal_date_time_from { get; init; }
    public string? terminal_date_time_to { get; init; }
    public long? terminal_id { get; init; }
}

public record KeepAliveCreateData
{
    public string? hwserialno { get; init; }
    public string? ka_date_time_from { get; init; }
    public string? ka_date_time_to { get; init; }
    public List<object?>? keep_alive_data { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? terminal_date_time_from { get; init; }
    public string? terminal_date_time_to { get; init; }
    public long? terminal_id { get; init; }
}

public record ListTerminal
{
    public List<object?>? corporate_uuid { get; init; }
    public Dictionary<string, object?>? filter { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?>? terminal { get; init; }
}

public record ListTerminalCreateData
{
    public List<object?>? corporate_uuid { get; init; }
    public Dictionary<string, object?>? filter { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?>? terminal { get; init; }
}

public record MandatorClearingExport
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public List<object?>? record { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record MandatorClearingExportCreateData
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public List<object?>? record { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record MandatorClearingExportDownload
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public string? file_id { get; init; }
    public string? filename_template { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? status { get; init; }
}

public record MandatorClearingExportDownloadLoadMatch
{
    public string id { get; init; }
}

public record MandatorClearingExportDownloadCreateData
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public string? file_id { get; init; }
    public string? filename_template { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? status { get; init; }
}

public record MandatorClearingExportSummary
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public List<object?>? record { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record MandatorClearingExportSummaryCreateData
{
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public List<object?>? record { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record MerchantPortalServicesApi
{
    public string? authorization_code { get; init; }
    public string? card_brand { get; init; }
    public string? clearing_amount_from { get; init; }
    public string? clearing_amount_to { get; init; }
    public string? clearing_currency { get; init; }
    public string? clearing_status { get; init; }
    public string? corporate_uuid { get; init; }
    public string? order_by_transaction_date { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? receipt_number { get; init; }
    public string? referenced_transaction_id { get; init; }
    public string? retrieval_reference_number { get; init; }
    public long? source_id { get; init; }
    public string? tecsengine_response_code_from { get; init; }
    public string? tecsengine_response_code_to { get; init; }
    public long? terminal_id { get; init; }
    public string? trace_number { get; init; }
    public string? transaction_amount_from { get; init; }
    public string? transaction_amount_to { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public string? transaction_id { get; init; }
    public string? transaction_type { get; init; }
    public string? wallet { get; init; }
}

public record MerchantPortalServicesApiCreateData
{
    public string? authorization_code { get; init; }
    public string? card_brand { get; init; }
    public string? clearing_amount_from { get; init; }
    public string? clearing_amount_to { get; init; }
    public string? clearing_currency { get; init; }
    public string? clearing_status { get; init; }
    public string? corporate_uuid { get; init; }
    public string? order_by_transaction_date { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? receipt_number { get; init; }
    public string? referenced_transaction_id { get; init; }
    public string? retrieval_reference_number { get; init; }
    public long? source_id { get; init; }
    public string? tecsengine_response_code_from { get; init; }
    public string? tecsengine_response_code_to { get; init; }
    public long? terminal_id { get; init; }
    public string? trace_number { get; init; }
    public string? transaction_amount_from { get; init; }
    public string? transaction_amount_to { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public string? transaction_id { get; init; }
    public string? transaction_type { get; init; }
    public string? wallet { get; init; }
}

public record MoveTid
{
    public List<object?> productorderuuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? target_packageorderuuid { get; init; }
    public string? target_productorderuuid { get; init; }
}

public record MoveTidCreateData
{
    public List<object?> productorderuuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? target_packageorderuuid { get; init; }
    public string? target_productorderuuid { get; init; }
}

public record PaymentManual
{
    public string? acquirer_name { get; init; }
    public long amount { get; init; }
    public string? authorization_number { get; init; }
    public string card_number { get; init; }
    public string? card_type { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? date_time_tx { get; init; }
    public string exp_date { get; init; }
    public string? merchant_id { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? response_code { get; init; }
    public string? response_message { get; init; }
    public string? terminal_id { get; init; }
    public string? transaction_id { get; init; }
    public string txtype { get; init; }
}

public record PaymentManualCreateData
{
    public string? acquirer_name { get; init; }
    public long amount { get; init; }
    public string? authorization_number { get; init; }
    public string card_number { get; init; }
    public string? card_type { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? date_time_tx { get; init; }
    public string exp_date { get; init; }
    public string? merchant_id { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? response_code { get; init; }
    public string? response_message { get; init; }
    public string? terminal_id { get; init; }
    public string? transaction_id { get; init; }
    public string txtype { get; init; }
}

public record PaymentSred
{
    public string? acquirer_name { get; init; }
    public long amount { get; init; }
    public string? authorization_number { get; init; }
    public string? card_type { get; init; }
    public string currency { get; init; }
    public string? date_time_tx { get; init; }
    public string device_payload { get; init; }
    public string? merchant_id { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sred { get; init; }
    public string? terminal_id { get; init; }
    public string? transaction_id { get; init; }
    public string txtype { get; init; }
}

public record PaymentSredCreateData
{
    public string? acquirer_name { get; init; }
    public long amount { get; init; }
    public string? authorization_number { get; init; }
    public string? card_type { get; init; }
    public string currency { get; init; }
    public string? date_time_tx { get; init; }
    public string device_payload { get; init; }
    public string? merchant_id { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sred { get; init; }
    public string? terminal_id { get; init; }
    public string? transaction_id { get; init; }
    public string txtype { get; init; }
}

public record PreAuthTransactionCompletion
{
    public string? acquirer_id { get; init; }
    public string? acquirer_name { get; init; }
    public string? actual_bonus_point { get; init; }
    public long? amount { get; init; }
    public string? authorization_code { get; init; }
    public string? balance_amount { get; init; }
    public string? card_brand { get; init; }
    public string? card_number { get; init; }
    public string card_number_reference { get; init; }
    public long client_id { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ec_data { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_data { get; init; }
    public long? exchange_fee { get; init; }
    public string? exchange_rate { get; init; }
    public string? language_code { get; init; }
    public string? merchant_address { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? message_type { get; init; }
    public long? original_trace_number { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_footer { get; init; }
    public string? receipt_header { get; init; }
    public long? receipt_layout { get; init; }
    public string receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? serial_number { get; init; }
    public string? svc { get; init; }
    public long terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public string transaction_type { get; init; }
    public string? tx_type { get; init; }
    public string? user_data { get; init; }
}

public record PreAuthTransactionCompletionCreateData
{
    public string? acquirer_id { get; init; }
    public string? acquirer_name { get; init; }
    public string? actual_bonus_point { get; init; }
    public long? amount { get; init; }
    public string? authorization_code { get; init; }
    public string? balance_amount { get; init; }
    public string? card_brand { get; init; }
    public string? card_number { get; init; }
    public string card_number_reference { get; init; }
    public long client_id { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ec_data { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_data { get; init; }
    public long? exchange_fee { get; init; }
    public string? exchange_rate { get; init; }
    public string? language_code { get; init; }
    public string? merchant_address { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? message_type { get; init; }
    public long? original_trace_number { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_footer { get; init; }
    public string? receipt_header { get; init; }
    public long? receipt_layout { get; init; }
    public string receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? serial_number { get; init; }
    public string? svc { get; init; }
    public long terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public string transaction_type { get; init; }
    public string? tx_type { get; init; }
    public string? user_data { get; init; }
}

public record ReactivateTerminal
{
    public string? corporate_uuid { get; init; }
    public string? package_order_uuid { get; init; }
    public string? product_order_uuid { get; init; }
    public string reactivation_reason { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
}

public record ReactivateTerminalCreateData
{
    public string? corporate_uuid { get; init; }
    public string? package_order_uuid { get; init; }
    public string? product_order_uuid { get; init; }
    public string reactivation_reason { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public long terminal_id { get; init; }
}

public record RefundTransaction
{
    public string? acquirer_id { get; init; }
    public string? acquirer_name { get; init; }
    public string? actual_bonus_point { get; init; }
    public long? amount { get; init; }
    public string? authorization_code { get; init; }
    public string? balance_amount { get; init; }
    public string? card_brand { get; init; }
    public string? card_number { get; init; }
    public long client_id { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ec_data { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_data { get; init; }
    public long? exchange_fee { get; init; }
    public string? exchange_rate { get; init; }
    public string? language_code { get; init; }
    public string? merchant_address { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? message_type { get; init; }
    public long? original_trace_number { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_footer { get; init; }
    public string? receipt_header { get; init; }
    public long? receipt_layout { get; init; }
    public string receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? serial_number { get; init; }
    public string? svc { get; init; }
    public long terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public string? tx_type { get; init; }
    public string? user_data { get; init; }
}

public record RefundTransactionCreateData
{
    public string? acquirer_id { get; init; }
    public string? acquirer_name { get; init; }
    public string? actual_bonus_point { get; init; }
    public long? amount { get; init; }
    public string? authorization_code { get; init; }
    public string? balance_amount { get; init; }
    public string? card_brand { get; init; }
    public string? card_number { get; init; }
    public long client_id { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ec_data { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_data { get; init; }
    public long? exchange_fee { get; init; }
    public string? exchange_rate { get; init; }
    public string? language_code { get; init; }
    public string? merchant_address { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? message_type { get; init; }
    public long? original_trace_number { get; init; }
    public string? original_transaction_id { get; init; }
    public string? password { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_footer { get; init; }
    public string? receipt_header { get; init; }
    public long? receipt_layout { get; init; }
    public string receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? serial_number { get; init; }
    public string? svc { get; init; }
    public long terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public string? tx_type { get; init; }
    public string? user_data { get; init; }
}

public record RegisterTecsCompany
{
    public string corporate_uuid { get; init; }
    public string package_order_uuid { get; init; }
    public long? partner_id { get; init; }
    public string? partner_name { get; init; }
    public string product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
}

public record RegisterTecsCompanyCreateData
{
    public string corporate_uuid { get; init; }
    public string package_order_uuid { get; init; }
    public long? partner_id { get; init; }
    public string? partner_name { get; init; }
    public string product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
}

public record RegisterTerminal
{
    public Dictionary<string, object?>? additional_data { get; init; }
    public string corporate_uuid { get; init; }
    public string package_order_uuid { get; init; }
    public string product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? tecs_web_secret_key { get; init; }
    public string template_name { get; init; }
    public string terminal_country_code { get; init; }
    public long? terminal_id { get; init; }
    public string? terminal_id_acq { get; init; }
    public string terminal_language_code { get; init; }
    public string terminal_location { get; init; }
    public string? terminal_serial_number { get; init; }
    public string? token_io_alia { get; init; }
    public string? token_io_iban { get; init; }
    public string? token_io_member_id { get; init; }
    public string? web_shop_url { get; init; }
}

public record RegisterTerminalCreateData
{
    public Dictionary<string, object?>? additional_data { get; init; }
    public string corporate_uuid { get; init; }
    public string package_order_uuid { get; init; }
    public string product_order_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? tecs_web_secret_key { get; init; }
    public string template_name { get; init; }
    public string terminal_country_code { get; init; }
    public long? terminal_id { get; init; }
    public string? terminal_id_acq { get; init; }
    public string terminal_language_code { get; init; }
    public string terminal_location { get; init; }
    public string? terminal_serial_number { get; init; }
    public string? token_io_alia { get; init; }
    public string? token_io_iban { get; init; }
    public string? token_io_member_id { get; init; }
    public string? web_shop_url { get; init; }
}

public record ReportData
{
    public List<object?>? card_brand_report_data { get; init; }
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public string corporate_id { get; init; }
    public string currency { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sum_over_credit_tx { get; init; }
    public Dictionary<string, object?>? sum_over_debit_tx { get; init; }
    public long? terminal_id { get; init; }
}

public record ReportDataCreateData
{
    public List<object?>? card_brand_report_data { get; init; }
    public string clearing_date_from { get; init; }
    public string clearing_date_to { get; init; }
    public string corporate_id { get; init; }
    public string currency { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sum_over_credit_tx { get; init; }
    public Dictionary<string, object?>? sum_over_debit_tx { get; init; }
    public long? terminal_id { get; init; }
}

public record StatusTransaction
{
    public string? acquirer_name { get; init; }
    public string? acquirer_terminal_id { get; init; }
    public long? amount { get; init; }
    public string? application_cryptogram { get; init; }
    public object? authorization_code { get; init; }
    public string? authorization_date { get; init; }
    public string? card_brand { get; init; }
    public string? card_entry { get; init; }
    public string? card_expiration { get; init; }
    public string? card_number { get; init; }
    public long? clearing_amount { get; init; }
    public string? clearing_batch_id { get; init; }
    public string? clearing_currency { get; init; }
    public string? clearing_date { get; init; }
    public string? clearing_processed_date { get; init; }
    public string? clearing_status { get; init; }
    public long? client_id { get; init; }
    public string? currency { get; init; }
    public string? cvm { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_application_id { get; init; }
    public string? emv_application_label { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? original_client_id { get; init; }
    public long? original_terminal_id { get; init; }
    public string? original_transaction_id { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_code_from_a { get; init; }
    public string? response_message { get; init; }
    public string? retrieval_reference_number { get; init; }
    public string? service_code { get; init; }
    public string? settlement_status { get; init; }
    public long? source_id { get; init; }
    public long? tecsengine_response_code { get; init; }
    public string? tecsengine_response_text { get; init; }
    public string? terminal_end_of_day_date { get; init; }
    public long? terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? tip_amount { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_clearing_date { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public long? transaction_seq_number { get; init; }
    public string? transaction_server_date { get; init; }
    public string? transaction_source { get; init; }
    public string? transaction_type { get; init; }
}

public record StatusTransactionCreateData
{
    public string? acquirer_name { get; init; }
    public string? acquirer_terminal_id { get; init; }
    public long? amount { get; init; }
    public string? application_cryptogram { get; init; }
    public object? authorization_code { get; init; }
    public string? authorization_date { get; init; }
    public string? card_brand { get; init; }
    public string? card_entry { get; init; }
    public string? card_expiration { get; init; }
    public string? card_number { get; init; }
    public long? clearing_amount { get; init; }
    public string? clearing_batch_id { get; init; }
    public string? clearing_currency { get; init; }
    public string? clearing_date { get; init; }
    public string? clearing_processed_date { get; init; }
    public string? clearing_status { get; init; }
    public long? client_id { get; init; }
    public string? currency { get; init; }
    public string? cvm { get; init; }
    public string? ecr_data { get; init; }
    public string? emv_application_id { get; init; }
    public string? emv_application_label { get; init; }
    public string? merchant_name { get; init; }
    public string? merchant_number { get; init; }
    public string? original_client_id { get; init; }
    public long? original_terminal_id { get; init; }
    public string? original_transaction_id { get; init; }
    public string? payment_reason { get; init; }
    public string? receipt_number { get; init; }
    public long? response_code { get; init; }
    public string? response_code_from_a { get; init; }
    public string? response_message { get; init; }
    public string? retrieval_reference_number { get; init; }
    public string? service_code { get; init; }
    public string? settlement_status { get; init; }
    public long? source_id { get; init; }
    public long? tecsengine_response_code { get; init; }
    public string? tecsengine_response_text { get; init; }
    public string? terminal_end_of_day_date { get; init; }
    public long? terminal_id { get; init; }
    public string? terminal_location { get; init; }
    public long? tip_amount { get; init; }
    public long? trace_number { get; init; }
    public string? transaction_clearing_date { get; init; }
    public string? transaction_date { get; init; }
    public string? transaction_id { get; init; }
    public long? transaction_seq_number { get; init; }
    public string? transaction_server_date { get; init; }
    public string? transaction_source { get; init; }
    public string? transaction_type { get; init; }
}

public record StoreTerminalParameter
{
    public Dictionary<string, object?>? acq_tab_nexo { get; init; }
    public string? config_version { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string serial_number { get; init; }
    public string? tid_sent { get; init; }
}

public record StoreTerminalParameterCreateData
{
    public Dictionary<string, object?>? acq_tab_nexo { get; init; }
    public string? config_version { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string serial_number { get; init; }
    public string? tid_sent { get; init; }
}

public record TerminalId
{
    public List<object?> device_serial_number { get; init; }
    public List<object?>? duplicate_terminal_id { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?>? terminal { get; init; }
}

public record TerminalIdCreateData
{
    public List<object?> device_serial_number { get; init; }
    public List<object?>? duplicate_terminal_id { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?>? terminal { get; init; }
}

public record TransactionHistory
{
    public string? authorization_code { get; init; }
    public string? card_brand { get; init; }
    public string? clearing_amount_from { get; init; }
    public string? clearing_amount_to { get; init; }
    public string? clearing_currency { get; init; }
    public string? clearing_status { get; init; }
    public string? corporate_uuid { get; init; }
    public string? order_by_transaction_date { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? payment_token_public_id { get; init; }
    public string? receipt_number { get; init; }
    public string? referenced_transaction_id { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? retrieval_reference_number { get; init; }
    public long? source_id { get; init; }
    public string? tecsengine_response_code_from { get; init; }
    public string? tecsengine_response_code_to { get; init; }
    public long? terminal_id { get; init; }
    public string? trace_number { get; init; }
    public string? transaction_amount_from { get; init; }
    public string? transaction_amount_to { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? transaction_history { get; init; }
    public string? transaction_id { get; init; }
    public string? transaction_type { get; init; }
    public string? wallet { get; init; }
}

public record TransactionHistoryCreateData
{
    public string? authorization_code { get; init; }
    public string? card_brand { get; init; }
    public string? clearing_amount_from { get; init; }
    public string? clearing_amount_to { get; init; }
    public string? clearing_currency { get; init; }
    public string? clearing_status { get; init; }
    public string? corporate_uuid { get; init; }
    public string? order_by_transaction_date { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? payment_token_public_id { get; init; }
    public string? receipt_number { get; init; }
    public string? referenced_transaction_id { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? retrieval_reference_number { get; init; }
    public long? source_id { get; init; }
    public string? tecsengine_response_code_from { get; init; }
    public string? tecsengine_response_code_to { get; init; }
    public long? terminal_id { get; init; }
    public string? trace_number { get; init; }
    public string? transaction_amount_from { get; init; }
    public string? transaction_amount_to { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? transaction_history { get; init; }
    public string? transaction_id { get; init; }
    public string? transaction_type { get; init; }
    public string? wallet { get; init; }
}

public record TransactionsCount
{
    public string? period { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? transactions_count { get; init; }
}

public record TransactionsCountCreateData
{
    public string? period { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? transactions_count { get; init; }
}

public record TransactionsCountCardBrand
{
    public string? period { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? transactions_count { get; init; }
}

public record TransactionsCountCardBrandCreateData
{
    public string? period { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? transactions_count { get; init; }
}

public record TransactionsTurnover
{
    public string? period { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? turnover { get; init; }
}

public record TransactionsTurnoverCreateData
{
    public string? period { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? transaction_date_from { get; init; }
    public string? transaction_date_to { get; init; }
    public List<object?>? turnover { get; init; }
}

public record UpdateMerchant
{
    public string? city { get; init; }
    public string corporate_uuid { get; init; }
    public string? country { get; init; }
    public string? merchant_category_code { get; init; }
    public string? name { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? state { get; init; }
    public string? street { get; init; }
    public string? vu_nummer { get; init; }
    public string? zipcode { get; init; }
}

public record UpdateMerchantCreateData
{
    public string? city { get; init; }
    public string corporate_uuid { get; init; }
    public string? country { get; init; }
    public string? merchant_category_code { get; init; }
    public string? name { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? state { get; init; }
    public string? street { get; init; }
    public string? vu_nummer { get; init; }
    public string? zipcode { get; init; }
}

public record UpdateTemplateXml
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
    public string template_xml { get; init; }
}

public record UpdateTemplateXmlCreateData
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string template_name { get; init; }
    public string template_xml { get; init; }
}

public record Version
{
    public string? app_name { get; init; }
    public string? build_date { get; init; }
    public string? version { get; init; }
}

public record VersionLoadMatch
{
    public string? app_name { get; init; }
    public string? build_date { get; init; }
    public string? version { get; init; }
}

