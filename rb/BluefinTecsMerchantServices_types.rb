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
# @!attribute [rw] acquirerId
#   @return [String, nil]
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] actualBonusPoints
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] balanceAmount
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] clientId
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ecData
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] exchangeFee
#   @return [Integer, nil]
#
# @!attribute [rw] exchangeRate
#   @return [String, nil]
#
# @!attribute [rw] languageCode
#   @return [String, nil]
#
# @!attribute [rw] merchantAddress
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] messageType
#   @return [String, nil]
#
# @!attribute [rw] originalTraceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptFooter
#   @return [String, nil]
#
# @!attribute [rw] receiptHeader
#   @return [String, nil]
#
# @!attribute [rw] receiptLayout
#   @return [Integer, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] txType
#   @return [String, nil]
#
# @!attribute [rw] userData
#   @return [String, nil]
CancelTransaction = Struct.new(
  :acquirerId,
  :acquirerName,
  :actualBonusPoints,
  :amount,
  :authorizationCode,
  :balanceAmount,
  :cardBrand,
  :cardNumber,
  :clientId,
  :currency,
  :cvc,
  :ecData,
  :ecrData,
  :emvData,
  :exchangeFee,
  :exchangeRate,
  :languageCode,
  :merchantAddress,
  :merchantName,
  :merchantNumber,
  :messageType,
  :originalTraceNumber,
  :originalTransactionId,
  :password,
  :paymentReason,
  :receiptFooter,
  :receiptHeader,
  :receiptLayout,
  :receiptNumber,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :svc,
  :terminalId,
  :terminalLocation,
  :traceNumber,
  :transactionDate,
  :transactionId,
  :txType,
  :userData,
  keyword_init: true
)

# Request payload for CancelTransaction#create.
#
# @!attribute [rw] acquirerId
#   @return [String, nil]
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] actualBonusPoints
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] balanceAmount
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] clientId
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ecData
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] exchangeFee
#   @return [Integer, nil]
#
# @!attribute [rw] exchangeRate
#   @return [String, nil]
#
# @!attribute [rw] languageCode
#   @return [String, nil]
#
# @!attribute [rw] merchantAddress
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] messageType
#   @return [String, nil]
#
# @!attribute [rw] originalTraceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptFooter
#   @return [String, nil]
#
# @!attribute [rw] receiptHeader
#   @return [String, nil]
#
# @!attribute [rw] receiptLayout
#   @return [Integer, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] txType
#   @return [String, nil]
#
# @!attribute [rw] userData
#   @return [String, nil]
CancelTransactionCreateData = Struct.new(
  :acquirerId,
  :acquirerName,
  :actualBonusPoints,
  :amount,
  :authorizationCode,
  :balanceAmount,
  :cardBrand,
  :cardNumber,
  :clientId,
  :currency,
  :cvc,
  :ecData,
  :ecrData,
  :emvData,
  :exchangeFee,
  :exchangeRate,
  :languageCode,
  :merchantAddress,
  :merchantName,
  :merchantNumber,
  :messageType,
  :originalTraceNumber,
  :originalTransactionId,
  :password,
  :paymentReason,
  :receiptFooter,
  :receiptHeader,
  :receiptLayout,
  :receiptNumber,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :svc,
  :terminalId,
  :terminalLocation,
  :traceNumber,
  :transactionDate,
  :transactionId,
  :txType,
  :userData,
  keyword_init: true
)

# CheckCardBlackListed entity data model.
#
# @!attribute [rw] cardNo
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
CheckCardBlackListed = Struct.new(
  :cardNo,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for CheckCardBlackListed#create.
#
# @!attribute [rw] cardNo
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
CheckCardBlackListedCreateData = Struct.new(
  :cardNo,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# CreateProduct entity data model.
#
# @!attribute [rw] acquirerId
#   @return [Integer, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] templateType
#   @return [String]
#
# @!attribute [rw] templateXml
#   @return [String]
#
# @!attribute [rw] terminalType
#   @return [String]
CreateProduct = Struct.new(
  :acquirerId,
  :responseCode,
  :responseMessage,
  :templateName,
  :templateType,
  :templateXml,
  :terminalType,
  keyword_init: true
)

# Request payload for CreateProduct#create.
#
# @!attribute [rw] acquirerId
#   @return [Integer, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] templateType
#   @return [String]
#
# @!attribute [rw] templateXml
#   @return [String]
#
# @!attribute [rw] terminalType
#   @return [String]
CreateProductCreateData = Struct.new(
  :acquirerId,
  :responseCode,
  :responseMessage,
  :templateName,
  :templateType,
  :templateXml,
  :terminalType,
  keyword_init: true
)

# DeactivateTerminal entity data model.
#
# @!attribute [rw] corporateUuid
#   @return [String, nil]
#
# @!attribute [rw] deactivationReason
#   @return [String]
#
# @!attribute [rw] packageOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] productOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
DeactivateTerminal = Struct.new(
  :corporateUuid,
  :deactivationReason,
  :packageOrderUuid,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :terminalId,
  keyword_init: true
)

# Request payload for DeactivateTerminal#create.
#
# @!attribute [rw] corporateUuid
#   @return [String, nil]
#
# @!attribute [rw] deactivationReason
#   @return [String]
#
# @!attribute [rw] packageOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] productOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
DeactivateTerminalCreateData = Struct.new(
  :corporateUuid,
  :deactivationReason,
  :packageOrderUuid,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :terminalId,
  keyword_init: true
)

# DigitalServicesApi entity data model.
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] txCount
#   @return [Integer, nil]
#
# @!attribute [rw] txIdEnd
#   @return [String, nil]
#
# @!attribute [rw] txIdStart
#   @return [String, nil]
#
# @!attribute [rw] txSeqNoEnd
#   @return [Integer, nil]
#
# @!attribute [rw] txSeqNoStart
#   @return [Integer, nil]
#
# @!attribute [rw] txTotal
#   @return [Integer, nil]
DigitalServicesApi = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :responseCode,
  :responseMessage,
  :txCount,
  :txIdEnd,
  :txIdStart,
  :txSeqNoEnd,
  :txSeqNoStart,
  :txTotal,
  keyword_init: true
)

# Request payload for DigitalServicesApi#load.
#
# @!attribute [rw] clearingDateFrom
#   @return [String, nil]
#
# @!attribute [rw] clearingDateTo
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] txCount
#   @return [Integer, nil]
#
# @!attribute [rw] txIdEnd
#   @return [String, nil]
#
# @!attribute [rw] txIdStart
#   @return [String, nil]
#
# @!attribute [rw] txSeqNoEnd
#   @return [Integer, nil]
#
# @!attribute [rw] txSeqNoStart
#   @return [Integer, nil]
#
# @!attribute [rw] txTotal
#   @return [Integer, nil]
DigitalServicesApiLoadMatch = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :responseCode,
  :responseMessage,
  :txCount,
  :txIdEnd,
  :txIdStart,
  :txSeqNoEnd,
  :txSeqNoStart,
  :txTotal,
  keyword_init: true
)

# Request payload for DigitalServicesApi#create.
#
# @!attribute [rw] file_id
#   @return [String, nil]
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] txCount
#   @return [Integer, nil]
#
# @!attribute [rw] txIdEnd
#   @return [String, nil]
#
# @!attribute [rw] txIdStart
#   @return [String, nil]
#
# @!attribute [rw] txSeqNoEnd
#   @return [Integer, nil]
#
# @!attribute [rw] txSeqNoStart
#   @return [Integer, nil]
#
# @!attribute [rw] txTotal
#   @return [Integer, nil]
DigitalServicesApiCreateData = Struct.new(
  :file_id,
  :clearingDateFrom,
  :clearingDateTo,
  :responseCode,
  :responseMessage,
  :txCount,
  :txIdEnd,
  :txIdStart,
  :txSeqNoEnd,
  :txSeqNoStart,
  :txTotal,
  keyword_init: true
)

# EcDataEcom entity data model.
#
# @!attribute [rw] ecomData
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] transactionId
#   @return [String]
#
# @!attribute [rw] transactionType
#   @return [String]
EcDataEcom = Struct.new(
  :ecomData,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :transactionType,
  keyword_init: true
)

# Request payload for EcDataEcom#create.
#
# @!attribute [rw] ecomData
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] transactionId
#   @return [String]
#
# @!attribute [rw] transactionType
#   @return [String]
EcDataEcomCreateData = Struct.new(
  :ecomData,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :transactionType,
  keyword_init: true
)

# EcomParameter entity data model.
#
# @!attribute [rw] ecomPass
#   @return [String, nil]
#
# @!attribute [rw] ecomSkey
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
EcomParameter = Struct.new(
  :ecomPass,
  :ecomSkey,
  :responseCode,
  :responseMessage,
  :terminalId,
  keyword_init: true
)

# Request payload for EcomParameter#create.
#
# @!attribute [rw] ecomPass
#   @return [String, nil]
#
# @!attribute [rw] ecomSkey
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
EcomParameterCreateData = Struct.new(
  :ecomPass,
  :ecomSkey,
  :responseCode,
  :responseMessage,
  :terminalId,
  keyword_init: true
)

# EcrData entity data model.
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] transactionId
#   @return [String]
#
# @!attribute [rw] transactionType
#   @return [String]
EcrData = Struct.new(
  :ecrData,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :transactionType,
  keyword_init: true
)

# Request payload for EcrData#create.
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] transactionId
#   @return [String]
#
# @!attribute [rw] transactionType
#   @return [String]
EcrDataCreateData = Struct.new(
  :ecrData,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :transactionType,
  keyword_init: true
)

# EmvData entity data model.
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] transactionId
#   @return [String]
#
# @!attribute [rw] transactionType
#   @return [String]
EmvData = Struct.new(
  :emvData,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :transactionType,
  keyword_init: true
)

# Request payload for EmvData#create.
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] transactionId
#   @return [String]
#
# @!attribute [rw] transactionType
#   @return [String]
EmvDataCreateData = Struct.new(
  :emvData,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :transactionType,
  keyword_init: true
)

# EnableAcquiring entity data model.
#
# @!attribute [rw] accountNo
#   @return [Integer, nil]
#
# @!attribute [rw] additionalData
#   @return [Hash, nil]
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] merchantCategoryCode
#   @return [Integer]
#
# @!attribute [rw] packageOrderUuid
#   @return [String]
#
# @!attribute [rw] productOrderUuid
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sortingCode
#   @return [Integer, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] terminalIdAcq
#   @return [String, nil]
#
# @!attribute [rw] terminalIds
#   @return [Array, nil]
#
# @!attribute [rw] vuNummer
#   @return [String, nil]
EnableAcquiring = Struct.new(
  :accountNo,
  :additionalData,
  :corporateUuid,
  :currency,
  :merchantCategoryCode,
  :packageOrderUuid,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :sortingCode,
  :templateName,
  :terminalIdAcq,
  :terminalIds,
  :vuNummer,
  keyword_init: true
)

# Request payload for EnableAcquiring#create.
#
# @!attribute [rw] accountNo
#   @return [Integer, nil]
#
# @!attribute [rw] additionalData
#   @return [Hash, nil]
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] merchantCategoryCode
#   @return [Integer]
#
# @!attribute [rw] packageOrderUuid
#   @return [String]
#
# @!attribute [rw] productOrderUuid
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sortingCode
#   @return [Integer, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] terminalIdAcq
#   @return [String, nil]
#
# @!attribute [rw] terminalIds
#   @return [Array, nil]
#
# @!attribute [rw] vuNummer
#   @return [String, nil]
EnableAcquiringCreateData = Struct.new(
  :accountNo,
  :additionalData,
  :corporateUuid,
  :currency,
  :merchantCategoryCode,
  :packageOrderUuid,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :sortingCode,
  :templateName,
  :terminalIdAcq,
  :terminalIds,
  :vuNummer,
  keyword_init: true
)

# GetMerchantContractNumber entity data model.
#
# @!attribute [rw] merchantContractNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
GetMerchantContractNumber = Struct.new(
  :merchantContractNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for GetMerchantContractNumber#create.
#
# @!attribute [rw] merchantContractNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
GetMerchantContractNumberCreateData = Struct.new(
  :merchantContractNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# GetTemplateXml entity data model.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
GetTemplateXml = Struct.new(
  :responseCode,
  :responseMessage,
  :templateName,
  keyword_init: true
)

# Request payload for GetTemplateXml#create.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
GetTemplateXmlCreateData = Struct.new(
  :responseCode,
  :responseMessage,
  :templateName,
  keyword_init: true
)

# IntroduceMandator entity data model.
#
# @!attribute [rw] mandatorName
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
IntroduceMandator = Struct.new(
  :mandatorName,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for IntroduceMandator#create.
#
# @!attribute [rw] mandatorName
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
IntroduceMandatorCreateData = Struct.new(
  :mandatorName,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# IntroducePackage entity data model.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalTemplateDescription
#   @return [String]
IntroducePackage = Struct.new(
  :responseCode,
  :responseMessage,
  :terminalTemplateDescription,
  keyword_init: true
)

# Request payload for IntroducePackage#create.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalTemplateDescription
#   @return [String]
IntroducePackageCreateData = Struct.new(
  :responseCode,
  :responseMessage,
  :terminalTemplateDescription,
  keyword_init: true
)

# KeepAlive entity data model.
#
# @!attribute [rw] hwserialno
#   @return [String, nil]
#
# @!attribute [rw] kaDateTimeFrom
#   @return [String, nil]
#
# @!attribute [rw] kaDateTimeTo
#   @return [String, nil]
#
# @!attribute [rw] keepAliveData
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalDateTimeFrom
#   @return [String, nil]
#
# @!attribute [rw] terminalDateTimeTo
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
KeepAlive = Struct.new(
  :hwserialno,
  :kaDateTimeFrom,
  :kaDateTimeTo,
  :keepAliveData,
  :pagination,
  :responseCode,
  :responseMessage,
  :terminalDateTimeFrom,
  :terminalDateTimeTo,
  :terminalId,
  keyword_init: true
)

# Request payload for KeepAlive#create.
#
# @!attribute [rw] hwserialno
#   @return [String, nil]
#
# @!attribute [rw] kaDateTimeFrom
#   @return [String, nil]
#
# @!attribute [rw] kaDateTimeTo
#   @return [String, nil]
#
# @!attribute [rw] keepAliveData
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalDateTimeFrom
#   @return [String, nil]
#
# @!attribute [rw] terminalDateTimeTo
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
KeepAliveCreateData = Struct.new(
  :hwserialno,
  :kaDateTimeFrom,
  :kaDateTimeTo,
  :keepAliveData,
  :pagination,
  :responseCode,
  :responseMessage,
  :terminalDateTimeFrom,
  :terminalDateTimeTo,
  :terminalId,
  keyword_init: true
)

# ListTerminal entity data model.
#
# @!attribute [rw] corporateUuid
#   @return [Array, nil]
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminals
#   @return [Array, nil]
ListTerminal = Struct.new(
  :corporateUuid,
  :filter,
  :pagination,
  :responseCode,
  :responseMessage,
  :terminals,
  keyword_init: true
)

# Request payload for ListTerminal#create.
#
# @!attribute [rw] corporateUuid
#   @return [Array, nil]
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminals
#   @return [Array, nil]
ListTerminalCreateData = Struct.new(
  :corporateUuid,
  :filter,
  :pagination,
  :responseCode,
  :responseMessage,
  :terminals,
  keyword_init: true
)

# MandatorClearingExport entity data model.
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] records
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
MandatorClearingExport = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :pagination,
  :records,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for MandatorClearingExport#create.
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] records
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
MandatorClearingExportCreateData = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :pagination,
  :records,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# MandatorClearingExportDownload entity data model.
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] fileId
#   @return [String, nil]
#
# @!attribute [rw] filenameTemplate
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
MandatorClearingExportDownload = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :fileId,
  :filenameTemplate,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] fileId
#   @return [String, nil]
#
# @!attribute [rw] filenameTemplate
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
MandatorClearingExportDownloadCreateData = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :fileId,
  :filenameTemplate,
  :responseCode,
  :responseMessage,
  :status,
  keyword_init: true
)

# MandatorClearingExportSummary entity data model.
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] records
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
MandatorClearingExportSummary = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :records,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for MandatorClearingExportSummary#create.
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] records
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
MandatorClearingExportSummaryCreateData = Struct.new(
  :clearingDateFrom,
  :clearingDateTo,
  :records,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# MerchantPortalServicesApi entity data model.
#
# @!attribute [rw] 3DSecure
#   @return [String, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountTo
#   @return [String, nil]
#
# @!attribute [rw] clearingCurrency
#   @return [String, nil]
#
# @!attribute [rw] clearingStatus
#   @return [String, nil]
#
# @!attribute [rw] corporateUUID
#   @return [String, nil]
#
# @!attribute [rw] orderByTransactionDate
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String, nil]
#
# @!attribute [rw] referencedTransactionId
#   @return [String, nil]
#
# @!attribute [rw] retrievalReferenceNumber
#   @return [String, nil]
#
# @!attribute [rw] sourceId
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseCodeFrom
#   @return [String, nil]
#
# @!attribute [rw] tecsengineResponseCodeTo
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] traceNumber
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountTo
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
MerchantPortalServicesApi = Struct.new(
  :"3DSecure",
  :authorizationCode,
  :cardBrand,
  :clearingAmountFrom,
  :clearingAmountTo,
  :clearingCurrency,
  :clearingStatus,
  :corporateUUID,
  :orderByTransactionDate,
  :pagination,
  :receiptNumber,
  :referencedTransactionId,
  :retrievalReferenceNumber,
  :sourceId,
  :tecsengineResponseCodeFrom,
  :tecsengineResponseCodeTo,
  :terminalId,
  :traceNumber,
  :transactionAmountFrom,
  :transactionAmountTo,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionId,
  :transactionType,
  :wallet,
  keyword_init: true
)

# Request payload for MerchantPortalServicesApi#create.
#
# @!attribute [rw] 3DSecure
#   @return [String, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountTo
#   @return [String, nil]
#
# @!attribute [rw] clearingCurrency
#   @return [String, nil]
#
# @!attribute [rw] clearingStatus
#   @return [String, nil]
#
# @!attribute [rw] corporateUUID
#   @return [String, nil]
#
# @!attribute [rw] orderByTransactionDate
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String, nil]
#
# @!attribute [rw] referencedTransactionId
#   @return [String, nil]
#
# @!attribute [rw] retrievalReferenceNumber
#   @return [String, nil]
#
# @!attribute [rw] sourceId
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseCodeFrom
#   @return [String, nil]
#
# @!attribute [rw] tecsengineResponseCodeTo
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] traceNumber
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountTo
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
MerchantPortalServicesApiCreateData = Struct.new(
  :"3DSecure",
  :authorizationCode,
  :cardBrand,
  :clearingAmountFrom,
  :clearingAmountTo,
  :clearingCurrency,
  :clearingStatus,
  :corporateUUID,
  :orderByTransactionDate,
  :pagination,
  :receiptNumber,
  :referencedTransactionId,
  :retrievalReferenceNumber,
  :sourceId,
  :tecsengineResponseCodeFrom,
  :tecsengineResponseCodeTo,
  :terminalId,
  :traceNumber,
  :transactionAmountFrom,
  :transactionAmountTo,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionId,
  :transactionType,
  :wallet,
  keyword_init: true
)

# MoveTid entity data model.
#
# @!attribute [rw] productorderuuids
#   @return [Array]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] targetPackageorderuuid
#   @return [String, nil]
#
# @!attribute [rw] targetProductorderuuid
#   @return [String, nil]
MoveTid = Struct.new(
  :productorderuuids,
  :responseCode,
  :responseMessage,
  :targetPackageorderuuid,
  :targetProductorderuuid,
  keyword_init: true
)

# Request payload for MoveTid#create.
#
# @!attribute [rw] productorderuuids
#   @return [Array]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] targetPackageorderuuid
#   @return [String, nil]
#
# @!attribute [rw] targetProductorderuuid
#   @return [String, nil]
MoveTidCreateData = Struct.new(
  :productorderuuids,
  :responseCode,
  :responseMessage,
  :targetPackageorderuuid,
  :targetProductorderuuid,
  keyword_init: true
)

# PaymentManual entity data model.
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] authorizationNumber
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String]
#
# @!attribute [rw] cardType
#   @return [String, nil]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] dateTimeTx
#   @return [String, nil]
#
# @!attribute [rw] expDate
#   @return [String]
#
# @!attribute [rw] merchantId
#   @return [String, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [String, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentManual = Struct.new(
  :acquirerName,
  :amount,
  :authorizationNumber,
  :cardNumber,
  :cardType,
  :currency,
  :cvc,
  :dateTimeTx,
  :expDate,
  :merchantId,
  :originalTransactionId,
  :password,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :txtype,
  keyword_init: true
)

# Request payload for PaymentManual#create.
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] authorizationNumber
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String]
#
# @!attribute [rw] cardType
#   @return [String, nil]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] dateTimeTx
#   @return [String, nil]
#
# @!attribute [rw] expDate
#   @return [String]
#
# @!attribute [rw] merchantId
#   @return [String, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [String, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentManualCreateData = Struct.new(
  :acquirerName,
  :amount,
  :authorizationNumber,
  :cardNumber,
  :cardType,
  :currency,
  :cvc,
  :dateTimeTx,
  :expDate,
  :merchantId,
  :originalTransactionId,
  :password,
  :responseCode,
  :responseMessage,
  :terminalId,
  :transactionId,
  :txtype,
  keyword_init: true
)

# PaymentSred entity data model.
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] device
#   @return [String, nil]
#
# @!attribute [rw] devicePayload
#   @return [String]
#
# @!attribute [rw] expDate
#   @return [String, nil]
#
# @!attribute [rw] mode
#   @return [String, nil]
#
# @!attribute [rw] panMasked
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] serial
#   @return [String, nil]
#
# @!attribute [rw] serviceCode
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [String]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentSred = Struct.new(
  :amount,
  :currency,
  :device,
  :devicePayload,
  :expDate,
  :mode,
  :panMasked,
  :password,
  :serial,
  :serviceCode,
  :terminalId,
  :txtype,
  keyword_init: true
)

# Request payload for PaymentSred#create.
#
# @!attribute [rw] amount
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] device
#   @return [String, nil]
#
# @!attribute [rw] devicePayload
#   @return [String]
#
# @!attribute [rw] expDate
#   @return [String, nil]
#
# @!attribute [rw] mode
#   @return [String, nil]
#
# @!attribute [rw] panMasked
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] serial
#   @return [String, nil]
#
# @!attribute [rw] serviceCode
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [String]
#
# @!attribute [rw] txtype
#   @return [String]
PaymentSredCreateData = Struct.new(
  :amount,
  :currency,
  :device,
  :devicePayload,
  :expDate,
  :mode,
  :panMasked,
  :password,
  :serial,
  :serviceCode,
  :terminalId,
  :txtype,
  keyword_init: true
)

# PreAuthTransactionCompletion entity data model.
#
# @!attribute [rw] acquirerId
#   @return [String, nil]
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] actualBonusPoints
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] balanceAmount
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] cardNumberReference
#   @return [String]
#
# @!attribute [rw] clientId
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ecData
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] exchangeFee
#   @return [Integer, nil]
#
# @!attribute [rw] exchangeRate
#   @return [String, nil]
#
# @!attribute [rw] languageCode
#   @return [String, nil]
#
# @!attribute [rw] merchantAddress
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] messageType
#   @return [String, nil]
#
# @!attribute [rw] originalTraceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptFooter
#   @return [String, nil]
#
# @!attribute [rw] receiptHeader
#   @return [String, nil]
#
# @!attribute [rw] receiptLayout
#   @return [Integer, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String]
#
# @!attribute [rw] txType
#   @return [String, nil]
#
# @!attribute [rw] userData
#   @return [String, nil]
PreAuthTransactionCompletion = Struct.new(
  :acquirerId,
  :acquirerName,
  :actualBonusPoints,
  :amount,
  :authorizationCode,
  :balanceAmount,
  :cardBrand,
  :cardNumber,
  :cardNumberReference,
  :clientId,
  :currency,
  :cvc,
  :ecData,
  :ecrData,
  :emvData,
  :exchangeFee,
  :exchangeRate,
  :languageCode,
  :merchantAddress,
  :merchantName,
  :merchantNumber,
  :messageType,
  :originalTraceNumber,
  :originalTransactionId,
  :password,
  :paymentReason,
  :receiptFooter,
  :receiptHeader,
  :receiptLayout,
  :receiptNumber,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :svc,
  :terminalId,
  :terminalLocation,
  :traceNumber,
  :transactionDate,
  :transactionId,
  :transactionType,
  :txType,
  :userData,
  keyword_init: true
)

# Request payload for PreAuthTransactionCompletion#create.
#
# @!attribute [rw] acquirerId
#   @return [String, nil]
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] actualBonusPoints
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] balanceAmount
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] cardNumberReference
#   @return [String]
#
# @!attribute [rw] clientId
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ecData
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] exchangeFee
#   @return [Integer, nil]
#
# @!attribute [rw] exchangeRate
#   @return [String, nil]
#
# @!attribute [rw] languageCode
#   @return [String, nil]
#
# @!attribute [rw] merchantAddress
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] messageType
#   @return [String, nil]
#
# @!attribute [rw] originalTraceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptFooter
#   @return [String, nil]
#
# @!attribute [rw] receiptHeader
#   @return [String, nil]
#
# @!attribute [rw] receiptLayout
#   @return [Integer, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String]
#
# @!attribute [rw] txType
#   @return [String, nil]
#
# @!attribute [rw] userData
#   @return [String, nil]
PreAuthTransactionCompletionCreateData = Struct.new(
  :acquirerId,
  :acquirerName,
  :actualBonusPoints,
  :amount,
  :authorizationCode,
  :balanceAmount,
  :cardBrand,
  :cardNumber,
  :cardNumberReference,
  :clientId,
  :currency,
  :cvc,
  :ecData,
  :ecrData,
  :emvData,
  :exchangeFee,
  :exchangeRate,
  :languageCode,
  :merchantAddress,
  :merchantName,
  :merchantNumber,
  :messageType,
  :originalTraceNumber,
  :originalTransactionId,
  :password,
  :paymentReason,
  :receiptFooter,
  :receiptHeader,
  :receiptLayout,
  :receiptNumber,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :svc,
  :terminalId,
  :terminalLocation,
  :traceNumber,
  :transactionDate,
  :transactionId,
  :transactionType,
  :txType,
  :userData,
  keyword_init: true
)

# ReactivateTerminal entity data model.
#
# @!attribute [rw] corporateUuid
#   @return [String, nil]
#
# @!attribute [rw] packageOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] productOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] reactivationReason
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
ReactivateTerminal = Struct.new(
  :corporateUuid,
  :packageOrderUuid,
  :productOrderUuid,
  :reactivationReason,
  :responseCode,
  :responseMessage,
  :terminalId,
  keyword_init: true
)

# Request payload for ReactivateTerminal#create.
#
# @!attribute [rw] corporateUuid
#   @return [String, nil]
#
# @!attribute [rw] packageOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] productOrderUuid
#   @return [String, nil]
#
# @!attribute [rw] reactivationReason
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
ReactivateTerminalCreateData = Struct.new(
  :corporateUuid,
  :packageOrderUuid,
  :productOrderUuid,
  :reactivationReason,
  :responseCode,
  :responseMessage,
  :terminalId,
  keyword_init: true
)

# RefundTransaction entity data model.
#
# @!attribute [rw] acquirerId
#   @return [String, nil]
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] actualBonusPoints
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] balanceAmount
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] clientId
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ecData
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] exchangeFee
#   @return [Integer, nil]
#
# @!attribute [rw] exchangeRate
#   @return [String, nil]
#
# @!attribute [rw] languageCode
#   @return [String, nil]
#
# @!attribute [rw] merchantAddress
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] messageType
#   @return [String, nil]
#
# @!attribute [rw] originalTraceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptFooter
#   @return [String, nil]
#
# @!attribute [rw] receiptHeader
#   @return [String, nil]
#
# @!attribute [rw] receiptLayout
#   @return [Integer, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] txType
#   @return [String, nil]
#
# @!attribute [rw] userData
#   @return [String, nil]
RefundTransaction = Struct.new(
  :acquirerId,
  :acquirerName,
  :actualBonusPoints,
  :amount,
  :authorizationCode,
  :balanceAmount,
  :cardBrand,
  :cardNumber,
  :clientId,
  :currency,
  :cvc,
  :ecData,
  :ecrData,
  :emvData,
  :exchangeFee,
  :exchangeRate,
  :languageCode,
  :merchantAddress,
  :merchantName,
  :merchantNumber,
  :messageType,
  :originalTraceNumber,
  :originalTransactionId,
  :password,
  :paymentReason,
  :receiptFooter,
  :receiptHeader,
  :receiptLayout,
  :receiptNumber,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :svc,
  :terminalId,
  :terminalLocation,
  :traceNumber,
  :transactionDate,
  :transactionId,
  :txType,
  :userData,
  keyword_init: true
)

# Request payload for RefundTransaction#create.
#
# @!attribute [rw] acquirerId
#   @return [String, nil]
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] actualBonusPoints
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] balanceAmount
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] clientId
#   @return [Integer]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] cvc
#   @return [String, nil]
#
# @!attribute [rw] ecData
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvData
#   @return [String, nil]
#
# @!attribute [rw] exchangeFee
#   @return [Integer, nil]
#
# @!attribute [rw] exchangeRate
#   @return [String, nil]
#
# @!attribute [rw] languageCode
#   @return [String, nil]
#
# @!attribute [rw] merchantAddress
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] messageType
#   @return [String, nil]
#
# @!attribute [rw] originalTraceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptFooter
#   @return [String, nil]
#
# @!attribute [rw] receiptHeader
#   @return [String, nil]
#
# @!attribute [rw] receiptLayout
#   @return [Integer, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String, nil]
#
# @!attribute [rw] svc
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] txType
#   @return [String, nil]
#
# @!attribute [rw] userData
#   @return [String, nil]
RefundTransactionCreateData = Struct.new(
  :acquirerId,
  :acquirerName,
  :actualBonusPoints,
  :amount,
  :authorizationCode,
  :balanceAmount,
  :cardBrand,
  :cardNumber,
  :clientId,
  :currency,
  :cvc,
  :ecData,
  :ecrData,
  :emvData,
  :exchangeFee,
  :exchangeRate,
  :languageCode,
  :merchantAddress,
  :merchantName,
  :merchantNumber,
  :messageType,
  :originalTraceNumber,
  :originalTransactionId,
  :password,
  :paymentReason,
  :receiptFooter,
  :receiptHeader,
  :receiptLayout,
  :receiptNumber,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :svc,
  :terminalId,
  :terminalLocation,
  :traceNumber,
  :transactionDate,
  :transactionId,
  :txType,
  :userData,
  keyword_init: true
)

# RegisterTecsCompany entity data model.
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] packageOrderUuid
#   @return [String]
#
# @!attribute [rw] partnerId
#   @return [Integer, nil]
#
# @!attribute [rw] partnerName
#   @return [String, nil]
#
# @!attribute [rw] productOrderUuid
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
RegisterTecsCompany = Struct.new(
  :corporateUuid,
  :packageOrderUuid,
  :partnerId,
  :partnerName,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :templateName,
  keyword_init: true
)

# Request payload for RegisterTecsCompany#create.
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] packageOrderUuid
#   @return [String]
#
# @!attribute [rw] partnerId
#   @return [Integer, nil]
#
# @!attribute [rw] partnerName
#   @return [String, nil]
#
# @!attribute [rw] productOrderUuid
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
RegisterTecsCompanyCreateData = Struct.new(
  :corporateUuid,
  :packageOrderUuid,
  :partnerId,
  :partnerName,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :templateName,
  keyword_init: true
)

# RegisterTerminal entity data model.
#
# @!attribute [rw] additionalData
#   @return [Hash, nil]
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] packageOrderUuid
#   @return [String]
#
# @!attribute [rw] productOrderUuid
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] tecsWebSecretKey
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] terminalCountryCode
#   @return [String]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] terminalIdAcq
#   @return [String, nil]
#
# @!attribute [rw] terminalLanguageCode
#   @return [String]
#
# @!attribute [rw] terminalLocation
#   @return [String]
#
# @!attribute [rw] terminalSerialNumber
#   @return [String, nil]
#
# @!attribute [rw] tokenIOAlias
#   @return [String, nil]
#
# @!attribute [rw] tokenIOIban
#   @return [String, nil]
#
# @!attribute [rw] tokenIOMemberId
#   @return [String, nil]
#
# @!attribute [rw] webShopUrl
#   @return [String, nil]
RegisterTerminal = Struct.new(
  :additionalData,
  :corporateUuid,
  :packageOrderUuid,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :tecsWebSecretKey,
  :templateName,
  :terminalCountryCode,
  :terminalId,
  :terminalIdAcq,
  :terminalLanguageCode,
  :terminalLocation,
  :terminalSerialNumber,
  :tokenIOAlias,
  :tokenIOIban,
  :tokenIOMemberId,
  :webShopUrl,
  keyword_init: true
)

# Request payload for RegisterTerminal#create.
#
# @!attribute [rw] additionalData
#   @return [Hash, nil]
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] packageOrderUuid
#   @return [String]
#
# @!attribute [rw] productOrderUuid
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] tecsWebSecretKey
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] terminalCountryCode
#   @return [String]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] terminalIdAcq
#   @return [String, nil]
#
# @!attribute [rw] terminalLanguageCode
#   @return [String]
#
# @!attribute [rw] terminalLocation
#   @return [String]
#
# @!attribute [rw] terminalSerialNumber
#   @return [String, nil]
#
# @!attribute [rw] tokenIOAlias
#   @return [String, nil]
#
# @!attribute [rw] tokenIOIban
#   @return [String, nil]
#
# @!attribute [rw] tokenIOMemberId
#   @return [String, nil]
#
# @!attribute [rw] webShopUrl
#   @return [String, nil]
RegisterTerminalCreateData = Struct.new(
  :additionalData,
  :corporateUuid,
  :packageOrderUuid,
  :productOrderUuid,
  :responseCode,
  :responseMessage,
  :tecsWebSecretKey,
  :templateName,
  :terminalCountryCode,
  :terminalId,
  :terminalIdAcq,
  :terminalLanguageCode,
  :terminalLocation,
  :terminalSerialNumber,
  :tokenIOAlias,
  :tokenIOIban,
  :tokenIOMemberId,
  :webShopUrl,
  keyword_init: true
)

# ReportData entity data model.
#
# @!attribute [rw] cardBrandReportData
#   @return [Array, nil]
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] corporateId
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sumOverCreditTx
#   @return [Hash, nil]
#
# @!attribute [rw] sumOverDebitTx
#   @return [Hash, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
ReportData = Struct.new(
  :cardBrandReportData,
  :clearingDateFrom,
  :clearingDateTo,
  :corporateId,
  :currency,
  :responseCode,
  :responseMessage,
  :sumOverCreditTx,
  :sumOverDebitTx,
  :terminalId,
  keyword_init: true
)

# Request payload for ReportData#create.
#
# @!attribute [rw] cardBrandReportData
#   @return [Array, nil]
#
# @!attribute [rw] clearingDateFrom
#   @return [String]
#
# @!attribute [rw] clearingDateTo
#   @return [String]
#
# @!attribute [rw] corporateId
#   @return [String]
#
# @!attribute [rw] currency
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sumOverCreditTx
#   @return [Hash, nil]
#
# @!attribute [rw] sumOverDebitTx
#   @return [Hash, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
ReportDataCreateData = Struct.new(
  :cardBrandReportData,
  :clearingDateFrom,
  :clearingDateTo,
  :corporateId,
  :currency,
  :responseCode,
  :responseMessage,
  :sumOverCreditTx,
  :sumOverDebitTx,
  :terminalId,
  keyword_init: true
)

# StatusTransaction entity data model.
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] acquirerTerminalId
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] applicationCryptogram
#   @return [String, nil]
#
# @!attribute [rw] authorizationCode
#   @return [Object, nil]
#
# @!attribute [rw] authorizationDate
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardEntry
#   @return [String, nil]
#
# @!attribute [rw] cardExpiration
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] clearingAmount
#   @return [Integer, nil]
#
# @!attribute [rw] clearingBatchId
#   @return [String, nil]
#
# @!attribute [rw] clearingCurrency
#   @return [String, nil]
#
# @!attribute [rw] clearingDate
#   @return [String, nil]
#
# @!attribute [rw] clearingProcessedDate
#   @return [String, nil]
#
# @!attribute [rw] clearingStatus
#   @return [String, nil]
#
# @!attribute [rw] clientId
#   @return [Integer, nil]
#
# @!attribute [rw] currency
#   @return [String, nil]
#
# @!attribute [rw] cvm
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvApplicationId
#   @return [String, nil]
#
# @!attribute [rw] emvApplicationLabel
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] originalClientId
#   @return [String, nil]
#
# @!attribute [rw] originalTerminalId
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseCodeFromAS
#   @return [String, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] retrievalReferenceNumber
#   @return [String, nil]
#
# @!attribute [rw] serviceCode
#   @return [String, nil]
#
# @!attribute [rw] settlementStatus
#   @return [String, nil]
#
# @!attribute [rw] sourceId
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseCode
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseText
#   @return [String, nil]
#
# @!attribute [rw] terminalEndOfDayDate
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] tipAmount
#   @return [Integer, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionClearingDate
#   @return [String, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionSeqNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionServerDate
#   @return [String, nil]
#
# @!attribute [rw] transactionSource
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String, nil]
StatusTransaction = Struct.new(
  :acquirerName,
  :acquirerTerminalId,
  :amount,
  :applicationCryptogram,
  :authorizationCode,
  :authorizationDate,
  :cardBrand,
  :cardEntry,
  :cardExpiration,
  :cardNumber,
  :clearingAmount,
  :clearingBatchId,
  :clearingCurrency,
  :clearingDate,
  :clearingProcessedDate,
  :clearingStatus,
  :clientId,
  :currency,
  :cvm,
  :ecrData,
  :emvApplicationId,
  :emvApplicationLabel,
  :merchantName,
  :merchantNumber,
  :originalClientId,
  :originalTerminalId,
  :originalTransactionId,
  :paymentReason,
  :receiptNumber,
  :responseCode,
  :responseCodeFromAS,
  :responseMessage,
  :retrievalReferenceNumber,
  :serviceCode,
  :settlementStatus,
  :sourceId,
  :tecsengineResponseCode,
  :tecsengineResponseText,
  :terminalEndOfDayDate,
  :terminalId,
  :terminalLocation,
  :tipAmount,
  :traceNumber,
  :transactionClearingDate,
  :transactionDate,
  :transactionId,
  :transactionSeqNumber,
  :transactionServerDate,
  :transactionSource,
  :transactionType,
  keyword_init: true
)

# Request payload for StatusTransaction#create.
#
# @!attribute [rw] acquirerName
#   @return [String, nil]
#
# @!attribute [rw] acquirerTerminalId
#   @return [String, nil]
#
# @!attribute [rw] amount
#   @return [Integer, nil]
#
# @!attribute [rw] applicationCryptogram
#   @return [String, nil]
#
# @!attribute [rw] authorizationCode
#   @return [Object, nil]
#
# @!attribute [rw] authorizationDate
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] cardEntry
#   @return [String, nil]
#
# @!attribute [rw] cardExpiration
#   @return [String, nil]
#
# @!attribute [rw] cardNumber
#   @return [String, nil]
#
# @!attribute [rw] clearingAmount
#   @return [Integer, nil]
#
# @!attribute [rw] clearingBatchId
#   @return [String, nil]
#
# @!attribute [rw] clearingCurrency
#   @return [String, nil]
#
# @!attribute [rw] clearingDate
#   @return [String, nil]
#
# @!attribute [rw] clearingProcessedDate
#   @return [String, nil]
#
# @!attribute [rw] clearingStatus
#   @return [String, nil]
#
# @!attribute [rw] clientId
#   @return [Integer, nil]
#
# @!attribute [rw] currency
#   @return [String, nil]
#
# @!attribute [rw] cvm
#   @return [String, nil]
#
# @!attribute [rw] ecrData
#   @return [String, nil]
#
# @!attribute [rw] emvApplicationId
#   @return [String, nil]
#
# @!attribute [rw] emvApplicationLabel
#   @return [String, nil]
#
# @!attribute [rw] merchantName
#   @return [String, nil]
#
# @!attribute [rw] merchantNumber
#   @return [String, nil]
#
# @!attribute [rw] originalClientId
#   @return [String, nil]
#
# @!attribute [rw] originalTerminalId
#   @return [Integer, nil]
#
# @!attribute [rw] originalTransactionId
#   @return [String, nil]
#
# @!attribute [rw] paymentReason
#   @return [String, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseCodeFromAS
#   @return [String, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] retrievalReferenceNumber
#   @return [String, nil]
#
# @!attribute [rw] serviceCode
#   @return [String, nil]
#
# @!attribute [rw] settlementStatus
#   @return [String, nil]
#
# @!attribute [rw] sourceId
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseCode
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseText
#   @return [String, nil]
#
# @!attribute [rw] terminalEndOfDayDate
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] terminalLocation
#   @return [String, nil]
#
# @!attribute [rw] tipAmount
#   @return [Integer, nil]
#
# @!attribute [rw] traceNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionClearingDate
#   @return [String, nil]
#
# @!attribute [rw] transactionDate
#   @return [String, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionSeqNumber
#   @return [Integer, nil]
#
# @!attribute [rw] transactionServerDate
#   @return [String, nil]
#
# @!attribute [rw] transactionSource
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String, nil]
StatusTransactionCreateData = Struct.new(
  :acquirerName,
  :acquirerTerminalId,
  :amount,
  :applicationCryptogram,
  :authorizationCode,
  :authorizationDate,
  :cardBrand,
  :cardEntry,
  :cardExpiration,
  :cardNumber,
  :clearingAmount,
  :clearingBatchId,
  :clearingCurrency,
  :clearingDate,
  :clearingProcessedDate,
  :clearingStatus,
  :clientId,
  :currency,
  :cvm,
  :ecrData,
  :emvApplicationId,
  :emvApplicationLabel,
  :merchantName,
  :merchantNumber,
  :originalClientId,
  :originalTerminalId,
  :originalTransactionId,
  :paymentReason,
  :receiptNumber,
  :responseCode,
  :responseCodeFromAS,
  :responseMessage,
  :retrievalReferenceNumber,
  :serviceCode,
  :settlementStatus,
  :sourceId,
  :tecsengineResponseCode,
  :tecsengineResponseText,
  :terminalEndOfDayDate,
  :terminalId,
  :terminalLocation,
  :tipAmount,
  :traceNumber,
  :transactionClearingDate,
  :transactionDate,
  :transactionId,
  :transactionSeqNumber,
  :transactionServerDate,
  :transactionSource,
  :transactionType,
  keyword_init: true
)

# StoreTerminalParameter entity data model.
#
# @!attribute [rw] acqTabNexo
#   @return [Hash, nil]
#
# @!attribute [rw] configVersion
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String]
#
# @!attribute [rw] tidSent
#   @return [String, nil]
StoreTerminalParameter = Struct.new(
  :acqTabNexo,
  :configVersion,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :tidSent,
  keyword_init: true
)

# Request payload for StoreTerminalParameter#create.
#
# @!attribute [rw] acqTabNexo
#   @return [Hash, nil]
#
# @!attribute [rw] configVersion
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] serialNumber
#   @return [String]
#
# @!attribute [rw] tidSent
#   @return [String, nil]
StoreTerminalParameterCreateData = Struct.new(
  :acqTabNexo,
  :configVersion,
  :responseCode,
  :responseMessage,
  :serialNumber,
  :tidSent,
  keyword_init: true
)

# TerminalId entity data model.
#
# @!attribute [rw] deviceSerialNumber
#   @return [Array]
#
# @!attribute [rw] duplicateTerminalIds
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminals
#   @return [Array, nil]
TerminalId = Struct.new(
  :deviceSerialNumber,
  :duplicateTerminalIds,
  :responseCode,
  :responseMessage,
  :terminals,
  keyword_init: true
)

# Request payload for TerminalId#create.
#
# @!attribute [rw] deviceSerialNumber
#   @return [Array]
#
# @!attribute [rw] duplicateTerminalIds
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] terminals
#   @return [Array, nil]
TerminalIdCreateData = Struct.new(
  :deviceSerialNumber,
  :duplicateTerminalIds,
  :responseCode,
  :responseMessage,
  :terminals,
  keyword_init: true
)

# TransactionHistory entity data model.
#
# @!attribute [rw] 3DSecure
#   @return [String, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountTo
#   @return [String, nil]
#
# @!attribute [rw] clearingCurrency
#   @return [String, nil]
#
# @!attribute [rw] clearingStatus
#   @return [String, nil]
#
# @!attribute [rw] corporateUUID
#   @return [String, nil]
#
# @!attribute [rw] orderByTransactionDate
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] paymentTokenPublicId
#   @return [String, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String, nil]
#
# @!attribute [rw] referencedTransactionId
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] retrievalReferenceNumber
#   @return [String, nil]
#
# @!attribute [rw] sourceId
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseCodeFrom
#   @return [String, nil]
#
# @!attribute [rw] tecsengineResponseCodeTo
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] traceNumber
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountTo
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionHistories
#   @return [Array, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
TransactionHistory = Struct.new(
  :"3DSecure",
  :authorizationCode,
  :cardBrand,
  :clearingAmountFrom,
  :clearingAmountTo,
  :clearingCurrency,
  :clearingStatus,
  :corporateUUID,
  :orderByTransactionDate,
  :pagination,
  :paymentTokenPublicId,
  :receiptNumber,
  :referencedTransactionId,
  :responseCode,
  :responseMessage,
  :retrievalReferenceNumber,
  :sourceId,
  :tecsengineResponseCodeFrom,
  :tecsengineResponseCodeTo,
  :terminalId,
  :traceNumber,
  :transactionAmountFrom,
  :transactionAmountTo,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionHistories,
  :transactionId,
  :transactionType,
  :wallet,
  keyword_init: true
)

# Request payload for TransactionHistory#create.
#
# @!attribute [rw] 3DSecure
#   @return [String, nil]
#
# @!attribute [rw] authorizationCode
#   @return [String, nil]
#
# @!attribute [rw] cardBrand
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] clearingAmountTo
#   @return [String, nil]
#
# @!attribute [rw] clearingCurrency
#   @return [String, nil]
#
# @!attribute [rw] clearingStatus
#   @return [String, nil]
#
# @!attribute [rw] corporateUUID
#   @return [String, nil]
#
# @!attribute [rw] orderByTransactionDate
#   @return [String, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] paymentTokenPublicId
#   @return [String, nil]
#
# @!attribute [rw] receiptNumber
#   @return [String, nil]
#
# @!attribute [rw] referencedTransactionId
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] retrievalReferenceNumber
#   @return [String, nil]
#
# @!attribute [rw] sourceId
#   @return [Integer, nil]
#
# @!attribute [rw] tecsengineResponseCodeFrom
#   @return [String, nil]
#
# @!attribute [rw] tecsengineResponseCodeTo
#   @return [String, nil]
#
# @!attribute [rw] terminalId
#   @return [Integer, nil]
#
# @!attribute [rw] traceNumber
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionAmountTo
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionHistories
#   @return [Array, nil]
#
# @!attribute [rw] transactionId
#   @return [String, nil]
#
# @!attribute [rw] transactionType
#   @return [String, nil]
#
# @!attribute [rw] wallet
#   @return [String, nil]
TransactionHistoryCreateData = Struct.new(
  :"3DSecure",
  :authorizationCode,
  :cardBrand,
  :clearingAmountFrom,
  :clearingAmountTo,
  :clearingCurrency,
  :clearingStatus,
  :corporateUUID,
  :orderByTransactionDate,
  :pagination,
  :paymentTokenPublicId,
  :receiptNumber,
  :referencedTransactionId,
  :responseCode,
  :responseMessage,
  :retrievalReferenceNumber,
  :sourceId,
  :tecsengineResponseCodeFrom,
  :tecsengineResponseCodeTo,
  :terminalId,
  :traceNumber,
  :transactionAmountFrom,
  :transactionAmountTo,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionHistories,
  :transactionId,
  :transactionType,
  :wallet,
  keyword_init: true
)

# TransactionsCount entity data model.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionsCount
#   @return [Array, nil]
TransactionsCount = Struct.new(
  :period,
  :responseCode,
  :responseMessage,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionsCount,
  keyword_init: true
)

# Request payload for TransactionsCount#create.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionsCount
#   @return [Array, nil]
TransactionsCountCreateData = Struct.new(
  :period,
  :responseCode,
  :responseMessage,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionsCount,
  keyword_init: true
)

# TransactionsCountCardBrand entity data model.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionsCount
#   @return [Array, nil]
TransactionsCountCardBrand = Struct.new(
  :period,
  :responseCode,
  :responseMessage,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionsCount,
  keyword_init: true
)

# Request payload for TransactionsCountCardBrand#create.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] transactionsCount
#   @return [Array, nil]
TransactionsCountCardBrandCreateData = Struct.new(
  :period,
  :responseCode,
  :responseMessage,
  :transactionDateFrom,
  :transactionDateTo,
  :transactionsCount,
  keyword_init: true
)

# TransactionsTurnover entity data model.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] turnovers
#   @return [Array, nil]
TransactionsTurnover = Struct.new(
  :period,
  :responseCode,
  :responseMessage,
  :transactionDateFrom,
  :transactionDateTo,
  :turnovers,
  keyword_init: true
)

# Request payload for TransactionsTurnover#create.
#
# @!attribute [rw] period
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] transactionDateFrom
#   @return [String, nil]
#
# @!attribute [rw] transactionDateTo
#   @return [String, nil]
#
# @!attribute [rw] turnovers
#   @return [Array, nil]
TransactionsTurnoverCreateData = Struct.new(
  :period,
  :responseCode,
  :responseMessage,
  :transactionDateFrom,
  :transactionDateTo,
  :turnovers,
  keyword_init: true
)

# UpdateMerchant entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] merchantCategoryCode
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street
#   @return [String, nil]
#
# @!attribute [rw] vuNummer
#   @return [String, nil]
#
# @!attribute [rw] zipcode
#   @return [String, nil]
UpdateMerchant = Struct.new(
  :city,
  :corporateUuid,
  :country,
  :merchantCategoryCode,
  :name,
  :responseCode,
  :responseMessage,
  :state,
  :street,
  :vuNummer,
  :zipcode,
  keyword_init: true
)

# Request payload for UpdateMerchant#create.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] corporateUuid
#   @return [String]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] merchantCategoryCode
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street
#   @return [String, nil]
#
# @!attribute [rw] vuNummer
#   @return [String, nil]
#
# @!attribute [rw] zipcode
#   @return [String, nil]
UpdateMerchantCreateData = Struct.new(
  :city,
  :corporateUuid,
  :country,
  :merchantCategoryCode,
  :name,
  :responseCode,
  :responseMessage,
  :state,
  :street,
  :vuNummer,
  :zipcode,
  keyword_init: true
)

# UpdateTemplateXml entity data model.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] templateXml
#   @return [String]
UpdateTemplateXml = Struct.new(
  :responseCode,
  :responseMessage,
  :templateName,
  :templateXml,
  keyword_init: true
)

# Request payload for UpdateTemplateXml#create.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] templateName
#   @return [String]
#
# @!attribute [rw] templateXml
#   @return [String]
UpdateTemplateXmlCreateData = Struct.new(
  :responseCode,
  :responseMessage,
  :templateName,
  :templateXml,
  keyword_init: true
)

# Version entity data model.
#
# @!attribute [rw] appName
#   @return [String, nil]
#
# @!attribute [rw] buildDate
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
Version = Struct.new(
  :appName,
  :buildDate,
  :version,
  keyword_init: true
)

# Request payload for Version#load.
#
# @!attribute [rw] appName
#   @return [String, nil]
#
# @!attribute [rw] buildDate
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
VersionLoadMatch = Struct.new(
  :appName,
  :buildDate,
  :version,
  keyword_init: true
)

