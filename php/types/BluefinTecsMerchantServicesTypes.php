<?php
declare(strict_types=1);

// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** CancelTransaction entity data model. */
class CancelTransaction
{
    public ?string $acquirer_id = null;
    public ?string $acquirer_name = null;
    public ?string $actual_bonus_point = null;
    public ?int $amount = null;
    public ?string $authorization_code = null;
    public ?string $balance_amount = null;
    public ?string $card_brand = null;
    public ?string $card_number = null;
    public int $client_id;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ec_data = null;
    public ?string $ecr_data = null;
    public ?string $emv_data = null;
    public ?int $exchange_fee = null;
    public ?string $exchange_rate = null;
    public ?string $language_code = null;
    public ?string $merchant_address = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $message_type = null;
    public ?int $original_trace_number = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $payment_reason = null;
    public ?string $receipt_footer = null;
    public ?string $receipt_header = null;
    public ?int $receipt_layout = null;
    public string $receipt_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $serial_number = null;
    public ?string $svc = null;
    public int $terminal_id;
    public ?string $terminal_location = null;
    public ?int $trace_number = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public ?string $tx_type = null;
    public ?string $user_data = null;
}

/** Request payload for CancelTransaction#create. */
class CancelTransactionCreateData
{
    public ?string $acquirer_id = null;
    public ?string $acquirer_name = null;
    public ?string $actual_bonus_point = null;
    public ?int $amount = null;
    public ?string $authorization_code = null;
    public ?string $balance_amount = null;
    public ?string $card_brand = null;
    public ?string $card_number = null;
    public int $client_id;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ec_data = null;
    public ?string $ecr_data = null;
    public ?string $emv_data = null;
    public ?int $exchange_fee = null;
    public ?string $exchange_rate = null;
    public ?string $language_code = null;
    public ?string $merchant_address = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $message_type = null;
    public ?int $original_trace_number = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $payment_reason = null;
    public ?string $receipt_footer = null;
    public ?string $receipt_header = null;
    public ?int $receipt_layout = null;
    public string $receipt_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $serial_number = null;
    public ?string $svc = null;
    public int $terminal_id;
    public ?string $terminal_location = null;
    public ?int $trace_number = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public ?string $tx_type = null;
    public ?string $user_data = null;
}

/** CheckCardBlackListed entity data model. */
class CheckCardBlackListed
{
    public ?string $card_no = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for CheckCardBlackListed#create. */
class CheckCardBlackListedCreateData
{
    public ?string $card_no = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** CreateProduct entity data model. */
class CreateProduct
{
    public ?int $acquirer_id = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
    public string $template_type;
    public string $template_xml;
    public string $terminal_type;
}

/** Request payload for CreateProduct#create. */
class CreateProductCreateData
{
    public ?int $acquirer_id = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
    public string $template_type;
    public string $template_xml;
    public string $terminal_type;
}

/** DeactivateTerminal entity data model. */
class DeactivateTerminal
{
    public ?string $corporate_uuid = null;
    public string $deactivation_reason;
    public ?string $package_order_uuid = null;
    public ?string $product_order_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
}

/** Request payload for DeactivateTerminal#create. */
class DeactivateTerminalCreateData
{
    public ?string $corporate_uuid = null;
    public string $deactivation_reason;
    public ?string $package_order_uuid = null;
    public ?string $product_order_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
}

/** DigitalServicesApi entity data model. */
class DigitalServicesApi
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?int $tx_count = null;
    public ?string $tx_id_end = null;
    public ?string $tx_id_start = null;
    public ?int $tx_seq_no_end = null;
    public ?int $tx_seq_no_start = null;
    public ?int $tx_total = null;
}

/** Request payload for DigitalServicesApi#load. */
class DigitalServicesApiLoadMatch
{
    public ?string $clearing_date_from = null;
    public ?string $clearing_date_to = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?int $tx_count = null;
    public ?string $tx_id_end = null;
    public ?string $tx_id_start = null;
    public ?int $tx_seq_no_end = null;
    public ?int $tx_seq_no_start = null;
    public ?int $tx_total = null;
}

/** Request payload for DigitalServicesApi#create. */
class DigitalServicesApiCreateData
{
    public ?string $file_id = null;
}

/** EcDataEcom entity data model. */
class EcDataEcom
{
    public ?string $ecom_data = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
    public string $transaction_id;
    public string $transaction_type;
}

/** Request payload for EcDataEcom#create. */
class EcDataEcomCreateData
{
    public ?string $ecom_data = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
    public string $transaction_id;
    public string $transaction_type;
}

/** EcomParameter entity data model. */
class EcomParameter
{
    public ?string $ecom_pass = null;
    public ?string $ecom_skey = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
}

/** Request payload for EcomParameter#create. */
class EcomParameterCreateData
{
    public ?string $ecom_pass = null;
    public ?string $ecom_skey = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
}

/** EcrData entity data model. */
class EcrData
{
    public ?string $ecr_data = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
    public string $transaction_id;
    public string $transaction_type;
}

/** Request payload for EcrData#create. */
class EcrDataCreateData
{
    public ?string $ecr_data = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
    public string $transaction_id;
    public string $transaction_type;
}

/** EmvData entity data model. */
class EmvData
{
    public ?string $emv_data = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
    public string $transaction_id;
    public string $transaction_type;
}

/** Request payload for EmvData#create. */
class EmvDataCreateData
{
    public ?string $emv_data = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
    public string $transaction_id;
    public string $transaction_type;
}

/** EnableAcquiring entity data model. */
class EnableAcquiring
{
    public ?int $account_no = null;
    public ?array $additional_data = null;
    public string $corporate_uuid;
    public string $currency;
    public int $merchant_category_code;
    public string $package_order_uuid;
    public string $product_order_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?int $sorting_code = null;
    public string $template_name;
    public ?array $terminal_id = null;
    public ?string $terminal_id_acq = null;
    public ?string $vu_nummer = null;
}

/** Request payload for EnableAcquiring#create. */
class EnableAcquiringCreateData
{
    public ?int $account_no = null;
    public ?array $additional_data = null;
    public string $corporate_uuid;
    public string $currency;
    public int $merchant_category_code;
    public string $package_order_uuid;
    public string $product_order_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?int $sorting_code = null;
    public string $template_name;
    public ?array $terminal_id = null;
    public ?string $terminal_id_acq = null;
    public ?string $vu_nummer = null;
}

/** GetMerchantContractNumber entity data model. */
class GetMerchantContractNumber
{
    public string $merchant_contract_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for GetMerchantContractNumber#create. */
class GetMerchantContractNumberCreateData
{
    public string $merchant_contract_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** GetTemplateXml entity data model. */
class GetTemplateXml
{
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
}

/** Request payload for GetTemplateXml#create. */
class GetTemplateXmlCreateData
{
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
}

/** IntroduceMandator entity data model. */
class IntroduceMandator
{
    public string $mandator_name;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for IntroduceMandator#create. */
class IntroduceMandatorCreateData
{
    public string $mandator_name;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** IntroducePackage entity data model. */
class IntroducePackage
{
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $terminal_template_description;
}

/** Request payload for IntroducePackage#create. */
class IntroducePackageCreateData
{
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $terminal_template_description;
}

/** KeepAlive entity data model. */
class KeepAlive
{
    public ?string $hwserialno = null;
    public ?string $ka_date_time_from = null;
    public ?string $ka_date_time_to = null;
    public ?array $keep_alive_data = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $terminal_date_time_from = null;
    public ?string $terminal_date_time_to = null;
    public ?int $terminal_id = null;
}

/** Request payload for KeepAlive#create. */
class KeepAliveCreateData
{
    public ?string $hwserialno = null;
    public ?string $ka_date_time_from = null;
    public ?string $ka_date_time_to = null;
    public ?array $keep_alive_data = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $terminal_date_time_from = null;
    public ?string $terminal_date_time_to = null;
    public ?int $terminal_id = null;
}

/** ListTerminal entity data model. */
class ListTerminal
{
    public ?array $corporate_uuid = null;
    public ?array $filter = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $terminal = null;
}

/** Request payload for ListTerminal#create. */
class ListTerminalCreateData
{
    public ?array $corporate_uuid = null;
    public ?array $filter = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $terminal = null;
}

/** MandatorClearingExport entity data model. */
class MandatorClearingExport
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?array $pagination = null;
    public ?array $record = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for MandatorClearingExport#create. */
class MandatorClearingExportCreateData
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?array $pagination = null;
    public ?array $record = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** MandatorClearingExportDownload entity data model. */
class MandatorClearingExportDownload
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?string $file_id = null;
    public ?string $filename_template = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $status = null;
}

/** Request payload for MandatorClearingExportDownload#load. */
class MandatorClearingExportDownloadLoadMatch
{
    public string $id;
}

/** Request payload for MandatorClearingExportDownload#create. */
class MandatorClearingExportDownloadCreateData
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?string $file_id = null;
    public ?string $filename_template = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $status = null;
}

/** MandatorClearingExportSummary entity data model. */
class MandatorClearingExportSummary
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?array $record = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for MandatorClearingExportSummary#create. */
class MandatorClearingExportSummaryCreateData
{
    public string $clearing_date_from;
    public string $clearing_date_to;
    public ?array $record = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** MerchantPortalServicesApi entity data model. */
class MerchantPortalServicesApi
{
    public ?string $authorization_code = null;
    public ?string $card_brand = null;
    public ?string $clearing_amount_from = null;
    public ?string $clearing_amount_to = null;
    public ?string $clearing_currency = null;
    public ?string $clearing_status = null;
    public ?string $corporate_uuid = null;
    public ?string $order_by_transaction_date = null;
    public ?array $pagination = null;
    public ?string $receipt_number = null;
    public ?string $referenced_transaction_id = null;
    public ?string $retrieval_reference_number = null;
    public ?int $source_id = null;
    public ?string $tecsengine_response_code_from = null;
    public ?string $tecsengine_response_code_to = null;
    public ?int $terminal_id = null;
    public ?string $trace_number = null;
    public ?string $transaction_amount_from = null;
    public ?string $transaction_amount_to = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?string $transaction_id = null;
    public ?string $transaction_type = null;
    public ?string $wallet = null;
}

/** Request payload for MerchantPortalServicesApi#create. */
class MerchantPortalServicesApiCreateData
{
    public ?string $authorization_code = null;
    public ?string $card_brand = null;
    public ?string $clearing_amount_from = null;
    public ?string $clearing_amount_to = null;
    public ?string $clearing_currency = null;
    public ?string $clearing_status = null;
    public ?string $corporate_uuid = null;
    public ?string $order_by_transaction_date = null;
    public ?array $pagination = null;
    public ?string $receipt_number = null;
    public ?string $referenced_transaction_id = null;
    public ?string $retrieval_reference_number = null;
    public ?int $source_id = null;
    public ?string $tecsengine_response_code_from = null;
    public ?string $tecsengine_response_code_to = null;
    public ?int $terminal_id = null;
    public ?string $trace_number = null;
    public ?string $transaction_amount_from = null;
    public ?string $transaction_amount_to = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?string $transaction_id = null;
    public ?string $transaction_type = null;
    public ?string $wallet = null;
}

/** MoveTid entity data model. */
class MoveTid
{
    public array $productorderuuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $target_packageorderuuid = null;
    public ?string $target_productorderuuid = null;
}

/** Request payload for MoveTid#create. */
class MoveTidCreateData
{
    public array $productorderuuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $target_packageorderuuid = null;
    public ?string $target_productorderuuid = null;
}

/** PaymentManual entity data model. */
class PaymentManual
{
    public ?string $acquirer_name = null;
    public int $amount;
    public ?string $authorization_number = null;
    public string $card_number;
    public ?string $card_type = null;
    public string $currency;
    public ?string $cvc = null;
    public ?string $date_time_tx = null;
    public string $exp_date;
    public ?string $merchant_id = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $response_code = null;
    public ?string $response_message = null;
    public ?string $terminal_id = null;
    public ?string $transaction_id = null;
    public string $txtype;
}

/** Request payload for PaymentManual#create. */
class PaymentManualCreateData
{
    public ?string $acquirer_name = null;
    public int $amount;
    public ?string $authorization_number = null;
    public string $card_number;
    public ?string $card_type = null;
    public string $currency;
    public ?string $cvc = null;
    public ?string $date_time_tx = null;
    public string $exp_date;
    public ?string $merchant_id = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $response_code = null;
    public ?string $response_message = null;
    public ?string $terminal_id = null;
    public ?string $transaction_id = null;
    public string $txtype;
}

/** PaymentSred entity data model. */
class PaymentSred
{
    public ?string $acquirer_name = null;
    public int $amount;
    public ?string $authorization_number = null;
    public ?string $card_type = null;
    public string $currency;
    public ?string $date_time_tx = null;
    public string $device_payload;
    public ?string $merchant_id = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $response_code = null;
    public ?string $response_message = null;
    public ?array $sred = null;
    public ?string $terminal_id = null;
    public ?string $transaction_id = null;
    public string $txtype;
}

/** Request payload for PaymentSred#create. */
class PaymentSredCreateData
{
    public ?string $acquirer_name = null;
    public int $amount;
    public ?string $authorization_number = null;
    public ?string $card_type = null;
    public string $currency;
    public ?string $date_time_tx = null;
    public string $device_payload;
    public ?string $merchant_id = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $response_code = null;
    public ?string $response_message = null;
    public ?array $sred = null;
    public ?string $terminal_id = null;
    public ?string $transaction_id = null;
    public string $txtype;
}

/** PreAuthTransactionCompletion entity data model. */
class PreAuthTransactionCompletion
{
    public ?string $acquirer_id = null;
    public ?string $acquirer_name = null;
    public ?string $actual_bonus_point = null;
    public ?int $amount = null;
    public ?string $authorization_code = null;
    public ?string $balance_amount = null;
    public ?string $card_brand = null;
    public ?string $card_number = null;
    public string $card_number_reference;
    public int $client_id;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ec_data = null;
    public ?string $ecr_data = null;
    public ?string $emv_data = null;
    public ?int $exchange_fee = null;
    public ?string $exchange_rate = null;
    public ?string $language_code = null;
    public ?string $merchant_address = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $message_type = null;
    public ?int $original_trace_number = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $payment_reason = null;
    public ?string $receipt_footer = null;
    public ?string $receipt_header = null;
    public ?int $receipt_layout = null;
    public string $receipt_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $serial_number = null;
    public ?string $svc = null;
    public int $terminal_id;
    public ?string $terminal_location = null;
    public ?int $trace_number = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public string $transaction_type;
    public ?string $tx_type = null;
    public ?string $user_data = null;
}

/** Request payload for PreAuthTransactionCompletion#create. */
class PreAuthTransactionCompletionCreateData
{
    public ?string $acquirer_id = null;
    public ?string $acquirer_name = null;
    public ?string $actual_bonus_point = null;
    public ?int $amount = null;
    public ?string $authorization_code = null;
    public ?string $balance_amount = null;
    public ?string $card_brand = null;
    public ?string $card_number = null;
    public string $card_number_reference;
    public int $client_id;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ec_data = null;
    public ?string $ecr_data = null;
    public ?string $emv_data = null;
    public ?int $exchange_fee = null;
    public ?string $exchange_rate = null;
    public ?string $language_code = null;
    public ?string $merchant_address = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $message_type = null;
    public ?int $original_trace_number = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $payment_reason = null;
    public ?string $receipt_footer = null;
    public ?string $receipt_header = null;
    public ?int $receipt_layout = null;
    public string $receipt_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $serial_number = null;
    public ?string $svc = null;
    public int $terminal_id;
    public ?string $terminal_location = null;
    public ?int $trace_number = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public string $transaction_type;
    public ?string $tx_type = null;
    public ?string $user_data = null;
}

/** ReactivateTerminal entity data model. */
class ReactivateTerminal
{
    public ?string $corporate_uuid = null;
    public ?string $package_order_uuid = null;
    public ?string $product_order_uuid = null;
    public string $reactivation_reason;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
}

/** Request payload for ReactivateTerminal#create. */
class ReactivateTerminalCreateData
{
    public ?string $corporate_uuid = null;
    public ?string $package_order_uuid = null;
    public ?string $product_order_uuid = null;
    public string $reactivation_reason;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public int $terminal_id;
}

/** RefundTransaction entity data model. */
class RefundTransaction
{
    public ?string $acquirer_id = null;
    public ?string $acquirer_name = null;
    public ?string $actual_bonus_point = null;
    public ?int $amount = null;
    public ?string $authorization_code = null;
    public ?string $balance_amount = null;
    public ?string $card_brand = null;
    public ?string $card_number = null;
    public int $client_id;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ec_data = null;
    public ?string $ecr_data = null;
    public ?string $emv_data = null;
    public ?int $exchange_fee = null;
    public ?string $exchange_rate = null;
    public ?string $language_code = null;
    public ?string $merchant_address = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $message_type = null;
    public ?int $original_trace_number = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $payment_reason = null;
    public ?string $receipt_footer = null;
    public ?string $receipt_header = null;
    public ?int $receipt_layout = null;
    public string $receipt_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $serial_number = null;
    public ?string $svc = null;
    public int $terminal_id;
    public ?string $terminal_location = null;
    public ?int $trace_number = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public ?string $tx_type = null;
    public ?string $user_data = null;
}

/** Request payload for RefundTransaction#create. */
class RefundTransactionCreateData
{
    public ?string $acquirer_id = null;
    public ?string $acquirer_name = null;
    public ?string $actual_bonus_point = null;
    public ?int $amount = null;
    public ?string $authorization_code = null;
    public ?string $balance_amount = null;
    public ?string $card_brand = null;
    public ?string $card_number = null;
    public int $client_id;
    public string $currency;
    public ?string $cvc = null;
    public ?string $ec_data = null;
    public ?string $ecr_data = null;
    public ?string $emv_data = null;
    public ?int $exchange_fee = null;
    public ?string $exchange_rate = null;
    public ?string $language_code = null;
    public ?string $merchant_address = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $message_type = null;
    public ?int $original_trace_number = null;
    public ?string $original_transaction_id = null;
    public ?string $password = null;
    public ?string $payment_reason = null;
    public ?string $receipt_footer = null;
    public ?string $receipt_header = null;
    public ?int $receipt_layout = null;
    public string $receipt_number;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $serial_number = null;
    public ?string $svc = null;
    public int $terminal_id;
    public ?string $terminal_location = null;
    public ?int $trace_number = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public ?string $tx_type = null;
    public ?string $user_data = null;
}

/** RegisterTecsCompany entity data model. */
class RegisterTecsCompany
{
    public string $corporate_uuid;
    public string $package_order_uuid;
    public ?int $partner_id = null;
    public ?string $partner_name = null;
    public string $product_order_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
}

/** Request payload for RegisterTecsCompany#create. */
class RegisterTecsCompanyCreateData
{
    public string $corporate_uuid;
    public string $package_order_uuid;
    public ?int $partner_id = null;
    public ?string $partner_name = null;
    public string $product_order_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
}

/** RegisterTerminal entity data model. */
class RegisterTerminal
{
    public ?array $additional_data = null;
    public string $corporate_uuid;
    public string $package_order_uuid;
    public string $product_order_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $tecs_web_secret_key = null;
    public string $template_name;
    public string $terminal_country_code;
    public ?int $terminal_id = null;
    public ?string $terminal_id_acq = null;
    public string $terminal_language_code;
    public string $terminal_location;
    public ?string $terminal_serial_number = null;
    public ?string $token_io_alia = null;
    public ?string $token_io_iban = null;
    public ?string $token_io_member_id = null;
    public ?string $web_shop_url = null;
}

/** Request payload for RegisterTerminal#create. */
class RegisterTerminalCreateData
{
    public ?array $additional_data = null;
    public string $corporate_uuid;
    public string $package_order_uuid;
    public string $product_order_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $tecs_web_secret_key = null;
    public string $template_name;
    public string $terminal_country_code;
    public ?int $terminal_id = null;
    public ?string $terminal_id_acq = null;
    public string $terminal_language_code;
    public string $terminal_location;
    public ?string $terminal_serial_number = null;
    public ?string $token_io_alia = null;
    public ?string $token_io_iban = null;
    public ?string $token_io_member_id = null;
    public ?string $web_shop_url = null;
}

/** ReportData entity data model. */
class ReportData
{
    public ?array $card_brand_report_data = null;
    public string $clearing_date_from;
    public string $clearing_date_to;
    public string $corporate_id;
    public string $currency;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sum_over_credit_tx = null;
    public ?array $sum_over_debit_tx = null;
    public ?int $terminal_id = null;
}

/** Request payload for ReportData#create. */
class ReportDataCreateData
{
    public ?array $card_brand_report_data = null;
    public string $clearing_date_from;
    public string $clearing_date_to;
    public string $corporate_id;
    public string $currency;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sum_over_credit_tx = null;
    public ?array $sum_over_debit_tx = null;
    public ?int $terminal_id = null;
}

/** StatusTransaction entity data model. */
class StatusTransaction
{
    public ?string $acquirer_name = null;
    public ?string $acquirer_terminal_id = null;
    public ?int $amount = null;
    public ?string $application_cryptogram = null;
    public mixed $authorization_code = null;
    public ?string $authorization_date = null;
    public ?string $card_brand = null;
    public ?string $card_entry = null;
    public ?string $card_expiration = null;
    public ?string $card_number = null;
    public ?int $clearing_amount = null;
    public ?string $clearing_batch_id = null;
    public ?string $clearing_currency = null;
    public ?string $clearing_date = null;
    public ?string $clearing_processed_date = null;
    public ?string $clearing_status = null;
    public ?int $client_id = null;
    public ?string $currency = null;
    public ?string $cvm = null;
    public ?string $ecr_data = null;
    public ?string $emv_application_id = null;
    public ?string $emv_application_label = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $original_client_id = null;
    public ?int $original_terminal_id = null;
    public ?string $original_transaction_id = null;
    public ?string $payment_reason = null;
    public ?string $receipt_number = null;
    public ?int $response_code = null;
    public ?string $response_code_from_a = null;
    public ?string $response_message = null;
    public ?string $retrieval_reference_number = null;
    public ?string $service_code = null;
    public ?string $settlement_status = null;
    public ?int $source_id = null;
    public ?int $tecsengine_response_code = null;
    public ?string $tecsengine_response_text = null;
    public ?string $terminal_end_of_day_date = null;
    public ?int $terminal_id = null;
    public ?string $terminal_location = null;
    public ?int $tip_amount = null;
    public ?int $trace_number = null;
    public ?string $transaction_clearing_date = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public ?int $transaction_seq_number = null;
    public ?string $transaction_server_date = null;
    public ?string $transaction_source = null;
    public ?string $transaction_type = null;
}

/** Request payload for StatusTransaction#create. */
class StatusTransactionCreateData
{
    public ?string $acquirer_name = null;
    public ?string $acquirer_terminal_id = null;
    public ?int $amount = null;
    public ?string $application_cryptogram = null;
    public mixed $authorization_code = null;
    public ?string $authorization_date = null;
    public ?string $card_brand = null;
    public ?string $card_entry = null;
    public ?string $card_expiration = null;
    public ?string $card_number = null;
    public ?int $clearing_amount = null;
    public ?string $clearing_batch_id = null;
    public ?string $clearing_currency = null;
    public ?string $clearing_date = null;
    public ?string $clearing_processed_date = null;
    public ?string $clearing_status = null;
    public ?int $client_id = null;
    public ?string $currency = null;
    public ?string $cvm = null;
    public ?string $ecr_data = null;
    public ?string $emv_application_id = null;
    public ?string $emv_application_label = null;
    public ?string $merchant_name = null;
    public ?string $merchant_number = null;
    public ?string $original_client_id = null;
    public ?int $original_terminal_id = null;
    public ?string $original_transaction_id = null;
    public ?string $payment_reason = null;
    public ?string $receipt_number = null;
    public ?int $response_code = null;
    public ?string $response_code_from_a = null;
    public ?string $response_message = null;
    public ?string $retrieval_reference_number = null;
    public ?string $service_code = null;
    public ?string $settlement_status = null;
    public ?int $source_id = null;
    public ?int $tecsengine_response_code = null;
    public ?string $tecsengine_response_text = null;
    public ?string $terminal_end_of_day_date = null;
    public ?int $terminal_id = null;
    public ?string $terminal_location = null;
    public ?int $tip_amount = null;
    public ?int $trace_number = null;
    public ?string $transaction_clearing_date = null;
    public ?string $transaction_date = null;
    public ?string $transaction_id = null;
    public ?int $transaction_seq_number = null;
    public ?string $transaction_server_date = null;
    public ?string $transaction_source = null;
    public ?string $transaction_type = null;
}

/** StoreTerminalParameter entity data model. */
class StoreTerminalParameter
{
    public ?array $acq_tab_nexo = null;
    public ?string $config_version = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $serial_number;
    public ?string $tid_sent = null;
}

/** Request payload for StoreTerminalParameter#create. */
class StoreTerminalParameterCreateData
{
    public ?array $acq_tab_nexo = null;
    public ?string $config_version = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $serial_number;
    public ?string $tid_sent = null;
}

/** TerminalId entity data model. */
class TerminalId
{
    public array $device_serial_number;
    public ?array $duplicate_terminal_id = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $terminal = null;
}

/** Request payload for TerminalId#create. */
class TerminalIdCreateData
{
    public array $device_serial_number;
    public ?array $duplicate_terminal_id = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $terminal = null;
}

/** TransactionHistory entity data model. */
class TransactionHistory
{
    public ?string $authorization_code = null;
    public ?string $card_brand = null;
    public ?string $clearing_amount_from = null;
    public ?string $clearing_amount_to = null;
    public ?string $clearing_currency = null;
    public ?string $clearing_status = null;
    public ?string $corporate_uuid = null;
    public ?string $order_by_transaction_date = null;
    public ?array $pagination = null;
    public ?string $payment_token_public_id = null;
    public ?string $receipt_number = null;
    public ?string $referenced_transaction_id = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $retrieval_reference_number = null;
    public ?int $source_id = null;
    public ?string $tecsengine_response_code_from = null;
    public ?string $tecsengine_response_code_to = null;
    public ?int $terminal_id = null;
    public ?string $trace_number = null;
    public ?string $transaction_amount_from = null;
    public ?string $transaction_amount_to = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $transaction_history = null;
    public ?string $transaction_id = null;
    public ?string $transaction_type = null;
    public ?string $wallet = null;
}

/** Request payload for TransactionHistory#create. */
class TransactionHistoryCreateData
{
    public ?string $authorization_code = null;
    public ?string $card_brand = null;
    public ?string $clearing_amount_from = null;
    public ?string $clearing_amount_to = null;
    public ?string $clearing_currency = null;
    public ?string $clearing_status = null;
    public ?string $corporate_uuid = null;
    public ?string $order_by_transaction_date = null;
    public ?array $pagination = null;
    public ?string $payment_token_public_id = null;
    public ?string $receipt_number = null;
    public ?string $referenced_transaction_id = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $retrieval_reference_number = null;
    public ?int $source_id = null;
    public ?string $tecsengine_response_code_from = null;
    public ?string $tecsengine_response_code_to = null;
    public ?int $terminal_id = null;
    public ?string $trace_number = null;
    public ?string $transaction_amount_from = null;
    public ?string $transaction_amount_to = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $transaction_history = null;
    public ?string $transaction_id = null;
    public ?string $transaction_type = null;
    public ?string $wallet = null;
}

/** TransactionsCount entity data model. */
class TransactionsCount
{
    public ?string $period = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $transactions_count = null;
}

/** Request payload for TransactionsCount#create. */
class TransactionsCountCreateData
{
    public ?string $period = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $transactions_count = null;
}

/** TransactionsCountCardBrand entity data model. */
class TransactionsCountCardBrand
{
    public ?string $period = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $transactions_count = null;
}

/** Request payload for TransactionsCountCardBrand#create. */
class TransactionsCountCardBrandCreateData
{
    public ?string $period = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $transactions_count = null;
}

/** TransactionsTurnover entity data model. */
class TransactionsTurnover
{
    public ?string $period = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $turnover = null;
}

/** Request payload for TransactionsTurnover#create. */
class TransactionsTurnoverCreateData
{
    public ?string $period = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $transaction_date_from = null;
    public ?string $transaction_date_to = null;
    public ?array $turnover = null;
}

/** UpdateMerchant entity data model. */
class UpdateMerchant
{
    public ?string $city = null;
    public string $corporate_uuid;
    public ?string $country = null;
    public ?string $merchant_category_code = null;
    public ?string $name = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $state = null;
    public ?string $street = null;
    public ?string $vu_nummer = null;
    public ?string $zipcode = null;
}

/** Request payload for UpdateMerchant#create. */
class UpdateMerchantCreateData
{
    public ?string $city = null;
    public string $corporate_uuid;
    public ?string $country = null;
    public ?string $merchant_category_code = null;
    public ?string $name = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $state = null;
    public ?string $street = null;
    public ?string $vu_nummer = null;
    public ?string $zipcode = null;
}

/** UpdateTemplateXml entity data model. */
class UpdateTemplateXml
{
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
    public string $template_xml;
}

/** Request payload for UpdateTemplateXml#create. */
class UpdateTemplateXmlCreateData
{
    public ?int $response_code = null;
    public ?string $response_message = null;
    public string $template_name;
    public string $template_xml;
}

/** Version entity data model. */
class Version
{
    public ?string $app_name = null;
    public ?string $build_date = null;
    public ?string $version = null;
}

/** Request payload for Version#load. */
class VersionLoadMatch
{
    public ?string $app_name = null;
    public ?string $build_date = null;
    public ?string $version = null;
}

