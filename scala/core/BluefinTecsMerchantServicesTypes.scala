package voxgig.bluefintecsmerchantservicessdk.core

// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These case classes are documentation/DX reference shapes ONLY. The SDK ops
// take and return the loose object model (java.util.Map[String, Object] /
// Object) at runtime, so these types are not wired into the op signatures —
// use them to describe a payload before converting it to a map. Every
// component is a boxed (nullable) type, so an optional (req:false) key needs
// no distinct rendering.

object BluefinTecsMerchantServicesTypes {

  final case class CancelTransaction(acquirerId: String, acquirerName: String, actualBonusPoints: String, amount: java.lang.Long, authorizationCode: String, balanceAmount: String, cardBrand: String, cardNumber: String, clientId: java.lang.Long, currency: String, cvc: String, ecData: String, ecrData: String, emvData: String, exchangeFee: java.lang.Long, exchangeRate: String, languageCode: String, merchantAddress: String, merchantName: String, merchantNumber: String, messageType: String, originalTraceNumber: java.lang.Long, originalTransactionId: String, password: String, paymentReason: String, receiptFooter: String, receiptHeader: String, receiptLayout: java.lang.Long, receiptNumber: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, svc: String, terminalId: java.lang.Long, terminalLocation: String, traceNumber: java.lang.Long, transactionDate: String, transactionId: String, txType: String, userData: String)

  final case class CancelTransactionCreateData(acquirerId: String, acquirerName: String, actualBonusPoints: String, amount: java.lang.Long, authorizationCode: String, balanceAmount: String, cardBrand: String, cardNumber: String, clientId: java.lang.Long, currency: String, cvc: String, ecData: String, ecrData: String, emvData: String, exchangeFee: java.lang.Long, exchangeRate: String, languageCode: String, merchantAddress: String, merchantName: String, merchantNumber: String, messageType: String, originalTraceNumber: java.lang.Long, originalTransactionId: String, password: String, paymentReason: String, receiptFooter: String, receiptHeader: String, receiptLayout: java.lang.Long, receiptNumber: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, svc: String, terminalId: java.lang.Long, terminalLocation: String, traceNumber: java.lang.Long, transactionDate: String, transactionId: String, txType: String, userData: String)

  final case class CheckCardBlackListed(cardNo: String, responseCode: java.lang.Long, responseMessage: String)

  final case class CheckCardBlackListedCreateData(cardNo: String, responseCode: java.lang.Long, responseMessage: String)

  final case class CreateProduct(acquirerId: java.lang.Long, responseCode: java.lang.Long, responseMessage: String, templateName: String, templateType: String, templateXml: String, terminalType: String)

  final case class CreateProductCreateData(acquirerId: java.lang.Long, responseCode: java.lang.Long, responseMessage: String, templateName: String, templateType: String, templateXml: String, terminalType: String)

  final case class DeactivateTerminal(corporateUuid: String, deactivationReason: String, packageOrderUuid: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long)

  final case class DeactivateTerminalCreateData(corporateUuid: String, deactivationReason: String, packageOrderUuid: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long)

  final case class DigitalServicesApi(clearingDateFrom: String, clearingDateTo: String, responseCode: java.lang.Long, responseMessage: String, txCount: java.lang.Long, txIdEnd: String, txIdStart: String, txSeqNoEnd: java.lang.Long, txSeqNoStart: java.lang.Long, txTotal: java.lang.Long)

  final case class DigitalServicesApiLoadMatch(clearingDateFrom: String, clearingDateTo: String, responseCode: java.lang.Long, responseMessage: String, txCount: java.lang.Long, txIdEnd: String, txIdStart: String, txSeqNoEnd: java.lang.Long, txSeqNoStart: java.lang.Long, txTotal: java.lang.Long)

  final case class DigitalServicesApiCreateData(file_id: String, clearingDateFrom: String, clearingDateTo: String, responseCode: java.lang.Long, responseMessage: String, txCount: java.lang.Long, txIdEnd: String, txIdStart: String, txSeqNoEnd: java.lang.Long, txSeqNoStart: java.lang.Long, txTotal: java.lang.Long)

  final case class EcDataEcom(ecomData: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long, transactionId: String, transactionType: String)

  final case class EcDataEcomCreateData(ecomData: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long, transactionId: String, transactionType: String)

  final case class EcomParameter(ecomPass: String, ecomSkey: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long)

  final case class EcomParameterCreateData(ecomPass: String, ecomSkey: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long)

  final case class EcrData(ecrData: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long, transactionId: String, transactionType: String)

  final case class EcrDataCreateData(ecrData: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long, transactionId: String, transactionType: String)

  final case class EmvData(emvData: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long, transactionId: String, transactionType: String)

  final case class EmvDataCreateData(emvData: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long, transactionId: String, transactionType: String)

  final case class EnableAcquiring(accountNo: java.lang.Long, additionalData: java.util.Map[String, Object], corporateUuid: String, currency: String, merchantCategoryCode: java.lang.Long, packageOrderUuid: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, sortingCode: java.lang.Long, templateName: String, terminalIdAcq: String, terminalIds: java.util.List[Object], vuNummer: String)

  final case class EnableAcquiringCreateData(accountNo: java.lang.Long, additionalData: java.util.Map[String, Object], corporateUuid: String, currency: String, merchantCategoryCode: java.lang.Long, packageOrderUuid: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, sortingCode: java.lang.Long, templateName: String, terminalIdAcq: String, terminalIds: java.util.List[Object], vuNummer: String)

  final case class GetMerchantContractNumber(merchantContractNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class GetMerchantContractNumberCreateData(merchantContractNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class GetTemplateXml(responseCode: java.lang.Long, responseMessage: String, templateName: String)

  final case class GetTemplateXmlCreateData(responseCode: java.lang.Long, responseMessage: String, templateName: String)

  final case class IntroduceMandator(mandatorName: String, responseCode: java.lang.Long, responseMessage: String)

  final case class IntroduceMandatorCreateData(mandatorName: String, responseCode: java.lang.Long, responseMessage: String)

  final case class IntroducePackage(responseCode: java.lang.Long, responseMessage: String, terminalTemplateDescription: String)

  final case class IntroducePackageCreateData(responseCode: java.lang.Long, responseMessage: String, terminalTemplateDescription: String)

  final case class KeepAlive(hwserialno: String, kaDateTimeFrom: String, kaDateTimeTo: String, keepAliveData: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, terminalDateTimeFrom: String, terminalDateTimeTo: String, terminalId: java.lang.Long)

  final case class KeepAliveCreateData(hwserialno: String, kaDateTimeFrom: String, kaDateTimeTo: String, keepAliveData: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, terminalDateTimeFrom: String, terminalDateTimeTo: String, terminalId: java.lang.Long)

  final case class ListTerminal(corporateUuid: java.util.List[Object], filter: java.util.Map[String, Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, terminals: java.util.List[Object])

  final case class ListTerminalCreateData(corporateUuid: java.util.List[Object], filter: java.util.Map[String, Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, terminals: java.util.List[Object])

  final case class MandatorClearingExport(clearingDateFrom: String, clearingDateTo: String, pagination: java.util.Map[String, Object], records: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String)

  final case class MandatorClearingExportCreateData(clearingDateFrom: String, clearingDateTo: String, pagination: java.util.Map[String, Object], records: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String)

  final case class MandatorClearingExportDownload(clearingDateFrom: String, clearingDateTo: String, fileId: String, filenameTemplate: String, id: String, responseCode: java.lang.Long, responseMessage: String, status: String)

  final case class MandatorClearingExportDownloadLoadMatch(id: String)

  final case class MandatorClearingExportDownloadCreateData(clearingDateFrom: String, clearingDateTo: String, fileId: String, filenameTemplate: String, id: String, responseCode: java.lang.Long, responseMessage: String, status: String)

  final case class MandatorClearingExportSummary(clearingDateFrom: String, clearingDateTo: String, records: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String)

  final case class MandatorClearingExportSummaryCreateData(clearingDateFrom: String, clearingDateTo: String, records: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String)

  final case class MerchantPortalServicesApi(authorizationCode: String, cardBrand: String, clearingAmountFrom: String, clearingAmountTo: String, clearingCurrency: String, clearingStatus: String, corporateUUID: String, orderByTransactionDate: String, pagination: java.util.Map[String, Object], receiptNumber: String, referencedTransactionId: String, retrievalReferenceNumber: String, sourceId: java.lang.Long, tecsengineResponseCodeFrom: String, tecsengineResponseCodeTo: String, terminalId: java.lang.Long, traceNumber: String, transactionAmountFrom: String, transactionAmountTo: String, transactionDateFrom: String, transactionDateTo: String, transactionId: String, transactionType: String, wallet: String)

  final case class MerchantPortalServicesApiCreateData(authorizationCode: String, cardBrand: String, clearingAmountFrom: String, clearingAmountTo: String, clearingCurrency: String, clearingStatus: String, corporateUUID: String, orderByTransactionDate: String, pagination: java.util.Map[String, Object], receiptNumber: String, referencedTransactionId: String, retrievalReferenceNumber: String, sourceId: java.lang.Long, tecsengineResponseCodeFrom: String, tecsengineResponseCodeTo: String, terminalId: java.lang.Long, traceNumber: String, transactionAmountFrom: String, transactionAmountTo: String, transactionDateFrom: String, transactionDateTo: String, transactionId: String, transactionType: String, wallet: String)

  final case class MoveTid(productorderuuids: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String, targetPackageorderuuid: String, targetProductorderuuid: String)

  final case class MoveTidCreateData(productorderuuids: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String, targetPackageorderuuid: String, targetProductorderuuid: String)

  final case class PaymentManual(acquirerName: String, amount: java.lang.Long, authorizationNumber: String, cardNumber: String, cardType: String, currency: String, cvc: String, dateTimeTx: String, expDate: String, merchantId: String, originalTransactionId: String, password: String, responseCode: String, responseMessage: String, terminalId: String, transactionId: String, txtype: String)

  final case class PaymentManualCreateData(acquirerName: String, amount: java.lang.Long, authorizationNumber: String, cardNumber: String, cardType: String, currency: String, cvc: String, dateTimeTx: String, expDate: String, merchantId: String, originalTransactionId: String, password: String, responseCode: String, responseMessage: String, terminalId: String, transactionId: String, txtype: String)

  final case class PaymentSred(amount: java.lang.Long, currency: String, device: String, devicePayload: String, expDate: String, mode: String, panMasked: String, password: String, serial: String, serviceCode: String, terminalId: String, txtype: String)

  final case class PaymentSredCreateData(amount: java.lang.Long, currency: String, device: String, devicePayload: String, expDate: String, mode: String, panMasked: String, password: String, serial: String, serviceCode: String, terminalId: String, txtype: String)

  final case class PreAuthTransactionCompletion(acquirerId: String, acquirerName: String, actualBonusPoints: String, amount: java.lang.Long, authorizationCode: String, balanceAmount: String, cardBrand: String, cardNumber: String, cardNumberReference: String, clientId: java.lang.Long, currency: String, cvc: String, ecData: String, ecrData: String, emvData: String, exchangeFee: java.lang.Long, exchangeRate: String, languageCode: String, merchantAddress: String, merchantName: String, merchantNumber: String, messageType: String, originalTraceNumber: java.lang.Long, originalTransactionId: String, password: String, paymentReason: String, receiptFooter: String, receiptHeader: String, receiptLayout: java.lang.Long, receiptNumber: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, svc: String, terminalId: java.lang.Long, terminalLocation: String, traceNumber: java.lang.Long, transactionDate: String, transactionId: String, transactionType: String, txType: String, userData: String)

  final case class PreAuthTransactionCompletionCreateData(acquirerId: String, acquirerName: String, actualBonusPoints: String, amount: java.lang.Long, authorizationCode: String, balanceAmount: String, cardBrand: String, cardNumber: String, cardNumberReference: String, clientId: java.lang.Long, currency: String, cvc: String, ecData: String, ecrData: String, emvData: String, exchangeFee: java.lang.Long, exchangeRate: String, languageCode: String, merchantAddress: String, merchantName: String, merchantNumber: String, messageType: String, originalTraceNumber: java.lang.Long, originalTransactionId: String, password: String, paymentReason: String, receiptFooter: String, receiptHeader: String, receiptLayout: java.lang.Long, receiptNumber: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, svc: String, terminalId: java.lang.Long, terminalLocation: String, traceNumber: java.lang.Long, transactionDate: String, transactionId: String, transactionType: String, txType: String, userData: String)

  final case class ReactivateTerminal(corporateUuid: String, packageOrderUuid: String, productOrderUuid: String, reactivationReason: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long)

  final case class ReactivateTerminalCreateData(corporateUuid: String, packageOrderUuid: String, productOrderUuid: String, reactivationReason: String, responseCode: java.lang.Long, responseMessage: String, terminalId: java.lang.Long)

  final case class RefundTransaction(acquirerId: String, acquirerName: String, actualBonusPoints: String, amount: java.lang.Long, authorizationCode: String, balanceAmount: String, cardBrand: String, cardNumber: String, clientId: java.lang.Long, currency: String, cvc: String, ecData: String, ecrData: String, emvData: String, exchangeFee: java.lang.Long, exchangeRate: String, languageCode: String, merchantAddress: String, merchantName: String, merchantNumber: String, messageType: String, originalTraceNumber: java.lang.Long, originalTransactionId: String, password: String, paymentReason: String, receiptFooter: String, receiptHeader: String, receiptLayout: java.lang.Long, receiptNumber: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, svc: String, terminalId: java.lang.Long, terminalLocation: String, traceNumber: java.lang.Long, transactionDate: String, transactionId: String, txType: String, userData: String)

  final case class RefundTransactionCreateData(acquirerId: String, acquirerName: String, actualBonusPoints: String, amount: java.lang.Long, authorizationCode: String, balanceAmount: String, cardBrand: String, cardNumber: String, clientId: java.lang.Long, currency: String, cvc: String, ecData: String, ecrData: String, emvData: String, exchangeFee: java.lang.Long, exchangeRate: String, languageCode: String, merchantAddress: String, merchantName: String, merchantNumber: String, messageType: String, originalTraceNumber: java.lang.Long, originalTransactionId: String, password: String, paymentReason: String, receiptFooter: String, receiptHeader: String, receiptLayout: java.lang.Long, receiptNumber: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, svc: String, terminalId: java.lang.Long, terminalLocation: String, traceNumber: java.lang.Long, transactionDate: String, transactionId: String, txType: String, userData: String)

  final case class RegisterTecsCompany(corporateUuid: String, packageOrderUuid: String, partnerId: java.lang.Long, partnerName: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, templateName: String)

  final case class RegisterTecsCompanyCreateData(corporateUuid: String, packageOrderUuid: String, partnerId: java.lang.Long, partnerName: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, templateName: String)

  final case class RegisterTerminal(additionalData: java.util.Map[String, Object], corporateUuid: String, packageOrderUuid: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, tecsWebSecretKey: String, templateName: String, terminalCountryCode: String, terminalId: java.lang.Long, terminalIdAcq: String, terminalLanguageCode: String, terminalLocation: String, terminalSerialNumber: String, tokenIOAlias: String, tokenIOIban: String, tokenIOMemberId: String, webShopUrl: String)

  final case class RegisterTerminalCreateData(additionalData: java.util.Map[String, Object], corporateUuid: String, packageOrderUuid: String, productOrderUuid: String, responseCode: java.lang.Long, responseMessage: String, tecsWebSecretKey: String, templateName: String, terminalCountryCode: String, terminalId: java.lang.Long, terminalIdAcq: String, terminalLanguageCode: String, terminalLocation: String, terminalSerialNumber: String, tokenIOAlias: String, tokenIOIban: String, tokenIOMemberId: String, webShopUrl: String)

  final case class ReportData(cardBrandReportData: java.util.List[Object], clearingDateFrom: String, clearingDateTo: String, corporateId: String, currency: String, responseCode: java.lang.Long, responseMessage: String, sumOverCreditTx: java.util.Map[String, Object], sumOverDebitTx: java.util.Map[String, Object], terminalId: java.lang.Long)

  final case class ReportDataCreateData(cardBrandReportData: java.util.List[Object], clearingDateFrom: String, clearingDateTo: String, corporateId: String, currency: String, responseCode: java.lang.Long, responseMessage: String, sumOverCreditTx: java.util.Map[String, Object], sumOverDebitTx: java.util.Map[String, Object], terminalId: java.lang.Long)

  final case class StatusTransaction(acquirerName: String, acquirerTerminalId: String, amount: java.lang.Long, applicationCryptogram: String, authorizationCode: Object, authorizationDate: String, cardBrand: String, cardEntry: String, cardExpiration: String, cardNumber: String, clearingAmount: java.lang.Long, clearingBatchId: String, clearingCurrency: String, clearingDate: String, clearingProcessedDate: String, clearingStatus: String, clientId: java.lang.Long, currency: String, cvm: String, ecrData: String, emvApplicationId: String, emvApplicationLabel: String, merchantName: String, merchantNumber: String, originalClientId: String, originalTerminalId: java.lang.Long, originalTransactionId: String, paymentReason: String, receiptNumber: String, responseCode: java.lang.Long, responseCodeFromAS: String, responseMessage: String, retrievalReferenceNumber: String, serviceCode: String, settlementStatus: String, sourceId: java.lang.Long, tecsengineResponseCode: java.lang.Long, tecsengineResponseText: String, terminalEndOfDayDate: String, terminalId: java.lang.Long, terminalLocation: String, tipAmount: java.lang.Long, traceNumber: java.lang.Long, transactionClearingDate: String, transactionDate: String, transactionId: String, transactionSeqNumber: java.lang.Long, transactionServerDate: String, transactionSource: String, transactionType: String)

  final case class StatusTransactionCreateData(acquirerName: String, acquirerTerminalId: String, amount: java.lang.Long, applicationCryptogram: String, authorizationCode: Object, authorizationDate: String, cardBrand: String, cardEntry: String, cardExpiration: String, cardNumber: String, clearingAmount: java.lang.Long, clearingBatchId: String, clearingCurrency: String, clearingDate: String, clearingProcessedDate: String, clearingStatus: String, clientId: java.lang.Long, currency: String, cvm: String, ecrData: String, emvApplicationId: String, emvApplicationLabel: String, merchantName: String, merchantNumber: String, originalClientId: String, originalTerminalId: java.lang.Long, originalTransactionId: String, paymentReason: String, receiptNumber: String, responseCode: java.lang.Long, responseCodeFromAS: String, responseMessage: String, retrievalReferenceNumber: String, serviceCode: String, settlementStatus: String, sourceId: java.lang.Long, tecsengineResponseCode: java.lang.Long, tecsengineResponseText: String, terminalEndOfDayDate: String, terminalId: java.lang.Long, terminalLocation: String, tipAmount: java.lang.Long, traceNumber: java.lang.Long, transactionClearingDate: String, transactionDate: String, transactionId: String, transactionSeqNumber: java.lang.Long, transactionServerDate: String, transactionSource: String, transactionType: String)

  final case class StoreTerminalParameter(acqTabNexo: java.util.Map[String, Object], configVersion: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, tidSent: String)

  final case class StoreTerminalParameterCreateData(acqTabNexo: java.util.Map[String, Object], configVersion: String, responseCode: java.lang.Long, responseMessage: String, serialNumber: String, tidSent: String)

  final case class TerminalId(deviceSerialNumber: java.util.List[Object], duplicateTerminalIds: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String, terminals: java.util.List[Object])

  final case class TerminalIdCreateData(deviceSerialNumber: java.util.List[Object], duplicateTerminalIds: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String, terminals: java.util.List[Object])

  final case class TransactionHistory(authorizationCode: String, cardBrand: String, clearingAmountFrom: String, clearingAmountTo: String, clearingCurrency: String, clearingStatus: String, corporateUUID: String, orderByTransactionDate: String, pagination: java.util.Map[String, Object], paymentTokenPublicId: String, receiptNumber: String, referencedTransactionId: String, responseCode: java.lang.Long, responseMessage: String, retrievalReferenceNumber: String, sourceId: java.lang.Long, tecsengineResponseCodeFrom: String, tecsengineResponseCodeTo: String, terminalId: java.lang.Long, traceNumber: String, transactionAmountFrom: String, transactionAmountTo: String, transactionDateFrom: String, transactionDateTo: String, transactionHistories: java.util.List[Object], transactionId: String, transactionType: String, wallet: String)

  final case class TransactionHistoryCreateData(authorizationCode: String, cardBrand: String, clearingAmountFrom: String, clearingAmountTo: String, clearingCurrency: String, clearingStatus: String, corporateUUID: String, orderByTransactionDate: String, pagination: java.util.Map[String, Object], paymentTokenPublicId: String, receiptNumber: String, referencedTransactionId: String, responseCode: java.lang.Long, responseMessage: String, retrievalReferenceNumber: String, sourceId: java.lang.Long, tecsengineResponseCodeFrom: String, tecsengineResponseCodeTo: String, terminalId: java.lang.Long, traceNumber: String, transactionAmountFrom: String, transactionAmountTo: String, transactionDateFrom: String, transactionDateTo: String, transactionHistories: java.util.List[Object], transactionId: String, transactionType: String, wallet: String)

  final case class TransactionsCount(period: String, responseCode: java.lang.Long, responseMessage: String, transactionDateFrom: String, transactionDateTo: String, transactionsCount: java.util.List[Object])

  final case class TransactionsCountCreateData(period: String, responseCode: java.lang.Long, responseMessage: String, transactionDateFrom: String, transactionDateTo: String, transactionsCount: java.util.List[Object])

  final case class TransactionsCountCardBrand(period: String, responseCode: java.lang.Long, responseMessage: String, transactionDateFrom: String, transactionDateTo: String, transactionsCount: java.util.List[Object])

  final case class TransactionsCountCardBrandCreateData(period: String, responseCode: java.lang.Long, responseMessage: String, transactionDateFrom: String, transactionDateTo: String, transactionsCount: java.util.List[Object])

  final case class TransactionsTurnover(period: String, responseCode: java.lang.Long, responseMessage: String, transactionDateFrom: String, transactionDateTo: String, turnovers: java.util.List[Object])

  final case class TransactionsTurnoverCreateData(period: String, responseCode: java.lang.Long, responseMessage: String, transactionDateFrom: String, transactionDateTo: String, turnovers: java.util.List[Object])

  final case class UpdateMerchant(city: String, corporateUuid: String, country: String, merchantCategoryCode: String, name: String, responseCode: java.lang.Long, responseMessage: String, state: String, street: String, vuNummer: String, zipcode: String)

  final case class UpdateMerchantCreateData(city: String, corporateUuid: String, country: String, merchantCategoryCode: String, name: String, responseCode: java.lang.Long, responseMessage: String, state: String, street: String, vuNummer: String, zipcode: String)

  final case class UpdateTemplateXml(responseCode: java.lang.Long, responseMessage: String, templateName: String, templateXml: String)

  final case class UpdateTemplateXmlCreateData(responseCode: java.lang.Long, responseMessage: String, templateName: String, templateXml: String)

  final case class Version(appName: String, buildDate: String, version: String)

  final case class VersionLoadMatch(appName: String, buildDate: String, version: String)

}
