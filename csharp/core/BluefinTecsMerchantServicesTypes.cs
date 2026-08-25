// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These records are documentation/DX reference shapes ONLY. The SDK ops take
// and return the loose object model (Dictionary<string, object?> / object?) at
// runtime, so these types are not wired into the op signatures — use them to
// describe a payload before converting it to a dictionary. Optional (req:false)
// keys are modelled as nullable properties.

namespace BluefinTecsMerchantServicesSdk.Types;

public record CancelTransaction
{
    public string? acquirerId { get; init; }
    public string? acquirerName { get; init; }
    public string? actualBonusPoints { get; init; }
    public long? amount { get; init; }
    public string? authorizationCode { get; init; }
    public string? balanceAmount { get; init; }
    public string? cardBrand { get; init; }
    public string? cardNumber { get; init; }
    public long clientId { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ecData { get; init; }
    public string? ecrData { get; init; }
    public string? emvData { get; init; }
    public long? exchangeFee { get; init; }
    public string? exchangeRate { get; init; }
    public string? languageCode { get; init; }
    public string? merchantAddress { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? messageType { get; init; }
    public long? originalTraceNumber { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptFooter { get; init; }
    public string? receiptHeader { get; init; }
    public long? receiptLayout { get; init; }
    public string receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? serialNumber { get; init; }
    public string? svc { get; init; }
    public long terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public string? txType { get; init; }
    public string? userData { get; init; }
}

public record CancelTransactionCreateData
{
    public string? acquirerId { get; init; }
    public string? acquirerName { get; init; }
    public string? actualBonusPoints { get; init; }
    public long? amount { get; init; }
    public string? authorizationCode { get; init; }
    public string? balanceAmount { get; init; }
    public string? cardBrand { get; init; }
    public string? cardNumber { get; init; }
    public long clientId { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ecData { get; init; }
    public string? ecrData { get; init; }
    public string? emvData { get; init; }
    public long? exchangeFee { get; init; }
    public string? exchangeRate { get; init; }
    public string? languageCode { get; init; }
    public string? merchantAddress { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? messageType { get; init; }
    public long? originalTraceNumber { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptFooter { get; init; }
    public string? receiptHeader { get; init; }
    public long? receiptLayout { get; init; }
    public string receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? serialNumber { get; init; }
    public string? svc { get; init; }
    public long terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public string? txType { get; init; }
    public string? userData { get; init; }
}

public record CheckCardBlackListed
{
    public string? cardNo { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record CheckCardBlackListedCreateData
{
    public string? cardNo { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record CreateProduct
{
    public long? acquirerId { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
    public string templateType { get; init; }
    public string templateXml { get; init; }
    public string terminalType { get; init; }
}

public record CreateProductCreateData
{
    public long? acquirerId { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
    public string templateType { get; init; }
    public string templateXml { get; init; }
    public string terminalType { get; init; }
}

public record DeactivateTerminal
{
    public string? corporateUuid { get; init; }
    public string deactivationReason { get; init; }
    public string? packageOrderUuid { get; init; }
    public string? productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
}

public record DeactivateTerminalCreateData
{
    public string? corporateUuid { get; init; }
    public string deactivationReason { get; init; }
    public string? packageOrderUuid { get; init; }
    public string? productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
}

public record DigitalServicesApi
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long? txCount { get; init; }
    public string? txIdEnd { get; init; }
    public string? txIdStart { get; init; }
    public long? txSeqNoEnd { get; init; }
    public long? txSeqNoStart { get; init; }
    public long? txTotal { get; init; }
}

public record DigitalServicesApiLoadMatch
{
    public string? clearingDateFrom { get; init; }
    public string? clearingDateTo { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long? txCount { get; init; }
    public string? txIdEnd { get; init; }
    public string? txIdStart { get; init; }
    public long? txSeqNoEnd { get; init; }
    public long? txSeqNoStart { get; init; }
    public long? txTotal { get; init; }
}

public record DigitalServicesApiCreateData
{
    public string file_id { get; init; }
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long? txCount { get; init; }
    public string? txIdEnd { get; init; }
    public string? txIdStart { get; init; }
    public long? txSeqNoEnd { get; init; }
    public long? txSeqNoStart { get; init; }
    public long? txTotal { get; init; }
}

public record EcDataEcom
{
    public string? ecomData { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
    public string transactionId { get; init; }
    public string transactionType { get; init; }
}

public record EcDataEcomCreateData
{
    public string? ecomData { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
    public string transactionId { get; init; }
    public string transactionType { get; init; }
}

public record EcomParameter
{
    public string? ecomPass { get; init; }
    public string? ecomSkey { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
}

public record EcomParameterCreateData
{
    public string? ecomPass { get; init; }
    public string? ecomSkey { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
}

public record EcrData
{
    public string? ecrData { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
    public string transactionId { get; init; }
    public string transactionType { get; init; }
}

public record EcrDataCreateData
{
    public string? ecrData { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
    public string transactionId { get; init; }
    public string transactionType { get; init; }
}

public record EmvData
{
    public string? emvData { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
    public string transactionId { get; init; }
    public string transactionType { get; init; }
}

public record EmvDataCreateData
{
    public string? emvData { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
    public string transactionId { get; init; }
    public string transactionType { get; init; }
}

public record EnableAcquiring
{
    public long? accountNo { get; init; }
    public Dictionary<string, object?>? additionalData { get; init; }
    public string corporateUuid { get; init; }
    public string currency { get; init; }
    public long merchantCategoryCode { get; init; }
    public string packageOrderUuid { get; init; }
    public string productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long? sortingCode { get; init; }
    public string templateName { get; init; }
    public string? terminalIdAcq { get; init; }
    public List<object?>? terminalIds { get; init; }
    public string? vuNummer { get; init; }
}

public record EnableAcquiringCreateData
{
    public long? accountNo { get; init; }
    public Dictionary<string, object?>? additionalData { get; init; }
    public string corporateUuid { get; init; }
    public string currency { get; init; }
    public long merchantCategoryCode { get; init; }
    public string packageOrderUuid { get; init; }
    public string productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long? sortingCode { get; init; }
    public string templateName { get; init; }
    public string? terminalIdAcq { get; init; }
    public List<object?>? terminalIds { get; init; }
    public string? vuNummer { get; init; }
}

public record GetMerchantContractNumber
{
    public string merchantContractNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record GetMerchantContractNumberCreateData
{
    public string merchantContractNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record GetTemplateXml
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
}

public record GetTemplateXmlCreateData
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
}

public record IntroduceMandator
{
    public string mandatorName { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record IntroduceMandatorCreateData
{
    public string mandatorName { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record IntroducePackage
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string terminalTemplateDescription { get; init; }
}

public record IntroducePackageCreateData
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string terminalTemplateDescription { get; init; }
}

public record KeepAlive
{
    public string? hwserialno { get; init; }
    public string? kaDateTimeFrom { get; init; }
    public string? kaDateTimeTo { get; init; }
    public List<object?>? keepAliveData { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? terminalDateTimeFrom { get; init; }
    public string? terminalDateTimeTo { get; init; }
    public long? terminalId { get; init; }
}

public record KeepAliveCreateData
{
    public string? hwserialno { get; init; }
    public string? kaDateTimeFrom { get; init; }
    public string? kaDateTimeTo { get; init; }
    public List<object?>? keepAliveData { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? terminalDateTimeFrom { get; init; }
    public string? terminalDateTimeTo { get; init; }
    public long? terminalId { get; init; }
}

public record ListTerminal
{
    public List<object?>? corporateUuid { get; init; }
    public Dictionary<string, object?>? filter { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?>? terminals { get; init; }
}

public record ListTerminalCreateData
{
    public List<object?>? corporateUuid { get; init; }
    public Dictionary<string, object?>? filter { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?>? terminals { get; init; }
}

public record MandatorClearingExport
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public List<object?>? records { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record MandatorClearingExportCreateData
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public List<object?>? records { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record MandatorClearingExportDownload
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public string? fileId { get; init; }
    public string? filenameTemplate { get; init; }
    public string? id { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? status { get; init; }
}

public record MandatorClearingExportDownloadLoadMatch
{
    public string id { get; init; }
}

public record MandatorClearingExportDownloadCreateData
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public string? fileId { get; init; }
    public string? filenameTemplate { get; init; }
    public string? id { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? status { get; init; }
}

public record MandatorClearingExportSummary
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public List<object?>? records { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record MandatorClearingExportSummaryCreateData
{
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public List<object?>? records { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record MerchantPortalServicesApi
{
    public string? authorizationCode { get; init; }
    public string? cardBrand { get; init; }
    public string? clearingAmountFrom { get; init; }
    public string? clearingAmountTo { get; init; }
    public string? clearingCurrency { get; init; }
    public string? clearingStatus { get; init; }
    public string? corporateUUID { get; init; }
    public string? orderByTransactionDate { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? receiptNumber { get; init; }
    public string? referencedTransactionId { get; init; }
    public string? retrievalReferenceNumber { get; init; }
    public long? sourceId { get; init; }
    public string? tecsengineResponseCodeFrom { get; init; }
    public string? tecsengineResponseCodeTo { get; init; }
    public long? terminalId { get; init; }
    public string? traceNumber { get; init; }
    public string? transactionAmountFrom { get; init; }
    public string? transactionAmountTo { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public string? transactionId { get; init; }
    public string? transactionType { get; init; }
    public string? wallet { get; init; }
}

public record MerchantPortalServicesApiCreateData
{
    public string? authorizationCode { get; init; }
    public string? cardBrand { get; init; }
    public string? clearingAmountFrom { get; init; }
    public string? clearingAmountTo { get; init; }
    public string? clearingCurrency { get; init; }
    public string? clearingStatus { get; init; }
    public string? corporateUUID { get; init; }
    public string? orderByTransactionDate { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? receiptNumber { get; init; }
    public string? referencedTransactionId { get; init; }
    public string? retrievalReferenceNumber { get; init; }
    public long? sourceId { get; init; }
    public string? tecsengineResponseCodeFrom { get; init; }
    public string? tecsengineResponseCodeTo { get; init; }
    public long? terminalId { get; init; }
    public string? traceNumber { get; init; }
    public string? transactionAmountFrom { get; init; }
    public string? transactionAmountTo { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public string? transactionId { get; init; }
    public string? transactionType { get; init; }
    public string? wallet { get; init; }
}

public record MoveTid
{
    public List<object?> productorderuuids { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? targetPackageorderuuid { get; init; }
    public string? targetProductorderuuid { get; init; }
}

public record MoveTidCreateData
{
    public List<object?> productorderuuids { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? targetPackageorderuuid { get; init; }
    public string? targetProductorderuuid { get; init; }
}

public record PaymentManual
{
    public string? acquirerName { get; init; }
    public long amount { get; init; }
    public string? authorizationNumber { get; init; }
    public string cardNumber { get; init; }
    public string? cardType { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? dateTimeTx { get; init; }
    public string expDate { get; init; }
    public string? merchantId { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? terminalId { get; init; }
    public string? transactionId { get; init; }
    public string txtype { get; init; }
}

public record PaymentManualCreateData
{
    public string? acquirerName { get; init; }
    public long amount { get; init; }
    public string? authorizationNumber { get; init; }
    public string cardNumber { get; init; }
    public string? cardType { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? dateTimeTx { get; init; }
    public string expDate { get; init; }
    public string? merchantId { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? terminalId { get; init; }
    public string? transactionId { get; init; }
    public string txtype { get; init; }
}

public record PaymentSred
{
    public long amount { get; init; }
    public string currency { get; init; }
    public string? device { get; init; }
    public string devicePayload { get; init; }
    public string? expDate { get; init; }
    public string? mode { get; init; }
    public string? panMasked { get; init; }
    public string? password { get; init; }
    public string? serial { get; init; }
    public string? serviceCode { get; init; }
    public string terminalId { get; init; }
    public string txtype { get; init; }
}

public record PaymentSredCreateData
{
    public long amount { get; init; }
    public string currency { get; init; }
    public string? device { get; init; }
    public string devicePayload { get; init; }
    public string? expDate { get; init; }
    public string? mode { get; init; }
    public string? panMasked { get; init; }
    public string? password { get; init; }
    public string? serial { get; init; }
    public string? serviceCode { get; init; }
    public string terminalId { get; init; }
    public string txtype { get; init; }
}

public record PreAuthTransactionCompletion
{
    public string? acquirerId { get; init; }
    public string? acquirerName { get; init; }
    public string? actualBonusPoints { get; init; }
    public long? amount { get; init; }
    public string? authorizationCode { get; init; }
    public string? balanceAmount { get; init; }
    public string? cardBrand { get; init; }
    public string? cardNumber { get; init; }
    public string cardNumberReference { get; init; }
    public long clientId { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ecData { get; init; }
    public string? ecrData { get; init; }
    public string? emvData { get; init; }
    public long? exchangeFee { get; init; }
    public string? exchangeRate { get; init; }
    public string? languageCode { get; init; }
    public string? merchantAddress { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? messageType { get; init; }
    public long? originalTraceNumber { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptFooter { get; init; }
    public string? receiptHeader { get; init; }
    public long? receiptLayout { get; init; }
    public string receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? serialNumber { get; init; }
    public string? svc { get; init; }
    public long terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public string transactionType { get; init; }
    public string? txType { get; init; }
    public string? userData { get; init; }
}

public record PreAuthTransactionCompletionCreateData
{
    public string? acquirerId { get; init; }
    public string? acquirerName { get; init; }
    public string? actualBonusPoints { get; init; }
    public long? amount { get; init; }
    public string? authorizationCode { get; init; }
    public string? balanceAmount { get; init; }
    public string? cardBrand { get; init; }
    public string? cardNumber { get; init; }
    public string cardNumberReference { get; init; }
    public long clientId { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ecData { get; init; }
    public string? ecrData { get; init; }
    public string? emvData { get; init; }
    public long? exchangeFee { get; init; }
    public string? exchangeRate { get; init; }
    public string? languageCode { get; init; }
    public string? merchantAddress { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? messageType { get; init; }
    public long? originalTraceNumber { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptFooter { get; init; }
    public string? receiptHeader { get; init; }
    public long? receiptLayout { get; init; }
    public string receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? serialNumber { get; init; }
    public string? svc { get; init; }
    public long terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public string transactionType { get; init; }
    public string? txType { get; init; }
    public string? userData { get; init; }
}

public record ReactivateTerminal
{
    public string? corporateUuid { get; init; }
    public string? packageOrderUuid { get; init; }
    public string? productOrderUuid { get; init; }
    public string reactivationReason { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
}

public record ReactivateTerminalCreateData
{
    public string? corporateUuid { get; init; }
    public string? packageOrderUuid { get; init; }
    public string? productOrderUuid { get; init; }
    public string reactivationReason { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public long terminalId { get; init; }
}

public record RefundTransaction
{
    public string? acquirerId { get; init; }
    public string? acquirerName { get; init; }
    public string? actualBonusPoints { get; init; }
    public long? amount { get; init; }
    public string? authorizationCode { get; init; }
    public string? balanceAmount { get; init; }
    public string? cardBrand { get; init; }
    public string? cardNumber { get; init; }
    public long clientId { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ecData { get; init; }
    public string? ecrData { get; init; }
    public string? emvData { get; init; }
    public long? exchangeFee { get; init; }
    public string? exchangeRate { get; init; }
    public string? languageCode { get; init; }
    public string? merchantAddress { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? messageType { get; init; }
    public long? originalTraceNumber { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptFooter { get; init; }
    public string? receiptHeader { get; init; }
    public long? receiptLayout { get; init; }
    public string receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? serialNumber { get; init; }
    public string? svc { get; init; }
    public long terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public string? txType { get; init; }
    public string? userData { get; init; }
}

public record RefundTransactionCreateData
{
    public string? acquirerId { get; init; }
    public string? acquirerName { get; init; }
    public string? actualBonusPoints { get; init; }
    public long? amount { get; init; }
    public string? authorizationCode { get; init; }
    public string? balanceAmount { get; init; }
    public string? cardBrand { get; init; }
    public string? cardNumber { get; init; }
    public long clientId { get; init; }
    public string currency { get; init; }
    public string? cvc { get; init; }
    public string? ecData { get; init; }
    public string? ecrData { get; init; }
    public string? emvData { get; init; }
    public long? exchangeFee { get; init; }
    public string? exchangeRate { get; init; }
    public string? languageCode { get; init; }
    public string? merchantAddress { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? messageType { get; init; }
    public long? originalTraceNumber { get; init; }
    public string? originalTransactionId { get; init; }
    public string? password { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptFooter { get; init; }
    public string? receiptHeader { get; init; }
    public long? receiptLayout { get; init; }
    public string receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? serialNumber { get; init; }
    public string? svc { get; init; }
    public long terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public string? txType { get; init; }
    public string? userData { get; init; }
}

public record RegisterTecsCompany
{
    public string corporateUuid { get; init; }
    public string packageOrderUuid { get; init; }
    public long? partnerId { get; init; }
    public string? partnerName { get; init; }
    public string productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
}

public record RegisterTecsCompanyCreateData
{
    public string corporateUuid { get; init; }
    public string packageOrderUuid { get; init; }
    public long? partnerId { get; init; }
    public string? partnerName { get; init; }
    public string productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
}

public record RegisterTerminal
{
    public Dictionary<string, object?>? additionalData { get; init; }
    public string corporateUuid { get; init; }
    public string packageOrderUuid { get; init; }
    public string productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? tecsWebSecretKey { get; init; }
    public string templateName { get; init; }
    public string terminalCountryCode { get; init; }
    public long? terminalId { get; init; }
    public string? terminalIdAcq { get; init; }
    public string terminalLanguageCode { get; init; }
    public string terminalLocation { get; init; }
    public string? terminalSerialNumber { get; init; }
    public string? tokenIOAlias { get; init; }
    public string? tokenIOIban { get; init; }
    public string? tokenIOMemberId { get; init; }
    public string? webShopUrl { get; init; }
}

public record RegisterTerminalCreateData
{
    public Dictionary<string, object?>? additionalData { get; init; }
    public string corporateUuid { get; init; }
    public string packageOrderUuid { get; init; }
    public string productOrderUuid { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? tecsWebSecretKey { get; init; }
    public string templateName { get; init; }
    public string terminalCountryCode { get; init; }
    public long? terminalId { get; init; }
    public string? terminalIdAcq { get; init; }
    public string terminalLanguageCode { get; init; }
    public string terminalLocation { get; init; }
    public string? terminalSerialNumber { get; init; }
    public string? tokenIOAlias { get; init; }
    public string? tokenIOIban { get; init; }
    public string? tokenIOMemberId { get; init; }
    public string? webShopUrl { get; init; }
}

public record ReportData
{
    public List<object?>? cardBrandReportData { get; init; }
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public string corporateId { get; init; }
    public string currency { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sumOverCreditTx { get; init; }
    public Dictionary<string, object?>? sumOverDebitTx { get; init; }
    public long? terminalId { get; init; }
}

public record ReportDataCreateData
{
    public List<object?>? cardBrandReportData { get; init; }
    public string clearingDateFrom { get; init; }
    public string clearingDateTo { get; init; }
    public string corporateId { get; init; }
    public string currency { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sumOverCreditTx { get; init; }
    public Dictionary<string, object?>? sumOverDebitTx { get; init; }
    public long? terminalId { get; init; }
}

public record StatusTransaction
{
    public string? acquirerName { get; init; }
    public string? acquirerTerminalId { get; init; }
    public long? amount { get; init; }
    public string? applicationCryptogram { get; init; }
    public object? authorizationCode { get; init; }
    public string? authorizationDate { get; init; }
    public string? cardBrand { get; init; }
    public string? cardEntry { get; init; }
    public string? cardExpiration { get; init; }
    public string? cardNumber { get; init; }
    public long? clearingAmount { get; init; }
    public string? clearingBatchId { get; init; }
    public string? clearingCurrency { get; init; }
    public string? clearingDate { get; init; }
    public string? clearingProcessedDate { get; init; }
    public string? clearingStatus { get; init; }
    public long? clientId { get; init; }
    public string? currency { get; init; }
    public string? cvm { get; init; }
    public string? ecrData { get; init; }
    public string? emvApplicationId { get; init; }
    public string? emvApplicationLabel { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? originalClientId { get; init; }
    public long? originalTerminalId { get; init; }
    public string? originalTransactionId { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseCodeFromAS { get; init; }
    public string? responseMessage { get; init; }
    public string? retrievalReferenceNumber { get; init; }
    public string? serviceCode { get; init; }
    public string? settlementStatus { get; init; }
    public long? sourceId { get; init; }
    public long? tecsengineResponseCode { get; init; }
    public string? tecsengineResponseText { get; init; }
    public string? terminalEndOfDayDate { get; init; }
    public long? terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? tipAmount { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionClearingDate { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public long? transactionSeqNumber { get; init; }
    public string? transactionServerDate { get; init; }
    public string? transactionSource { get; init; }
    public string? transactionType { get; init; }
}

public record StatusTransactionCreateData
{
    public string? acquirerName { get; init; }
    public string? acquirerTerminalId { get; init; }
    public long? amount { get; init; }
    public string? applicationCryptogram { get; init; }
    public object? authorizationCode { get; init; }
    public string? authorizationDate { get; init; }
    public string? cardBrand { get; init; }
    public string? cardEntry { get; init; }
    public string? cardExpiration { get; init; }
    public string? cardNumber { get; init; }
    public long? clearingAmount { get; init; }
    public string? clearingBatchId { get; init; }
    public string? clearingCurrency { get; init; }
    public string? clearingDate { get; init; }
    public string? clearingProcessedDate { get; init; }
    public string? clearingStatus { get; init; }
    public long? clientId { get; init; }
    public string? currency { get; init; }
    public string? cvm { get; init; }
    public string? ecrData { get; init; }
    public string? emvApplicationId { get; init; }
    public string? emvApplicationLabel { get; init; }
    public string? merchantName { get; init; }
    public string? merchantNumber { get; init; }
    public string? originalClientId { get; init; }
    public long? originalTerminalId { get; init; }
    public string? originalTransactionId { get; init; }
    public string? paymentReason { get; init; }
    public string? receiptNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseCodeFromAS { get; init; }
    public string? responseMessage { get; init; }
    public string? retrievalReferenceNumber { get; init; }
    public string? serviceCode { get; init; }
    public string? settlementStatus { get; init; }
    public long? sourceId { get; init; }
    public long? tecsengineResponseCode { get; init; }
    public string? tecsengineResponseText { get; init; }
    public string? terminalEndOfDayDate { get; init; }
    public long? terminalId { get; init; }
    public string? terminalLocation { get; init; }
    public long? tipAmount { get; init; }
    public long? traceNumber { get; init; }
    public string? transactionClearingDate { get; init; }
    public string? transactionDate { get; init; }
    public string? transactionId { get; init; }
    public long? transactionSeqNumber { get; init; }
    public string? transactionServerDate { get; init; }
    public string? transactionSource { get; init; }
    public string? transactionType { get; init; }
}

public record StoreTerminalParameter
{
    public Dictionary<string, object?>? acqTabNexo { get; init; }
    public string? configVersion { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string serialNumber { get; init; }
    public string? tidSent { get; init; }
}

public record StoreTerminalParameterCreateData
{
    public Dictionary<string, object?>? acqTabNexo { get; init; }
    public string? configVersion { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string serialNumber { get; init; }
    public string? tidSent { get; init; }
}

public record TerminalId
{
    public List<object?> deviceSerialNumber { get; init; }
    public List<object?>? duplicateTerminalIds { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?>? terminals { get; init; }
}

public record TerminalIdCreateData
{
    public List<object?> deviceSerialNumber { get; init; }
    public List<object?>? duplicateTerminalIds { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?>? terminals { get; init; }
}

public record TransactionHistory
{
    public string? authorizationCode { get; init; }
    public string? cardBrand { get; init; }
    public string? clearingAmountFrom { get; init; }
    public string? clearingAmountTo { get; init; }
    public string? clearingCurrency { get; init; }
    public string? clearingStatus { get; init; }
    public string? corporateUUID { get; init; }
    public string? orderByTransactionDate { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? paymentTokenPublicId { get; init; }
    public string? receiptNumber { get; init; }
    public string? referencedTransactionId { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? retrievalReferenceNumber { get; init; }
    public long? sourceId { get; init; }
    public string? tecsengineResponseCodeFrom { get; init; }
    public string? tecsengineResponseCodeTo { get; init; }
    public long? terminalId { get; init; }
    public string? traceNumber { get; init; }
    public string? transactionAmountFrom { get; init; }
    public string? transactionAmountTo { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? transactionHistories { get; init; }
    public string? transactionId { get; init; }
    public string? transactionType { get; init; }
    public string? wallet { get; init; }
}

public record TransactionHistoryCreateData
{
    public string? authorizationCode { get; init; }
    public string? cardBrand { get; init; }
    public string? clearingAmountFrom { get; init; }
    public string? clearingAmountTo { get; init; }
    public string? clearingCurrency { get; init; }
    public string? clearingStatus { get; init; }
    public string? corporateUUID { get; init; }
    public string? orderByTransactionDate { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public string? paymentTokenPublicId { get; init; }
    public string? receiptNumber { get; init; }
    public string? referencedTransactionId { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? retrievalReferenceNumber { get; init; }
    public long? sourceId { get; init; }
    public string? tecsengineResponseCodeFrom { get; init; }
    public string? tecsengineResponseCodeTo { get; init; }
    public long? terminalId { get; init; }
    public string? traceNumber { get; init; }
    public string? transactionAmountFrom { get; init; }
    public string? transactionAmountTo { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? transactionHistories { get; init; }
    public string? transactionId { get; init; }
    public string? transactionType { get; init; }
    public string? wallet { get; init; }
}

public record TransactionsCount
{
    public string? period { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? transactionsCount { get; init; }
}

public record TransactionsCountCreateData
{
    public string? period { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? transactionsCount { get; init; }
}

public record TransactionsCountCardBrand
{
    public string? period { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? transactionsCount { get; init; }
}

public record TransactionsCountCardBrandCreateData
{
    public string? period { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? transactionsCount { get; init; }
}

public record TransactionsTurnover
{
    public string? period { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? turnovers { get; init; }
}

public record TransactionsTurnoverCreateData
{
    public string? period { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? transactionDateFrom { get; init; }
    public string? transactionDateTo { get; init; }
    public List<object?>? turnovers { get; init; }
}

public record UpdateMerchant
{
    public string? city { get; init; }
    public string corporateUuid { get; init; }
    public string? country { get; init; }
    public string? merchantCategoryCode { get; init; }
    public string? name { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? state { get; init; }
    public string? street { get; init; }
    public string? vuNummer { get; init; }
    public string? zipcode { get; init; }
}

public record UpdateMerchantCreateData
{
    public string? city { get; init; }
    public string corporateUuid { get; init; }
    public string? country { get; init; }
    public string? merchantCategoryCode { get; init; }
    public string? name { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? state { get; init; }
    public string? street { get; init; }
    public string? vuNummer { get; init; }
    public string? zipcode { get; init; }
}

public record UpdateTemplateXml
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
    public string templateXml { get; init; }
}

public record UpdateTemplateXmlCreateData
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string templateName { get; init; }
    public string templateXml { get; init; }
}

public record Version
{
    public string? appName { get; init; }
    public string? buildDate { get; init; }
    public string? version { get; init; }
}

public record VersionLoadMatch
{
    public string? appName { get; init; }
    public string? buildDate { get; init; }
    public string? version { get; init; }
}

