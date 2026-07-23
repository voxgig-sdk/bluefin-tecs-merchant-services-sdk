# frozen_string_literal: true

# Typed models for the BluefinTecsMerchantServices SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# CancelTransaction entity data model.
#
# @!attribute [rw] acquirer_id
#   @return [String, nil]
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] actual_bonus_point
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] balance_amount
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] client_id
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ec_data
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] exchange_fee
#   @return [Integer, nil]
#
# @!attribute [rw] exchange_rate
#   @return [String, nil]
#
# @!attribute [rw] language_code
#   @return [String, nil]
#
# @!attribute [rw] merchant_address
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] message_type
#   @return [String, nil]
#
# @!attribute [rw] original_trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_footer
#   @return [String, nil]
#
# @!attribute [rw] receipt_header
#   @return [String, nil]
#
# @!attribute [rw] receipt_layout
#   @return [Integer, nil]
#
# @!attribute [rw] receipt_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] tx_type
#   @return [String, nil]
#
# @!attribute [rw] user_data
#   @return [String, nil]
CancelTransaction = Struct.new(
  :acquirer_id,
  :acquirer_name,
  :actual_bonus_point,
  :amount,
  :authorization_code,
  :balance_amount,
  :card_brand,
  :card_number,
  :client_id,
  :currency,
  :cvc,
  :ec_data,
  :ecr_data,
  :emv_data,
  :exchange_fee,
  :exchange_rate,
  :language_code,
  :merchant_address,
  :merchant_name,
  :merchant_number,
  :message_type,
  :original_trace_number,
  :original_transaction_id,
  :password,
  :payment_reason,
  :receipt_footer,
  :receipt_header,
  :receipt_layout,
  :receipt_number,
  :response_code,
  :response_message,
  :serial_number,
  :svc,
  :terminal_id,
  :terminal_location,
  :trace_number,
  :transaction_date,
  :transaction_id,
  :tx_type,
  :user_data,
  keyword_init: true
)

# Request payload for CancelTransaction#create.
#
# @!attribute [rw] acquirer_id
#   @return [String, nil]
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] actual_bonus_point
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] balance_amount
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] client_id
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ec_data
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] exchange_fee
#   @return [Integer, nil]
#
# @!attribute [rw] exchange_rate
#   @return [String, nil]
#
# @!attribute [rw] language_code
#   @return [String, nil]
#
# @!attribute [rw] merchant_address
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] message_type
#   @return [String, nil]
#
# @!attribute [rw] original_trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_footer
#   @return [String, nil]
#
# @!attribute [rw] receipt_header
#   @return [String, nil]
#
# @!attribute [rw] receipt_layout
#   @return [Integer, nil]
#
# @!attribute [rw] receipt_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] tx_type
#   @return [String, nil]
#
# @!attribute [rw] user_data
#   @return [String, nil]
CancelTransactionCreateData = Struct.new(
  :acquirer_id,
  :acquirer_name,
  :actual_bonus_point,
  :amount,
  :authorization_code,
  :balance_amount,
  :card_brand,
  :card_number,
  :client_id,
  :currency,
  :cvc,
  :ec_data,
  :ecr_data,
  :emv_data,
  :exchange_fee,
  :exchange_rate,
  :language_code,
  :merchant_address,
  :merchant_name,
  :merchant_number,
  :message_type,
  :original_trace_number,
  :original_transaction_id,
  :password,
  :payment_reason,
  :receipt_footer,
  :receipt_header,
  :receipt_layout,
  :receipt_number,
  :response_code,
  :response_message,
  :serial_number,
  :svc,
  :terminal_id,
  :terminal_location,
  :trace_number,
  :transaction_date,
  :transaction_id,
  :tx_type,
  :user_data,
  keyword_init: true
)

# CheckCardBlackListed entity data model.
#
# @!attribute [rw] card_no
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
CheckCardBlackListed = Struct.new(
  :card_no,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for CheckCardBlackListed#create.
#
# @!attribute [rw] card_no
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
CheckCardBlackListedCreateData = Struct.new(
  :card_no,
  :response_code,
  :response_message,
  keyword_init: true
)

# CreateProduct entity data model.
#
# @!attribute [rw] acquirer_id
#   @return [Integer, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] template_type
#   @return [String]
#
# @!attribute [rw] template_xml
#   @return [String]
#
# @!attribute [rw] terminal_type
#   @return [String]
CreateProduct = Struct.new(
  :acquirer_id,
  :response_code,
  :response_message,
  :template_name,
  :template_type,
  :template_xml,
  :terminal_type,
  keyword_init: true
)

# Request payload for CreateProduct#create.
#
# @!attribute [rw] acquirer_id
#   @return [Integer, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] template_type
#   @return [String]
#
# @!attribute [rw] template_xml
#   @return [String]
#
# @!attribute [rw] terminal_type
#   @return [String]
CreateProductCreateData = Struct.new(
  :acquirer_id,
  :response_code,
  :response_message,
  :template_name,
  :template_type,
  :template_xml,
  :terminal_type,
  keyword_init: true
)

# DeactivateTerminal entity data model.
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] deactivation_reason
#   @return [String]
#
# @!attribute [rw] package_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] product_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
DeactivateTerminal = Struct.new(
  :corporate_uuid,
  :deactivation_reason,
  :package_order_uuid,
  :product_order_uuid,
  :response_code,
  :response_message,
  :terminal_id,
  keyword_init: true
)

# Request payload for DeactivateTerminal#create.
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] deactivation_reason
#   @return [String]
#
# @!attribute [rw] package_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] product_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
DeactivateTerminalCreateData = Struct.new(
  :corporate_uuid,
  :deactivation_reason,
  :package_order_uuid,
  :product_order_uuid,
  :response_code,
  :response_message,
  :terminal_id,
  keyword_init: true
)

# DigitalServicesApi entity data model.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] tx_count
#   @return [Integer, nil]
#
# @!attribute [rw] tx_id_end
#   @return [String, nil]
#
# @!attribute [rw] tx_id_start
#   @return [String, nil]
#
# @!attribute [rw] tx_seq_no_end
#   @return [Integer, nil]
#
# @!attribute [rw] tx_seq_no_start
#   @return [Integer, nil]
#
# @!attribute [rw] tx_total
#   @return [Integer, nil]
DigitalServicesApi = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :response_code,
  :response_message,
  :tx_count,
  :tx_id_end,
  :tx_id_start,
  :tx_seq_no_end,
  :tx_seq_no_start,
  :tx_total,
  keyword_init: true
)

# Request payload for DigitalServicesApi#load.
#
# @!attribute [rw] clearing_date_from
#   @return [String, nil]
#
# @!attribute [rw] clearing_date_to
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] tx_count
#   @return [Integer, nil]
#
# @!attribute [rw] tx_id_end
#   @return [String, nil]
#
# @!attribute [rw] tx_id_start
#   @return [String, nil]
#
# @!attribute [rw] tx_seq_no_end
#   @return [Integer, nil]
#
# @!attribute [rw] tx_seq_no_start
#   @return [Integer, nil]
#
# @!attribute [rw] tx_total
#   @return [Integer, nil]
DigitalServicesApiLoadMatch = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :response_code,
  :response_message,
  :tx_count,
  :tx_id_end,
  :tx_id_start,
  :tx_seq_no_end,
  :tx_seq_no_start,
  :tx_total,
  keyword_init: true
)

# Request payload for DigitalServicesApi#create.
#
# @!attribute [rw] file_id
#   @return [String, nil]
DigitalServicesApiCreateData = Struct.new(
  :file_id,
  keyword_init: true
)

# EcDataEcom entity data model.
#
# @!attribute [rw] ecom_data
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] transaction_id
#   @return [String]
#
# @!attribute [rw] transaction_type
#   @return [String]
EcDataEcom = Struct.new(
  :ecom_data,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :transaction_type,
  keyword_init: true
)

# Request payload for EcDataEcom#create.
#
# @!attribute [rw] ecom_data
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] transaction_id
#   @return [String]
#
# @!attribute [rw] transaction_type
#   @return [String]
EcDataEcomCreateData = Struct.new(
  :ecom_data,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :transaction_type,
  keyword_init: true
)

# EcomParameter entity data model.
#
# @!attribute [rw] ecom_pass
#   @return [String, nil]
#
# @!attribute [rw] ecom_skey
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
EcomParameter = Struct.new(
  :ecom_pass,
  :ecom_skey,
  :response_code,
  :response_message,
  :terminal_id,
  keyword_init: true
)

# Request payload for EcomParameter#create.
#
# @!attribute [rw] ecom_pass
#   @return [String, nil]
#
# @!attribute [rw] ecom_skey
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
EcomParameterCreateData = Struct.new(
  :ecom_pass,
  :ecom_skey,
  :response_code,
  :response_message,
  :terminal_id,
  keyword_init: true
)

# EcrData entity data model.
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] transaction_id
#   @return [String]
#
# @!attribute [rw] transaction_type
#   @return [String]
EcrData = Struct.new(
  :ecr_data,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :transaction_type,
  keyword_init: true
)

# Request payload for EcrData#create.
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] transaction_id
#   @return [String]
#
# @!attribute [rw] transaction_type
#   @return [String]
EcrDataCreateData = Struct.new(
  :ecr_data,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :transaction_type,
  keyword_init: true
)

# EmvData entity data model.
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] transaction_id
#   @return [String]
#
# @!attribute [rw] transaction_type
#   @return [String]
EmvData = Struct.new(
  :emv_data,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :transaction_type,
  keyword_init: true
)

# Request payload for EmvData#create.
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] transaction_id
#   @return [String]
#
# @!attribute [rw] transaction_type
#   @return [String]
EmvDataCreateData = Struct.new(
  :emv_data,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :transaction_type,
  keyword_init: true
)

# EnableAcquiring entity data model.
#
# @!attribute [rw] account_no
#   @return [Integer, nil]
#
# @!attribute [rw] additional_data
#   @return [Hash, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] merchant_category_code
#   @return [Integer]
#
# @!attribute [rw] package_order_uuid
#   @return [String]
#
# @!attribute [rw] product_order_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting_code
#   @return [Integer, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] terminal_id
#   @return [Array, nil]
#
# @!attribute [rw] terminal_id_acq
#   @return [String, nil]
#
# @!attribute [rw] vu_nummer
#   @return [String, nil]
EnableAcquiring = Struct.new(
  :account_no,
  :additional_data,
  :corporate_uuid,
  :currency,
  :merchant_category_code,
  :package_order_uuid,
  :product_order_uuid,
  :response_code,
  :response_message,
  :sorting_code,
  :template_name,
  :terminal_id,
  :terminal_id_acq,
  :vu_nummer,
  keyword_init: true
)

# Request payload for EnableAcquiring#create.
#
# @!attribute [rw] account_no
#   @return [Integer, nil]
#
# @!attribute [rw] additional_data
#   @return [Hash, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] merchant_category_code
#   @return [Integer]
#
# @!attribute [rw] package_order_uuid
#   @return [String]
#
# @!attribute [rw] product_order_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting_code
#   @return [Integer, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] terminal_id
#   @return [Array, nil]
#
# @!attribute [rw] terminal_id_acq
#   @return [String, nil]
#
# @!attribute [rw] vu_nummer
#   @return [String, nil]
EnableAcquiringCreateData = Struct.new(
  :account_no,
  :additional_data,
  :corporate_uuid,
  :currency,
  :merchant_category_code,
  :package_order_uuid,
  :product_order_uuid,
  :response_code,
  :response_message,
  :sorting_code,
  :template_name,
  :terminal_id,
  :terminal_id_acq,
  :vu_nummer,
  keyword_init: true
)

# GetMerchantContractNumber entity data model.
#
# @!attribute [rw] merchant_contract_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
GetMerchantContractNumber = Struct.new(
  :merchant_contract_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for GetMerchantContractNumber#create.
#
# @!attribute [rw] merchant_contract_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
GetMerchantContractNumberCreateData = Struct.new(
  :merchant_contract_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# GetTemplateXml entity data model.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
GetTemplateXml = Struct.new(
  :response_code,
  :response_message,
  :template_name,
  keyword_init: true
)

# Request payload for GetTemplateXml#create.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
GetTemplateXmlCreateData = Struct.new(
  :response_code,
  :response_message,
  :template_name,
  keyword_init: true
)

# IntroduceMandator entity data model.
#
# @!attribute [rw] mandator_name
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
IntroduceMandator = Struct.new(
  :mandator_name,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for IntroduceMandator#create.
#
# @!attribute [rw] mandator_name
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
IntroduceMandatorCreateData = Struct.new(
  :mandator_name,
  :response_code,
  :response_message,
  keyword_init: true
)

# IntroducePackage entity data model.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_template_description
#   @return [String]
IntroducePackage = Struct.new(
  :response_code,
  :response_message,
  :terminal_template_description,
  keyword_init: true
)

# Request payload for IntroducePackage#create.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_template_description
#   @return [String]
IntroducePackageCreateData = Struct.new(
  :response_code,
  :response_message,
  :terminal_template_description,
  keyword_init: true
)

# KeepAlive entity data model.
#
# @!attribute [rw] hwserialno
#   @return [String, nil]
#
# @!attribute [rw] ka_date_time_from
#   @return [String, nil]
#
# @!attribute [rw] ka_date_time_to
#   @return [String, nil]
#
# @!attribute [rw] keep_alive_data
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_date_time_from
#   @return [String, nil]
#
# @!attribute [rw] terminal_date_time_to
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
KeepAlive = Struct.new(
  :hwserialno,
  :ka_date_time_from,
  :ka_date_time_to,
  :keep_alive_data,
  :pagination,
  :response_code,
  :response_message,
  :terminal_date_time_from,
  :terminal_date_time_to,
  :terminal_id,
  keyword_init: true
)

# Request payload for KeepAlive#create.
#
# @!attribute [rw] hwserialno
#   @return [String, nil]
#
# @!attribute [rw] ka_date_time_from
#   @return [String, nil]
#
# @!attribute [rw] ka_date_time_to
#   @return [String, nil]
#
# @!attribute [rw] keep_alive_data
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_date_time_from
#   @return [String, nil]
#
# @!attribute [rw] terminal_date_time_to
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
KeepAliveCreateData = Struct.new(
  :hwserialno,
  :ka_date_time_from,
  :ka_date_time_to,
  :keep_alive_data,
  :pagination,
  :response_code,
  :response_message,
  :terminal_date_time_from,
  :terminal_date_time_to,
  :terminal_id,
  keyword_init: true
)

# ListTerminal entity data model.
#
# @!attribute [rw] corporate_uuid
#   @return [Array, nil]
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal
#   @return [Array, nil]
ListTerminal = Struct.new(
  :corporate_uuid,
  :filter,
  :pagination,
  :response_code,
  :response_message,
  :terminal,
  keyword_init: true
)

# Request payload for ListTerminal#create.
#
# @!attribute [rw] corporate_uuid
#   @return [Array, nil]
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal
#   @return [Array, nil]
ListTerminalCreateData = Struct.new(
  :corporate_uuid,
  :filter,
  :pagination,
  :response_code,
  :response_message,
  :terminal,
  keyword_init: true
)

# MandatorClearingExport entity data model.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] record
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
MandatorClearingExport = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :pagination,
  :record,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for MandatorClearingExport#create.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] record
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
MandatorClearingExportCreateData = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :pagination,
  :record,
  :response_code,
  :response_message,
  keyword_init: true
)

# MandatorClearingExportDownload entity data model.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] file_id
#   @return [String, nil]
#
# @!attribute [rw] filename_template
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
MandatorClearingExportDownload = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :file_id,
  :filename_template,
  :response_code,
  :response_message,
  :status,
  keyword_init: true
)

# Request payload for MandatorClearingExportDownload#load.
#
# @!attribute [rw] id
#   @return [String]
MandatorClearingExportDownloadLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Request payload for MandatorClearingExportDownload#create.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] file_id
#   @return [String, nil]
#
# @!attribute [rw] filename_template
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
MandatorClearingExportDownloadCreateData = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :file_id,
  :filename_template,
  :response_code,
  :response_message,
  :status,
  keyword_init: true
)

# MandatorClearingExportSummary entity data model.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] record
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
MandatorClearingExportSummary = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :record,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for MandatorClearingExportSummary#create.
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] record
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
MandatorClearingExportSummaryCreateData = Struct.new(
  :clearing_date_from,
  :clearing_date_to,
  :record,
  :response_code,
  :response_message,
  keyword_init: true
)

# MerchantPortalServicesApi entity data model.
#
# @!attribute [rw] 3_d_secure
#   @return [String, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_from
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_to
#   @return [String, nil]
#
# @!attribute [rw] clearing_currency
#   @return [String, nil]
#
# @!attribute [rw] clearing_status
#   @return [String, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] order_by_transaction_date
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] receipt_number
#   @return [String, nil]
#
# @!attribute [rw] referenced_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] retrieval_reference_number
#   @return [String, nil]
#
# @!attribute [rw] source_id
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_code_from
#   @return [String, nil]
#
# @!attribute [rw] tecsengine_response_code_to
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] trace_number
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
MerchantPortalServicesApi = Struct.new(
  :"3_d_secure",
  :authorization_code,
  :card_brand,
  :clearing_amount_from,
  :clearing_amount_to,
  :clearing_currency,
  :clearing_status,
  :corporate_uuid,
  :order_by_transaction_date,
  :pagination,
  :receipt_number,
  :referenced_transaction_id,
  :retrieval_reference_number,
  :source_id,
  :tecsengine_response_code_from,
  :tecsengine_response_code_to,
  :terminal_id,
  :trace_number,
  :transaction_amount_from,
  :transaction_amount_to,
  :transaction_date_from,
  :transaction_date_to,
  :transaction_id,
  :transaction_type,
  :wallet,
  keyword_init: true
)

# Request payload for MerchantPortalServicesApi#create.
#
# @!attribute [rw] 3_d_secure
#   @return [String, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_from
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_to
#   @return [String, nil]
#
# @!attribute [rw] clearing_currency
#   @return [String, nil]
#
# @!attribute [rw] clearing_status
#   @return [String, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] order_by_transaction_date
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] receipt_number
#   @return [String, nil]
#
# @!attribute [rw] referenced_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] retrieval_reference_number
#   @return [String, nil]
#
# @!attribute [rw] source_id
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_code_from
#   @return [String, nil]
#
# @!attribute [rw] tecsengine_response_code_to
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] trace_number
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
MerchantPortalServicesApiCreateData = Struct.new(
  :"3_d_secure",
  :authorization_code,
  :card_brand,
  :clearing_amount_from,
  :clearing_amount_to,
  :clearing_currency,
  :clearing_status,
  :corporate_uuid,
  :order_by_transaction_date,
  :pagination,
  :receipt_number,
  :referenced_transaction_id,
  :retrieval_reference_number,
  :source_id,
  :tecsengine_response_code_from,
  :tecsengine_response_code_to,
  :terminal_id,
  :trace_number,
  :transaction_amount_from,
  :transaction_amount_to,
  :transaction_date_from,
  :transaction_date_to,
  :transaction_id,
  :transaction_type,
  :wallet,
  keyword_init: true
)

# MoveTid entity data model.
#
# @!attribute [rw] productorderuuid
#   @return [Array]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] target_packageorderuuid
#   @return [String, nil]
#
# @!attribute [rw] target_productorderuuid
#   @return [String, nil]
MoveTid = Struct.new(
  :productorderuuid,
  :response_code,
  :response_message,
  :target_packageorderuuid,
  :target_productorderuuid,
  keyword_init: true
)

# Request payload for MoveTid#create.
#
# @!attribute [rw] productorderuuid
#   @return [Array]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] target_packageorderuuid
#   @return [String, nil]
#
# @!attribute [rw] target_productorderuuid
#   @return [String, nil]
MoveTidCreateData = Struct.new(
  :productorderuuid,
  :response_code,
  :response_message,
  :target_packageorderuuid,
  :target_productorderuuid,
  keyword_init: true
)

# PaymentManual entity data model.
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] authorization_number
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String]
#
# @!attribute [rw] card_type
#   @return [String, nil]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] date_time_tx
#   @return [String, nil]
#
# @!attribute [rw] exp_date
#   @return [String]
#
# @!attribute [rw] merchant_id
#   @return [String, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [String, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentManual = Struct.new(
  :acquirer_name,
  :amount,
  :authorization_number,
  :card_number,
  :card_type,
  :currency,
  :cvc,
  :date_time_tx,
  :exp_date,
  :merchant_id,
  :original_transaction_id,
  :password,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :txtype,
  keyword_init: true
)

# Request payload for PaymentManual#create.
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] authorization_number
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String]
#
# @!attribute [rw] card_type
#   @return [String, nil]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] date_time_tx
#   @return [String, nil]
#
# @!attribute [rw] exp_date
#   @return [String]
#
# @!attribute [rw] merchant_id
#   @return [String, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [String, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentManualCreateData = Struct.new(
  :acquirer_name,
  :amount,
  :authorization_number,
  :card_number,
  :card_type,
  :currency,
  :cvc,
  :date_time_tx,
  :exp_date,
  :merchant_id,
  :original_transaction_id,
  :password,
  :response_code,
  :response_message,
  :terminal_id,
  :transaction_id,
  :txtype,
  keyword_init: true
)

# PaymentSred entity data model.
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] authorization_number
#   @return [String, nil]
#
# @!attribute [rw] card_type
#   @return [String, nil]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] date_time_tx
#   @return [String, nil]
#
# @!attribute [rw] device_payload
#   @return [String]
#
# @!attribute [rw] merchant_id
#   @return [String, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [String, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sred
#   @return [Hash, nil]
#
# @!attribute [rw] terminal_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentSred = Struct.new(
  :acquirer_name,
  :amount,
  :authorization_number,
  :card_type,
  :currency,
  :date_time_tx,
  :device_payload,
  :merchant_id,
  :original_transaction_id,
  :password,
  :response_code,
  :response_message,
  :sred,
  :terminal_id,
  :transaction_id,
  :txtype,
  keyword_init: true
)

# Request payload for PaymentSred#create.
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] authorization_number
#   @return [String, nil]
#
# @!attribute [rw] card_type
#   @return [String, nil]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] date_time_tx
#   @return [String, nil]
#
# @!attribute [rw] device_payload
#   @return [String]
#
# @!attribute [rw] merchant_id
#   @return [String, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [String, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sred
#   @return [Hash, nil]
#
# @!attribute [rw] terminal_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentSredCreateData = Struct.new(
  :acquirer_name,
  :amount,
  :authorization_number,
  :card_type,
  :currency,
  :date_time_tx,
  :device_payload,
  :merchant_id,
  :original_transaction_id,
  :password,
  :response_code,
  :response_message,
  :sred,
  :terminal_id,
  :transaction_id,
  :txtype,
  keyword_init: true
)

# PreAuthTransactionCompletion entity data model.
#
# @!attribute [rw] acquirer_id
#   @return [String, nil]
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] actual_bonus_point
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] balance_amount
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] card_number_reference
#   @return [String]
#
# @!attribute [rw] client_id
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ec_data
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] exchange_fee
#   @return [Integer, nil]
#
# @!attribute [rw] exchange_rate
#   @return [String, nil]
#
# @!attribute [rw] language_code
#   @return [String, nil]
#
# @!attribute [rw] merchant_address
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] message_type
#   @return [String, nil]
#
# @!attribute [rw] original_trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_footer
#   @return [String, nil]
#
# @!attribute [rw] receipt_header
#   @return [String, nil]
#
# @!attribute [rw] receipt_layout
#   @return [Integer, nil]
#
# @!attribute [rw] receipt_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String]
#
# @!attribute [rw] tx_type
#   @return [String, nil]
#
# @!attribute [rw] user_data
#   @return [String, nil]
PreAuthTransactionCompletion = Struct.new(
  :acquirer_id,
  :acquirer_name,
  :actual_bonus_point,
  :amount,
  :authorization_code,
  :balance_amount,
  :card_brand,
  :card_number,
  :card_number_reference,
  :client_id,
  :currency,
  :cvc,
  :ec_data,
  :ecr_data,
  :emv_data,
  :exchange_fee,
  :exchange_rate,
  :language_code,
  :merchant_address,
  :merchant_name,
  :merchant_number,
  :message_type,
  :original_trace_number,
  :original_transaction_id,
  :password,
  :payment_reason,
  :receipt_footer,
  :receipt_header,
  :receipt_layout,
  :receipt_number,
  :response_code,
  :response_message,
  :serial_number,
  :svc,
  :terminal_id,
  :terminal_location,
  :trace_number,
  :transaction_date,
  :transaction_id,
  :transaction_type,
  :tx_type,
  :user_data,
  keyword_init: true
)

# Request payload for PreAuthTransactionCompletion#create.
#
# @!attribute [rw] acquirer_id
#   @return [String, nil]
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] actual_bonus_point
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] balance_amount
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] card_number_reference
#   @return [String]
#
# @!attribute [rw] client_id
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ec_data
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] exchange_fee
#   @return [Integer, nil]
#
# @!attribute [rw] exchange_rate
#   @return [String, nil]
#
# @!attribute [rw] language_code
#   @return [String, nil]
#
# @!attribute [rw] merchant_address
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] message_type
#   @return [String, nil]
#
# @!attribute [rw] original_trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_footer
#   @return [String, nil]
#
# @!attribute [rw] receipt_header
#   @return [String, nil]
#
# @!attribute [rw] receipt_layout
#   @return [Integer, nil]
#
# @!attribute [rw] receipt_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String]
#
# @!attribute [rw] tx_type
#   @return [String, nil]
#
# @!attribute [rw] user_data
#   @return [String, nil]
PreAuthTransactionCompletionCreateData = Struct.new(
  :acquirer_id,
  :acquirer_name,
  :actual_bonus_point,
  :amount,
  :authorization_code,
  :balance_amount,
  :card_brand,
  :card_number,
  :card_number_reference,
  :client_id,
  :currency,
  :cvc,
  :ec_data,
  :ecr_data,
  :emv_data,
  :exchange_fee,
  :exchange_rate,
  :language_code,
  :merchant_address,
  :merchant_name,
  :merchant_number,
  :message_type,
  :original_trace_number,
  :original_transaction_id,
  :password,
  :payment_reason,
  :receipt_footer,
  :receipt_header,
  :receipt_layout,
  :receipt_number,
  :response_code,
  :response_message,
  :serial_number,
  :svc,
  :terminal_id,
  :terminal_location,
  :trace_number,
  :transaction_date,
  :transaction_id,
  :transaction_type,
  :tx_type,
  :user_data,
  keyword_init: true
)

# ReactivateTerminal entity data model.
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] package_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] product_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] reactivation_reason
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
ReactivateTerminal = Struct.new(
  :corporate_uuid,
  :package_order_uuid,
  :product_order_uuid,
  :reactivation_reason,
  :response_code,
  :response_message,
  :terminal_id,
  keyword_init: true
)

# Request payload for ReactivateTerminal#create.
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] package_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] product_order_uuid
#   @return [String, nil]
#
# @!attribute [rw] reactivation_reason
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
ReactivateTerminalCreateData = Struct.new(
  :corporate_uuid,
  :package_order_uuid,
  :product_order_uuid,
  :reactivation_reason,
  :response_code,
  :response_message,
  :terminal_id,
  keyword_init: true
)

# RefundTransaction entity data model.
#
# @!attribute [rw] acquirer_id
#   @return [String, nil]
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] actual_bonus_point
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] balance_amount
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] client_id
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ec_data
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] exchange_fee
#   @return [Integer, nil]
#
# @!attribute [rw] exchange_rate
#   @return [String, nil]
#
# @!attribute [rw] language_code
#   @return [String, nil]
#
# @!attribute [rw] merchant_address
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] message_type
#   @return [String, nil]
#
# @!attribute [rw] original_trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_footer
#   @return [String, nil]
#
# @!attribute [rw] receipt_header
#   @return [String, nil]
#
# @!attribute [rw] receipt_layout
#   @return [Integer, nil]
#
# @!attribute [rw] receipt_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] tx_type
#   @return [String, nil]
#
# @!attribute [rw] user_data
#   @return [String, nil]
RefundTransaction = Struct.new(
  :acquirer_id,
  :acquirer_name,
  :actual_bonus_point,
  :amount,
  :authorization_code,
  :balance_amount,
  :card_brand,
  :card_number,
  :client_id,
  :currency,
  :cvc,
  :ec_data,
  :ecr_data,
  :emv_data,
  :exchange_fee,
  :exchange_rate,
  :language_code,
  :merchant_address,
  :merchant_name,
  :merchant_number,
  :message_type,
  :original_trace_number,
  :original_transaction_id,
  :password,
  :payment_reason,
  :receipt_footer,
  :receipt_header,
  :receipt_layout,
  :receipt_number,
  :response_code,
  :response_message,
  :serial_number,
  :svc,
  :terminal_id,
  :terminal_location,
  :trace_number,
  :transaction_date,
  :transaction_id,
  :tx_type,
  :user_data,
  keyword_init: true
)

# Request payload for RefundTransaction#create.
#
# @!attribute [rw] acquirer_id
#   @return [String, nil]
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] actual_bonus_point
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] balance_amount
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] client_id
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ec_data
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_data
#   @return [String, nil]
#
# @!attribute [rw] exchange_fee
#   @return [Integer, nil]
#
# @!attribute [rw] exchange_rate
#   @return [String, nil]
#
# @!attribute [rw] language_code
#   @return [String, nil]
#
# @!attribute [rw] merchant_address
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] message_type
#   @return [String, nil]
#
# @!attribute [rw] original_trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_footer
#   @return [String, nil]
#
# @!attribute [rw] receipt_header
#   @return [String, nil]
#
# @!attribute [rw] receipt_layout
#   @return [Integer, nil]
#
# @!attribute [rw] receipt_number
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] tx_type
#   @return [String, nil]
#
# @!attribute [rw] user_data
#   @return [String, nil]
RefundTransactionCreateData = Struct.new(
  :acquirer_id,
  :acquirer_name,
  :actual_bonus_point,
  :amount,
  :authorization_code,
  :balance_amount,
  :card_brand,
  :card_number,
  :client_id,
  :currency,
  :cvc,
  :ec_data,
  :ecr_data,
  :emv_data,
  :exchange_fee,
  :exchange_rate,
  :language_code,
  :merchant_address,
  :merchant_name,
  :merchant_number,
  :message_type,
  :original_trace_number,
  :original_transaction_id,
  :password,
  :payment_reason,
  :receipt_footer,
  :receipt_header,
  :receipt_layout,
  :receipt_number,
  :response_code,
  :response_message,
  :serial_number,
  :svc,
  :terminal_id,
  :terminal_location,
  :trace_number,
  :transaction_date,
  :transaction_id,
  :tx_type,
  :user_data,
  keyword_init: true
)

# RegisterTecsCompany entity data model.
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] package_order_uuid
#   @return [String]
#
# @!attribute [rw] partner_id
#   @return [Integer, nil]
#
# @!attribute [rw] partner_name
#   @return [String, nil]
#
# @!attribute [rw] product_order_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
RegisterTecsCompany = Struct.new(
  :corporate_uuid,
  :package_order_uuid,
  :partner_id,
  :partner_name,
  :product_order_uuid,
  :response_code,
  :response_message,
  :template_name,
  keyword_init: true
)

# Request payload for RegisterTecsCompany#create.
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] package_order_uuid
#   @return [String]
#
# @!attribute [rw] partner_id
#   @return [Integer, nil]
#
# @!attribute [rw] partner_name
#   @return [String, nil]
#
# @!attribute [rw] product_order_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
RegisterTecsCompanyCreateData = Struct.new(
  :corporate_uuid,
  :package_order_uuid,
  :partner_id,
  :partner_name,
  :product_order_uuid,
  :response_code,
  :response_message,
  :template_name,
  keyword_init: true
)

# RegisterTerminal entity data model.
#
# @!attribute [rw] additional_data
#   @return [Hash, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] package_order_uuid
#   @return [String]
#
# @!attribute [rw] product_order_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] tecs_web_secret_key
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] terminal_country_code
#   @return [String]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] terminal_id_acq
#   @return [String, nil]
#
# @!attribute [rw] terminal_language_code
#   @return [String]
#
# @!attribute [rw] terminal_location
#   @return [String]
#
# @!attribute [rw] terminal_serial_number
#   @return [String, nil]
#
# @!attribute [rw] token_io_alia
#   @return [String, nil]
#
# @!attribute [rw] token_io_iban
#   @return [String, nil]
#
# @!attribute [rw] token_io_member_id
#   @return [String, nil]
#
# @!attribute [rw] web_shop_url
#   @return [String, nil]
RegisterTerminal = Struct.new(
  :additional_data,
  :corporate_uuid,
  :package_order_uuid,
  :product_order_uuid,
  :response_code,
  :response_message,
  :tecs_web_secret_key,
  :template_name,
  :terminal_country_code,
  :terminal_id,
  :terminal_id_acq,
  :terminal_language_code,
  :terminal_location,
  :terminal_serial_number,
  :token_io_alia,
  :token_io_iban,
  :token_io_member_id,
  :web_shop_url,
  keyword_init: true
)

# Request payload for RegisterTerminal#create.
#
# @!attribute [rw] additional_data
#   @return [Hash, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] package_order_uuid
#   @return [String]
#
# @!attribute [rw] product_order_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] tecs_web_secret_key
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] terminal_country_code
#   @return [String]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] terminal_id_acq
#   @return [String, nil]
#
# @!attribute [rw] terminal_language_code
#   @return [String]
#
# @!attribute [rw] terminal_location
#   @return [String]
#
# @!attribute [rw] terminal_serial_number
#   @return [String, nil]
#
# @!attribute [rw] token_io_alia
#   @return [String, nil]
#
# @!attribute [rw] token_io_iban
#   @return [String, nil]
#
# @!attribute [rw] token_io_member_id
#   @return [String, nil]
#
# @!attribute [rw] web_shop_url
#   @return [String, nil]
RegisterTerminalCreateData = Struct.new(
  :additional_data,
  :corporate_uuid,
  :package_order_uuid,
  :product_order_uuid,
  :response_code,
  :response_message,
  :tecs_web_secret_key,
  :template_name,
  :terminal_country_code,
  :terminal_id,
  :terminal_id_acq,
  :terminal_language_code,
  :terminal_location,
  :terminal_serial_number,
  :token_io_alia,
  :token_io_iban,
  :token_io_member_id,
  :web_shop_url,
  keyword_init: true
)

# ReportData entity data model.
#
# @!attribute [rw] card_brand_report_data
#   @return [Array, nil]
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] corporate_id
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sum_over_credit_tx
#   @return [Hash, nil]
#
# @!attribute [rw] sum_over_debit_tx
#   @return [Hash, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
ReportData = Struct.new(
  :card_brand_report_data,
  :clearing_date_from,
  :clearing_date_to,
  :corporate_id,
  :currency,
  :response_code,
  :response_message,
  :sum_over_credit_tx,
  :sum_over_debit_tx,
  :terminal_id,
  keyword_init: true
)

# Request payload for ReportData#create.
#
# @!attribute [rw] card_brand_report_data
#   @return [Array, nil]
#
# @!attribute [rw] clearing_date_from
#   @return [String]
#
# @!attribute [rw] clearing_date_to
#   @return [String]
#
# @!attribute [rw] corporate_id
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sum_over_credit_tx
#   @return [Hash, nil]
#
# @!attribute [rw] sum_over_debit_tx
#   @return [Hash, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
ReportDataCreateData = Struct.new(
  :card_brand_report_data,
  :clearing_date_from,
  :clearing_date_to,
  :corporate_id,
  :currency,
  :response_code,
  :response_message,
  :sum_over_credit_tx,
  :sum_over_debit_tx,
  :terminal_id,
  keyword_init: true
)

# StatusTransaction entity data model.
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] acquirer_terminal_id
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] application_cryptogram
#   @return [String, nil]
#
# @!attribute [rw] authorization_code
#   @return [Object, nil]
#
# @!attribute [rw] authorization_date
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_entry
#   @return [String, nil]
#
# @!attribute [rw] card_expiration
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount
#   @return [Integer, nil]
#
# @!attribute [rw] clearing_batch_id
#   @return [String, nil]
#
# @!attribute [rw] clearing_currency
#   @return [String, nil]
#
# @!attribute [rw] clearing_date
#   @return [String, nil]
#
# @!attribute [rw] clearing_processed_date
#   @return [String, nil]
#
# @!attribute [rw] clearing_status
#   @return [String, nil]
#
# @!attribute [rw] client_id
#   @return [Integer, nil]
#
# @!attribute [rw] currency
#   @return [String, nil]
#
# @!attribute [rw] cvm
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_application_id
#   @return [String, nil]
#
# @!attribute [rw] emv_application_label
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] original_client_id
#   @return [String, nil]
#
# @!attribute [rw] original_terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_code_from_a
#   @return [String, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] retrieval_reference_number
#   @return [String, nil]
#
# @!attribute [rw] service_code
#   @return [String, nil]
#
# @!attribute [rw] settlement_status
#   @return [String, nil]
#
# @!attribute [rw] source_id
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_code
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_text
#   @return [String, nil]
#
# @!attribute [rw] terminal_end_of_day_date
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] tip_amount
#   @return [Integer, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_clearing_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_seq_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_server_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_source
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String, nil]
StatusTransaction = Struct.new(
  :acquirer_name,
  :acquirer_terminal_id,
  :amount,
  :application_cryptogram,
  :authorization_code,
  :authorization_date,
  :card_brand,
  :card_entry,
  :card_expiration,
  :card_number,
  :clearing_amount,
  :clearing_batch_id,
  :clearing_currency,
  :clearing_date,
  :clearing_processed_date,
  :clearing_status,
  :client_id,
  :currency,
  :cvm,
  :ecr_data,
  :emv_application_id,
  :emv_application_label,
  :merchant_name,
  :merchant_number,
  :original_client_id,
  :original_terminal_id,
  :original_transaction_id,
  :payment_reason,
  :receipt_number,
  :response_code,
  :response_code_from_a,
  :response_message,
  :retrieval_reference_number,
  :service_code,
  :settlement_status,
  :source_id,
  :tecsengine_response_code,
  :tecsengine_response_text,
  :terminal_end_of_day_date,
  :terminal_id,
  :terminal_location,
  :tip_amount,
  :trace_number,
  :transaction_clearing_date,
  :transaction_date,
  :transaction_id,
  :transaction_seq_number,
  :transaction_server_date,
  :transaction_source,
  :transaction_type,
  keyword_init: true
)

# Request payload for StatusTransaction#create.
#
# @!attribute [rw] acquirer_name
#   @return [String, nil]
#
# @!attribute [rw] acquirer_terminal_id
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] application_cryptogram
#   @return [String, nil]
#
# @!attribute [rw] authorization_code
#   @return [Object, nil]
#
# @!attribute [rw] authorization_date
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] card_entry
#   @return [String, nil]
#
# @!attribute [rw] card_expiration
#   @return [String, nil]
#
# @!attribute [rw] card_number
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount
#   @return [Integer, nil]
#
# @!attribute [rw] clearing_batch_id
#   @return [String, nil]
#
# @!attribute [rw] clearing_currency
#   @return [String, nil]
#
# @!attribute [rw] clearing_date
#   @return [String, nil]
#
# @!attribute [rw] clearing_processed_date
#   @return [String, nil]
#
# @!attribute [rw] clearing_status
#   @return [String, nil]
#
# @!attribute [rw] client_id
#   @return [Integer, nil]
#
# @!attribute [rw] currency
#   @return [String, nil]
#
# @!attribute [rw] cvm
#   @return [String, nil]
#
# @!attribute [rw] ecr_data
#   @return [String, nil]
#
# @!attribute [rw] emv_application_id
#   @return [String, nil]
#
# @!attribute [rw] emv_application_label
#   @return [String, nil]
#
# @!attribute [rw] merchant_name
#   @return [String, nil]
#
# @!attribute [rw] merchant_number
#   @return [String, nil]
#
# @!attribute [rw] original_client_id
#   @return [String, nil]
#
# @!attribute [rw] original_terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] original_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] payment_reason
#   @return [String, nil]
#
# @!attribute [rw] receipt_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_code_from_a
#   @return [String, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] retrieval_reference_number
#   @return [String, nil]
#
# @!attribute [rw] service_code
#   @return [String, nil]
#
# @!attribute [rw] settlement_status
#   @return [String, nil]
#
# @!attribute [rw] source_id
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_code
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_text
#   @return [String, nil]
#
# @!attribute [rw] terminal_end_of_day_date
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] terminal_location
#   @return [String, nil]
#
# @!attribute [rw] tip_amount
#   @return [Integer, nil]
#
# @!attribute [rw] trace_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_clearing_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_seq_number
#   @return [Integer, nil]
#
# @!attribute [rw] transaction_server_date
#   @return [String, nil]
#
# @!attribute [rw] transaction_source
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String, nil]
StatusTransactionCreateData = Struct.new(
  :acquirer_name,
  :acquirer_terminal_id,
  :amount,
  :application_cryptogram,
  :authorization_code,
  :authorization_date,
  :card_brand,
  :card_entry,
  :card_expiration,
  :card_number,
  :clearing_amount,
  :clearing_batch_id,
  :clearing_currency,
  :clearing_date,
  :clearing_processed_date,
  :clearing_status,
  :client_id,
  :currency,
  :cvm,
  :ecr_data,
  :emv_application_id,
  :emv_application_label,
  :merchant_name,
  :merchant_number,
  :original_client_id,
  :original_terminal_id,
  :original_transaction_id,
  :payment_reason,
  :receipt_number,
  :response_code,
  :response_code_from_a,
  :response_message,
  :retrieval_reference_number,
  :service_code,
  :settlement_status,
  :source_id,
  :tecsengine_response_code,
  :tecsengine_response_text,
  :terminal_end_of_day_date,
  :terminal_id,
  :terminal_location,
  :tip_amount,
  :trace_number,
  :transaction_clearing_date,
  :transaction_date,
  :transaction_id,
  :transaction_seq_number,
  :transaction_server_date,
  :transaction_source,
  :transaction_type,
  keyword_init: true
)

# StoreTerminalParameter entity data model.
#
# @!attribute [rw] acq_tab_nexo
#   @return [Hash, nil]
#
# @!attribute [rw] config_version
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String]
#
# @!attribute [rw] tid_sent
#   @return [String, nil]
StoreTerminalParameter = Struct.new(
  :acq_tab_nexo,
  :config_version,
  :response_code,
  :response_message,
  :serial_number,
  :tid_sent,
  keyword_init: true
)

# Request payload for StoreTerminalParameter#create.
#
# @!attribute [rw] acq_tab_nexo
#   @return [Hash, nil]
#
# @!attribute [rw] config_version
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] serial_number
#   @return [String]
#
# @!attribute [rw] tid_sent
#   @return [String, nil]
StoreTerminalParameterCreateData = Struct.new(
  :acq_tab_nexo,
  :config_version,
  :response_code,
  :response_message,
  :serial_number,
  :tid_sent,
  keyword_init: true
)

# TerminalId entity data model.
#
# @!attribute [rw] device_serial_number
#   @return [Array]
#
# @!attribute [rw] duplicate_terminal_id
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal
#   @return [Array, nil]
TerminalId = Struct.new(
  :device_serial_number,
  :duplicate_terminal_id,
  :response_code,
  :response_message,
  :terminal,
  keyword_init: true
)

# Request payload for TerminalId#create.
#
# @!attribute [rw] device_serial_number
#   @return [Array]
#
# @!attribute [rw] duplicate_terminal_id
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] terminal
#   @return [Array, nil]
TerminalIdCreateData = Struct.new(
  :device_serial_number,
  :duplicate_terminal_id,
  :response_code,
  :response_message,
  :terminal,
  keyword_init: true
)

# TransactionHistory entity data model.
#
# @!attribute [rw] 3_d_secure
#   @return [String, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_from
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_to
#   @return [String, nil]
#
# @!attribute [rw] clearing_currency
#   @return [String, nil]
#
# @!attribute [rw] clearing_status
#   @return [String, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] order_by_transaction_date
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] payment_token_public_id
#   @return [String, nil]
#
# @!attribute [rw] receipt_number
#   @return [String, nil]
#
# @!attribute [rw] referenced_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] retrieval_reference_number
#   @return [String, nil]
#
# @!attribute [rw] source_id
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_code_from
#   @return [String, nil]
#
# @!attribute [rw] tecsengine_response_code_to
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] trace_number
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_history
#   @return [Array, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
TransactionHistory = Struct.new(
  :"3_d_secure",
  :authorization_code,
  :card_brand,
  :clearing_amount_from,
  :clearing_amount_to,
  :clearing_currency,
  :clearing_status,
  :corporate_uuid,
  :order_by_transaction_date,
  :pagination,
  :payment_token_public_id,
  :receipt_number,
  :referenced_transaction_id,
  :response_code,
  :response_message,
  :retrieval_reference_number,
  :source_id,
  :tecsengine_response_code_from,
  :tecsengine_response_code_to,
  :terminal_id,
  :trace_number,
  :transaction_amount_from,
  :transaction_amount_to,
  :transaction_date_from,
  :transaction_date_to,
  :transaction_history,
  :transaction_id,
  :transaction_type,
  :wallet,
  keyword_init: true
)

# Request payload for TransactionHistory#create.
#
# @!attribute [rw] 3_d_secure
#   @return [String, nil]
#
# @!attribute [rw] authorization_code
#   @return [String, nil]
#
# @!attribute [rw] card_brand
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_from
#   @return [String, nil]
#
# @!attribute [rw] clearing_amount_to
#   @return [String, nil]
#
# @!attribute [rw] clearing_currency
#   @return [String, nil]
#
# @!attribute [rw] clearing_status
#   @return [String, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String, nil]
#
# @!attribute [rw] order_by_transaction_date
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] payment_token_public_id
#   @return [String, nil]
#
# @!attribute [rw] receipt_number
#   @return [String, nil]
#
# @!attribute [rw] referenced_transaction_id
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] retrieval_reference_number
#   @return [String, nil]
#
# @!attribute [rw] source_id
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengine_response_code_from
#   @return [String, nil]
#
# @!attribute [rw] tecsengine_response_code_to
#   @return [String, nil]
#
# @!attribute [rw] terminal_id
#   @return [Integer, nil]
#
# @!attribute [rw] trace_number
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_amount_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transaction_history
#   @return [Array, nil]
#
# @!attribute [rw] transaction_id
#   @return [String, nil]
#
# @!attribute [rw] transaction_type
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
TransactionHistoryCreateData = Struct.new(
  :"3_d_secure",
  :authorization_code,
  :card_brand,
  :clearing_amount_from,
  :clearing_amount_to,
  :clearing_currency,
  :clearing_status,
  :corporate_uuid,
  :order_by_transaction_date,
  :pagination,
  :payment_token_public_id,
  :receipt_number,
  :referenced_transaction_id,
  :response_code,
  :response_message,
  :retrieval_reference_number,
  :source_id,
  :tecsengine_response_code_from,
  :tecsengine_response_code_to,
  :terminal_id,
  :trace_number,
  :transaction_amount_from,
  :transaction_amount_to,
  :transaction_date_from,
  :transaction_date_to,
  :transaction_history,
  :transaction_id,
  :transaction_type,
  :wallet,
  keyword_init: true
)

# TransactionsCount entity data model.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transactions_count
#   @return [Array, nil]
TransactionsCount = Struct.new(
  :period,
  :response_code,
  :response_message,
  :transaction_date_from,
  :transaction_date_to,
  :transactions_count,
  keyword_init: true
)

# Request payload for TransactionsCount#create.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transactions_count
#   @return [Array, nil]
TransactionsCountCreateData = Struct.new(
  :period,
  :response_code,
  :response_message,
  :transaction_date_from,
  :transaction_date_to,
  :transactions_count,
  keyword_init: true
)

# TransactionsCountCardBrand entity data model.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transactions_count
#   @return [Array, nil]
TransactionsCountCardBrand = Struct.new(
  :period,
  :response_code,
  :response_message,
  :transaction_date_from,
  :transaction_date_to,
  :transactions_count,
  keyword_init: true
)

# Request payload for TransactionsCountCardBrand#create.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] transactions_count
#   @return [Array, nil]
TransactionsCountCardBrandCreateData = Struct.new(
  :period,
  :response_code,
  :response_message,
  :transaction_date_from,
  :transaction_date_to,
  :transactions_count,
  keyword_init: true
)

# TransactionsTurnover entity data model.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] turnover
#   @return [Array, nil]
TransactionsTurnover = Struct.new(
  :period,
  :response_code,
  :response_message,
  :transaction_date_from,
  :transaction_date_to,
  :turnover,
  keyword_init: true
)

# Request payload for TransactionsTurnover#create.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_from
#   @return [String, nil]
#
# @!attribute [rw] transaction_date_to
#   @return [String, nil]
#
# @!attribute [rw] turnover
#   @return [Array, nil]
TransactionsTurnoverCreateData = Struct.new(
  :period,
  :response_code,
  :response_message,
  :transaction_date_from,
  :transaction_date_to,
  :turnover,
  keyword_init: true
)

# UpdateMerchant entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] merchant_category_code
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street
#   @return [String, nil]
#
# @!attribute [rw] vu_nummer
#   @return [String, nil]
#
# @!attribute [rw] zipcode
#   @return [String, nil]
UpdateMerchant = Struct.new(
  :city,
  :corporate_uuid,
  :country,
  :merchant_category_code,
  :name,
  :response_code,
  :response_message,
  :state,
  :street,
  :vu_nummer,
  :zipcode,
  keyword_init: true
)

# Request payload for UpdateMerchant#create.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] corporate_uuid
#   @return [String]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] merchant_category_code
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street
#   @return [String, nil]
#
# @!attribute [rw] vu_nummer
#   @return [String, nil]
#
# @!attribute [rw] zipcode
#   @return [String, nil]
UpdateMerchantCreateData = Struct.new(
  :city,
  :corporate_uuid,
  :country,
  :merchant_category_code,
  :name,
  :response_code,
  :response_message,
  :state,
  :street,
  :vu_nummer,
  :zipcode,
  keyword_init: true
)

# UpdateTemplateXml entity data model.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] template_xml
#   @return [String]
UpdateTemplateXml = Struct.new(
  :response_code,
  :response_message,
  :template_name,
  :template_xml,
  keyword_init: true
)

# Request payload for UpdateTemplateXml#create.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] template_name
#   @return [String]
#
# @!attribute [rw] template_xml
#   @return [String]
UpdateTemplateXmlCreateData = Struct.new(
  :response_code,
  :response_message,
  :template_name,
  :template_xml,
  keyword_init: true
)

# Version entity data model.
#
# @!attribute [rw] app_name
#   @return [String, nil]
#
# @!attribute [rw] build_date
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
Version = Struct.new(
  :app_name,
  :build_date,
  :version,
  keyword_init: true
)

# Request payload for Version#load.
#
# @!attribute [rw] app_name
#   @return [String, nil]
#
# @!attribute [rw] build_date
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
VersionLoadMatch = Struct.new(
  :app_name,
  :build_date,
  :version,
  keyword_init: true
)

