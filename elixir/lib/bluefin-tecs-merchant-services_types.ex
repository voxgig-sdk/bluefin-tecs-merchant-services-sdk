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
    * `"acquirerId"` — String.t() (optional)
    * `"acquirerName"` — String.t() (optional)
    * `"actualBonusPoints"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"balanceAmount"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"clientId"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ecData"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvData"` — String.t() (optional)
    * `"exchangeFee"` — integer() (optional)
    * `"exchangeRate"` — String.t() (optional)
    * `"languageCode"` — String.t() (optional)
    * `"merchantAddress"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"messageType"` — String.t() (optional)
    * `"originalTraceNumber"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptFooter"` — String.t() (optional)
    * `"receiptHeader"` — String.t() (optional)
    * `"receiptLayout"` — integer() (optional)
    * `"receiptNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"terminalLocation"` — String.t() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"txType"` — String.t() (optional)
    * `"userData"` — String.t() (optional)
  """
  @type cancel_transaction :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for CancelTransaction create.

  Members:
    * `"acquirerId"` — String.t() (optional)
    * `"acquirerName"` — String.t() (optional)
    * `"actualBonusPoints"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"balanceAmount"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"clientId"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ecData"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvData"` — String.t() (optional)
    * `"exchangeFee"` — integer() (optional)
    * `"exchangeRate"` — String.t() (optional)
    * `"languageCode"` — String.t() (optional)
    * `"merchantAddress"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"messageType"` — String.t() (optional)
    * `"originalTraceNumber"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptFooter"` — String.t() (optional)
    * `"receiptHeader"` — String.t() (optional)
    * `"receiptLayout"` — integer() (optional)
    * `"receiptNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"terminalLocation"` — String.t() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"txType"` — String.t() (optional)
    * `"userData"` — String.t() (optional)
  """
  @type cancel_transaction_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  CheckCardBlackListed entity data model.

  Members:
    * `"cardNo"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type check_card_black_listed :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for CheckCardBlackListed create.

  Members:
    * `"cardNo"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type check_card_black_listed_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  CreateProduct entity data model.

  Members:
    * `"acquirerId"` — integer() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
    * `"templateType"` — String.t() (required)
    * `"templateXml"` — String.t() (required)
    * `"terminalType"` — String.t() (required)
  """
  @type create_product :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for CreateProduct create.

  Members:
    * `"acquirerId"` — integer() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
    * `"templateType"` — String.t() (required)
    * `"templateXml"` — String.t() (required)
    * `"terminalType"` — String.t() (required)
  """
  @type create_product_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  DeactivateTerminal entity data model.

  Members:
    * `"corporateUuid"` — String.t() (optional)
    * `"deactivationReason"` — String.t() (required)
    * `"packageOrderUuid"` — String.t() (optional)
    * `"productOrderUuid"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
  """
  @type deactivate_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for DeactivateTerminal create.

  Members:
    * `"corporateUuid"` — String.t() (optional)
    * `"deactivationReason"` — String.t() (required)
    * `"packageOrderUuid"` — String.t() (optional)
    * `"productOrderUuid"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
  """
  @type deactivate_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  DigitalServicesApi entity data model.

  Members:
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"txCount"` — integer() (optional)
    * `"txIdEnd"` — String.t() (optional)
    * `"txIdStart"` — String.t() (optional)
    * `"txSeqNoEnd"` — integer() (optional)
    * `"txSeqNoStart"` — integer() (optional)
    * `"txTotal"` — integer() (optional)
  """
  @type digital_services_api :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for DigitalServicesApi load.

  Members:
    * `"clearingDateFrom"` — String.t() (optional)
    * `"clearingDateTo"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"txCount"` — integer() (optional)
    * `"txIdEnd"` — String.t() (optional)
    * `"txIdStart"` — String.t() (optional)
    * `"txSeqNoEnd"` — integer() (optional)
    * `"txSeqNoStart"` — integer() (optional)
    * `"txTotal"` — integer() (optional)
  """
  @type digital_services_api_load_match :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for DigitalServicesApi create.

  Members:
    * `"file_id"` — String.t() (optional)
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"txCount"` — integer() (optional)
    * `"txIdEnd"` — String.t() (optional)
    * `"txIdStart"` — String.t() (optional)
    * `"txSeqNoEnd"` — integer() (optional)
    * `"txSeqNoStart"` — integer() (optional)
    * `"txTotal"` — integer() (optional)
  """
  @type digital_services_api_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EcDataEcom entity data model.

  Members:
    * `"ecomData"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"transactionId"` — String.t() (required)
    * `"transactionType"` — String.t() (required)
  """
  @type ec_data_ecom :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EcDataEcom create.

  Members:
    * `"ecomData"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"transactionId"` — String.t() (required)
    * `"transactionType"` — String.t() (required)
  """
  @type ec_data_ecom_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EcomParameter entity data model.

  Members:
    * `"ecomPass"` — String.t() (optional)
    * `"ecomSkey"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
  """
  @type ecom_parameter :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EcomParameter create.

  Members:
    * `"ecomPass"` — String.t() (optional)
    * `"ecomSkey"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
  """
  @type ecom_parameter_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EcrData entity data model.

  Members:
    * `"ecrData"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"transactionId"` — String.t() (required)
    * `"transactionType"` — String.t() (required)
  """
  @type ecr_data :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EcrData create.

  Members:
    * `"ecrData"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"transactionId"` — String.t() (required)
    * `"transactionType"` — String.t() (required)
  """
  @type ecr_data_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EmvData entity data model.

  Members:
    * `"emvData"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"transactionId"` — String.t() (required)
    * `"transactionType"` — String.t() (required)
  """
  @type emv_data :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EmvData create.

  Members:
    * `"emvData"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"transactionId"` — String.t() (required)
    * `"transactionType"` — String.t() (required)
  """
  @type emv_data_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  EnableAcquiring entity data model.

  Members:
    * `"accountNo"` — integer() (optional)
    * `"additionalData"` — map() (optional)
    * `"corporateUuid"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"merchantCategoryCode"` — integer() (required)
    * `"packageOrderUuid"` — String.t() (required)
    * `"productOrderUuid"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sortingCode"` — integer() (optional)
    * `"templateName"` — String.t() (required)
    * `"terminalIdAcq"` — String.t() (optional)
    * `"terminalIds"` — list() (optional)
    * `"vuNummer"` — String.t() (optional)
  """
  @type enable_acquiring :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for EnableAcquiring create.

  Members:
    * `"accountNo"` — integer() (optional)
    * `"additionalData"` — map() (optional)
    * `"corporateUuid"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"merchantCategoryCode"` — integer() (required)
    * `"packageOrderUuid"` — String.t() (required)
    * `"productOrderUuid"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sortingCode"` — integer() (optional)
    * `"templateName"` — String.t() (required)
    * `"terminalIdAcq"` — String.t() (optional)
    * `"terminalIds"` — list() (optional)
    * `"vuNummer"` — String.t() (optional)
  """
  @type enable_acquiring_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  GetMerchantContractNumber entity data model.

  Members:
    * `"merchantContractNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type get_merchant_contract_number :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for GetMerchantContractNumber create.

  Members:
    * `"merchantContractNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type get_merchant_contract_number_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  GetTemplateXml entity data model.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
  """
  @type get_template_xml :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for GetTemplateXml create.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
  """
  @type get_template_xml_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  IntroduceMandator entity data model.

  Members:
    * `"mandatorName"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type introduce_mandator :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for IntroduceMandator create.

  Members:
    * `"mandatorName"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type introduce_mandator_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  IntroducePackage entity data model.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalTemplateDescription"` — String.t() (required)
  """
  @type introduce_package :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for IntroducePackage create.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalTemplateDescription"` — String.t() (required)
  """
  @type introduce_package_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  KeepAlive entity data model.

  Members:
    * `"hwserialno"` — String.t() (optional)
    * `"kaDateTimeFrom"` — String.t() (optional)
    * `"kaDateTimeTo"` — String.t() (optional)
    * `"keepAliveData"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalDateTimeFrom"` — String.t() (optional)
    * `"terminalDateTimeTo"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
  """
  @type keep_alive :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for KeepAlive create.

  Members:
    * `"hwserialno"` — String.t() (optional)
    * `"kaDateTimeFrom"` — String.t() (optional)
    * `"kaDateTimeTo"` — String.t() (optional)
    * `"keepAliveData"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalDateTimeFrom"` — String.t() (optional)
    * `"terminalDateTimeTo"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
  """
  @type keep_alive_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  ListTerminal entity data model.

  Members:
    * `"corporateUuid"` — list() (optional)
    * `"filter"` — map() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminals"` — list() (optional)
  """
  @type list_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for ListTerminal create.

  Members:
    * `"corporateUuid"` — list() (optional)
    * `"filter"` — map() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminals"` — list() (optional)
  """
  @type list_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MandatorClearingExport entity data model.

  Members:
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"pagination"` — map() (optional)
    * `"records"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type mandator_clearing_export :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MandatorClearingExport create.

  Members:
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"pagination"` — map() (optional)
    * `"records"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type mandator_clearing_export_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MandatorClearingExportDownload entity data model.

  Members:
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"fileId"` — String.t() (optional)
    * `"filenameTemplate"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
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
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"fileId"` — String.t() (optional)
    * `"filenameTemplate"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"status"` — String.t() (optional)
  """
  @type mandator_clearing_export_download_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MandatorClearingExportSummary entity data model.

  Members:
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"records"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type mandator_clearing_export_summary :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MandatorClearingExportSummary create.

  Members:
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"records"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type mandator_clearing_export_summary_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MerchantPortalServicesApi entity data model.

  Members:
    * `"3DSecure"` — String.t() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"clearingAmountFrom"` — String.t() (optional)
    * `"clearingAmountTo"` — String.t() (optional)
    * `"clearingCurrency"` — String.t() (optional)
    * `"clearingStatus"` — String.t() (optional)
    * `"corporateUUID"` — String.t() (optional)
    * `"orderByTransactionDate"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"receiptNumber"` — String.t() (optional)
    * `"referencedTransactionId"` — String.t() (optional)
    * `"retrievalReferenceNumber"` — String.t() (optional)
    * `"sourceId"` — integer() (optional)
    * `"tecsengineResponseCodeFrom"` — String.t() (optional)
    * `"tecsengineResponseCodeTo"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
    * `"traceNumber"` — String.t() (optional)
    * `"transactionAmountFrom"` — String.t() (optional)
    * `"transactionAmountTo"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionType"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type merchant_portal_services_api :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MerchantPortalServicesApi create.

  Members:
    * `"3DSecure"` — String.t() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"clearingAmountFrom"` — String.t() (optional)
    * `"clearingAmountTo"` — String.t() (optional)
    * `"clearingCurrency"` — String.t() (optional)
    * `"clearingStatus"` — String.t() (optional)
    * `"corporateUUID"` — String.t() (optional)
    * `"orderByTransactionDate"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"receiptNumber"` — String.t() (optional)
    * `"referencedTransactionId"` — String.t() (optional)
    * `"retrievalReferenceNumber"` — String.t() (optional)
    * `"sourceId"` — integer() (optional)
    * `"tecsengineResponseCodeFrom"` — String.t() (optional)
    * `"tecsengineResponseCodeTo"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
    * `"traceNumber"` — String.t() (optional)
    * `"transactionAmountFrom"` — String.t() (optional)
    * `"transactionAmountTo"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionType"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type merchant_portal_services_api_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  MoveTid entity data model.

  Members:
    * `"productorderuuids"` — list() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"targetPackageorderuuid"` — String.t() (optional)
    * `"targetProductorderuuid"` — String.t() (optional)
  """
  @type move_tid :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for MoveTid create.

  Members:
    * `"productorderuuids"` — list() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"targetPackageorderuuid"` — String.t() (optional)
    * `"targetProductorderuuid"` — String.t() (optional)
  """
  @type move_tid_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  PaymentManual entity data model.

  Members:
    * `"acquirerName"` — String.t() (optional)
    * `"amount"` — integer() (required)
    * `"authorizationNumber"` — String.t() (optional)
    * `"cardNumber"` — String.t() (required)
    * `"cardType"` — String.t() (optional)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"dateTimeTx"` — String.t() (optional)
    * `"expDate"` — String.t() (required)
    * `"merchantId"` — String.t() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"responseCode"` — String.t() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"txtype"` — String.t() (required)
  """
  @type payment_manual :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for PaymentManual create.

  Members:
    * `"acquirerName"` — String.t() (optional)
    * `"amount"` — integer() (required)
    * `"authorizationNumber"` — String.t() (optional)
    * `"cardNumber"` — String.t() (required)
    * `"cardType"` — String.t() (optional)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"dateTimeTx"` — String.t() (optional)
    * `"expDate"` — String.t() (required)
    * `"merchantId"` — String.t() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"responseCode"` — String.t() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"txtype"` — String.t() (required)
  """
  @type payment_manual_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  PaymentSred entity data model.

  Members:
    * `"amount"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"device"` — String.t() (optional)
    * `"devicePayload"` — String.t() (required)
    * `"expDate"` — String.t() (optional)
    * `"mode"` — String.t() (optional)
    * `"panMasked"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"serial"` — String.t() (optional)
    * `"serviceCode"` — String.t() (optional)
    * `"terminalId"` — String.t() (required)
    * `"txtype"` — String.t() (required)
  """
  @type payment_sred :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for PaymentSred create.

  Members:
    * `"amount"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"device"` — String.t() (optional)
    * `"devicePayload"` — String.t() (required)
    * `"expDate"` — String.t() (optional)
    * `"mode"` — String.t() (optional)
    * `"panMasked"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"serial"` — String.t() (optional)
    * `"serviceCode"` — String.t() (optional)
    * `"terminalId"` — String.t() (required)
    * `"txtype"` — String.t() (required)
  """
  @type payment_sred_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  PreAuthTransactionCompletion entity data model.

  Members:
    * `"acquirerId"` — String.t() (optional)
    * `"acquirerName"` — String.t() (optional)
    * `"actualBonusPoints"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"balanceAmount"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"cardNumberReference"` — String.t() (required)
    * `"clientId"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ecData"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvData"` — String.t() (optional)
    * `"exchangeFee"` — integer() (optional)
    * `"exchangeRate"` — String.t() (optional)
    * `"languageCode"` — String.t() (optional)
    * `"merchantAddress"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"messageType"` — String.t() (optional)
    * `"originalTraceNumber"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptFooter"` — String.t() (optional)
    * `"receiptHeader"` — String.t() (optional)
    * `"receiptLayout"` — integer() (optional)
    * `"receiptNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"terminalLocation"` — String.t() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionType"` — String.t() (required)
    * `"txType"` — String.t() (optional)
    * `"userData"` — String.t() (optional)
  """
  @type pre_auth_transaction_completion :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for PreAuthTransactionCompletion create.

  Members:
    * `"acquirerId"` — String.t() (optional)
    * `"acquirerName"` — String.t() (optional)
    * `"actualBonusPoints"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"balanceAmount"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"cardNumberReference"` — String.t() (required)
    * `"clientId"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ecData"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvData"` — String.t() (optional)
    * `"exchangeFee"` — integer() (optional)
    * `"exchangeRate"` — String.t() (optional)
    * `"languageCode"` — String.t() (optional)
    * `"merchantAddress"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"messageType"` — String.t() (optional)
    * `"originalTraceNumber"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptFooter"` — String.t() (optional)
    * `"receiptHeader"` — String.t() (optional)
    * `"receiptLayout"` — integer() (optional)
    * `"receiptNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"terminalLocation"` — String.t() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionType"` — String.t() (required)
    * `"txType"` — String.t() (optional)
    * `"userData"` — String.t() (optional)
  """
  @type pre_auth_transaction_completion_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  ReactivateTerminal entity data model.

  Members:
    * `"corporateUuid"` — String.t() (optional)
    * `"packageOrderUuid"` — String.t() (optional)
    * `"productOrderUuid"` — String.t() (optional)
    * `"reactivationReason"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
  """
  @type reactivate_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for ReactivateTerminal create.

  Members:
    * `"corporateUuid"` — String.t() (optional)
    * `"packageOrderUuid"` — String.t() (optional)
    * `"productOrderUuid"` — String.t() (optional)
    * `"reactivationReason"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
  """
  @type reactivate_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  RefundTransaction entity data model.

  Members:
    * `"acquirerId"` — String.t() (optional)
    * `"acquirerName"` — String.t() (optional)
    * `"actualBonusPoints"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"balanceAmount"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"clientId"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ecData"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvData"` — String.t() (optional)
    * `"exchangeFee"` — integer() (optional)
    * `"exchangeRate"` — String.t() (optional)
    * `"languageCode"` — String.t() (optional)
    * `"merchantAddress"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"messageType"` — String.t() (optional)
    * `"originalTraceNumber"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptFooter"` — String.t() (optional)
    * `"receiptHeader"` — String.t() (optional)
    * `"receiptLayout"` — integer() (optional)
    * `"receiptNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"terminalLocation"` — String.t() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"txType"` — String.t() (optional)
    * `"userData"` — String.t() (optional)
  """
  @type refund_transaction :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for RefundTransaction create.

  Members:
    * `"acquirerId"` — String.t() (optional)
    * `"acquirerName"` — String.t() (optional)
    * `"actualBonusPoints"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"balanceAmount"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"clientId"` — integer() (required)
    * `"currency"` — String.t() (required)
    * `"cvc"` — String.t() (optional)
    * `"ecData"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvData"` — String.t() (optional)
    * `"exchangeFee"` — integer() (optional)
    * `"exchangeRate"` — String.t() (optional)
    * `"languageCode"` — String.t() (optional)
    * `"merchantAddress"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"messageType"` — String.t() (optional)
    * `"originalTraceNumber"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"password"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptFooter"` — String.t() (optional)
    * `"receiptHeader"` — String.t() (optional)
    * `"receiptLayout"` — integer() (optional)
    * `"receiptNumber"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (optional)
    * `"svc"` — String.t() (optional)
    * `"terminalId"` — integer() (required)
    * `"terminalLocation"` — String.t() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"txType"` — String.t() (optional)
    * `"userData"` — String.t() (optional)
  """
  @type refund_transaction_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  RegisterTecsCompany entity data model.

  Members:
    * `"corporateUuid"` — String.t() (required)
    * `"packageOrderUuid"` — String.t() (required)
    * `"partnerId"` — integer() (optional)
    * `"partnerName"` — String.t() (optional)
    * `"productOrderUuid"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
  """
  @type register_tecs_company :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for RegisterTecsCompany create.

  Members:
    * `"corporateUuid"` — String.t() (required)
    * `"packageOrderUuid"` — String.t() (required)
    * `"partnerId"` — integer() (optional)
    * `"partnerName"` — String.t() (optional)
    * `"productOrderUuid"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
  """
  @type register_tecs_company_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  RegisterTerminal entity data model.

  Members:
    * `"additionalData"` — map() (optional)
    * `"corporateUuid"` — String.t() (required)
    * `"packageOrderUuid"` — String.t() (required)
    * `"productOrderUuid"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"tecsWebSecretKey"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
    * `"terminalCountryCode"` — String.t() (required)
    * `"terminalId"` — integer() (optional)
    * `"terminalIdAcq"` — String.t() (optional)
    * `"terminalLanguageCode"` — String.t() (required)
    * `"terminalLocation"` — String.t() (required)
    * `"terminalSerialNumber"` — String.t() (optional)
    * `"tokenIOAlias"` — String.t() (optional)
    * `"tokenIOIban"` — String.t() (optional)
    * `"tokenIOMemberId"` — String.t() (optional)
    * `"webShopUrl"` — String.t() (optional)
  """
  @type register_terminal :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for RegisterTerminal create.

  Members:
    * `"additionalData"` — map() (optional)
    * `"corporateUuid"` — String.t() (required)
    * `"packageOrderUuid"` — String.t() (required)
    * `"productOrderUuid"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"tecsWebSecretKey"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
    * `"terminalCountryCode"` — String.t() (required)
    * `"terminalId"` — integer() (optional)
    * `"terminalIdAcq"` — String.t() (optional)
    * `"terminalLanguageCode"` — String.t() (required)
    * `"terminalLocation"` — String.t() (required)
    * `"terminalSerialNumber"` — String.t() (optional)
    * `"tokenIOAlias"` — String.t() (optional)
    * `"tokenIOIban"` — String.t() (optional)
    * `"tokenIOMemberId"` — String.t() (optional)
    * `"webShopUrl"` — String.t() (optional)
  """
  @type register_terminal_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  ReportData entity data model.

  Members:
    * `"cardBrandReportData"` — list() (optional)
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"corporateId"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sumOverCreditTx"` — map() (optional)
    * `"sumOverDebitTx"` — map() (optional)
    * `"terminalId"` — integer() (optional)
  """
  @type report_data :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for ReportData create.

  Members:
    * `"cardBrandReportData"` — list() (optional)
    * `"clearingDateFrom"` — String.t() (required)
    * `"clearingDateTo"` — String.t() (required)
    * `"corporateId"` — String.t() (required)
    * `"currency"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sumOverCreditTx"` — map() (optional)
    * `"sumOverDebitTx"` — map() (optional)
    * `"terminalId"` — integer() (optional)
  """
  @type report_data_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  StatusTransaction entity data model.

  Members:
    * `"acquirerName"` — String.t() (optional)
    * `"acquirerTerminalId"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"applicationCryptogram"` — String.t() (optional)
    * `"authorizationCode"` — String.t() | nil (optional)
    * `"authorizationDate"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardEntry"` — String.t() (optional)
    * `"cardExpiration"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"clearingAmount"` — integer() (optional)
    * `"clearingBatchId"` — String.t() (optional)
    * `"clearingCurrency"` — String.t() (optional)
    * `"clearingDate"` — String.t() (optional)
    * `"clearingProcessedDate"` — String.t() (optional)
    * `"clearingStatus"` — String.t() (optional)
    * `"clientId"` — integer() (optional)
    * `"currency"` — String.t() (optional)
    * `"cvm"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvApplicationId"` — String.t() (optional)
    * `"emvApplicationLabel"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"originalClientId"` — String.t() (optional)
    * `"originalTerminalId"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseCodeFromAS"` — String.t() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"retrievalReferenceNumber"` — String.t() (optional)
    * `"serviceCode"` — String.t() (optional)
    * `"settlementStatus"` — String.t() (optional)
    * `"sourceId"` — integer() (optional)
    * `"tecsengineResponseCode"` — integer() (optional)
    * `"tecsengineResponseText"` — String.t() (optional)
    * `"terminalEndOfDayDate"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
    * `"terminalLocation"` — String.t() (optional)
    * `"tipAmount"` — integer() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionClearingDate"` — String.t() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionSeqNumber"` — integer() (optional)
    * `"transactionServerDate"` — String.t() (optional)
    * `"transactionSource"` — String.t() (optional)
    * `"transactionType"` — String.t() (optional)
  """
  @type status_transaction :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for StatusTransaction create.

  Members:
    * `"acquirerName"` — String.t() (optional)
    * `"acquirerTerminalId"` — String.t() (optional)
    * `"amount"` — integer() (optional)
    * `"applicationCryptogram"` — String.t() (optional)
    * `"authorizationCode"` — String.t() | nil (optional)
    * `"authorizationDate"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"cardEntry"` — String.t() (optional)
    * `"cardExpiration"` — String.t() (optional)
    * `"cardNumber"` — String.t() (optional)
    * `"clearingAmount"` — integer() (optional)
    * `"clearingBatchId"` — String.t() (optional)
    * `"clearingCurrency"` — String.t() (optional)
    * `"clearingDate"` — String.t() (optional)
    * `"clearingProcessedDate"` — String.t() (optional)
    * `"clearingStatus"` — String.t() (optional)
    * `"clientId"` — integer() (optional)
    * `"currency"` — String.t() (optional)
    * `"cvm"` — String.t() (optional)
    * `"ecrData"` — String.t() (optional)
    * `"emvApplicationId"` — String.t() (optional)
    * `"emvApplicationLabel"` — String.t() (optional)
    * `"merchantName"` — String.t() (optional)
    * `"merchantNumber"` — String.t() (optional)
    * `"originalClientId"` — String.t() (optional)
    * `"originalTerminalId"` — integer() (optional)
    * `"originalTransactionId"` — String.t() (optional)
    * `"paymentReason"` — String.t() (optional)
    * `"receiptNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseCodeFromAS"` — String.t() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"retrievalReferenceNumber"` — String.t() (optional)
    * `"serviceCode"` — String.t() (optional)
    * `"settlementStatus"` — String.t() (optional)
    * `"sourceId"` — integer() (optional)
    * `"tecsengineResponseCode"` — integer() (optional)
    * `"tecsengineResponseText"` — String.t() (optional)
    * `"terminalEndOfDayDate"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
    * `"terminalLocation"` — String.t() (optional)
    * `"tipAmount"` — integer() (optional)
    * `"traceNumber"` — integer() (optional)
    * `"transactionClearingDate"` — String.t() (optional)
    * `"transactionDate"` — String.t() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionSeqNumber"` — integer() (optional)
    * `"transactionServerDate"` — String.t() (optional)
    * `"transactionSource"` — String.t() (optional)
    * `"transactionType"` — String.t() (optional)
  """
  @type status_transaction_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  StoreTerminalParameter entity data model.

  Members:
    * `"acqTabNexo"` — map() (optional)
    * `"configVersion"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (required)
    * `"tidSent"` — String.t() (optional)
  """
  @type store_terminal_parameter :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for StoreTerminalParameter create.

  Members:
    * `"acqTabNexo"` — map() (optional)
    * `"configVersion"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"serialNumber"` — String.t() (required)
    * `"tidSent"` — String.t() (optional)
  """
  @type store_terminal_parameter_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TerminalId entity data model.

  Members:
    * `"deviceSerialNumber"` — list() (required)
    * `"duplicateTerminalIds"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminals"` — list() (optional)
  """
  @type terminal_id :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TerminalId create.

  Members:
    * `"deviceSerialNumber"` — list() (required)
    * `"duplicateTerminalIds"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"terminals"` — list() (optional)
  """
  @type terminal_id_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionHistory entity data model.

  Members:
    * `"3DSecure"` — String.t() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"clearingAmountFrom"` — String.t() (optional)
    * `"clearingAmountTo"` — String.t() (optional)
    * `"clearingCurrency"` — String.t() (optional)
    * `"clearingStatus"` — String.t() (optional)
    * `"corporateUUID"` — String.t() (optional)
    * `"orderByTransactionDate"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"paymentTokenPublicId"` — String.t() (optional)
    * `"receiptNumber"` — String.t() (optional)
    * `"referencedTransactionId"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"retrievalReferenceNumber"` — String.t() (optional)
    * `"sourceId"` — integer() (optional)
    * `"tecsengineResponseCodeFrom"` — String.t() (optional)
    * `"tecsengineResponseCodeTo"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
    * `"traceNumber"` — String.t() (optional)
    * `"transactionAmountFrom"` — String.t() (optional)
    * `"transactionAmountTo"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionHistories"` — list() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionType"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type transaction_history :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionHistory create.

  Members:
    * `"3DSecure"` — String.t() (optional)
    * `"authorizationCode"` — String.t() (optional)
    * `"cardBrand"` — String.t() (optional)
    * `"clearingAmountFrom"` — String.t() (optional)
    * `"clearingAmountTo"` — String.t() (optional)
    * `"clearingCurrency"` — String.t() (optional)
    * `"clearingStatus"` — String.t() (optional)
    * `"corporateUUID"` — String.t() (optional)
    * `"orderByTransactionDate"` — String.t() (optional)
    * `"pagination"` — map() (optional)
    * `"paymentTokenPublicId"` — String.t() (optional)
    * `"receiptNumber"` — String.t() (optional)
    * `"referencedTransactionId"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"retrievalReferenceNumber"` — String.t() (optional)
    * `"sourceId"` — integer() (optional)
    * `"tecsengineResponseCodeFrom"` — String.t() (optional)
    * `"tecsengineResponseCodeTo"` — String.t() (optional)
    * `"terminalId"` — integer() (optional)
    * `"traceNumber"` — String.t() (optional)
    * `"transactionAmountFrom"` — String.t() (optional)
    * `"transactionAmountTo"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionHistories"` — list() (optional)
    * `"transactionId"` — String.t() (optional)
    * `"transactionType"` — String.t() (optional)
    * `"wallet"` — String.t() (optional)
  """
  @type transaction_history_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionsCount entity data model.

  Members:
    * `"period"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionsCount"` — list() (optional)
  """
  @type transactions_count :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionsCount create.

  Members:
    * `"period"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionsCount"` — list() (optional)
  """
  @type transactions_count_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionsCountCardBrand entity data model.

  Members:
    * `"period"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionsCount"` — list() (optional)
  """
  @type transactions_count_card_brand :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionsCountCardBrand create.

  Members:
    * `"period"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"transactionsCount"` — list() (optional)
  """
  @type transactions_count_card_brand_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  TransactionsTurnover entity data model.

  Members:
    * `"period"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"turnovers"` — list() (optional)
  """
  @type transactions_turnover :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for TransactionsTurnover create.

  Members:
    * `"period"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"transactionDateFrom"` — String.t() (optional)
    * `"transactionDateTo"` — String.t() (optional)
    * `"turnovers"` — list() (optional)
  """
  @type transactions_turnover_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  UpdateMerchant entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"corporateUuid"` — String.t() (required)
    * `"country"` — String.t() (optional)
    * `"merchantCategoryCode"` — String.t() (optional)
    * `"name"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street"` — String.t() (optional)
    * `"vuNummer"` — String.t() (optional)
    * `"zipcode"` — String.t() (optional)
  """
  @type update_merchant :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for UpdateMerchant create.

  Members:
    * `"city"` — String.t() (optional)
    * `"corporateUuid"` — String.t() (required)
    * `"country"` — String.t() (optional)
    * `"merchantCategoryCode"` — String.t() (optional)
    * `"name"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street"` — String.t() (optional)
    * `"vuNummer"` — String.t() (optional)
    * `"zipcode"` — String.t() (optional)
  """
  @type update_merchant_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  UpdateTemplateXml entity data model.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
    * `"templateXml"` — String.t() (required)
  """
  @type update_template_xml :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for UpdateTemplateXml create.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"templateName"` — String.t() (required)
    * `"templateXml"` — String.t() (required)
  """
  @type update_template_xml_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  Version entity data model.

  Members:
    * `"appName"` — String.t() (optional)
    * `"buildDate"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for Version load.

  Members:
    * `"appName"` — String.t() (optional)
    * `"buildDate"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version_load_match :: %{optional(String.t()) => any()}

end
