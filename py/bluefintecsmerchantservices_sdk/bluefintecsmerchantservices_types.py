# Typed models for the BluefinTecsMerchantServices SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class CancelTransactionRequired(TypedDict):
    clientId: int
    currency: str
    receiptNumber: str
    terminalId: int


class CancelTransaction(CancelTransactionRequired, total=False):
    acquirerId: str
    acquirerName: str
    actualBonusPoints: str
    amount: int
    authorizationCode: str
    balanceAmount: str
    cardBrand: str
    cardNumber: str
    cvc: str
    ecData: str
    ecrData: str
    emvData: str
    exchangeFee: int
    exchangeRate: str
    languageCode: str
    merchantAddress: str
    merchantName: str
    merchantNumber: str
    messageType: str
    originalTraceNumber: int
    originalTransactionId: str
    password: str
    paymentReason: str
    receiptFooter: str
    receiptHeader: str
    receiptLayout: int
    responseCode: int
    responseMessage: str
    serialNumber: str
    svc: str
    terminalLocation: str
    traceNumber: int
    transactionDate: str
    transactionId: str
    txType: str
    userData: str


class CancelTransactionCreateDataRequired(TypedDict):
    clientId: int
    currency: str
    receiptNumber: str
    terminalId: int


class CancelTransactionCreateData(CancelTransactionCreateDataRequired, total=False):
    acquirerId: str
    acquirerName: str
    actualBonusPoints: str
    amount: int
    authorizationCode: str
    balanceAmount: str
    cardBrand: str
    cardNumber: str
    cvc: str
    ecData: str
    ecrData: str
    emvData: str
    exchangeFee: int
    exchangeRate: str
    languageCode: str
    merchantAddress: str
    merchantName: str
    merchantNumber: str
    messageType: str
    originalTraceNumber: int
    originalTransactionId: str
    password: str
    paymentReason: str
    receiptFooter: str
    receiptHeader: str
    receiptLayout: int
    responseCode: int
    responseMessage: str
    serialNumber: str
    svc: str
    terminalLocation: str
    traceNumber: int
    transactionDate: str
    transactionId: str
    txType: str
    userData: str


class CheckCardBlackListed(TypedDict, total=False):
    cardNo: str
    responseCode: int
    responseMessage: str


class CheckCardBlackListedCreateData(TypedDict, total=False):
    cardNo: str
    responseCode: int
    responseMessage: str


class CreateProductRequired(TypedDict):
    templateName: str
    templateType: str
    templateXml: str
    terminalType: str


class CreateProduct(CreateProductRequired, total=False):
    acquirerId: int
    responseCode: int
    responseMessage: str


class CreateProductCreateDataRequired(TypedDict):
    templateName: str
    templateType: str
    templateXml: str
    terminalType: str


class CreateProductCreateData(CreateProductCreateDataRequired, total=False):
    acquirerId: int
    responseCode: int
    responseMessage: str


class DeactivateTerminalRequired(TypedDict):
    deactivationReason: str
    terminalId: int


class DeactivateTerminal(DeactivateTerminalRequired, total=False):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    responseCode: int
    responseMessage: str


class DeactivateTerminalCreateDataRequired(TypedDict):
    deactivationReason: str
    terminalId: int


class DeactivateTerminalCreateData(DeactivateTerminalCreateDataRequired, total=False):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    responseCode: int
    responseMessage: str


class DigitalServicesApiRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class DigitalServicesApi(DigitalServicesApiRequired, total=False):
    responseCode: int
    responseMessage: str
    txCount: int
    txIdEnd: str
    txIdStart: str
    txSeqNoEnd: int
    txSeqNoStart: int
    txTotal: int


class DigitalServicesApiLoadMatch(TypedDict, total=False):
    clearingDateFrom: str
    clearingDateTo: str
    responseCode: int
    responseMessage: str
    txCount: int
    txIdEnd: str
    txIdStart: str
    txSeqNoEnd: int
    txSeqNoStart: int
    txTotal: int


class DigitalServicesApiCreateDataRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class DigitalServicesApiCreateData(DigitalServicesApiCreateDataRequired, total=False):
    file_id: str
    responseCode: int
    responseMessage: str
    txCount: int
    txIdEnd: str
    txIdStart: str
    txSeqNoEnd: int
    txSeqNoStart: int
    txTotal: int


class EcDataEcomRequired(TypedDict):
    terminalId: int
    transactionId: str
    transactionType: str


class EcDataEcom(EcDataEcomRequired, total=False):
    ecomData: str
    responseCode: int
    responseMessage: str


class EcDataEcomCreateDataRequired(TypedDict):
    terminalId: int
    transactionId: str
    transactionType: str


class EcDataEcomCreateData(EcDataEcomCreateDataRequired, total=False):
    ecomData: str
    responseCode: int
    responseMessage: str


class EcomParameterRequired(TypedDict):
    terminalId: int


class EcomParameter(EcomParameterRequired, total=False):
    ecomPass: str
    ecomSkey: str
    responseCode: int
    responseMessage: str


class EcomParameterCreateDataRequired(TypedDict):
    terminalId: int


class EcomParameterCreateData(EcomParameterCreateDataRequired, total=False):
    ecomPass: str
    ecomSkey: str
    responseCode: int
    responseMessage: str


class EcrDataRequired(TypedDict):
    terminalId: int
    transactionId: str
    transactionType: str


class EcrData(EcrDataRequired, total=False):
    ecrData: str
    responseCode: int
    responseMessage: str


class EcrDataCreateDataRequired(TypedDict):
    terminalId: int
    transactionId: str
    transactionType: str


class EcrDataCreateData(EcrDataCreateDataRequired, total=False):
    ecrData: str
    responseCode: int
    responseMessage: str


class EmvDataRequired(TypedDict):
    terminalId: int
    transactionId: str
    transactionType: str


class EmvData(EmvDataRequired, total=False):
    emvData: str
    responseCode: int
    responseMessage: str


class EmvDataCreateDataRequired(TypedDict):
    terminalId: int
    transactionId: str
    transactionType: str


class EmvDataCreateData(EmvDataCreateDataRequired, total=False):
    emvData: str
    responseCode: int
    responseMessage: str


class EnableAcquiringRequired(TypedDict):
    corporateUuid: str
    currency: str
    merchantCategoryCode: int
    packageOrderUuid: str
    productOrderUuid: str
    templateName: str


class EnableAcquiring(EnableAcquiringRequired, total=False):
    accountNo: int
    additionalData: dict
    responseCode: int
    responseMessage: str
    sortingCode: int
    terminalIdAcq: str
    terminalIds: list
    vuNummer: str


class EnableAcquiringCreateDataRequired(TypedDict):
    corporateUuid: str
    currency: str
    merchantCategoryCode: int
    packageOrderUuid: str
    productOrderUuid: str
    templateName: str


class EnableAcquiringCreateData(EnableAcquiringCreateDataRequired, total=False):
    accountNo: int
    additionalData: dict
    responseCode: int
    responseMessage: str
    sortingCode: int
    terminalIdAcq: str
    terminalIds: list
    vuNummer: str


class GetMerchantContractNumberRequired(TypedDict):
    merchantContractNumber: str


class GetMerchantContractNumber(GetMerchantContractNumberRequired, total=False):
    responseCode: int
    responseMessage: str


class GetMerchantContractNumberCreateDataRequired(TypedDict):
    merchantContractNumber: str


class GetMerchantContractNumberCreateData(GetMerchantContractNumberCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class GetTemplateXmlRequired(TypedDict):
    templateName: str


class GetTemplateXml(GetTemplateXmlRequired, total=False):
    responseCode: int
    responseMessage: str


class GetTemplateXmlCreateDataRequired(TypedDict):
    templateName: str


class GetTemplateXmlCreateData(GetTemplateXmlCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class IntroduceMandatorRequired(TypedDict):
    mandatorName: str


class IntroduceMandator(IntroduceMandatorRequired, total=False):
    responseCode: int
    responseMessage: str


class IntroduceMandatorCreateDataRequired(TypedDict):
    mandatorName: str


class IntroduceMandatorCreateData(IntroduceMandatorCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class IntroducePackageRequired(TypedDict):
    terminalTemplateDescription: str


class IntroducePackage(IntroducePackageRequired, total=False):
    responseCode: int
    responseMessage: str


class IntroducePackageCreateDataRequired(TypedDict):
    terminalTemplateDescription: str


class IntroducePackageCreateData(IntroducePackageCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class KeepAlive(TypedDict, total=False):
    hwserialno: str
    kaDateTimeFrom: str
    kaDateTimeTo: str
    keepAliveData: list
    pagination: dict
    responseCode: int
    responseMessage: str
    terminalDateTimeFrom: str
    terminalDateTimeTo: str
    terminalId: int


class KeepAliveCreateData(TypedDict, total=False):
    hwserialno: str
    kaDateTimeFrom: str
    kaDateTimeTo: str
    keepAliveData: list
    pagination: dict
    responseCode: int
    responseMessage: str
    terminalDateTimeFrom: str
    terminalDateTimeTo: str
    terminalId: int


class ListTerminal(TypedDict, total=False):
    corporateUuid: list
    filter: dict
    pagination: dict
    responseCode: int
    responseMessage: str
    terminals: list


class ListTerminalCreateData(TypedDict, total=False):
    corporateUuid: list
    filter: dict
    pagination: dict
    responseCode: int
    responseMessage: str
    terminals: list


class MandatorClearingExportRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class MandatorClearingExport(MandatorClearingExportRequired, total=False):
    pagination: dict
    records: list
    responseCode: int
    responseMessage: str


class MandatorClearingExportCreateDataRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class MandatorClearingExportCreateData(MandatorClearingExportCreateDataRequired, total=False):
    pagination: dict
    records: list
    responseCode: int
    responseMessage: str


class MandatorClearingExportDownloadRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class MandatorClearingExportDownload(MandatorClearingExportDownloadRequired, total=False):
    fileId: str
    filenameTemplate: str
    responseCode: int
    responseMessage: str
    status: str


class MandatorClearingExportDownloadLoadMatch(TypedDict):
    id: str


class MandatorClearingExportDownloadCreateDataRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class MandatorClearingExportDownloadCreateData(MandatorClearingExportDownloadCreateDataRequired, total=False):
    fileId: str
    filenameTemplate: str
    responseCode: int
    responseMessage: str
    status: str


class MandatorClearingExportSummaryRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class MandatorClearingExportSummary(MandatorClearingExportSummaryRequired, total=False):
    records: list
    responseCode: int
    responseMessage: str


class MandatorClearingExportSummaryCreateDataRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str


class MandatorClearingExportSummaryCreateData(MandatorClearingExportSummaryCreateDataRequired, total=False):
    records: list
    responseCode: int
    responseMessage: str


class MerchantPortalServicesApi(TypedDict, total=False):
    authorizationCode: str
    cardBrand: str
    clearingAmountFrom: str
    clearingAmountTo: str
    clearingCurrency: str
    clearingStatus: str
    corporateUUID: str
    orderByTransactionDate: str
    pagination: dict
    receiptNumber: str
    referencedTransactionId: str
    retrievalReferenceNumber: str
    sourceId: int
    tecsengineResponseCodeFrom: str
    tecsengineResponseCodeTo: str
    terminalId: int
    traceNumber: str
    transactionAmountFrom: str
    transactionAmountTo: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionId: str
    transactionType: str
    wallet: str


class MerchantPortalServicesApiCreateData(TypedDict, total=False):
    authorizationCode: str
    cardBrand: str
    clearingAmountFrom: str
    clearingAmountTo: str
    clearingCurrency: str
    clearingStatus: str
    corporateUUID: str
    orderByTransactionDate: str
    pagination: dict
    receiptNumber: str
    referencedTransactionId: str
    retrievalReferenceNumber: str
    sourceId: int
    tecsengineResponseCodeFrom: str
    tecsengineResponseCodeTo: str
    terminalId: int
    traceNumber: str
    transactionAmountFrom: str
    transactionAmountTo: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionId: str
    transactionType: str
    wallet: str


class MoveTidRequired(TypedDict):
    productorderuuids: list


class MoveTid(MoveTidRequired, total=False):
    responseCode: int
    responseMessage: str
    targetPackageorderuuid: str
    targetProductorderuuid: str


class MoveTidCreateDataRequired(TypedDict):
    productorderuuids: list


class MoveTidCreateData(MoveTidCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str
    targetPackageorderuuid: str
    targetProductorderuuid: str


class PaymentManualRequired(TypedDict):
    amount: int
    cardNumber: str
    currency: str
    expDate: str
    txtype: str


class PaymentManual(PaymentManualRequired, total=False):
    acquirerName: str
    authorizationNumber: str
    cardType: str
    cvc: str
    dateTimeTx: str
    merchantId: str
    originalTransactionId: str
    password: str
    responseCode: str
    responseMessage: str
    terminalId: str
    transactionId: str


class PaymentManualCreateDataRequired(TypedDict):
    amount: int
    cardNumber: str
    currency: str
    expDate: str
    txtype: str


class PaymentManualCreateData(PaymentManualCreateDataRequired, total=False):
    acquirerName: str
    authorizationNumber: str
    cardType: str
    cvc: str
    dateTimeTx: str
    merchantId: str
    originalTransactionId: str
    password: str
    responseCode: str
    responseMessage: str
    terminalId: str
    transactionId: str


class PaymentSredRequired(TypedDict):
    amount: int
    currency: str
    devicePayload: str
    terminalId: str
    txtype: str


class PaymentSred(PaymentSredRequired, total=False):
    device: str
    expDate: str
    mode: str
    panMasked: str
    password: str
    serial: str
    serviceCode: str


class PaymentSredCreateDataRequired(TypedDict):
    amount: int
    currency: str
    devicePayload: str
    terminalId: str
    txtype: str


class PaymentSredCreateData(PaymentSredCreateDataRequired, total=False):
    device: str
    expDate: str
    mode: str
    panMasked: str
    password: str
    serial: str
    serviceCode: str


class PreAuthTransactionCompletionRequired(TypedDict):
    cardNumberReference: str
    clientId: int
    currency: str
    receiptNumber: str
    terminalId: int
    transactionType: str


class PreAuthTransactionCompletion(PreAuthTransactionCompletionRequired, total=False):
    acquirerId: str
    acquirerName: str
    actualBonusPoints: str
    amount: int
    authorizationCode: str
    balanceAmount: str
    cardBrand: str
    cardNumber: str
    cvc: str
    ecData: str
    ecrData: str
    emvData: str
    exchangeFee: int
    exchangeRate: str
    languageCode: str
    merchantAddress: str
    merchantName: str
    merchantNumber: str
    messageType: str
    originalTraceNumber: int
    originalTransactionId: str
    password: str
    paymentReason: str
    receiptFooter: str
    receiptHeader: str
    receiptLayout: int
    responseCode: int
    responseMessage: str
    serialNumber: str
    svc: str
    terminalLocation: str
    traceNumber: int
    transactionDate: str
    transactionId: str
    txType: str
    userData: str


class PreAuthTransactionCompletionCreateDataRequired(TypedDict):
    cardNumberReference: str
    clientId: int
    currency: str
    receiptNumber: str
    terminalId: int
    transactionType: str


class PreAuthTransactionCompletionCreateData(PreAuthTransactionCompletionCreateDataRequired, total=False):
    acquirerId: str
    acquirerName: str
    actualBonusPoints: str
    amount: int
    authorizationCode: str
    balanceAmount: str
    cardBrand: str
    cardNumber: str
    cvc: str
    ecData: str
    ecrData: str
    emvData: str
    exchangeFee: int
    exchangeRate: str
    languageCode: str
    merchantAddress: str
    merchantName: str
    merchantNumber: str
    messageType: str
    originalTraceNumber: int
    originalTransactionId: str
    password: str
    paymentReason: str
    receiptFooter: str
    receiptHeader: str
    receiptLayout: int
    responseCode: int
    responseMessage: str
    serialNumber: str
    svc: str
    terminalLocation: str
    traceNumber: int
    transactionDate: str
    transactionId: str
    txType: str
    userData: str


class ReactivateTerminalRequired(TypedDict):
    reactivationReason: str
    terminalId: int


class ReactivateTerminal(ReactivateTerminalRequired, total=False):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    responseCode: int
    responseMessage: str


class ReactivateTerminalCreateDataRequired(TypedDict):
    reactivationReason: str
    terminalId: int


class ReactivateTerminalCreateData(ReactivateTerminalCreateDataRequired, total=False):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    responseCode: int
    responseMessage: str


class RefundTransactionRequired(TypedDict):
    clientId: int
    currency: str
    receiptNumber: str
    terminalId: int


class RefundTransaction(RefundTransactionRequired, total=False):
    acquirerId: str
    acquirerName: str
    actualBonusPoints: str
    amount: int
    authorizationCode: str
    balanceAmount: str
    cardBrand: str
    cardNumber: str
    cvc: str
    ecData: str
    ecrData: str
    emvData: str
    exchangeFee: int
    exchangeRate: str
    languageCode: str
    merchantAddress: str
    merchantName: str
    merchantNumber: str
    messageType: str
    originalTraceNumber: int
    originalTransactionId: str
    password: str
    paymentReason: str
    receiptFooter: str
    receiptHeader: str
    receiptLayout: int
    responseCode: int
    responseMessage: str
    serialNumber: str
    svc: str
    terminalLocation: str
    traceNumber: int
    transactionDate: str
    transactionId: str
    txType: str
    userData: str


class RefundTransactionCreateDataRequired(TypedDict):
    clientId: int
    currency: str
    receiptNumber: str
    terminalId: int


class RefundTransactionCreateData(RefundTransactionCreateDataRequired, total=False):
    acquirerId: str
    acquirerName: str
    actualBonusPoints: str
    amount: int
    authorizationCode: str
    balanceAmount: str
    cardBrand: str
    cardNumber: str
    cvc: str
    ecData: str
    ecrData: str
    emvData: str
    exchangeFee: int
    exchangeRate: str
    languageCode: str
    merchantAddress: str
    merchantName: str
    merchantNumber: str
    messageType: str
    originalTraceNumber: int
    originalTransactionId: str
    password: str
    paymentReason: str
    receiptFooter: str
    receiptHeader: str
    receiptLayout: int
    responseCode: int
    responseMessage: str
    serialNumber: str
    svc: str
    terminalLocation: str
    traceNumber: int
    transactionDate: str
    transactionId: str
    txType: str
    userData: str


class RegisterTecsCompanyRequired(TypedDict):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    templateName: str


class RegisterTecsCompany(RegisterTecsCompanyRequired, total=False):
    partnerId: int
    partnerName: str
    responseCode: int
    responseMessage: str


class RegisterTecsCompanyCreateDataRequired(TypedDict):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    templateName: str


class RegisterTecsCompanyCreateData(RegisterTecsCompanyCreateDataRequired, total=False):
    partnerId: int
    partnerName: str
    responseCode: int
    responseMessage: str


class RegisterTerminalRequired(TypedDict):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    templateName: str
    terminalCountryCode: str
    terminalLanguageCode: str
    terminalLocation: str


class RegisterTerminal(RegisterTerminalRequired, total=False):
    additionalData: dict
    responseCode: int
    responseMessage: str
    tecsWebSecretKey: str
    terminalId: int
    terminalIdAcq: str
    terminalSerialNumber: str
    tokenIOAlias: str
    tokenIOIban: str
    tokenIOMemberId: str
    webShopUrl: str


class RegisterTerminalCreateDataRequired(TypedDict):
    corporateUuid: str
    packageOrderUuid: str
    productOrderUuid: str
    templateName: str
    terminalCountryCode: str
    terminalLanguageCode: str
    terminalLocation: str


class RegisterTerminalCreateData(RegisterTerminalCreateDataRequired, total=False):
    additionalData: dict
    responseCode: int
    responseMessage: str
    tecsWebSecretKey: str
    terminalId: int
    terminalIdAcq: str
    terminalSerialNumber: str
    tokenIOAlias: str
    tokenIOIban: str
    tokenIOMemberId: str
    webShopUrl: str


class ReportDataRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str
    corporateId: str
    currency: str


class ReportData(ReportDataRequired, total=False):
    cardBrandReportData: list
    responseCode: int
    responseMessage: str
    sumOverCreditTx: dict
    sumOverDebitTx: dict
    terminalId: int


class ReportDataCreateDataRequired(TypedDict):
    clearingDateFrom: str
    clearingDateTo: str
    corporateId: str
    currency: str


class ReportDataCreateData(ReportDataCreateDataRequired, total=False):
    cardBrandReportData: list
    responseCode: int
    responseMessage: str
    sumOverCreditTx: dict
    sumOverDebitTx: dict
    terminalId: int


class StatusTransaction(TypedDict, total=False):
    acquirerName: str
    acquirerTerminalId: str
    amount: int
    applicationCryptogram: str
    authorizationCode: str | None
    authorizationDate: str
    cardBrand: str
    cardEntry: str
    cardExpiration: str
    cardNumber: str
    clearingAmount: int
    clearingBatchId: str
    clearingCurrency: str
    clearingDate: str
    clearingProcessedDate: str
    clearingStatus: str
    clientId: int
    currency: str
    cvm: str
    ecrData: str
    emvApplicationId: str
    emvApplicationLabel: str
    merchantName: str
    merchantNumber: str
    originalClientId: str
    originalTerminalId: int
    originalTransactionId: str
    paymentReason: str
    receiptNumber: str
    responseCode: int
    responseCodeFromAS: str
    responseMessage: str
    retrievalReferenceNumber: str
    serviceCode: str
    settlementStatus: str
    sourceId: int
    tecsengineResponseCode: int
    tecsengineResponseText: str
    terminalEndOfDayDate: str
    terminalId: int
    terminalLocation: str
    tipAmount: int
    traceNumber: int
    transactionClearingDate: str
    transactionDate: str
    transactionId: str
    transactionSeqNumber: int
    transactionServerDate: str
    transactionSource: str
    transactionType: str


class StatusTransactionCreateData(TypedDict, total=False):
    acquirerName: str
    acquirerTerminalId: str
    amount: int
    applicationCryptogram: str
    authorizationCode: str | None
    authorizationDate: str
    cardBrand: str
    cardEntry: str
    cardExpiration: str
    cardNumber: str
    clearingAmount: int
    clearingBatchId: str
    clearingCurrency: str
    clearingDate: str
    clearingProcessedDate: str
    clearingStatus: str
    clientId: int
    currency: str
    cvm: str
    ecrData: str
    emvApplicationId: str
    emvApplicationLabel: str
    merchantName: str
    merchantNumber: str
    originalClientId: str
    originalTerminalId: int
    originalTransactionId: str
    paymentReason: str
    receiptNumber: str
    responseCode: int
    responseCodeFromAS: str
    responseMessage: str
    retrievalReferenceNumber: str
    serviceCode: str
    settlementStatus: str
    sourceId: int
    tecsengineResponseCode: int
    tecsengineResponseText: str
    terminalEndOfDayDate: str
    terminalId: int
    terminalLocation: str
    tipAmount: int
    traceNumber: int
    transactionClearingDate: str
    transactionDate: str
    transactionId: str
    transactionSeqNumber: int
    transactionServerDate: str
    transactionSource: str
    transactionType: str


class StoreTerminalParameterRequired(TypedDict):
    serialNumber: str


class StoreTerminalParameter(StoreTerminalParameterRequired, total=False):
    acqTabNexo: dict
    configVersion: str
    responseCode: int
    responseMessage: str
    tidSent: str


class StoreTerminalParameterCreateDataRequired(TypedDict):
    serialNumber: str


class StoreTerminalParameterCreateData(StoreTerminalParameterCreateDataRequired, total=False):
    acqTabNexo: dict
    configVersion: str
    responseCode: int
    responseMessage: str
    tidSent: str


class TerminalIdRequired(TypedDict):
    deviceSerialNumber: list


class TerminalId(TerminalIdRequired, total=False):
    duplicateTerminalIds: list
    responseCode: int
    responseMessage: str
    terminals: list


class TerminalIdCreateDataRequired(TypedDict):
    deviceSerialNumber: list


class TerminalIdCreateData(TerminalIdCreateDataRequired, total=False):
    duplicateTerminalIds: list
    responseCode: int
    responseMessage: str
    terminals: list


class TransactionHistory(TypedDict, total=False):
    authorizationCode: str
    cardBrand: str
    clearingAmountFrom: str
    clearingAmountTo: str
    clearingCurrency: str
    clearingStatus: str
    corporateUUID: str
    orderByTransactionDate: str
    pagination: dict
    paymentTokenPublicId: str
    receiptNumber: str
    referencedTransactionId: str
    responseCode: int
    responseMessage: str
    retrievalReferenceNumber: str
    sourceId: int
    tecsengineResponseCodeFrom: str
    tecsengineResponseCodeTo: str
    terminalId: int
    traceNumber: str
    transactionAmountFrom: str
    transactionAmountTo: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionHistories: list
    transactionId: str
    transactionType: str
    wallet: str


class TransactionHistoryCreateData(TypedDict, total=False):
    authorizationCode: str
    cardBrand: str
    clearingAmountFrom: str
    clearingAmountTo: str
    clearingCurrency: str
    clearingStatus: str
    corporateUUID: str
    orderByTransactionDate: str
    pagination: dict
    paymentTokenPublicId: str
    receiptNumber: str
    referencedTransactionId: str
    responseCode: int
    responseMessage: str
    retrievalReferenceNumber: str
    sourceId: int
    tecsengineResponseCodeFrom: str
    tecsengineResponseCodeTo: str
    terminalId: int
    traceNumber: str
    transactionAmountFrom: str
    transactionAmountTo: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionHistories: list
    transactionId: str
    transactionType: str
    wallet: str


class TransactionsCount(TypedDict, total=False):
    period: str
    responseCode: int
    responseMessage: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionsCount: list


class TransactionsCountCreateData(TypedDict, total=False):
    period: str
    responseCode: int
    responseMessage: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionsCount: list


class TransactionsCountCardBrand(TypedDict, total=False):
    period: str
    responseCode: int
    responseMessage: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionsCount: list


class TransactionsCountCardBrandCreateData(TypedDict, total=False):
    period: str
    responseCode: int
    responseMessage: str
    transactionDateFrom: str
    transactionDateTo: str
    transactionsCount: list


class TransactionsTurnover(TypedDict, total=False):
    period: str
    responseCode: int
    responseMessage: str
    transactionDateFrom: str
    transactionDateTo: str
    turnovers: list


class TransactionsTurnoverCreateData(TypedDict, total=False):
    period: str
    responseCode: int
    responseMessage: str
    transactionDateFrom: str
    transactionDateTo: str
    turnovers: list


class UpdateMerchantRequired(TypedDict):
    corporateUuid: str


class UpdateMerchant(UpdateMerchantRequired, total=False):
    city: str
    country: str
    merchantCategoryCode: str
    name: str
    responseCode: int
    responseMessage: str
    state: str
    street: str
    vuNummer: str
    zipcode: str


class UpdateMerchantCreateDataRequired(TypedDict):
    corporateUuid: str


class UpdateMerchantCreateData(UpdateMerchantCreateDataRequired, total=False):
    city: str
    country: str
    merchantCategoryCode: str
    name: str
    responseCode: int
    responseMessage: str
    state: str
    street: str
    vuNummer: str
    zipcode: str


class UpdateTemplateXmlRequired(TypedDict):
    templateName: str
    templateXml: str


class UpdateTemplateXml(UpdateTemplateXmlRequired, total=False):
    responseCode: int
    responseMessage: str


class UpdateTemplateXmlCreateDataRequired(TypedDict):
    templateName: str
    templateXml: str


class UpdateTemplateXmlCreateData(UpdateTemplateXmlCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class Version(TypedDict, total=False):
    appName: str
    buildDate: str
    version: str


class VersionLoadMatch(TypedDict, total=False):
    appName: str
    buildDate: str
    version: str
