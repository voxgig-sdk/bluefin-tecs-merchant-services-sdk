// Typed models for the BluefinTecsMerchantServices SDK (JSDoc typedefs).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
// edit by hand.

/**
 * @typedef {Object} CancelTransaction
 * @property {string} [acquirerId]
 * @property {string} [acquirerName]
 * @property {string} [actualBonusPoints]
 * @property {number} [amount]
 * @property {string} [authorizationCode]
 * @property {string} [balanceAmount]
 * @property {string} [cardBrand]
 * @property {string} [cardNumber]
 * @property {number} clientId
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ecData]
 * @property {string} [ecrData]
 * @property {string} [emvData]
 * @property {number} [exchangeFee]
 * @property {string} [exchangeRate]
 * @property {string} [languageCode]
 * @property {string} [merchantAddress]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [messageType]
 * @property {number} [originalTraceNumber]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [paymentReason]
 * @property {string} [receiptFooter]
 * @property {string} [receiptHeader]
 * @property {number} [receiptLayout]
 * @property {string} receiptNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [serialNumber]
 * @property {string} [svc]
 * @property {number} terminalId
 * @property {string} [terminalLocation]
 * @property {number} [traceNumber]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {string} [txType]
 * @property {string} [userData]
 */

/**
 * @typedef {Object} CancelTransactionCreateData
 * @property {string} [acquirerId]
 * @property {string} [acquirerName]
 * @property {string} [actualBonusPoints]
 * @property {number} [amount]
 * @property {string} [authorizationCode]
 * @property {string} [balanceAmount]
 * @property {string} [cardBrand]
 * @property {string} [cardNumber]
 * @property {number} clientId
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ecData]
 * @property {string} [ecrData]
 * @property {string} [emvData]
 * @property {number} [exchangeFee]
 * @property {string} [exchangeRate]
 * @property {string} [languageCode]
 * @property {string} [merchantAddress]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [messageType]
 * @property {number} [originalTraceNumber]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [paymentReason]
 * @property {string} [receiptFooter]
 * @property {string} [receiptHeader]
 * @property {number} [receiptLayout]
 * @property {string} receiptNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [serialNumber]
 * @property {string} [svc]
 * @property {number} terminalId
 * @property {string} [terminalLocation]
 * @property {number} [traceNumber]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {string} [txType]
 * @property {string} [userData]
 */

/**
 * @typedef {Object} CheckCardBlackListed
 * @property {string} [cardNo]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} CheckCardBlackListedCreateData
 * @property {string} [cardNo]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} CreateProduct
 * @property {number} [acquirerId]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 * @property {string} templateType
 * @property {string} templateXml
 * @property {string} terminalType
 */

/**
 * @typedef {Object} CreateProductCreateData
 * @property {number} [acquirerId]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 * @property {string} templateType
 * @property {string} templateXml
 * @property {string} terminalType
 */

/**
 * @typedef {Object} DeactivateTerminal
 * @property {string} [corporateUuid]
 * @property {string} deactivationReason
 * @property {string} [packageOrderUuid]
 * @property {string} [productOrderUuid]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 */

/**
 * @typedef {Object} DeactivateTerminalCreateData
 * @property {string} [corporateUuid]
 * @property {string} deactivationReason
 * @property {string} [packageOrderUuid]
 * @property {string} [productOrderUuid]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 */

/**
 * @typedef {Object} DigitalServicesApi
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} [txCount]
 * @property {string} [txIdEnd]
 * @property {string} [txIdStart]
 * @property {number} [txSeqNoEnd]
 * @property {number} [txSeqNoStart]
 * @property {number} [txTotal]
 */

/**
 * @typedef {Object} DigitalServicesApiLoadMatch
 * @property {string} [clearingDateFrom]
 * @property {string} [clearingDateTo]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} [txCount]
 * @property {string} [txIdEnd]
 * @property {string} [txIdStart]
 * @property {number} [txSeqNoEnd]
 * @property {number} [txSeqNoStart]
 * @property {number} [txTotal]
 */

/**
 * @typedef {Object} DigitalServicesApiCreateData
 * @property {string} [file_id]
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} [txCount]
 * @property {string} [txIdEnd]
 * @property {string} [txIdStart]
 * @property {number} [txSeqNoEnd]
 * @property {number} [txSeqNoStart]
 * @property {number} [txTotal]
 */

/**
 * @typedef {Object} EcDataEcom
 * @property {string} [ecomData]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 * @property {string} transactionId
 * @property {string} transactionType
 */

/**
 * @typedef {Object} EcDataEcomCreateData
 * @property {string} [ecomData]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 * @property {string} transactionId
 * @property {string} transactionType
 */

/**
 * @typedef {Object} EcomParameter
 * @property {string} [ecomPass]
 * @property {string} [ecomSkey]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 */

/**
 * @typedef {Object} EcomParameterCreateData
 * @property {string} [ecomPass]
 * @property {string} [ecomSkey]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 */

/**
 * @typedef {Object} EcrData
 * @property {string} [ecrData]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 * @property {string} transactionId
 * @property {string} transactionType
 */

/**
 * @typedef {Object} EcrDataCreateData
 * @property {string} [ecrData]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 * @property {string} transactionId
 * @property {string} transactionType
 */

/**
 * @typedef {Object} EmvData
 * @property {string} [emvData]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 * @property {string} transactionId
 * @property {string} transactionType
 */

/**
 * @typedef {Object} EmvDataCreateData
 * @property {string} [emvData]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 * @property {string} transactionId
 * @property {string} transactionType
 */

/**
 * @typedef {Object} EnableAcquiring
 * @property {number} [accountNo]
 * @property {Object} [additionalData]
 * @property {string} corporateUuid
 * @property {string} currency
 * @property {number} merchantCategoryCode
 * @property {string} packageOrderUuid
 * @property {string} productOrderUuid
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} [sortingCode]
 * @property {string} templateName
 * @property {string} [terminalIdAcq]
 * @property {Array} [terminalIds]
 * @property {string} [vuNummer]
 */

/**
 * @typedef {Object} EnableAcquiringCreateData
 * @property {number} [accountNo]
 * @property {Object} [additionalData]
 * @property {string} corporateUuid
 * @property {string} currency
 * @property {number} merchantCategoryCode
 * @property {string} packageOrderUuid
 * @property {string} productOrderUuid
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} [sortingCode]
 * @property {string} templateName
 * @property {string} [terminalIdAcq]
 * @property {Array} [terminalIds]
 * @property {string} [vuNummer]
 */

/**
 * @typedef {Object} GetMerchantContractNumber
 * @property {string} merchantContractNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} GetMerchantContractNumberCreateData
 * @property {string} merchantContractNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} GetTemplateXml
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 */

/**
 * @typedef {Object} GetTemplateXmlCreateData
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 */

/**
 * @typedef {Object} IntroduceMandator
 * @property {string} mandatorName
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} IntroduceMandatorCreateData
 * @property {string} mandatorName
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} IntroducePackage
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} terminalTemplateDescription
 */

/**
 * @typedef {Object} IntroducePackageCreateData
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} terminalTemplateDescription
 */

/**
 * @typedef {Object} KeepAlive
 * @property {string} [hwserialno]
 * @property {string} [kaDateTimeFrom]
 * @property {string} [kaDateTimeTo]
 * @property {Array} [keepAliveData]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [terminalDateTimeFrom]
 * @property {string} [terminalDateTimeTo]
 * @property {number} [terminalId]
 */

/**
 * @typedef {Object} KeepAliveCreateData
 * @property {string} [hwserialno]
 * @property {string} [kaDateTimeFrom]
 * @property {string} [kaDateTimeTo]
 * @property {Array} [keepAliveData]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [terminalDateTimeFrom]
 * @property {string} [terminalDateTimeTo]
 * @property {number} [terminalId]
 */

/**
 * @typedef {Object} ListTerminal
 * @property {Array} [corporateUuid]
 * @property {Object} [filter]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} [terminals]
 */

/**
 * @typedef {Object} ListTerminalCreateData
 * @property {Array} [corporateUuid]
 * @property {Object} [filter]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} [terminals]
 */

/**
 * @typedef {Object} MandatorClearingExport
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {Object} [pagination]
 * @property {Array} [records]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} MandatorClearingExportCreateData
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {Object} [pagination]
 * @property {Array} [records]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} MandatorClearingExportDownload
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {string} [fileId]
 * @property {string} [filenameTemplate]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [status]
 */

/**
 * @typedef {Object} MandatorClearingExportDownloadLoadMatch
 * @property {string} id
 */

/**
 * @typedef {Object} MandatorClearingExportDownloadCreateData
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {string} [fileId]
 * @property {string} [filenameTemplate]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [status]
 */

/**
 * @typedef {Object} MandatorClearingExportSummary
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {Array} [records]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} MandatorClearingExportSummaryCreateData
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {Array} [records]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} MerchantPortalServicesApi
 * @property {string} ["3DSecure"]
 * @property {string} [authorizationCode]
 * @property {string} [cardBrand]
 * @property {string} [clearingAmountFrom]
 * @property {string} [clearingAmountTo]
 * @property {string} [clearingCurrency]
 * @property {string} [clearingStatus]
 * @property {string} [corporateUUID]
 * @property {string} [orderByTransactionDate]
 * @property {Object} [pagination]
 * @property {string} [receiptNumber]
 * @property {string} [referencedTransactionId]
 * @property {string} [retrievalReferenceNumber]
 * @property {number} [sourceId]
 * @property {string} [tecsengineResponseCodeFrom]
 * @property {string} [tecsengineResponseCodeTo]
 * @property {number} [terminalId]
 * @property {string} [traceNumber]
 * @property {string} [transactionAmountFrom]
 * @property {string} [transactionAmountTo]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {string} [transactionId]
 * @property {string} [transactionType]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} MerchantPortalServicesApiCreateData
 * @property {string} ["3DSecure"]
 * @property {string} [authorizationCode]
 * @property {string} [cardBrand]
 * @property {string} [clearingAmountFrom]
 * @property {string} [clearingAmountTo]
 * @property {string} [clearingCurrency]
 * @property {string} [clearingStatus]
 * @property {string} [corporateUUID]
 * @property {string} [orderByTransactionDate]
 * @property {Object} [pagination]
 * @property {string} [receiptNumber]
 * @property {string} [referencedTransactionId]
 * @property {string} [retrievalReferenceNumber]
 * @property {number} [sourceId]
 * @property {string} [tecsengineResponseCodeFrom]
 * @property {string} [tecsengineResponseCodeTo]
 * @property {number} [terminalId]
 * @property {string} [traceNumber]
 * @property {string} [transactionAmountFrom]
 * @property {string} [transactionAmountTo]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {string} [transactionId]
 * @property {string} [transactionType]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} MoveTid
 * @property {Array} productorderuuids
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [targetPackageorderuuid]
 * @property {string} [targetProductorderuuid]
 */

/**
 * @typedef {Object} MoveTidCreateData
 * @property {Array} productorderuuids
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [targetPackageorderuuid]
 * @property {string} [targetProductorderuuid]
 */

/**
 * @typedef {Object} PaymentManual
 * @property {string} [acquirerName]
 * @property {number} amount
 * @property {string} [authorizationNumber]
 * @property {string} cardNumber
 * @property {string} [cardType]
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [dateTimeTx]
 * @property {string} expDate
 * @property {string} [merchantId]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [terminalId]
 * @property {string} [transactionId]
 * @property {string} txtype
 */

/**
 * @typedef {Object} PaymentManualCreateData
 * @property {string} [acquirerName]
 * @property {number} amount
 * @property {string} [authorizationNumber]
 * @property {string} cardNumber
 * @property {string} [cardType]
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [dateTimeTx]
 * @property {string} expDate
 * @property {string} [merchantId]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [terminalId]
 * @property {string} [transactionId]
 * @property {string} txtype
 */

/**
 * @typedef {Object} PaymentSred
 * @property {number} amount
 * @property {string} currency
 * @property {string} [device]
 * @property {string} devicePayload
 * @property {string} [expDate]
 * @property {string} [mode]
 * @property {string} [panMasked]
 * @property {string} [password]
 * @property {string} [serial]
 * @property {string} [serviceCode]
 * @property {string} terminalId
 * @property {string} txtype
 */

/**
 * @typedef {Object} PaymentSredCreateData
 * @property {number} amount
 * @property {string} currency
 * @property {string} [device]
 * @property {string} devicePayload
 * @property {string} [expDate]
 * @property {string} [mode]
 * @property {string} [panMasked]
 * @property {string} [password]
 * @property {string} [serial]
 * @property {string} [serviceCode]
 * @property {string} terminalId
 * @property {string} txtype
 */

/**
 * @typedef {Object} PreAuthTransactionCompletion
 * @property {string} [acquirerId]
 * @property {string} [acquirerName]
 * @property {string} [actualBonusPoints]
 * @property {number} [amount]
 * @property {string} [authorizationCode]
 * @property {string} [balanceAmount]
 * @property {string} [cardBrand]
 * @property {string} [cardNumber]
 * @property {string} cardNumberReference
 * @property {number} clientId
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ecData]
 * @property {string} [ecrData]
 * @property {string} [emvData]
 * @property {number} [exchangeFee]
 * @property {string} [exchangeRate]
 * @property {string} [languageCode]
 * @property {string} [merchantAddress]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [messageType]
 * @property {number} [originalTraceNumber]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [paymentReason]
 * @property {string} [receiptFooter]
 * @property {string} [receiptHeader]
 * @property {number} [receiptLayout]
 * @property {string} receiptNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [serialNumber]
 * @property {string} [svc]
 * @property {number} terminalId
 * @property {string} [terminalLocation]
 * @property {number} [traceNumber]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {string} transactionType
 * @property {string} [txType]
 * @property {string} [userData]
 */

/**
 * @typedef {Object} PreAuthTransactionCompletionCreateData
 * @property {string} [acquirerId]
 * @property {string} [acquirerName]
 * @property {string} [actualBonusPoints]
 * @property {number} [amount]
 * @property {string} [authorizationCode]
 * @property {string} [balanceAmount]
 * @property {string} [cardBrand]
 * @property {string} [cardNumber]
 * @property {string} cardNumberReference
 * @property {number} clientId
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ecData]
 * @property {string} [ecrData]
 * @property {string} [emvData]
 * @property {number} [exchangeFee]
 * @property {string} [exchangeRate]
 * @property {string} [languageCode]
 * @property {string} [merchantAddress]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [messageType]
 * @property {number} [originalTraceNumber]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [paymentReason]
 * @property {string} [receiptFooter]
 * @property {string} [receiptHeader]
 * @property {number} [receiptLayout]
 * @property {string} receiptNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [serialNumber]
 * @property {string} [svc]
 * @property {number} terminalId
 * @property {string} [terminalLocation]
 * @property {number} [traceNumber]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {string} transactionType
 * @property {string} [txType]
 * @property {string} [userData]
 */

/**
 * @typedef {Object} ReactivateTerminal
 * @property {string} [corporateUuid]
 * @property {string} [packageOrderUuid]
 * @property {string} [productOrderUuid]
 * @property {string} reactivationReason
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 */

/**
 * @typedef {Object} ReactivateTerminalCreateData
 * @property {string} [corporateUuid]
 * @property {string} [packageOrderUuid]
 * @property {string} [productOrderUuid]
 * @property {string} reactivationReason
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {number} terminalId
 */

/**
 * @typedef {Object} RefundTransaction
 * @property {string} [acquirerId]
 * @property {string} [acquirerName]
 * @property {string} [actualBonusPoints]
 * @property {number} [amount]
 * @property {string} [authorizationCode]
 * @property {string} [balanceAmount]
 * @property {string} [cardBrand]
 * @property {string} [cardNumber]
 * @property {number} clientId
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ecData]
 * @property {string} [ecrData]
 * @property {string} [emvData]
 * @property {number} [exchangeFee]
 * @property {string} [exchangeRate]
 * @property {string} [languageCode]
 * @property {string} [merchantAddress]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [messageType]
 * @property {number} [originalTraceNumber]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [paymentReason]
 * @property {string} [receiptFooter]
 * @property {string} [receiptHeader]
 * @property {number} [receiptLayout]
 * @property {string} receiptNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [serialNumber]
 * @property {string} [svc]
 * @property {number} terminalId
 * @property {string} [terminalLocation]
 * @property {number} [traceNumber]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {string} [txType]
 * @property {string} [userData]
 */

/**
 * @typedef {Object} RefundTransactionCreateData
 * @property {string} [acquirerId]
 * @property {string} [acquirerName]
 * @property {string} [actualBonusPoints]
 * @property {number} [amount]
 * @property {string} [authorizationCode]
 * @property {string} [balanceAmount]
 * @property {string} [cardBrand]
 * @property {string} [cardNumber]
 * @property {number} clientId
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ecData]
 * @property {string} [ecrData]
 * @property {string} [emvData]
 * @property {number} [exchangeFee]
 * @property {string} [exchangeRate]
 * @property {string} [languageCode]
 * @property {string} [merchantAddress]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [messageType]
 * @property {number} [originalTraceNumber]
 * @property {string} [originalTransactionId]
 * @property {string} [password]
 * @property {string} [paymentReason]
 * @property {string} [receiptFooter]
 * @property {string} [receiptHeader]
 * @property {number} [receiptLayout]
 * @property {string} receiptNumber
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [serialNumber]
 * @property {string} [svc]
 * @property {number} terminalId
 * @property {string} [terminalLocation]
 * @property {number} [traceNumber]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {string} [txType]
 * @property {string} [userData]
 */

/**
 * @typedef {Object} RegisterTecsCompany
 * @property {string} corporateUuid
 * @property {string} packageOrderUuid
 * @property {number} [partnerId]
 * @property {string} [partnerName]
 * @property {string} productOrderUuid
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 */

/**
 * @typedef {Object} RegisterTecsCompanyCreateData
 * @property {string} corporateUuid
 * @property {string} packageOrderUuid
 * @property {number} [partnerId]
 * @property {string} [partnerName]
 * @property {string} productOrderUuid
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 */

/**
 * @typedef {Object} RegisterTerminal
 * @property {Object} [additionalData]
 * @property {string} corporateUuid
 * @property {string} packageOrderUuid
 * @property {string} productOrderUuid
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [tecsWebSecretKey]
 * @property {string} templateName
 * @property {string} terminalCountryCode
 * @property {number} [terminalId]
 * @property {string} [terminalIdAcq]
 * @property {string} terminalLanguageCode
 * @property {string} terminalLocation
 * @property {string} [terminalSerialNumber]
 * @property {string} [tokenIOAlias]
 * @property {string} [tokenIOIban]
 * @property {string} [tokenIOMemberId]
 * @property {string} [webShopUrl]
 */

/**
 * @typedef {Object} RegisterTerminalCreateData
 * @property {Object} [additionalData]
 * @property {string} corporateUuid
 * @property {string} packageOrderUuid
 * @property {string} productOrderUuid
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [tecsWebSecretKey]
 * @property {string} templateName
 * @property {string} terminalCountryCode
 * @property {number} [terminalId]
 * @property {string} [terminalIdAcq]
 * @property {string} terminalLanguageCode
 * @property {string} terminalLocation
 * @property {string} [terminalSerialNumber]
 * @property {string} [tokenIOAlias]
 * @property {string} [tokenIOIban]
 * @property {string} [tokenIOMemberId]
 * @property {string} [webShopUrl]
 */

/**
 * @typedef {Object} ReportData
 * @property {Array} [cardBrandReportData]
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {string} corporateId
 * @property {string} currency
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sumOverCreditTx]
 * @property {Object} [sumOverDebitTx]
 * @property {number} [terminalId]
 */

/**
 * @typedef {Object} ReportDataCreateData
 * @property {Array} [cardBrandReportData]
 * @property {string} clearingDateFrom
 * @property {string} clearingDateTo
 * @property {string} corporateId
 * @property {string} currency
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sumOverCreditTx]
 * @property {Object} [sumOverDebitTx]
 * @property {number} [terminalId]
 */

/**
 * @typedef {Object} StatusTransaction
 * @property {string} [acquirerName]
 * @property {string} [acquirerTerminalId]
 * @property {number} [amount]
 * @property {string} [applicationCryptogram]
 * @property {string|null} [authorizationCode]
 * @property {string} [authorizationDate]
 * @property {string} [cardBrand]
 * @property {string} [cardEntry]
 * @property {string} [cardExpiration]
 * @property {string} [cardNumber]
 * @property {number} [clearingAmount]
 * @property {string} [clearingBatchId]
 * @property {string} [clearingCurrency]
 * @property {string} [clearingDate]
 * @property {string} [clearingProcessedDate]
 * @property {string} [clearingStatus]
 * @property {number} [clientId]
 * @property {string} [currency]
 * @property {string} [cvm]
 * @property {string} [ecrData]
 * @property {string} [emvApplicationId]
 * @property {string} [emvApplicationLabel]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [originalClientId]
 * @property {number} [originalTerminalId]
 * @property {string} [originalTransactionId]
 * @property {string} [paymentReason]
 * @property {string} [receiptNumber]
 * @property {number} [responseCode]
 * @property {string} [responseCodeFromAS]
 * @property {string} [responseMessage]
 * @property {string} [retrievalReferenceNumber]
 * @property {string} [serviceCode]
 * @property {string} [settlementStatus]
 * @property {number} [sourceId]
 * @property {number} [tecsengineResponseCode]
 * @property {string} [tecsengineResponseText]
 * @property {string} [terminalEndOfDayDate]
 * @property {number} [terminalId]
 * @property {string} [terminalLocation]
 * @property {number} [tipAmount]
 * @property {number} [traceNumber]
 * @property {string} [transactionClearingDate]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {number} [transactionSeqNumber]
 * @property {string} [transactionServerDate]
 * @property {string} [transactionSource]
 * @property {string} [transactionType]
 */

/**
 * @typedef {Object} StatusTransactionCreateData
 * @property {string} [acquirerName]
 * @property {string} [acquirerTerminalId]
 * @property {number} [amount]
 * @property {string} [applicationCryptogram]
 * @property {string|null} [authorizationCode]
 * @property {string} [authorizationDate]
 * @property {string} [cardBrand]
 * @property {string} [cardEntry]
 * @property {string} [cardExpiration]
 * @property {string} [cardNumber]
 * @property {number} [clearingAmount]
 * @property {string} [clearingBatchId]
 * @property {string} [clearingCurrency]
 * @property {string} [clearingDate]
 * @property {string} [clearingProcessedDate]
 * @property {string} [clearingStatus]
 * @property {number} [clientId]
 * @property {string} [currency]
 * @property {string} [cvm]
 * @property {string} [ecrData]
 * @property {string} [emvApplicationId]
 * @property {string} [emvApplicationLabel]
 * @property {string} [merchantName]
 * @property {string} [merchantNumber]
 * @property {string} [originalClientId]
 * @property {number} [originalTerminalId]
 * @property {string} [originalTransactionId]
 * @property {string} [paymentReason]
 * @property {string} [receiptNumber]
 * @property {number} [responseCode]
 * @property {string} [responseCodeFromAS]
 * @property {string} [responseMessage]
 * @property {string} [retrievalReferenceNumber]
 * @property {string} [serviceCode]
 * @property {string} [settlementStatus]
 * @property {number} [sourceId]
 * @property {number} [tecsengineResponseCode]
 * @property {string} [tecsengineResponseText]
 * @property {string} [terminalEndOfDayDate]
 * @property {number} [terminalId]
 * @property {string} [terminalLocation]
 * @property {number} [tipAmount]
 * @property {number} [traceNumber]
 * @property {string} [transactionClearingDate]
 * @property {string} [transactionDate]
 * @property {string} [transactionId]
 * @property {number} [transactionSeqNumber]
 * @property {string} [transactionServerDate]
 * @property {string} [transactionSource]
 * @property {string} [transactionType]
 */

/**
 * @typedef {Object} StoreTerminalParameter
 * @property {Object} [acqTabNexo]
 * @property {string} [configVersion]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} serialNumber
 * @property {string} [tidSent]
 */

/**
 * @typedef {Object} StoreTerminalParameterCreateData
 * @property {Object} [acqTabNexo]
 * @property {string} [configVersion]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} serialNumber
 * @property {string} [tidSent]
 */

/**
 * @typedef {Object} TerminalId
 * @property {Array} deviceSerialNumber
 * @property {Array} [duplicateTerminalIds]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} [terminals]
 */

/**
 * @typedef {Object} TerminalIdCreateData
 * @property {Array} deviceSerialNumber
 * @property {Array} [duplicateTerminalIds]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} [terminals]
 */

/**
 * @typedef {Object} TransactionHistory
 * @property {string} ["3DSecure"]
 * @property {string} [authorizationCode]
 * @property {string} [cardBrand]
 * @property {string} [clearingAmountFrom]
 * @property {string} [clearingAmountTo]
 * @property {string} [clearingCurrency]
 * @property {string} [clearingStatus]
 * @property {string} [corporateUUID]
 * @property {string} [orderByTransactionDate]
 * @property {Object} [pagination]
 * @property {string} [paymentTokenPublicId]
 * @property {string} [receiptNumber]
 * @property {string} [referencedTransactionId]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [retrievalReferenceNumber]
 * @property {number} [sourceId]
 * @property {string} [tecsengineResponseCodeFrom]
 * @property {string} [tecsengineResponseCodeTo]
 * @property {number} [terminalId]
 * @property {string} [traceNumber]
 * @property {string} [transactionAmountFrom]
 * @property {string} [transactionAmountTo]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [transactionHistories]
 * @property {string} [transactionId]
 * @property {string} [transactionType]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} TransactionHistoryCreateData
 * @property {string} ["3DSecure"]
 * @property {string} [authorizationCode]
 * @property {string} [cardBrand]
 * @property {string} [clearingAmountFrom]
 * @property {string} [clearingAmountTo]
 * @property {string} [clearingCurrency]
 * @property {string} [clearingStatus]
 * @property {string} [corporateUUID]
 * @property {string} [orderByTransactionDate]
 * @property {Object} [pagination]
 * @property {string} [paymentTokenPublicId]
 * @property {string} [receiptNumber]
 * @property {string} [referencedTransactionId]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [retrievalReferenceNumber]
 * @property {number} [sourceId]
 * @property {string} [tecsengineResponseCodeFrom]
 * @property {string} [tecsengineResponseCodeTo]
 * @property {number} [terminalId]
 * @property {string} [traceNumber]
 * @property {string} [transactionAmountFrom]
 * @property {string} [transactionAmountTo]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [transactionHistories]
 * @property {string} [transactionId]
 * @property {string} [transactionType]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} TransactionsCount
 * @property {string} [period]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [transactionsCount]
 */

/**
 * @typedef {Object} TransactionsCountCreateData
 * @property {string} [period]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [transactionsCount]
 */

/**
 * @typedef {Object} TransactionsCountCardBrand
 * @property {string} [period]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [transactionsCount]
 */

/**
 * @typedef {Object} TransactionsCountCardBrandCreateData
 * @property {string} [period]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [transactionsCount]
 */

/**
 * @typedef {Object} TransactionsTurnover
 * @property {string} [period]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [turnovers]
 */

/**
 * @typedef {Object} TransactionsTurnoverCreateData
 * @property {string} [period]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [transactionDateFrom]
 * @property {string} [transactionDateTo]
 * @property {Array} [turnovers]
 */

/**
 * @typedef {Object} UpdateMerchant
 * @property {string} [city]
 * @property {string} corporateUuid
 * @property {string} [country]
 * @property {string} [merchantCategoryCode]
 * @property {string} [name]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [state]
 * @property {string} [street]
 * @property {string} [vuNummer]
 * @property {string} [zipcode]
 */

/**
 * @typedef {Object} UpdateMerchantCreateData
 * @property {string} [city]
 * @property {string} corporateUuid
 * @property {string} [country]
 * @property {string} [merchantCategoryCode]
 * @property {string} [name]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [state]
 * @property {string} [street]
 * @property {string} [vuNummer]
 * @property {string} [zipcode]
 */

/**
 * @typedef {Object} UpdateTemplateXml
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 * @property {string} templateXml
 */

/**
 * @typedef {Object} UpdateTemplateXmlCreateData
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} templateName
 * @property {string} templateXml
 */

/**
 * @typedef {Object} Version
 * @property {string} [appName]
 * @property {string} [buildDate]
 * @property {string} [version]
 */

/**
 * @typedef {Object} VersionLoadMatch
 * @property {string} [appName]
 * @property {string} [buildDate]
 * @property {string} [version]
 */

