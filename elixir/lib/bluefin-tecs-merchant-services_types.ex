# Typed models for the BluefinTecsMerchantServices SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels. The SDK carries data as string-keyed struct value
# nodes, so each alias is an open string-keyed map; the @typedoc member lists
# document the concrete shapes. Do not edit by hand.

defmodule BluefinTecsMerchantServices.Types do
  @moduledoc """
  Documented shapes for the BluefinTecsMerchantServices SDK entities and operation payloads.

  Every alias resolves to an open string-keyed map because the SDK carries
  data as string-keyed struct value nodes; consult each type's member list for
  the concrete field/param types.
  """

  @typedoc """
  CancelTransaction entity data model.

  Members:
    * `"acquirer_id"` — String.t() (optional)
    * `"acquirer_name"` — String.t() (optional)
    * `"actual_bonus_point"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"balance_amount"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"client_id"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ec_data"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_data"` — String.t() (optional)
    * `"exchange_fee"` — integer() (optional)
    * `"exchange_rate"` — String.t() (optional)
    * `"language_code"` — String.t() (optional)
    * `"merchant_address"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"message_type"` — String.t() (optional)
    * `"original_trace_number"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_footer"` — String.t() (optional)
    * `"receipt_header"` — String.t() (optional)
    * `"receipt_layout"` — integer() (optional)
    * `"receipt_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"terminal_location"` — String.t() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"tx_type"` — String.t() (optional)
    * `"user_data"` — String.t() (optional)
  """
  @type cancel_transaction :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for CancelTransaction create.

  Members:
    * `"acquirer_id"` — String.t() (optional)
    * `"acquirer_name"` — String.t() (optional)
    * `"actual_bonus_point"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"balance_amount"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"client_id"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ec_data"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_data"` — String.t() (optional)
    * `"exchange_fee"` — integer() (optional)
    * `"exchange_rate"` — String.t() (optional)
    * `"language_code"` — String.t() (optional)
    * `"merchant_address"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"message_type"` — String.t() (optional)
    * `"original_trace_number"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_footer"` — String.t() (optional)
    * `"receipt_header"` — String.t() (optional)
    * `"receipt_layout"` — integer() (optional)
    * `"receipt_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"terminal_location"` — String.t() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"tx_type"` — String.t() (optional)
    * `"user_data"` — String.t() (optional)
  """
  @type cancel_transaction_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  CheckCardBlackListed entity data model.

  Members:
    * `"card_no"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type check_card_black_listed :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for CheckCardBlackListed create.

  Members:
    * `"card_no"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type check_card_black_listed_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  CreateProduct entity data model.

  Members:
    * `"acquirer_id"` — integer() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
    * `"template_type"` — String.t() (required)
    * `"template_xml"` — String.t() (required)
    * `"terminal_type"` — String.t() (required)
  """
  @type create_product :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for CreateProduct create.

  Members:
    * `"acquirer_id"` — integer() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
    * `"template_type"` — String.t() (required)
    * `"template_xml"` — String.t() (required)
    * `"terminal_type"` — String.t() (required)
  """
  @type create_product_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  DeactivateTerminal entity data model.

  Members:
    * `"corporate_uuid"` — String.t() (optional)
    * `"deactivation_reason"` — String.t() (required)
    * `"package_order_uuid"` — String.t() (optional)
    * `"product_order_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
  """
  @type deactivate_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for DeactivateTerminal create.

  Members:
    * `"corporate_uuid"` — String.t() (optional)
    * `"deactivation_reason"` — String.t() (required)
    * `"package_order_uuid"` — String.t() (optional)
    * `"product_order_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
  """
  @type deactivate_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  DigitalServicesApi entity data model.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"tx_count"` — integer() (optional)
    * `"tx_id_end"` — String.t() (optional)
    * `"tx_id_start"` — String.t() (optional)
    * `"tx_seq_no_end"` — integer() (optional)
    * `"tx_seq_no_start"` — integer() (optional)
    * `"tx_total"` — integer() (optional)
  """
  @type digital_services_api :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for DigitalServicesApi load.

  Members:
    * `"clearing_date_from"` — String.t() (optional)
    * `"clearing_date_to"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"tx_count"` — integer() (optional)
    * `"tx_id_end"` — String.t() (optional)
    * `"tx_id_start"` — String.t() (optional)
    * `"tx_seq_no_end"` — integer() (optional)
    * `"tx_seq_no_start"` — integer() (optional)
    * `"tx_total"` — integer() (optional)
  """
  @type digital_services_api_load_match :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for DigitalServicesApi create.

  Members:
    * `"file_id"` — String.t() (optional)
  """
  @type digital_services_api_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EcDataEcom entity data model.

  Members:
    * `"ecom_data"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"transaction_id"` — String.t() (required)
    * `"transaction_type"` — String.t() (required)
  """
  @type ec_data_ecom :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EcDataEcom create.

  Members:
    * `"ecom_data"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"transaction_id"` — String.t() (required)
    * `"transaction_type"` — String.t() (required)
  """
  @type ec_data_ecom_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EcomParameter entity data model.

  Members:
    * `"ecom_pass"` — String.t() (optional)
    * `"ecom_skey"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
  """
  @type ecom_parameter :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EcomParameter create.

  Members:
    * `"ecom_pass"` — String.t() (optional)
    * `"ecom_skey"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
  """
  @type ecom_parameter_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EcrData entity data model.

  Members:
    * `"ecr_data"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"transaction_id"` — String.t() (required)
    * `"transaction_type"` — String.t() (required)
  """
  @type ecr_data :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EcrData create.

  Members:
    * `"ecr_data"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"transaction_id"` — String.t() (required)
    * `"transaction_type"` — String.t() (required)
  """
  @type ecr_data_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EmvData entity data model.

  Members:
    * `"emv_data"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"transaction_id"` — String.t() (required)
    * `"transaction_type"` — String.t() (required)
  """
  @type emv_data :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EmvData create.

  Members:
    * `"emv_data"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"transaction_id"` — String.t() (required)
    * `"transaction_type"` — String.t() (required)
  """
  @type emv_data_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EnableAcquiring entity data model.

  Members:
    * `"account_no"` — integer() (optional)
    * `"additional_data"` — map() (optional)
    * `"corporate_uuid"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"merchant_category_code"` — integer() (required)
    * `"package_order_uuid"` — String.t() (required)
    * `"product_order_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting_code"` — integer() (optional)
    * `"template_name"` — String.t() (required)
    * `"terminal_id"` — list() (optional)
    * `"terminal_id_acq"` — String.t() (optional)
    * `"vu_nummer"` — String.t() (optional)
  """
  @type enable_acquiring :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EnableAcquiring create.

  Members:
    * `"account_no"` — integer() (optional)
    * `"additional_data"` — map() (optional)
    * `"corporate_uuid"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"merchant_category_code"` — integer() (required)
    * `"package_order_uuid"` — String.t() (required)
    * `"product_order_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting_code"` — integer() (optional)
    * `"template_name"` — String.t() (required)
    * `"terminal_id"` — list() (optional)
    * `"terminal_id_acq"` — String.t() (optional)
    * `"vu_nummer"` — String.t() (optional)
  """
  @type enable_acquiring_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  GetMerchantContractNumber entity data model.

  Members:
    * `"merchant_contract_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type get_merchant_contract_number :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for GetMerchantContractNumber create.

  Members:
    * `"merchant_contract_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type get_merchant_contract_number_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  GetTemplateXml entity data model.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
  """
  @type get_template_xml :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for GetTemplateXml create.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
  """
  @type get_template_xml_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  IntroduceMandator entity data model.

  Members:
    * `"mandator_name"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type introduce_mandator :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for IntroduceMandator create.

  Members:
    * `"mandator_name"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type introduce_mandator_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  IntroducePackage entity data model.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_template_description"` — String.t() (required)
  """
  @type introduce_package :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for IntroducePackage create.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_template_description"` — String.t() (required)
  """
  @type introduce_package_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  KeepAlive entity data model.

  Members:
    * `"hwserialno"` — String.t() (optional)
    * `"ka_date_time_from"` — String.t() (optional)
    * `"ka_date_time_to"` — String.t() (optional)
    * `"keep_alive_data"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_date_time_from"` — String.t() (optional)
    * `"terminal_date_time_to"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
  """
  @type keep_alive :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for KeepAlive create.

  Members:
    * `"hwserialno"` — String.t() (optional)
    * `"ka_date_time_from"` — String.t() (optional)
    * `"ka_date_time_to"` — String.t() (optional)
    * `"keep_alive_data"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_date_time_from"` — String.t() (optional)
    * `"terminal_date_time_to"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
  """
  @type keep_alive_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  ListTerminal entity data model.

  Members:
    * `"corporate_uuid"` — list() (optional)
    * `"filter"` — map() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal"` — list() (optional)
  """
  @type list_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for ListTerminal create.

  Members:
    * `"corporate_uuid"` — list() (optional)
    * `"filter"` — map() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal"` — list() (optional)
  """
  @type list_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MandatorClearingExport entity data model.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"pagination"` — map() (optional)
    * `"record"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type mandator_clearing_export :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MandatorClearingExport create.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"pagination"` — map() (optional)
    * `"record"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type mandator_clearing_export_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MandatorClearingExportDownload entity data model.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"file_id"` — String.t() (optional)
    * `"filename_template"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"status"` — String.t() (optional)
  """
  @type mandator_clearing_export_download :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MandatorClearingExportDownload load.

  Members:
    * `"id"` — String.t() (required)
  """
  @type mandator_clearing_export_download_load_match :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MandatorClearingExportDownload create.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"file_id"` — String.t() (optional)
    * `"filename_template"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"status"` — String.t() (optional)
  """
  @type mandator_clearing_export_download_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MandatorClearingExportSummary entity data model.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"record"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type mandator_clearing_export_summary :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MandatorClearingExportSummary create.

  Members:
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"record"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type mandator_clearing_export_summary_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MerchantPortalServicesApi entity data model.

  Members:
    * `"3_d_secure"` — String.t() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"clearing_amount_from"` — String.t() (optional)
    * `"clearing_amount_to"` — String.t() (optional)
    * `"clearing_currency"` — String.t() (optional)
    * `"clearing_status"` — String.t() (optional)
    * `"corporate_uuid"` — String.t() (optional)
    * `"order_by_transaction_date"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"receipt_number"` — String.t() (optional)
    * `"referenced_transaction_id"` — String.t() (optional)
    * `"retrieval_reference_number"` — String.t() (optional)
    * `"source_id"` — integer() (optional)
    * `"tecsengine_response_code_from"` — String.t() (optional)
    * `"tecsengine_response_code_to"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
    * `"trace_number"` — String.t() (optional)
    * `"transaction_amount_from"` — String.t() (optional)
    * `"transaction_amount_to"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_type"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type merchant_portal_services_api :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MerchantPortalServicesApi create.

  Members:
    * `"3_d_secure"` — String.t() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"clearing_amount_from"` — String.t() (optional)
    * `"clearing_amount_to"` — String.t() (optional)
    * `"clearing_currency"` — String.t() (optional)
    * `"clearing_status"` — String.t() (optional)
    * `"corporate_uuid"` — String.t() (optional)
    * `"order_by_transaction_date"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"receipt_number"` — String.t() (optional)
    * `"referenced_transaction_id"` — String.t() (optional)
    * `"retrieval_reference_number"` — String.t() (optional)
    * `"source_id"` — integer() (optional)
    * `"tecsengine_response_code_from"` — String.t() (optional)
    * `"tecsengine_response_code_to"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
    * `"trace_number"` — String.t() (optional)
    * `"transaction_amount_from"` — String.t() (optional)
    * `"transaction_amount_to"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_type"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type merchant_portal_services_api_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MoveTid entity data model.

  Members:
    * `"productorderuuid"` — list() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"target_packageorderuuid"` — String.t() (optional)
    * `"target_productorderuuid"` — String.t() (optional)
  """
  @type move_tid :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MoveTid create.

  Members:
    * `"productorderuuid"` — list() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"target_packageorderuuid"` — String.t() (optional)
    * `"target_productorderuuid"` — String.t() (optional)
  """
  @type move_tid_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  PaymentManual entity data model.

  Members:
    * `"acquirer_name"` — String.t() (optional)
    * `"amount"` — integer() (required)
    * `"authorization_number"` — String.t() (optional)
    * `"card_number"` — String.t() (required)
    * `"card_type"` — String.t() (optional)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"date_time_tx"` — String.t() (optional)
    * `"exp_date"` — String.t() (required)
    * `"merchant_id"` — String.t() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"response_code"` — String.t() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"txtype"` — String.t() (required)
  """
  @type payment_manual :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for PaymentManual create.

  Members:
    * `"acquirer_name"` — String.t() (optional)
    * `"amount"` — integer() (required)
    * `"authorization_number"` — String.t() (optional)
    * `"card_number"` — String.t() (required)
    * `"card_type"` — String.t() (optional)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"date_time_tx"` — String.t() (optional)
    * `"exp_date"` — String.t() (required)
    * `"merchant_id"` — String.t() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"response_code"` — String.t() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"txtype"` — String.t() (required)
  """
  @type payment_manual_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  PaymentSred entity data model.

  Members:
    * `"acquirer_name"` — String.t() (optional)
    * `"amount"` — integer() (required)
    * `"authorization_number"` — String.t() (optional)
    * `"card_type"` — String.t() (optional)
    * `"currency"` — String.t() (required)
    * `"date_time_tx"` — String.t() (optional)
    * `"device_payload"` — String.t() (required)
    * `"merchant_id"` — String.t() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"response_code"` — String.t() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sred"` — map() (optional)
    * `"terminal_id"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"txtype"` — String.t() (required)
  """
  @type payment_sred :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for PaymentSred create.

  Members:
    * `"acquirer_name"` — String.t() (optional)
    * `"amount"` — integer() (required)
    * `"authorization_number"` — String.t() (optional)
    * `"card_type"` — String.t() (optional)
    * `"currency"` — String.t() (required)
    * `"date_time_tx"` — String.t() (optional)
    * `"device_payload"` — String.t() (required)
    * `"merchant_id"` — String.t() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"response_code"` — String.t() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sred"` — map() (optional)
    * `"terminal_id"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"txtype"` — String.t() (required)
  """
  @type payment_sred_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  PreAuthTransactionCompletion entity data model.

  Members:
    * `"acquirer_id"` — String.t() (optional)
    * `"acquirer_name"` — String.t() (optional)
    * `"actual_bonus_point"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"balance_amount"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"card_number_reference"` — String.t() (required)
    * `"client_id"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ec_data"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_data"` — String.t() (optional)
    * `"exchange_fee"` — integer() (optional)
    * `"exchange_rate"` — String.t() (optional)
    * `"language_code"` — String.t() (optional)
    * `"merchant_address"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"message_type"` — String.t() (optional)
    * `"original_trace_number"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_footer"` — String.t() (optional)
    * `"receipt_header"` — String.t() (optional)
    * `"receipt_layout"` — integer() (optional)
    * `"receipt_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"terminal_location"` — String.t() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_type"` — String.t() (required)
    * `"tx_type"` — String.t() (optional)
    * `"user_data"` — String.t() (optional)
  """
  @type pre_auth_transaction_completion :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for PreAuthTransactionCompletion create.

  Members:
    * `"acquirer_id"` — String.t() (optional)
    * `"acquirer_name"` — String.t() (optional)
    * `"actual_bonus_point"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"balance_amount"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"card_number_reference"` — String.t() (required)
    * `"client_id"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ec_data"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_data"` — String.t() (optional)
    * `"exchange_fee"` — integer() (optional)
    * `"exchange_rate"` — String.t() (optional)
    * `"language_code"` — String.t() (optional)
    * `"merchant_address"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"message_type"` — String.t() (optional)
    * `"original_trace_number"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_footer"` — String.t() (optional)
    * `"receipt_header"` — String.t() (optional)
    * `"receipt_layout"` — integer() (optional)
    * `"receipt_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"terminal_location"` — String.t() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_type"` — String.t() (required)
    * `"tx_type"` — String.t() (optional)
    * `"user_data"` — String.t() (optional)
  """
  @type pre_auth_transaction_completion_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  ReactivateTerminal entity data model.

  Members:
    * `"corporate_uuid"` — String.t() (optional)
    * `"package_order_uuid"` — String.t() (optional)
    * `"product_order_uuid"` — String.t() (optional)
    * `"reactivation_reason"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
  """
  @type reactivate_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for ReactivateTerminal create.

  Members:
    * `"corporate_uuid"` — String.t() (optional)
    * `"package_order_uuid"` — String.t() (optional)
    * `"product_order_uuid"` — String.t() (optional)
    * `"reactivation_reason"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
  """
  @type reactivate_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  RefundTransaction entity data model.

  Members:
    * `"acquirer_id"` — String.t() (optional)
    * `"acquirer_name"` — String.t() (optional)
    * `"actual_bonus_point"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"balance_amount"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"client_id"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ec_data"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_data"` — String.t() (optional)
    * `"exchange_fee"` — integer() (optional)
    * `"exchange_rate"` — String.t() (optional)
    * `"language_code"` — String.t() (optional)
    * `"merchant_address"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"message_type"` — String.t() (optional)
    * `"original_trace_number"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_footer"` — String.t() (optional)
    * `"receipt_header"` — String.t() (optional)
    * `"receipt_layout"` — integer() (optional)
    * `"receipt_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"terminal_location"` — String.t() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"tx_type"` — String.t() (optional)
    * `"user_data"` — String.t() (optional)
  """
  @type refund_transaction :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for RefundTransaction create.

  Members:
    * `"acquirer_id"` — String.t() (optional)
    * `"acquirer_name"` — String.t() (optional)
    * `"actual_bonus_point"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"balance_amount"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"client_id"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ec_data"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_data"` — String.t() (optional)
    * `"exchange_fee"` — integer() (optional)
    * `"exchange_rate"` — String.t() (optional)
    * `"language_code"` — String.t() (optional)
    * `"merchant_address"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"message_type"` — String.t() (optional)
    * `"original_trace_number"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_footer"` — String.t() (optional)
    * `"receipt_header"` — String.t() (optional)
    * `"receipt_layout"` — integer() (optional)
    * `"receipt_number"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminal_id"` — integer() (required)
    * `"terminal_location"` — String.t() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"tx_type"` — String.t() (optional)
    * `"user_data"` — String.t() (optional)
  """
  @type refund_transaction_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  RegisterTecsCompany entity data model.

  Members:
    * `"corporate_uuid"` — String.t() (required)
    * `"package_order_uuid"` — String.t() (required)
    * `"partner_id"` — integer() (optional)
    * `"partner_name"` — String.t() (optional)
    * `"product_order_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
  """
  @type register_tecs_company :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for RegisterTecsCompany create.

  Members:
    * `"corporate_uuid"` — String.t() (required)
    * `"package_order_uuid"` — String.t() (required)
    * `"partner_id"` — integer() (optional)
    * `"partner_name"` — String.t() (optional)
    * `"product_order_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
  """
  @type register_tecs_company_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  RegisterTerminal entity data model.

  Members:
    * `"additional_data"` — map() (optional)
    * `"corporate_uuid"` — String.t() (required)
    * `"package_order_uuid"` — String.t() (required)
    * `"product_order_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"tecs_web_secret_key"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
    * `"terminal_country_code"` — String.t() (required)
    * `"terminal_id"` — integer() (optional)
    * `"terminal_id_acq"` — String.t() (optional)
    * `"terminal_language_code"` — String.t() (required)
    * `"terminal_location"` — String.t() (required)
    * `"terminal_serial_number"` — String.t() (optional)
    * `"token_io_alia"` — String.t() (optional)
    * `"token_io_iban"` — String.t() (optional)
    * `"token_io_member_id"` — String.t() (optional)
    * `"web_shop_url"` — String.t() (optional)
  """
  @type register_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for RegisterTerminal create.

  Members:
    * `"additional_data"` — map() (optional)
    * `"corporate_uuid"` — String.t() (required)
    * `"package_order_uuid"` — String.t() (required)
    * `"product_order_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"tecs_web_secret_key"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
    * `"terminal_country_code"` — String.t() (required)
    * `"terminal_id"` — integer() (optional)
    * `"terminal_id_acq"` — String.t() (optional)
    * `"terminal_language_code"` — String.t() (required)
    * `"terminal_location"` — String.t() (required)
    * `"terminal_serial_number"` — String.t() (optional)
    * `"token_io_alia"` — String.t() (optional)
    * `"token_io_iban"` — String.t() (optional)
    * `"token_io_member_id"` — String.t() (optional)
    * `"web_shop_url"` — String.t() (optional)
  """
  @type register_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  ReportData entity data model.

  Members:
    * `"card_brand_report_data"` — list() (optional)
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"corporate_id"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sum_over_credit_tx"` — map() (optional)
    * `"sum_over_debit_tx"` — map() (optional)
    * `"terminal_id"` — integer() (optional)
  """
  @type report_data :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for ReportData create.

  Members:
    * `"card_brand_report_data"` — list() (optional)
    * `"clearing_date_from"` — String.t() (required)
    * `"clearing_date_to"` — String.t() (required)
    * `"corporate_id"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sum_over_credit_tx"` — map() (optional)
    * `"sum_over_debit_tx"` — map() (optional)
    * `"terminal_id"` — integer() (optional)
  """
  @type report_data_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  StatusTransaction entity data model.

  Members:
    * `"acquirer_name"` — String.t() (optional)
    * `"acquirer_terminal_id"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"application_cryptogram"` — String.t() (optional)
    * `"authorization_code"` — String.t() | nil (optional)
    * `"authorization_date"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_entry"` — String.t() (optional)
    * `"card_expiration"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"clearing_amount"` — integer() (optional)
    * `"clearing_batch_id"` — String.t() (optional)
    * `"clearing_currency"` — String.t() (optional)
    * `"clearing_date"` — String.t() (optional)
    * `"clearing_processed_date"` — String.t() (optional)
    * `"clearing_status"` — String.t() (optional)
    * `"client_id"` — integer() (optional)
    * `"currency"` — String.t() (optional)
    * `"cvm"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_application_id"` — String.t() (optional)
    * `"emv_application_label"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"original_client_id"` — String.t() (optional)
    * `"original_terminal_id"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_code_from_a"` — String.t() (optional)
    * `"response_message"` — String.t() (optional)
    * `"retrieval_reference_number"` — String.t() (optional)
    * `"service_code"` — String.t() (optional)
    * `"settlement_status"` — String.t() (optional)
    * `"source_id"` — integer() (optional)
    * `"tecsengine_response_code"` — integer() (optional)
    * `"tecsengine_response_text"` — String.t() (optional)
    * `"terminal_end_of_day_date"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
    * `"terminal_location"` — String.t() (optional)
    * `"tip_amount"` — integer() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_clearing_date"` — String.t() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_seq_number"` — integer() (optional)
    * `"transaction_server_date"` — String.t() (optional)
    * `"transaction_source"` — String.t() (optional)
    * `"transaction_type"` — String.t() (optional)
  """
  @type status_transaction :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for StatusTransaction create.

  Members:
    * `"acquirer_name"` — String.t() (optional)
    * `"acquirer_terminal_id"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"application_cryptogram"` — String.t() (optional)
    * `"authorization_code"` — String.t() | nil (optional)
    * `"authorization_date"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"card_entry"` — String.t() (optional)
    * `"card_expiration"` — String.t() (optional)
    * `"card_number"` — String.t() (optional)
    * `"clearing_amount"` — integer() (optional)
    * `"clearing_batch_id"` — String.t() (optional)
    * `"clearing_currency"` — String.t() (optional)
    * `"clearing_date"` — String.t() (optional)
    * `"clearing_processed_date"` — String.t() (optional)
    * `"clearing_status"` — String.t() (optional)
    * `"client_id"` — integer() (optional)
    * `"currency"` — String.t() (optional)
    * `"cvm"` — String.t() (optional)
    * `"ecr_data"` — String.t() (optional)
    * `"emv_application_id"` — String.t() (optional)
    * `"emv_application_label"` — String.t() (optional)
    * `"merchant_name"` — String.t() (optional)
    * `"merchant_number"` — String.t() (optional)
    * `"original_client_id"` — String.t() (optional)
    * `"original_terminal_id"` — integer() (optional)
    * `"original_transaction_id"` — String.t() (optional)
    * `"payment_reason"` — String.t() (optional)
    * `"receipt_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_code_from_a"` — String.t() (optional)
    * `"response_message"` — String.t() (optional)
    * `"retrieval_reference_number"` — String.t() (optional)
    * `"service_code"` — String.t() (optional)
    * `"settlement_status"` — String.t() (optional)
    * `"source_id"` — integer() (optional)
    * `"tecsengine_response_code"` — integer() (optional)
    * `"tecsengine_response_text"` — String.t() (optional)
    * `"terminal_end_of_day_date"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
    * `"terminal_location"` — String.t() (optional)
    * `"tip_amount"` — integer() (optional)
    * `"trace_number"` — integer() (optional)
    * `"transaction_clearing_date"` — String.t() (optional)
    * `"transaction_date"` — String.t() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_seq_number"` — integer() (optional)
    * `"transaction_server_date"` — String.t() (optional)
    * `"transaction_source"` — String.t() (optional)
    * `"transaction_type"` — String.t() (optional)
  """
  @type status_transaction_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  StoreTerminalParameter entity data model.

  Members:
    * `"acq_tab_nexo"` — map() (optional)
    * `"config_version"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (required)
    * `"tid_sent"` — String.t() (optional)
  """
  @type store_terminal_parameter :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for StoreTerminalParameter create.

  Members:
    * `"acq_tab_nexo"` — map() (optional)
    * `"config_version"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"serial_number"` — String.t() (required)
    * `"tid_sent"` — String.t() (optional)
  """
  @type store_terminal_parameter_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TerminalId entity data model.

  Members:
    * `"device_serial_number"` — list() (required)
    * `"duplicate_terminal_id"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal"` — list() (optional)
  """
  @type terminal_id :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TerminalId create.

  Members:
    * `"device_serial_number"` — list() (required)
    * `"duplicate_terminal_id"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"terminal"` — list() (optional)
  """
  @type terminal_id_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionHistory entity data model.

  Members:
    * `"3_d_secure"` — String.t() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"clearing_amount_from"` — String.t() (optional)
    * `"clearing_amount_to"` — String.t() (optional)
    * `"clearing_currency"` — String.t() (optional)
    * `"clearing_status"` — String.t() (optional)
    * `"corporate_uuid"` — String.t() (optional)
    * `"order_by_transaction_date"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"payment_token_public_id"` — String.t() (optional)
    * `"receipt_number"` — String.t() (optional)
    * `"referenced_transaction_id"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"retrieval_reference_number"` — String.t() (optional)
    * `"source_id"` — integer() (optional)
    * `"tecsengine_response_code_from"` — String.t() (optional)
    * `"tecsengine_response_code_to"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
    * `"trace_number"` — String.t() (optional)
    * `"transaction_amount_from"` — String.t() (optional)
    * `"transaction_amount_to"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transaction_history"` — list() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_type"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type transaction_history :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionHistory create.

  Members:
    * `"3_d_secure"` — String.t() (optional)
    * `"authorization_code"` — String.t() (optional)
    * `"card_brand"` — String.t() (optional)
    * `"clearing_amount_from"` — String.t() (optional)
    * `"clearing_amount_to"` — String.t() (optional)
    * `"clearing_currency"` — String.t() (optional)
    * `"clearing_status"` — String.t() (optional)
    * `"corporate_uuid"` — String.t() (optional)
    * `"order_by_transaction_date"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"payment_token_public_id"` — String.t() (optional)
    * `"receipt_number"` — String.t() (optional)
    * `"referenced_transaction_id"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"retrieval_reference_number"` — String.t() (optional)
    * `"source_id"` — integer() (optional)
    * `"tecsengine_response_code_from"` — String.t() (optional)
    * `"tecsengine_response_code_to"` — String.t() (optional)
    * `"terminal_id"` — integer() (optional)
    * `"trace_number"` — String.t() (optional)
    * `"transaction_amount_from"` — String.t() (optional)
    * `"transaction_amount_to"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transaction_history"` — list() (optional)
    * `"transaction_id"` — String.t() (optional)
    * `"transaction_type"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type transaction_history_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionsCount entity data model.

  Members:
    * `"period"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transactions_count"` — list() (optional)
  """
  @type transactions_count :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionsCount create.

  Members:
    * `"period"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transactions_count"` — list() (optional)
  """
  @type transactions_count_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionsCountCardBrand entity data model.

  Members:
    * `"period"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transactions_count"` — list() (optional)
  """
  @type transactions_count_card_brand :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionsCountCardBrand create.

  Members:
    * `"period"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"transactions_count"` — list() (optional)
  """
  @type transactions_count_card_brand_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionsTurnover entity data model.

  Members:
    * `"period"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"turnover"` — list() (optional)
  """
  @type transactions_turnover :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionsTurnover create.

  Members:
    * `"period"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"transaction_date_from"` — String.t() (optional)
    * `"transaction_date_to"` — String.t() (optional)
    * `"turnover"` — list() (optional)
  """
  @type transactions_turnover_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  UpdateMerchant entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"corporate_uuid"` — String.t() (required)
    * `"country"` — String.t() (optional)
    * `"merchant_category_code"` — String.t() (optional)
    * `"name"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street"` — String.t() (optional)
    * `"vu_nummer"` — String.t() (optional)
    * `"zipcode"` — String.t() (optional)
  """
  @type update_merchant :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for UpdateMerchant create.

  Members:
    * `"city"` — String.t() (optional)
    * `"corporate_uuid"` — String.t() (required)
    * `"country"` — String.t() (optional)
    * `"merchant_category_code"` — String.t() (optional)
    * `"name"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street"` — String.t() (optional)
    * `"vu_nummer"` — String.t() (optional)
    * `"zipcode"` — String.t() (optional)
  """
  @type update_merchant_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  UpdateTemplateXml entity data model.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
    * `"template_xml"` — String.t() (required)
  """
  @type update_template_xml :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for UpdateTemplateXml create.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"template_name"` — String.t() (required)
    * `"template_xml"` — String.t() (required)
  """
  @type update_template_xml_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  Version entity data model.

  Members:
    * `"app_name"` — String.t() (optional)
    * `"build_date"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for Version load.

  Members:
    * `"app_name"` — String.t() (optional)
    * `"build_date"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version_load_match :: %{optional(String.t()) => any()}

end
