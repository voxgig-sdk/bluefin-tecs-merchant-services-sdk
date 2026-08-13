// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return the
// `Value` enum), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support.

import Foundation

/// CancelTransaction is the typed data model for the cancel_transaction entity.
public struct CancelTransaction {
  public var acquirerId: String?
  public var acquirerName: String?
  public var actualBonusPoints: String?
  public var amount: Int?
  public var authorizationCode: String?
  public var balanceAmount: String?
  public var cardBrand: String?
  public var cardNumber: String?
  public var clientId: Int
  public var currency: String
  public var cvc: String?
  public var ecData: String?
  public var ecrData: String?
  public var emvData: String?
  public var exchangeFee: Int?
  public var exchangeRate: String?
  public var languageCode: String?
  public var merchantAddress: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var messageType: String?
  public var originalTraceNumber: Int?
  public var originalTransactionId: String?
  public var password: String?
  public var paymentReason: String?
  public var receiptFooter: String?
  public var receiptHeader: String?
  public var receiptLayout: Int?
  public var receiptNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String?
  public var svc: String?
  public var terminalId: Int
  public var terminalLocation: String?
  public var traceNumber: Int?
  public var transactionDate: String?
  public var transactionId: String?
  public var txType: String?
  public var userData: String?
}

/// CancelTransactionCreateData is the typed request payload for CancelTransaction.create.
public struct CancelTransactionCreateData {
  public var acquirerId: String?
  public var acquirerName: String?
  public var actualBonusPoints: String?
  public var amount: Int?
  public var authorizationCode: String?
  public var balanceAmount: String?
  public var cardBrand: String?
  public var cardNumber: String?
  public var clientId: Int
  public var currency: String
  public var cvc: String?
  public var ecData: String?
  public var ecrData: String?
  public var emvData: String?
  public var exchangeFee: Int?
  public var exchangeRate: String?
  public var languageCode: String?
  public var merchantAddress: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var messageType: String?
  public var originalTraceNumber: Int?
  public var originalTransactionId: String?
  public var password: String?
  public var paymentReason: String?
  public var receiptFooter: String?
  public var receiptHeader: String?
  public var receiptLayout: Int?
  public var receiptNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String?
  public var svc: String?
  public var terminalId: Int
  public var terminalLocation: String?
  public var traceNumber: Int?
  public var transactionDate: String?
  public var transactionId: String?
  public var txType: String?
  public var userData: String?
}

/// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
public struct CheckCardBlackListed {
  public var cardNo: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.create.
public struct CheckCardBlackListedCreateData {
  public var cardNo: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// CreateProduct is the typed data model for the create_product entity.
public struct CreateProduct {
  public var acquirerId: Int?
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
  public var templateType: String
  public var templateXml: String
  public var terminalType: String
}

/// CreateProductCreateData is the typed request payload for CreateProduct.create.
public struct CreateProductCreateData {
  public var acquirerId: Int?
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
  public var templateType: String
  public var templateXml: String
  public var terminalType: String
}

/// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
public struct DeactivateTerminal {
  public var corporateUuid: String?
  public var deactivationReason: String
  public var packageOrderUuid: String?
  public var productOrderUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
}

/// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.create.
public struct DeactivateTerminalCreateData {
  public var corporateUuid: String?
  public var deactivationReason: String
  public var packageOrderUuid: String?
  public var productOrderUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
}

/// DigitalServicesApi is the typed data model for the digital_services_api entity.
public struct DigitalServicesApi {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var txCount: Int?
  public var txIdEnd: String?
  public var txIdStart: String?
  public var txSeqNoEnd: Int?
  public var txSeqNoStart: Int?
  public var txTotal: Int?
}

/// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.load.
public struct DigitalServicesApiLoadMatch {
  public var clearingDateFrom: String?
  public var clearingDateTo: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var txCount: Int?
  public var txIdEnd: String?
  public var txIdStart: String?
  public var txSeqNoEnd: Int?
  public var txSeqNoStart: Int?
  public var txTotal: Int?
}

/// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.create.
public struct DigitalServicesApiCreateData {
  public var fileId: String?
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var txCount: Int?
  public var txIdEnd: String?
  public var txIdStart: String?
  public var txSeqNoEnd: Int?
  public var txSeqNoStart: Int?
  public var txTotal: Int?
}

/// EcDataEcom is the typed data model for the ec_data_ecom entity.
public struct EcDataEcom {
  public var ecomData: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
  public var transactionId: String
  public var transactionType: String
}

/// EcDataEcomCreateData is the typed request payload for EcDataEcom.create.
public struct EcDataEcomCreateData {
  public var ecomData: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
  public var transactionId: String
  public var transactionType: String
}

/// EcomParameter is the typed data model for the ecom_parameter entity.
public struct EcomParameter {
  public var ecomPass: String?
  public var ecomSkey: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
}

/// EcomParameterCreateData is the typed request payload for EcomParameter.create.
public struct EcomParameterCreateData {
  public var ecomPass: String?
  public var ecomSkey: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
}

/// EcrData is the typed data model for the ecr_data entity.
public struct EcrData {
  public var ecrData: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
  public var transactionId: String
  public var transactionType: String
}

/// EcrDataCreateData is the typed request payload for EcrData.create.
public struct EcrDataCreateData {
  public var ecrData: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
  public var transactionId: String
  public var transactionType: String
}

/// EmvData is the typed data model for the emv_data entity.
public struct EmvData {
  public var emvData: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
  public var transactionId: String
  public var transactionType: String
}

/// EmvDataCreateData is the typed request payload for EmvData.create.
public struct EmvDataCreateData {
  public var emvData: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
  public var transactionId: String
  public var transactionType: String
}

/// EnableAcquiring is the typed data model for the enable_acquiring entity.
public struct EnableAcquiring {
  public var accountNo: Int?
  public var additionalData: VMap?
  public var corporateUuid: String
  public var currency: String
  public var merchantCategoryCode: Int
  public var packageOrderUuid: String
  public var productOrderUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var sortingCode: Int?
  public var templateName: String
  public var terminalIdAcq: String?
  public var terminalIds: [Value]?
  public var vuNummer: String?
}

/// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.create.
public struct EnableAcquiringCreateData {
  public var accountNo: Int?
  public var additionalData: VMap?
  public var corporateUuid: String
  public var currency: String
  public var merchantCategoryCode: Int
  public var packageOrderUuid: String
  public var productOrderUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var sortingCode: Int?
  public var templateName: String
  public var terminalIdAcq: String?
  public var terminalIds: [Value]?
  public var vuNummer: String?
}

/// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
public struct GetMerchantContractNumber {
  public var merchantContractNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.create.
public struct GetMerchantContractNumberCreateData {
  public var merchantContractNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// GetTemplateXml is the typed data model for the get_template_xml entity.
public struct GetTemplateXml {
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
}

/// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.create.
public struct GetTemplateXmlCreateData {
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
}

/// IntroduceMandator is the typed data model for the introduce_mandator entity.
public struct IntroduceMandator {
  public var mandatorName: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.create.
public struct IntroduceMandatorCreateData {
  public var mandatorName: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// IntroducePackage is the typed data model for the introduce_package entity.
public struct IntroducePackage {
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalTemplateDescription: String
}

/// IntroducePackageCreateData is the typed request payload for IntroducePackage.create.
public struct IntroducePackageCreateData {
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalTemplateDescription: String
}

/// KeepAlive is the typed data model for the keep_alive entity.
public struct KeepAlive {
  public var hwserialno: String?
  public var kaDateTimeFrom: String?
  public var kaDateTimeTo: String?
  public var keepAliveData: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalDateTimeFrom: String?
  public var terminalDateTimeTo: String?
  public var terminalId: Int?
}

/// KeepAliveCreateData is the typed request payload for KeepAlive.create.
public struct KeepAliveCreateData {
  public var hwserialno: String?
  public var kaDateTimeFrom: String?
  public var kaDateTimeTo: String?
  public var keepAliveData: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalDateTimeFrom: String?
  public var terminalDateTimeTo: String?
  public var terminalId: Int?
}

/// ListTerminal is the typed data model for the list_terminal entity.
public struct ListTerminal {
  public var corporateUuid: [Value]?
  public var filter: VMap?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminals: [Value]?
}

/// ListTerminalCreateData is the typed request payload for ListTerminal.create.
public struct ListTerminalCreateData {
  public var corporateUuid: [Value]?
  public var filter: VMap?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminals: [Value]?
}

/// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
public struct MandatorClearingExport {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var pagination: VMap?
  public var records: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.create.
public struct MandatorClearingExportCreateData {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var pagination: VMap?
  public var records: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
public struct MandatorClearingExportDownload {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var fileId: String?
  public var filenameTemplate: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var status: String?
}

/// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.load.
public struct MandatorClearingExportDownloadLoadMatch {
  public var id: String
}

/// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.create.
public struct MandatorClearingExportDownloadCreateData {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var fileId: String?
  public var filenameTemplate: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var status: String?
}

/// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
public struct MandatorClearingExportSummary {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var records: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.create.
public struct MandatorClearingExportSummaryCreateData {
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var records: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
public struct MerchantPortalServicesApi {
  public var 3DSecure: String?
  public var authorizationCode: String?
  public var cardBrand: String?
  public var clearingAmountFrom: String?
  public var clearingAmountTo: String?
  public var clearingCurrency: String?
  public var clearingStatus: String?
  public var corporateUuid: String?
  public var orderByTransactionDate: String?
  public var pagination: VMap?
  public var receiptNumber: String?
  public var referencedTransactionId: String?
  public var retrievalReferenceNumber: String?
  public var sourceId: Int?
  public var tecsengineResponseCodeFrom: String?
  public var tecsengineResponseCodeTo: String?
  public var terminalId: Int?
  public var traceNumber: String?
  public var transactionAmountFrom: String?
  public var transactionAmountTo: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionId: String?
  public var transactionType: String?
  public var wallet: String?
}

/// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.create.
public struct MerchantPortalServicesApiCreateData {
  public var 3DSecure: String?
  public var authorizationCode: String?
  public var cardBrand: String?
  public var clearingAmountFrom: String?
  public var clearingAmountTo: String?
  public var clearingCurrency: String?
  public var clearingStatus: String?
  public var corporateUuid: String?
  public var orderByTransactionDate: String?
  public var pagination: VMap?
  public var receiptNumber: String?
  public var referencedTransactionId: String?
  public var retrievalReferenceNumber: String?
  public var sourceId: Int?
  public var tecsengineResponseCodeFrom: String?
  public var tecsengineResponseCodeTo: String?
  public var terminalId: Int?
  public var traceNumber: String?
  public var transactionAmountFrom: String?
  public var transactionAmountTo: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionId: String?
  public var transactionType: String?
  public var wallet: String?
}

/// MoveTid is the typed data model for the move_tid entity.
public struct MoveTid {
  public var productorderuuids: [Value]
  public var responseCode: Int?
  public var responseMessage: String?
  public var targetPackageorderuuid: String?
  public var targetProductorderuuid: String?
}

/// MoveTidCreateData is the typed request payload for MoveTid.create.
public struct MoveTidCreateData {
  public var productorderuuids: [Value]
  public var responseCode: Int?
  public var responseMessage: String?
  public var targetPackageorderuuid: String?
  public var targetProductorderuuid: String?
}

/// PaymentManual is the typed data model for the payment_manual entity.
public struct PaymentManual {
  public var acquirerName: String?
  public var amount: Int
  public var authorizationNumber: String?
  public var cardNumber: String
  public var cardType: String?
  public var currency: String
  public var cvc: String?
  public var dateTimeTx: String?
  public var expDate: String
  public var merchantId: String?
  public var originalTransactionId: String?
  public var password: String?
  public var responseCode: String?
  public var responseMessage: String?
  public var terminalId: String?
  public var transactionId: String?
  public var txtype: String
}

/// PaymentManualCreateData is the typed request payload for PaymentManual.create.
public struct PaymentManualCreateData {
  public var acquirerName: String?
  public var amount: Int
  public var authorizationNumber: String?
  public var cardNumber: String
  public var cardType: String?
  public var currency: String
  public var cvc: String?
  public var dateTimeTx: String?
  public var expDate: String
  public var merchantId: String?
  public var originalTransactionId: String?
  public var password: String?
  public var responseCode: String?
  public var responseMessage: String?
  public var terminalId: String?
  public var transactionId: String?
  public var txtype: String
}

/// PaymentSred is the typed data model for the payment_sred entity.
public struct PaymentSred {
  public var amount: Int
  public var currency: String
  public var device: String?
  public var devicePayload: String
  public var expDate: String?
  public var mode: String?
  public var panMasked: String?
  public var password: String?
  public var serial: String?
  public var serviceCode: String?
  public var terminalId: String
  public var txtype: String
}

/// PaymentSredCreateData is the typed request payload for PaymentSred.create.
public struct PaymentSredCreateData {
  public var amount: Int
  public var currency: String
  public var device: String?
  public var devicePayload: String
  public var expDate: String?
  public var mode: String?
  public var panMasked: String?
  public var password: String?
  public var serial: String?
  public var serviceCode: String?
  public var terminalId: String
  public var txtype: String
}

/// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
public struct PreAuthTransactionCompletion {
  public var acquirerId: String?
  public var acquirerName: String?
  public var actualBonusPoints: String?
  public var amount: Int?
  public var authorizationCode: String?
  public var balanceAmount: String?
  public var cardBrand: String?
  public var cardNumber: String?
  public var cardNumberReference: String
  public var clientId: Int
  public var currency: String
  public var cvc: String?
  public var ecData: String?
  public var ecrData: String?
  public var emvData: String?
  public var exchangeFee: Int?
  public var exchangeRate: String?
  public var languageCode: String?
  public var merchantAddress: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var messageType: String?
  public var originalTraceNumber: Int?
  public var originalTransactionId: String?
  public var password: String?
  public var paymentReason: String?
  public var receiptFooter: String?
  public var receiptHeader: String?
  public var receiptLayout: Int?
  public var receiptNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String?
  public var svc: String?
  public var terminalId: Int
  public var terminalLocation: String?
  public var traceNumber: Int?
  public var transactionDate: String?
  public var transactionId: String?
  public var transactionType: String
  public var txType: String?
  public var userData: String?
}

/// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.create.
public struct PreAuthTransactionCompletionCreateData {
  public var acquirerId: String?
  public var acquirerName: String?
  public var actualBonusPoints: String?
  public var amount: Int?
  public var authorizationCode: String?
  public var balanceAmount: String?
  public var cardBrand: String?
  public var cardNumber: String?
  public var cardNumberReference: String
  public var clientId: Int
  public var currency: String
  public var cvc: String?
  public var ecData: String?
  public var ecrData: String?
  public var emvData: String?
  public var exchangeFee: Int?
  public var exchangeRate: String?
  public var languageCode: String?
  public var merchantAddress: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var messageType: String?
  public var originalTraceNumber: Int?
  public var originalTransactionId: String?
  public var password: String?
  public var paymentReason: String?
  public var receiptFooter: String?
  public var receiptHeader: String?
  public var receiptLayout: Int?
  public var receiptNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String?
  public var svc: String?
  public var terminalId: Int
  public var terminalLocation: String?
  public var traceNumber: Int?
  public var transactionDate: String?
  public var transactionId: String?
  public var transactionType: String
  public var txType: String?
  public var userData: String?
}

/// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
public struct ReactivateTerminal {
  public var corporateUuid: String?
  public var packageOrderUuid: String?
  public var productOrderUuid: String?
  public var reactivationReason: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
}

/// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.create.
public struct ReactivateTerminalCreateData {
  public var corporateUuid: String?
  public var packageOrderUuid: String?
  public var productOrderUuid: String?
  public var reactivationReason: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminalId: Int
}

/// RefundTransaction is the typed data model for the refund_transaction entity.
public struct RefundTransaction {
  public var acquirerId: String?
  public var acquirerName: String?
  public var actualBonusPoints: String?
  public var amount: Int?
  public var authorizationCode: String?
  public var balanceAmount: String?
  public var cardBrand: String?
  public var cardNumber: String?
  public var clientId: Int
  public var currency: String
  public var cvc: String?
  public var ecData: String?
  public var ecrData: String?
  public var emvData: String?
  public var exchangeFee: Int?
  public var exchangeRate: String?
  public var languageCode: String?
  public var merchantAddress: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var messageType: String?
  public var originalTraceNumber: Int?
  public var originalTransactionId: String?
  public var password: String?
  public var paymentReason: String?
  public var receiptFooter: String?
  public var receiptHeader: String?
  public var receiptLayout: Int?
  public var receiptNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String?
  public var svc: String?
  public var terminalId: Int
  public var terminalLocation: String?
  public var traceNumber: Int?
  public var transactionDate: String?
  public var transactionId: String?
  public var txType: String?
  public var userData: String?
}

/// RefundTransactionCreateData is the typed request payload for RefundTransaction.create.
public struct RefundTransactionCreateData {
  public var acquirerId: String?
  public var acquirerName: String?
  public var actualBonusPoints: String?
  public var amount: Int?
  public var authorizationCode: String?
  public var balanceAmount: String?
  public var cardBrand: String?
  public var cardNumber: String?
  public var clientId: Int
  public var currency: String
  public var cvc: String?
  public var ecData: String?
  public var ecrData: String?
  public var emvData: String?
  public var exchangeFee: Int?
  public var exchangeRate: String?
  public var languageCode: String?
  public var merchantAddress: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var messageType: String?
  public var originalTraceNumber: Int?
  public var originalTransactionId: String?
  public var password: String?
  public var paymentReason: String?
  public var receiptFooter: String?
  public var receiptHeader: String?
  public var receiptLayout: Int?
  public var receiptNumber: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String?
  public var svc: String?
  public var terminalId: Int
  public var terminalLocation: String?
  public var traceNumber: Int?
  public var transactionDate: String?
  public var transactionId: String?
  public var txType: String?
  public var userData: String?
}

/// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
public struct RegisterTecsCompany {
  public var corporateUuid: String
  public var packageOrderUuid: String
  public var partnerId: Int?
  public var partnerName: String?
  public var productOrderUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
}

/// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.create.
public struct RegisterTecsCompanyCreateData {
  public var corporateUuid: String
  public var packageOrderUuid: String
  public var partnerId: Int?
  public var partnerName: String?
  public var productOrderUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
}

/// RegisterTerminal is the typed data model for the register_terminal entity.
public struct RegisterTerminal {
  public var additionalData: VMap?
  public var corporateUuid: String
  public var packageOrderUuid: String
  public var productOrderUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var tecsWebSecretKey: String?
  public var templateName: String
  public var terminalCountryCode: String
  public var terminalId: Int?
  public var terminalIdAcq: String?
  public var terminalLanguageCode: String
  public var terminalLocation: String
  public var terminalSerialNumber: String?
  public var tokenIoAlias: String?
  public var tokenIoIban: String?
  public var tokenIoMemberId: String?
  public var webShopUrl: String?
}

/// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.create.
public struct RegisterTerminalCreateData {
  public var additionalData: VMap?
  public var corporateUuid: String
  public var packageOrderUuid: String
  public var productOrderUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var tecsWebSecretKey: String?
  public var templateName: String
  public var terminalCountryCode: String
  public var terminalId: Int?
  public var terminalIdAcq: String?
  public var terminalLanguageCode: String
  public var terminalLocation: String
  public var terminalSerialNumber: String?
  public var tokenIoAlias: String?
  public var tokenIoIban: String?
  public var tokenIoMemberId: String?
  public var webShopUrl: String?
}

/// ReportData is the typed data model for the report_data entity.
public struct ReportData {
  public var cardBrandReportData: [Value]?
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var corporateId: String
  public var currency: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var sumOverCreditTx: VMap?
  public var sumOverDebitTx: VMap?
  public var terminalId: Int?
}

/// ReportDataCreateData is the typed request payload for ReportData.create.
public struct ReportDataCreateData {
  public var cardBrandReportData: [Value]?
  public var clearingDateFrom: String
  public var clearingDateTo: String
  public var corporateId: String
  public var currency: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var sumOverCreditTx: VMap?
  public var sumOverDebitTx: VMap?
  public var terminalId: Int?
}

/// StatusTransaction is the typed data model for the status_transaction entity.
public struct StatusTransaction {
  public var acquirerName: String?
  public var acquirerTerminalId: String?
  public var amount: Int?
  public var applicationCryptogram: String?
  public var authorizationCode: Value?
  public var authorizationDate: String?
  public var cardBrand: String?
  public var cardEntry: String?
  public var cardExpiration: String?
  public var cardNumber: String?
  public var clearingAmount: Int?
  public var clearingBatchId: String?
  public var clearingCurrency: String?
  public var clearingDate: String?
  public var clearingProcessedDate: String?
  public var clearingStatus: String?
  public var clientId: Int?
  public var currency: String?
  public var cvm: String?
  public var ecrData: String?
  public var emvApplicationId: String?
  public var emvApplicationLabel: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var originalClientId: String?
  public var originalTerminalId: Int?
  public var originalTransactionId: String?
  public var paymentReason: String?
  public var receiptNumber: String?
  public var responseCode: Int?
  public var responseCodeFromAs: String?
  public var responseMessage: String?
  public var retrievalReferenceNumber: String?
  public var serviceCode: String?
  public var settlementStatus: String?
  public var sourceId: Int?
  public var tecsengineResponseCode: Int?
  public var tecsengineResponseText: String?
  public var terminalEndOfDayDate: String?
  public var terminalId: Int?
  public var terminalLocation: String?
  public var tipAmount: Int?
  public var traceNumber: Int?
  public var transactionClearingDate: String?
  public var transactionDate: String?
  public var transactionId: String?
  public var transactionSeqNumber: Int?
  public var transactionServerDate: String?
  public var transactionSource: String?
  public var transactionType: String?
}

/// StatusTransactionCreateData is the typed request payload for StatusTransaction.create.
public struct StatusTransactionCreateData {
  public var acquirerName: String?
  public var acquirerTerminalId: String?
  public var amount: Int?
  public var applicationCryptogram: String?
  public var authorizationCode: Value?
  public var authorizationDate: String?
  public var cardBrand: String?
  public var cardEntry: String?
  public var cardExpiration: String?
  public var cardNumber: String?
  public var clearingAmount: Int?
  public var clearingBatchId: String?
  public var clearingCurrency: String?
  public var clearingDate: String?
  public var clearingProcessedDate: String?
  public var clearingStatus: String?
  public var clientId: Int?
  public var currency: String?
  public var cvm: String?
  public var ecrData: String?
  public var emvApplicationId: String?
  public var emvApplicationLabel: String?
  public var merchantName: String?
  public var merchantNumber: String?
  public var originalClientId: String?
  public var originalTerminalId: Int?
  public var originalTransactionId: String?
  public var paymentReason: String?
  public var receiptNumber: String?
  public var responseCode: Int?
  public var responseCodeFromAs: String?
  public var responseMessage: String?
  public var retrievalReferenceNumber: String?
  public var serviceCode: String?
  public var settlementStatus: String?
  public var sourceId: Int?
  public var tecsengineResponseCode: Int?
  public var tecsengineResponseText: String?
  public var terminalEndOfDayDate: String?
  public var terminalId: Int?
  public var terminalLocation: String?
  public var tipAmount: Int?
  public var traceNumber: Int?
  public var transactionClearingDate: String?
  public var transactionDate: String?
  public var transactionId: String?
  public var transactionSeqNumber: Int?
  public var transactionServerDate: String?
  public var transactionSource: String?
  public var transactionType: String?
}

/// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
public struct StoreTerminalParameter {
  public var acqTabNexo: VMap?
  public var configVersion: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String
  public var tidSent: String?
}

/// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.create.
public struct StoreTerminalParameterCreateData {
  public var acqTabNexo: VMap?
  public var configVersion: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var serialNumber: String
  public var tidSent: String?
}

/// TerminalId is the typed data model for the terminal_id entity.
public struct TerminalId {
  public var deviceSerialNumber: [Value]
  public var duplicateTerminalIds: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminals: [Value]?
}

/// TerminalIdCreateData is the typed request payload for TerminalId.create.
public struct TerminalIdCreateData {
  public var deviceSerialNumber: [Value]
  public var duplicateTerminalIds: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
  public var terminals: [Value]?
}

/// TransactionHistory is the typed data model for the transaction_history entity.
public struct TransactionHistory {
  public var 3DSecure: String?
  public var authorizationCode: String?
  public var cardBrand: String?
  public var clearingAmountFrom: String?
  public var clearingAmountTo: String?
  public var clearingCurrency: String?
  public var clearingStatus: String?
  public var corporateUuid: String?
  public var orderByTransactionDate: String?
  public var pagination: VMap?
  public var paymentTokenPublicId: String?
  public var receiptNumber: String?
  public var referencedTransactionId: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var retrievalReferenceNumber: String?
  public var sourceId: Int?
  public var tecsengineResponseCodeFrom: String?
  public var tecsengineResponseCodeTo: String?
  public var terminalId: Int?
  public var traceNumber: String?
  public var transactionAmountFrom: String?
  public var transactionAmountTo: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionHistories: [Value]?
  public var transactionId: String?
  public var transactionType: String?
  public var wallet: String?
}

/// TransactionHistoryCreateData is the typed request payload for TransactionHistory.create.
public struct TransactionHistoryCreateData {
  public var 3DSecure: String?
  public var authorizationCode: String?
  public var cardBrand: String?
  public var clearingAmountFrom: String?
  public var clearingAmountTo: String?
  public var clearingCurrency: String?
  public var clearingStatus: String?
  public var corporateUuid: String?
  public var orderByTransactionDate: String?
  public var pagination: VMap?
  public var paymentTokenPublicId: String?
  public var receiptNumber: String?
  public var referencedTransactionId: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var retrievalReferenceNumber: String?
  public var sourceId: Int?
  public var tecsengineResponseCodeFrom: String?
  public var tecsengineResponseCodeTo: String?
  public var terminalId: Int?
  public var traceNumber: String?
  public var transactionAmountFrom: String?
  public var transactionAmountTo: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionHistories: [Value]?
  public var transactionId: String?
  public var transactionType: String?
  public var wallet: String?
}

/// TransactionsCount is the typed data model for the transactions_count entity.
public struct TransactionsCount {
  public var period: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionsCount: [Value]?
}

/// TransactionsCountCreateData is the typed request payload for TransactionsCount.create.
public struct TransactionsCountCreateData {
  public var period: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionsCount: [Value]?
}

/// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
public struct TransactionsCountCardBrand {
  public var period: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionsCount: [Value]?
}

/// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.create.
public struct TransactionsCountCardBrandCreateData {
  public var period: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var transactionsCount: [Value]?
}

/// TransactionsTurnover is the typed data model for the transactions_turnover entity.
public struct TransactionsTurnover {
  public var period: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var turnovers: [Value]?
}

/// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.create.
public struct TransactionsTurnoverCreateData {
  public var period: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var transactionDateFrom: String?
  public var transactionDateTo: String?
  public var turnovers: [Value]?
}

/// UpdateMerchant is the typed data model for the update_merchant entity.
public struct UpdateMerchant {
  public var city: String?
  public var corporateUuid: String
  public var country: String?
  public var merchantCategoryCode: String?
  public var name: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var state: String?
  public var street: String?
  public var vuNummer: String?
  public var zipcode: String?
}

/// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.create.
public struct UpdateMerchantCreateData {
  public var city: String?
  public var corporateUuid: String
  public var country: String?
  public var merchantCategoryCode: String?
  public var name: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var state: String?
  public var street: String?
  public var vuNummer: String?
  public var zipcode: String?
}

/// UpdateTemplateXml is the typed data model for the update_template_xml entity.
public struct UpdateTemplateXml {
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
  public var templateXml: String
}

/// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.create.
public struct UpdateTemplateXmlCreateData {
  public var responseCode: Int?
  public var responseMessage: String?
  public var templateName: String
  public var templateXml: String
}

/// Version is the typed data model for the version entity.
public struct Version {
  public var appName: String?
  public var buildDate: String?
  public var version: String?
}

/// VersionLoadMatch is the typed request payload for Version.load.
public struct VersionLoadMatch {
  public var appName: String?
  public var buildDate: String?
  public var version: String?
}

