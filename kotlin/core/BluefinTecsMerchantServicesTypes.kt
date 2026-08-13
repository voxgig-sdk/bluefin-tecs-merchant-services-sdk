package voxgig.bluefintecsmerchantservicessdk.core

// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These types are documentation/DX reference shapes ONLY. The SDK ops take and
// return the loose object model (MutableMap<String, Any?> / Any?) at runtime,
// so these types are not wired into the op signatures — use them to describe a
// payload before converting it to a map. Every component is a nullable type, so
// an optional (req:false) key needs no distinct rendering.

@Suppress("unused")
object BluefinTecsMerchantServicesTypes {

  data class CancelTransaction(val acquirerId: String?, val acquirerName: String?, val actualBonusPoints: String?, val amount: Long?, val authorizationCode: String?, val balanceAmount: String?, val cardBrand: String?, val cardNumber: String?, val clientId: Long?, val currency: String?, val cvc: String?, val ecData: String?, val ecrData: String?, val emvData: String?, val exchangeFee: Long?, val exchangeRate: String?, val languageCode: String?, val merchantAddress: String?, val merchantName: String?, val merchantNumber: String?, val messageType: String?, val originalTraceNumber: Long?, val originalTransactionId: String?, val password: String?, val paymentReason: String?, val receiptFooter: String?, val receiptHeader: String?, val receiptLayout: Long?, val receiptNumber: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val svc: String?, val terminalId: Long?, val terminalLocation: String?, val traceNumber: Long?, val transactionDate: String?, val transactionId: String?, val txType: String?, val userData: String?)

  data class CancelTransactionCreateData(val acquirerId: String?, val acquirerName: String?, val actualBonusPoints: String?, val amount: Long?, val authorizationCode: String?, val balanceAmount: String?, val cardBrand: String?, val cardNumber: String?, val clientId: Long?, val currency: String?, val cvc: String?, val ecData: String?, val ecrData: String?, val emvData: String?, val exchangeFee: Long?, val exchangeRate: String?, val languageCode: String?, val merchantAddress: String?, val merchantName: String?, val merchantNumber: String?, val messageType: String?, val originalTraceNumber: Long?, val originalTransactionId: String?, val password: String?, val paymentReason: String?, val receiptFooter: String?, val receiptHeader: String?, val receiptLayout: Long?, val receiptNumber: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val svc: String?, val terminalId: Long?, val terminalLocation: String?, val traceNumber: Long?, val transactionDate: String?, val transactionId: String?, val txType: String?, val userData: String?)

  data class CheckCardBlackListed(val cardNo: String?, val responseCode: Long?, val responseMessage: String?)

  data class CheckCardBlackListedCreateData(val cardNo: String?, val responseCode: Long?, val responseMessage: String?)

  data class CreateProduct(val acquirerId: Long?, val responseCode: Long?, val responseMessage: String?, val templateName: String?, val templateType: String?, val templateXml: String?, val terminalType: String?)

  data class CreateProductCreateData(val acquirerId: Long?, val responseCode: Long?, val responseMessage: String?, val templateName: String?, val templateType: String?, val templateXml: String?, val terminalType: String?)

  data class DeactivateTerminal(val corporateUuid: String?, val deactivationReason: String?, val packageOrderUuid: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?)

  data class DeactivateTerminalCreateData(val corporateUuid: String?, val deactivationReason: String?, val packageOrderUuid: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?)

  data class DigitalServicesApi(val clearingDateFrom: String?, val clearingDateTo: String?, val responseCode: Long?, val responseMessage: String?, val txCount: Long?, val txIdEnd: String?, val txIdStart: String?, val txSeqNoEnd: Long?, val txSeqNoStart: Long?, val txTotal: Long?)

  data class DigitalServicesApiLoadMatch(val clearingDateFrom: String?, val clearingDateTo: String?, val responseCode: Long?, val responseMessage: String?, val txCount: Long?, val txIdEnd: String?, val txIdStart: String?, val txSeqNoEnd: Long?, val txSeqNoStart: Long?, val txTotal: Long?)

  data class DigitalServicesApiCreateData(val file_id: String?, val clearingDateFrom: String?, val clearingDateTo: String?, val responseCode: Long?, val responseMessage: String?, val txCount: Long?, val txIdEnd: String?, val txIdStart: String?, val txSeqNoEnd: Long?, val txSeqNoStart: Long?, val txTotal: Long?)

  data class EcDataEcom(val ecomData: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?, val transactionId: String?, val transactionType: String?)

  data class EcDataEcomCreateData(val ecomData: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?, val transactionId: String?, val transactionType: String?)

  data class EcomParameter(val ecomPass: String?, val ecomSkey: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?)

  data class EcomParameterCreateData(val ecomPass: String?, val ecomSkey: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?)

  data class EcrData(val ecrData: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?, val transactionId: String?, val transactionType: String?)

  data class EcrDataCreateData(val ecrData: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?, val transactionId: String?, val transactionType: String?)

  data class EmvData(val emvData: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?, val transactionId: String?, val transactionType: String?)

  data class EmvDataCreateData(val emvData: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?, val transactionId: String?, val transactionType: String?)

  data class EnableAcquiring(val accountNo: Long?, val additionalData: Map<String, Any?>?, val corporateUuid: String?, val currency: String?, val merchantCategoryCode: Long?, val packageOrderUuid: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val sortingCode: Long?, val templateName: String?, val terminalIdAcq: String?, val terminalIds: List<Any?>?, val vuNummer: String?)

  data class EnableAcquiringCreateData(val accountNo: Long?, val additionalData: Map<String, Any?>?, val corporateUuid: String?, val currency: String?, val merchantCategoryCode: Long?, val packageOrderUuid: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val sortingCode: Long?, val templateName: String?, val terminalIdAcq: String?, val terminalIds: List<Any?>?, val vuNummer: String?)

  data class GetMerchantContractNumber(val merchantContractNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class GetMerchantContractNumberCreateData(val merchantContractNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class GetTemplateXml(val responseCode: Long?, val responseMessage: String?, val templateName: String?)

  data class GetTemplateXmlCreateData(val responseCode: Long?, val responseMessage: String?, val templateName: String?)

  data class IntroduceMandator(val mandatorName: String?, val responseCode: Long?, val responseMessage: String?)

  data class IntroduceMandatorCreateData(val mandatorName: String?, val responseCode: Long?, val responseMessage: String?)

  data class IntroducePackage(val responseCode: Long?, val responseMessage: String?, val terminalTemplateDescription: String?)

  data class IntroducePackageCreateData(val responseCode: Long?, val responseMessage: String?, val terminalTemplateDescription: String?)

  data class KeepAlive(val hwserialno: String?, val kaDateTimeFrom: String?, val kaDateTimeTo: String?, val keepAliveData: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val terminalDateTimeFrom: String?, val terminalDateTimeTo: String?, val terminalId: Long?)

  data class KeepAliveCreateData(val hwserialno: String?, val kaDateTimeFrom: String?, val kaDateTimeTo: String?, val keepAliveData: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val terminalDateTimeFrom: String?, val terminalDateTimeTo: String?, val terminalId: Long?)

  data class ListTerminal(val corporateUuid: List<Any?>?, val filter: Map<String, Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val terminals: List<Any?>?)

  data class ListTerminalCreateData(val corporateUuid: List<Any?>?, val filter: Map<String, Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val terminals: List<Any?>?)

  data class MandatorClearingExport(val clearingDateFrom: String?, val clearingDateTo: String?, val pagination: Map<String, Any?>?, val records: List<Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class MandatorClearingExportCreateData(val clearingDateFrom: String?, val clearingDateTo: String?, val pagination: Map<String, Any?>?, val records: List<Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class MandatorClearingExportDownload(val clearingDateFrom: String?, val clearingDateTo: String?, val fileId: String?, val filenameTemplate: String?, val responseCode: Long?, val responseMessage: String?, val status: String?)

  data class MandatorClearingExportDownloadLoadMatch(val id: String?)

  data class MandatorClearingExportDownloadCreateData(val clearingDateFrom: String?, val clearingDateTo: String?, val fileId: String?, val filenameTemplate: String?, val responseCode: Long?, val responseMessage: String?, val status: String?)

  data class MandatorClearingExportSummary(val clearingDateFrom: String?, val clearingDateTo: String?, val records: List<Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class MandatorClearingExportSummaryCreateData(val clearingDateFrom: String?, val clearingDateTo: String?, val records: List<Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class MerchantPortalServicesApi(val authorizationCode: String?, val cardBrand: String?, val clearingAmountFrom: String?, val clearingAmountTo: String?, val clearingCurrency: String?, val clearingStatus: String?, val corporateUUID: String?, val orderByTransactionDate: String?, val pagination: Map<String, Any?>?, val receiptNumber: String?, val referencedTransactionId: String?, val retrievalReferenceNumber: String?, val sourceId: Long?, val tecsengineResponseCodeFrom: String?, val tecsengineResponseCodeTo: String?, val terminalId: Long?, val traceNumber: String?, val transactionAmountFrom: String?, val transactionAmountTo: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionId: String?, val transactionType: String?, val wallet: String?)

  data class MerchantPortalServicesApiCreateData(val authorizationCode: String?, val cardBrand: String?, val clearingAmountFrom: String?, val clearingAmountTo: String?, val clearingCurrency: String?, val clearingStatus: String?, val corporateUUID: String?, val orderByTransactionDate: String?, val pagination: Map<String, Any?>?, val receiptNumber: String?, val referencedTransactionId: String?, val retrievalReferenceNumber: String?, val sourceId: Long?, val tecsengineResponseCodeFrom: String?, val tecsengineResponseCodeTo: String?, val terminalId: Long?, val traceNumber: String?, val transactionAmountFrom: String?, val transactionAmountTo: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionId: String?, val transactionType: String?, val wallet: String?)

  data class MoveTid(val productorderuuids: List<Any?>?, val responseCode: Long?, val responseMessage: String?, val targetPackageorderuuid: String?, val targetProductorderuuid: String?)

  data class MoveTidCreateData(val productorderuuids: List<Any?>?, val responseCode: Long?, val responseMessage: String?, val targetPackageorderuuid: String?, val targetProductorderuuid: String?)

  data class PaymentManual(val acquirerName: String?, val amount: Long?, val authorizationNumber: String?, val cardNumber: String?, val cardType: String?, val currency: String?, val cvc: String?, val dateTimeTx: String?, val expDate: String?, val merchantId: String?, val originalTransactionId: String?, val password: String?, val responseCode: String?, val responseMessage: String?, val terminalId: String?, val transactionId: String?, val txtype: String?)

  data class PaymentManualCreateData(val acquirerName: String?, val amount: Long?, val authorizationNumber: String?, val cardNumber: String?, val cardType: String?, val currency: String?, val cvc: String?, val dateTimeTx: String?, val expDate: String?, val merchantId: String?, val originalTransactionId: String?, val password: String?, val responseCode: String?, val responseMessage: String?, val terminalId: String?, val transactionId: String?, val txtype: String?)

  data class PaymentSred(val amount: Long?, val currency: String?, val device: String?, val devicePayload: String?, val expDate: String?, val mode: String?, val panMasked: String?, val password: String?, val serial: String?, val serviceCode: String?, val terminalId: String?, val txtype: String?)

  data class PaymentSredCreateData(val amount: Long?, val currency: String?, val device: String?, val devicePayload: String?, val expDate: String?, val mode: String?, val panMasked: String?, val password: String?, val serial: String?, val serviceCode: String?, val terminalId: String?, val txtype: String?)

  data class PreAuthTransactionCompletion(val acquirerId: String?, val acquirerName: String?, val actualBonusPoints: String?, val amount: Long?, val authorizationCode: String?, val balanceAmount: String?, val cardBrand: String?, val cardNumber: String?, val cardNumberReference: String?, val clientId: Long?, val currency: String?, val cvc: String?, val ecData: String?, val ecrData: String?, val emvData: String?, val exchangeFee: Long?, val exchangeRate: String?, val languageCode: String?, val merchantAddress: String?, val merchantName: String?, val merchantNumber: String?, val messageType: String?, val originalTraceNumber: Long?, val originalTransactionId: String?, val password: String?, val paymentReason: String?, val receiptFooter: String?, val receiptHeader: String?, val receiptLayout: Long?, val receiptNumber: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val svc: String?, val terminalId: Long?, val terminalLocation: String?, val traceNumber: Long?, val transactionDate: String?, val transactionId: String?, val transactionType: String?, val txType: String?, val userData: String?)

  data class PreAuthTransactionCompletionCreateData(val acquirerId: String?, val acquirerName: String?, val actualBonusPoints: String?, val amount: Long?, val authorizationCode: String?, val balanceAmount: String?, val cardBrand: String?, val cardNumber: String?, val cardNumberReference: String?, val clientId: Long?, val currency: String?, val cvc: String?, val ecData: String?, val ecrData: String?, val emvData: String?, val exchangeFee: Long?, val exchangeRate: String?, val languageCode: String?, val merchantAddress: String?, val merchantName: String?, val merchantNumber: String?, val messageType: String?, val originalTraceNumber: Long?, val originalTransactionId: String?, val password: String?, val paymentReason: String?, val receiptFooter: String?, val receiptHeader: String?, val receiptLayout: Long?, val receiptNumber: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val svc: String?, val terminalId: Long?, val terminalLocation: String?, val traceNumber: Long?, val transactionDate: String?, val transactionId: String?, val transactionType: String?, val txType: String?, val userData: String?)

  data class ReactivateTerminal(val corporateUuid: String?, val packageOrderUuid: String?, val productOrderUuid: String?, val reactivationReason: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?)

  data class ReactivateTerminalCreateData(val corporateUuid: String?, val packageOrderUuid: String?, val productOrderUuid: String?, val reactivationReason: String?, val responseCode: Long?, val responseMessage: String?, val terminalId: Long?)

  data class RefundTransaction(val acquirerId: String?, val acquirerName: String?, val actualBonusPoints: String?, val amount: Long?, val authorizationCode: String?, val balanceAmount: String?, val cardBrand: String?, val cardNumber: String?, val clientId: Long?, val currency: String?, val cvc: String?, val ecData: String?, val ecrData: String?, val emvData: String?, val exchangeFee: Long?, val exchangeRate: String?, val languageCode: String?, val merchantAddress: String?, val merchantName: String?, val merchantNumber: String?, val messageType: String?, val originalTraceNumber: Long?, val originalTransactionId: String?, val password: String?, val paymentReason: String?, val receiptFooter: String?, val receiptHeader: String?, val receiptLayout: Long?, val receiptNumber: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val svc: String?, val terminalId: Long?, val terminalLocation: String?, val traceNumber: Long?, val transactionDate: String?, val transactionId: String?, val txType: String?, val userData: String?)

  data class RefundTransactionCreateData(val acquirerId: String?, val acquirerName: String?, val actualBonusPoints: String?, val amount: Long?, val authorizationCode: String?, val balanceAmount: String?, val cardBrand: String?, val cardNumber: String?, val clientId: Long?, val currency: String?, val cvc: String?, val ecData: String?, val ecrData: String?, val emvData: String?, val exchangeFee: Long?, val exchangeRate: String?, val languageCode: String?, val merchantAddress: String?, val merchantName: String?, val merchantNumber: String?, val messageType: String?, val originalTraceNumber: Long?, val originalTransactionId: String?, val password: String?, val paymentReason: String?, val receiptFooter: String?, val receiptHeader: String?, val receiptLayout: Long?, val receiptNumber: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val svc: String?, val terminalId: Long?, val terminalLocation: String?, val traceNumber: Long?, val transactionDate: String?, val transactionId: String?, val txType: String?, val userData: String?)

  data class RegisterTecsCompany(val corporateUuid: String?, val packageOrderUuid: String?, val partnerId: Long?, val partnerName: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val templateName: String?)

  data class RegisterTecsCompanyCreateData(val corporateUuid: String?, val packageOrderUuid: String?, val partnerId: Long?, val partnerName: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val templateName: String?)

  data class RegisterTerminal(val additionalData: Map<String, Any?>?, val corporateUuid: String?, val packageOrderUuid: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val tecsWebSecretKey: String?, val templateName: String?, val terminalCountryCode: String?, val terminalId: Long?, val terminalIdAcq: String?, val terminalLanguageCode: String?, val terminalLocation: String?, val terminalSerialNumber: String?, val tokenIOAlias: String?, val tokenIOIban: String?, val tokenIOMemberId: String?, val webShopUrl: String?)

  data class RegisterTerminalCreateData(val additionalData: Map<String, Any?>?, val corporateUuid: String?, val packageOrderUuid: String?, val productOrderUuid: String?, val responseCode: Long?, val responseMessage: String?, val tecsWebSecretKey: String?, val templateName: String?, val terminalCountryCode: String?, val terminalId: Long?, val terminalIdAcq: String?, val terminalLanguageCode: String?, val terminalLocation: String?, val terminalSerialNumber: String?, val tokenIOAlias: String?, val tokenIOIban: String?, val tokenIOMemberId: String?, val webShopUrl: String?)

  data class ReportData(val cardBrandReportData: List<Any?>?, val clearingDateFrom: String?, val clearingDateTo: String?, val corporateId: String?, val currency: String?, val responseCode: Long?, val responseMessage: String?, val sumOverCreditTx: Map<String, Any?>?, val sumOverDebitTx: Map<String, Any?>?, val terminalId: Long?)

  data class ReportDataCreateData(val cardBrandReportData: List<Any?>?, val clearingDateFrom: String?, val clearingDateTo: String?, val corporateId: String?, val currency: String?, val responseCode: Long?, val responseMessage: String?, val sumOverCreditTx: Map<String, Any?>?, val sumOverDebitTx: Map<String, Any?>?, val terminalId: Long?)

  data class StatusTransaction(val acquirerName: String?, val acquirerTerminalId: String?, val amount: Long?, val applicationCryptogram: String?, val authorizationCode: Any?, val authorizationDate: String?, val cardBrand: String?, val cardEntry: String?, val cardExpiration: String?, val cardNumber: String?, val clearingAmount: Long?, val clearingBatchId: String?, val clearingCurrency: String?, val clearingDate: String?, val clearingProcessedDate: String?, val clearingStatus: String?, val clientId: Long?, val currency: String?, val cvm: String?, val ecrData: String?, val emvApplicationId: String?, val emvApplicationLabel: String?, val merchantName: String?, val merchantNumber: String?, val originalClientId: String?, val originalTerminalId: Long?, val originalTransactionId: String?, val paymentReason: String?, val receiptNumber: String?, val responseCode: Long?, val responseCodeFromAS: String?, val responseMessage: String?, val retrievalReferenceNumber: String?, val serviceCode: String?, val settlementStatus: String?, val sourceId: Long?, val tecsengineResponseCode: Long?, val tecsengineResponseText: String?, val terminalEndOfDayDate: String?, val terminalId: Long?, val terminalLocation: String?, val tipAmount: Long?, val traceNumber: Long?, val transactionClearingDate: String?, val transactionDate: String?, val transactionId: String?, val transactionSeqNumber: Long?, val transactionServerDate: String?, val transactionSource: String?, val transactionType: String?)

  data class StatusTransactionCreateData(val acquirerName: String?, val acquirerTerminalId: String?, val amount: Long?, val applicationCryptogram: String?, val authorizationCode: Any?, val authorizationDate: String?, val cardBrand: String?, val cardEntry: String?, val cardExpiration: String?, val cardNumber: String?, val clearingAmount: Long?, val clearingBatchId: String?, val clearingCurrency: String?, val clearingDate: String?, val clearingProcessedDate: String?, val clearingStatus: String?, val clientId: Long?, val currency: String?, val cvm: String?, val ecrData: String?, val emvApplicationId: String?, val emvApplicationLabel: String?, val merchantName: String?, val merchantNumber: String?, val originalClientId: String?, val originalTerminalId: Long?, val originalTransactionId: String?, val paymentReason: String?, val receiptNumber: String?, val responseCode: Long?, val responseCodeFromAS: String?, val responseMessage: String?, val retrievalReferenceNumber: String?, val serviceCode: String?, val settlementStatus: String?, val sourceId: Long?, val tecsengineResponseCode: Long?, val tecsengineResponseText: String?, val terminalEndOfDayDate: String?, val terminalId: Long?, val terminalLocation: String?, val tipAmount: Long?, val traceNumber: Long?, val transactionClearingDate: String?, val transactionDate: String?, val transactionId: String?, val transactionSeqNumber: Long?, val transactionServerDate: String?, val transactionSource: String?, val transactionType: String?)

  data class StoreTerminalParameter(val acqTabNexo: Map<String, Any?>?, val configVersion: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val tidSent: String?)

  data class StoreTerminalParameterCreateData(val acqTabNexo: Map<String, Any?>?, val configVersion: String?, val responseCode: Long?, val responseMessage: String?, val serialNumber: String?, val tidSent: String?)

  data class TerminalId(val deviceSerialNumber: List<Any?>?, val duplicateTerminalIds: List<Any?>?, val responseCode: Long?, val responseMessage: String?, val terminals: List<Any?>?)

  data class TerminalIdCreateData(val deviceSerialNumber: List<Any?>?, val duplicateTerminalIds: List<Any?>?, val responseCode: Long?, val responseMessage: String?, val terminals: List<Any?>?)

  data class TransactionHistory(val authorizationCode: String?, val cardBrand: String?, val clearingAmountFrom: String?, val clearingAmountTo: String?, val clearingCurrency: String?, val clearingStatus: String?, val corporateUUID: String?, val orderByTransactionDate: String?, val pagination: Map<String, Any?>?, val paymentTokenPublicId: String?, val receiptNumber: String?, val referencedTransactionId: String?, val responseCode: Long?, val responseMessage: String?, val retrievalReferenceNumber: String?, val sourceId: Long?, val tecsengineResponseCodeFrom: String?, val tecsengineResponseCodeTo: String?, val terminalId: Long?, val traceNumber: String?, val transactionAmountFrom: String?, val transactionAmountTo: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionHistories: List<Any?>?, val transactionId: String?, val transactionType: String?, val wallet: String?)

  data class TransactionHistoryCreateData(val authorizationCode: String?, val cardBrand: String?, val clearingAmountFrom: String?, val clearingAmountTo: String?, val clearingCurrency: String?, val clearingStatus: String?, val corporateUUID: String?, val orderByTransactionDate: String?, val pagination: Map<String, Any?>?, val paymentTokenPublicId: String?, val receiptNumber: String?, val referencedTransactionId: String?, val responseCode: Long?, val responseMessage: String?, val retrievalReferenceNumber: String?, val sourceId: Long?, val tecsengineResponseCodeFrom: String?, val tecsengineResponseCodeTo: String?, val terminalId: Long?, val traceNumber: String?, val transactionAmountFrom: String?, val transactionAmountTo: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionHistories: List<Any?>?, val transactionId: String?, val transactionType: String?, val wallet: String?)

  data class TransactionsCount(val period: String?, val responseCode: Long?, val responseMessage: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionsCount: List<Any?>?)

  data class TransactionsCountCreateData(val period: String?, val responseCode: Long?, val responseMessage: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionsCount: List<Any?>?)

  data class TransactionsCountCardBrand(val period: String?, val responseCode: Long?, val responseMessage: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionsCount: List<Any?>?)

  data class TransactionsCountCardBrandCreateData(val period: String?, val responseCode: Long?, val responseMessage: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val transactionsCount: List<Any?>?)

  data class TransactionsTurnover(val period: String?, val responseCode: Long?, val responseMessage: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val turnovers: List<Any?>?)

  data class TransactionsTurnoverCreateData(val period: String?, val responseCode: Long?, val responseMessage: String?, val transactionDateFrom: String?, val transactionDateTo: String?, val turnovers: List<Any?>?)

  data class UpdateMerchant(val city: String?, val corporateUuid: String?, val country: String?, val merchantCategoryCode: String?, val name: String?, val responseCode: Long?, val responseMessage: String?, val state: String?, val street: String?, val vuNummer: String?, val zipcode: String?)

  data class UpdateMerchantCreateData(val city: String?, val corporateUuid: String?, val country: String?, val merchantCategoryCode: String?, val name: String?, val responseCode: Long?, val responseMessage: String?, val state: String?, val street: String?, val vuNummer: String?, val zipcode: String?)

  data class UpdateTemplateXml(val responseCode: Long?, val responseMessage: String?, val templateName: String?, val templateXml: String?)

  data class UpdateTemplateXmlCreateData(val responseCode: Long?, val responseMessage: String?, val templateName: String?, val templateXml: String?)

  data class Version(val appName: String?, val buildDate: String?, val version: String?)

  data class VersionLoadMatch(val appName: String?, val buildDate: String?, val version: String?)

}
