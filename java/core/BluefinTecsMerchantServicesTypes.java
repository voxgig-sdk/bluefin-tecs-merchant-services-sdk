package voxgig.bluefintecsmerchantservicessdk.core;

// Typed reference models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These records are documentation/DX reference shapes ONLY. The SDK ops take
// and return the loose object model (Map<String, Object> / Object) at runtime,
// so these types are not wired into the op signatures — use them to describe a
// payload before converting it to a map. Every component is a boxed (nullable)
// type, so an optional (req:false) key needs no distinct rendering.

import java.util.List;
import java.util.Map;

public final class BluefinTecsMerchantServicesTypes {

  private BluefinTecsMerchantServicesTypes() {}

  public record CancelTransaction(String acquirerId, String acquirerName, String actualBonusPoints, Long amount, String authorizationCode, String balanceAmount, String cardBrand, String cardNumber, Long clientId, String currency, String cvc, String ecData, String ecrData, String emvData, Long exchangeFee, String exchangeRate, String languageCode, String merchantAddress, String merchantName, String merchantNumber, String messageType, Long originalTraceNumber, String originalTransactionId, String password, String paymentReason, String receiptFooter, String receiptHeader, Long receiptLayout, String receiptNumber, Long responseCode, String responseMessage, String serialNumber, String svc, Long terminalId, String terminalLocation, Long traceNumber, String transactionDate, String transactionId, String txType, String userData) {}

  public record CancelTransactionCreateData(String acquirerId, String acquirerName, String actualBonusPoints, Long amount, String authorizationCode, String balanceAmount, String cardBrand, String cardNumber, Long clientId, String currency, String cvc, String ecData, String ecrData, String emvData, Long exchangeFee, String exchangeRate, String languageCode, String merchantAddress, String merchantName, String merchantNumber, String messageType, Long originalTraceNumber, String originalTransactionId, String password, String paymentReason, String receiptFooter, String receiptHeader, Long receiptLayout, String receiptNumber, Long responseCode, String responseMessage, String serialNumber, String svc, Long terminalId, String terminalLocation, Long traceNumber, String transactionDate, String transactionId, String txType, String userData) {}

  public record CheckCardBlackListed(String cardNo, Long responseCode, String responseMessage) {}

  public record CheckCardBlackListedCreateData(String cardNo, Long responseCode, String responseMessage) {}

  public record CreateProduct(Long acquirerId, Long responseCode, String responseMessage, String templateName, String templateType, String templateXml, String terminalType) {}

  public record CreateProductCreateData(Long acquirerId, Long responseCode, String responseMessage, String templateName, String templateType, String templateXml, String terminalType) {}

  public record DeactivateTerminal(String corporateUuid, String deactivationReason, String packageOrderUuid, String productOrderUuid, Long responseCode, String responseMessage, Long terminalId) {}

  public record DeactivateTerminalCreateData(String corporateUuid, String deactivationReason, String packageOrderUuid, String productOrderUuid, Long responseCode, String responseMessage, Long terminalId) {}

  public record DigitalServicesApi(String clearingDateFrom, String clearingDateTo, Long responseCode, String responseMessage, Long txCount, String txIdEnd, String txIdStart, Long txSeqNoEnd, Long txSeqNoStart, Long txTotal) {}

  public record DigitalServicesApiLoadMatch(String clearingDateFrom, String clearingDateTo, Long responseCode, String responseMessage, Long txCount, String txIdEnd, String txIdStart, Long txSeqNoEnd, Long txSeqNoStart, Long txTotal) {}

  public record DigitalServicesApiCreateData(String file_id, String clearingDateFrom, String clearingDateTo, Long responseCode, String responseMessage, Long txCount, String txIdEnd, String txIdStart, Long txSeqNoEnd, Long txSeqNoStart, Long txTotal) {}

  public record EcDataEcom(String ecomData, Long responseCode, String responseMessage, Long terminalId, String transactionId, String transactionType) {}

  public record EcDataEcomCreateData(String ecomData, Long responseCode, String responseMessage, Long terminalId, String transactionId, String transactionType) {}

  public record EcomParameter(String ecomPass, String ecomSkey, Long responseCode, String responseMessage, Long terminalId) {}

  public record EcomParameterCreateData(String ecomPass, String ecomSkey, Long responseCode, String responseMessage, Long terminalId) {}

  public record EcrData(String ecrData, Long responseCode, String responseMessage, Long terminalId, String transactionId, String transactionType) {}

  public record EcrDataCreateData(String ecrData, Long responseCode, String responseMessage, Long terminalId, String transactionId, String transactionType) {}

  public record EmvData(String emvData, Long responseCode, String responseMessage, Long terminalId, String transactionId, String transactionType) {}

  public record EmvDataCreateData(String emvData, Long responseCode, String responseMessage, Long terminalId, String transactionId, String transactionType) {}

  public record EnableAcquiring(Long accountNo, Map<String, Object> additionalData, String corporateUuid, String currency, Long merchantCategoryCode, String packageOrderUuid, String productOrderUuid, Long responseCode, String responseMessage, Long sortingCode, String templateName, String terminalIdAcq, List<Object> terminalIds, String vuNummer) {}

  public record EnableAcquiringCreateData(Long accountNo, Map<String, Object> additionalData, String corporateUuid, String currency, Long merchantCategoryCode, String packageOrderUuid, String productOrderUuid, Long responseCode, String responseMessage, Long sortingCode, String templateName, String terminalIdAcq, List<Object> terminalIds, String vuNummer) {}

  public record GetMerchantContractNumber(String merchantContractNumber, Long responseCode, String responseMessage) {}

  public record GetMerchantContractNumberCreateData(String merchantContractNumber, Long responseCode, String responseMessage) {}

  public record GetTemplateXml(Long responseCode, String responseMessage, String templateName) {}

  public record GetTemplateXmlCreateData(Long responseCode, String responseMessage, String templateName) {}

  public record IntroduceMandator(String mandatorName, Long responseCode, String responseMessage) {}

  public record IntroduceMandatorCreateData(String mandatorName, Long responseCode, String responseMessage) {}

  public record IntroducePackage(Long responseCode, String responseMessage, String terminalTemplateDescription) {}

  public record IntroducePackageCreateData(Long responseCode, String responseMessage, String terminalTemplateDescription) {}

  public record KeepAlive(String hwserialno, String kaDateTimeFrom, String kaDateTimeTo, List<Object> keepAliveData, Map<String, Object> pagination, Long responseCode, String responseMessage, String terminalDateTimeFrom, String terminalDateTimeTo, Long terminalId) {}

  public record KeepAliveCreateData(String hwserialno, String kaDateTimeFrom, String kaDateTimeTo, List<Object> keepAliveData, Map<String, Object> pagination, Long responseCode, String responseMessage, String terminalDateTimeFrom, String terminalDateTimeTo, Long terminalId) {}

  public record ListTerminal(List<Object> corporateUuid, Map<String, Object> filter, Map<String, Object> pagination, Long responseCode, String responseMessage, List<Object> terminals) {}

  public record ListTerminalCreateData(List<Object> corporateUuid, Map<String, Object> filter, Map<String, Object> pagination, Long responseCode, String responseMessage, List<Object> terminals) {}

  public record MandatorClearingExport(String clearingDateFrom, String clearingDateTo, Map<String, Object> pagination, List<Object> records, Long responseCode, String responseMessage) {}

  public record MandatorClearingExportCreateData(String clearingDateFrom, String clearingDateTo, Map<String, Object> pagination, List<Object> records, Long responseCode, String responseMessage) {}

  public record MandatorClearingExportDownload(String clearingDateFrom, String clearingDateTo, String fileId, String filenameTemplate, Long responseCode, String responseMessage, String status) {}

  public record MandatorClearingExportDownloadLoadMatch(String id) {}

  public record MandatorClearingExportDownloadCreateData(String clearingDateFrom, String clearingDateTo, String fileId, String filenameTemplate, Long responseCode, String responseMessage, String status) {}

  public record MandatorClearingExportSummary(String clearingDateFrom, String clearingDateTo, List<Object> records, Long responseCode, String responseMessage) {}

  public record MandatorClearingExportSummaryCreateData(String clearingDateFrom, String clearingDateTo, List<Object> records, Long responseCode, String responseMessage) {}

  public record MerchantPortalServicesApi(String authorizationCode, String cardBrand, String clearingAmountFrom, String clearingAmountTo, String clearingCurrency, String clearingStatus, String corporateUUID, String orderByTransactionDate, Map<String, Object> pagination, String receiptNumber, String referencedTransactionId, String retrievalReferenceNumber, Long sourceId, String tecsengineResponseCodeFrom, String tecsengineResponseCodeTo, Long terminalId, String traceNumber, String transactionAmountFrom, String transactionAmountTo, String transactionDateFrom, String transactionDateTo, String transactionId, String transactionType, String wallet) {}

  public record MerchantPortalServicesApiCreateData(String authorizationCode, String cardBrand, String clearingAmountFrom, String clearingAmountTo, String clearingCurrency, String clearingStatus, String corporateUUID, String orderByTransactionDate, Map<String, Object> pagination, String receiptNumber, String referencedTransactionId, String retrievalReferenceNumber, Long sourceId, String tecsengineResponseCodeFrom, String tecsengineResponseCodeTo, Long terminalId, String traceNumber, String transactionAmountFrom, String transactionAmountTo, String transactionDateFrom, String transactionDateTo, String transactionId, String transactionType, String wallet) {}

  public record MoveTid(List<Object> productorderuuids, Long responseCode, String responseMessage, String targetPackageorderuuid, String targetProductorderuuid) {}

  public record MoveTidCreateData(List<Object> productorderuuids, Long responseCode, String responseMessage, String targetPackageorderuuid, String targetProductorderuuid) {}

  public record PaymentManual(String acquirerName, Long amount, String authorizationNumber, String cardNumber, String cardType, String currency, String cvc, String dateTimeTx, String expDate, String merchantId, String originalTransactionId, String password, String responseCode, String responseMessage, String terminalId, String transactionId, String txtype) {}

  public record PaymentManualCreateData(String acquirerName, Long amount, String authorizationNumber, String cardNumber, String cardType, String currency, String cvc, String dateTimeTx, String expDate, String merchantId, String originalTransactionId, String password, String responseCode, String responseMessage, String terminalId, String transactionId, String txtype) {}

  public record PaymentSred(Long amount, String currency, String device, String devicePayload, String expDate, String mode, String panMasked, String password, String serial, String serviceCode, String terminalId, String txtype) {}

  public record PaymentSredCreateData(Long amount, String currency, String device, String devicePayload, String expDate, String mode, String panMasked, String password, String serial, String serviceCode, String terminalId, String txtype) {}

  public record PreAuthTransactionCompletion(String acquirerId, String acquirerName, String actualBonusPoints, Long amount, String authorizationCode, String balanceAmount, String cardBrand, String cardNumber, String cardNumberReference, Long clientId, String currency, String cvc, String ecData, String ecrData, String emvData, Long exchangeFee, String exchangeRate, String languageCode, String merchantAddress, String merchantName, String merchantNumber, String messageType, Long originalTraceNumber, String originalTransactionId, String password, String paymentReason, String receiptFooter, String receiptHeader, Long receiptLayout, String receiptNumber, Long responseCode, String responseMessage, String serialNumber, String svc, Long terminalId, String terminalLocation, Long traceNumber, String transactionDate, String transactionId, String transactionType, String txType, String userData) {}

  public record PreAuthTransactionCompletionCreateData(String acquirerId, String acquirerName, String actualBonusPoints, Long amount, String authorizationCode, String balanceAmount, String cardBrand, String cardNumber, String cardNumberReference, Long clientId, String currency, String cvc, String ecData, String ecrData, String emvData, Long exchangeFee, String exchangeRate, String languageCode, String merchantAddress, String merchantName, String merchantNumber, String messageType, Long originalTraceNumber, String originalTransactionId, String password, String paymentReason, String receiptFooter, String receiptHeader, Long receiptLayout, String receiptNumber, Long responseCode, String responseMessage, String serialNumber, String svc, Long terminalId, String terminalLocation, Long traceNumber, String transactionDate, String transactionId, String transactionType, String txType, String userData) {}

  public record ReactivateTerminal(String corporateUuid, String packageOrderUuid, String productOrderUuid, String reactivationReason, Long responseCode, String responseMessage, Long terminalId) {}

  public record ReactivateTerminalCreateData(String corporateUuid, String packageOrderUuid, String productOrderUuid, String reactivationReason, Long responseCode, String responseMessage, Long terminalId) {}

  public record RefundTransaction(String acquirerId, String acquirerName, String actualBonusPoints, Long amount, String authorizationCode, String balanceAmount, String cardBrand, String cardNumber, Long clientId, String currency, String cvc, String ecData, String ecrData, String emvData, Long exchangeFee, String exchangeRate, String languageCode, String merchantAddress, String merchantName, String merchantNumber, String messageType, Long originalTraceNumber, String originalTransactionId, String password, String paymentReason, String receiptFooter, String receiptHeader, Long receiptLayout, String receiptNumber, Long responseCode, String responseMessage, String serialNumber, String svc, Long terminalId, String terminalLocation, Long traceNumber, String transactionDate, String transactionId, String txType, String userData) {}

  public record RefundTransactionCreateData(String acquirerId, String acquirerName, String actualBonusPoints, Long amount, String authorizationCode, String balanceAmount, String cardBrand, String cardNumber, Long clientId, String currency, String cvc, String ecData, String ecrData, String emvData, Long exchangeFee, String exchangeRate, String languageCode, String merchantAddress, String merchantName, String merchantNumber, String messageType, Long originalTraceNumber, String originalTransactionId, String password, String paymentReason, String receiptFooter, String receiptHeader, Long receiptLayout, String receiptNumber, Long responseCode, String responseMessage, String serialNumber, String svc, Long terminalId, String terminalLocation, Long traceNumber, String transactionDate, String transactionId, String txType, String userData) {}

  public record RegisterTecsCompany(String corporateUuid, String packageOrderUuid, Long partnerId, String partnerName, String productOrderUuid, Long responseCode, String responseMessage, String templateName) {}

  public record RegisterTecsCompanyCreateData(String corporateUuid, String packageOrderUuid, Long partnerId, String partnerName, String productOrderUuid, Long responseCode, String responseMessage, String templateName) {}

  public record RegisterTerminal(Map<String, Object> additionalData, String corporateUuid, String packageOrderUuid, String productOrderUuid, Long responseCode, String responseMessage, String tecsWebSecretKey, String templateName, String terminalCountryCode, Long terminalId, String terminalIdAcq, String terminalLanguageCode, String terminalLocation, String terminalSerialNumber, String tokenIOAlias, String tokenIOIban, String tokenIOMemberId, String webShopUrl) {}

  public record RegisterTerminalCreateData(Map<String, Object> additionalData, String corporateUuid, String packageOrderUuid, String productOrderUuid, Long responseCode, String responseMessage, String tecsWebSecretKey, String templateName, String terminalCountryCode, Long terminalId, String terminalIdAcq, String terminalLanguageCode, String terminalLocation, String terminalSerialNumber, String tokenIOAlias, String tokenIOIban, String tokenIOMemberId, String webShopUrl) {}

  public record ReportData(List<Object> cardBrandReportData, String clearingDateFrom, String clearingDateTo, String corporateId, String currency, Long responseCode, String responseMessage, Map<String, Object> sumOverCreditTx, Map<String, Object> sumOverDebitTx, Long terminalId) {}

  public record ReportDataCreateData(List<Object> cardBrandReportData, String clearingDateFrom, String clearingDateTo, String corporateId, String currency, Long responseCode, String responseMessage, Map<String, Object> sumOverCreditTx, Map<String, Object> sumOverDebitTx, Long terminalId) {}

  public record StatusTransaction(String acquirerName, String acquirerTerminalId, Long amount, String applicationCryptogram, Object authorizationCode, String authorizationDate, String cardBrand, String cardEntry, String cardExpiration, String cardNumber, Long clearingAmount, String clearingBatchId, String clearingCurrency, String clearingDate, String clearingProcessedDate, String clearingStatus, Long clientId, String currency, String cvm, String ecrData, String emvApplicationId, String emvApplicationLabel, String merchantName, String merchantNumber, String originalClientId, Long originalTerminalId, String originalTransactionId, String paymentReason, String receiptNumber, Long responseCode, String responseCodeFromAS, String responseMessage, String retrievalReferenceNumber, String serviceCode, String settlementStatus, Long sourceId, Long tecsengineResponseCode, String tecsengineResponseText, String terminalEndOfDayDate, Long terminalId, String terminalLocation, Long tipAmount, Long traceNumber, String transactionClearingDate, String transactionDate, String transactionId, Long transactionSeqNumber, String transactionServerDate, String transactionSource, String transactionType) {}

  public record StatusTransactionCreateData(String acquirerName, String acquirerTerminalId, Long amount, String applicationCryptogram, Object authorizationCode, String authorizationDate, String cardBrand, String cardEntry, String cardExpiration, String cardNumber, Long clearingAmount, String clearingBatchId, String clearingCurrency, String clearingDate, String clearingProcessedDate, String clearingStatus, Long clientId, String currency, String cvm, String ecrData, String emvApplicationId, String emvApplicationLabel, String merchantName, String merchantNumber, String originalClientId, Long originalTerminalId, String originalTransactionId, String paymentReason, String receiptNumber, Long responseCode, String responseCodeFromAS, String responseMessage, String retrievalReferenceNumber, String serviceCode, String settlementStatus, Long sourceId, Long tecsengineResponseCode, String tecsengineResponseText, String terminalEndOfDayDate, Long terminalId, String terminalLocation, Long tipAmount, Long traceNumber, String transactionClearingDate, String transactionDate, String transactionId, Long transactionSeqNumber, String transactionServerDate, String transactionSource, String transactionType) {}

  public record StoreTerminalParameter(Map<String, Object> acqTabNexo, String configVersion, Long responseCode, String responseMessage, String serialNumber, String tidSent) {}

  public record StoreTerminalParameterCreateData(Map<String, Object> acqTabNexo, String configVersion, Long responseCode, String responseMessage, String serialNumber, String tidSent) {}

  public record TerminalId(List<Object> deviceSerialNumber, List<Object> duplicateTerminalIds, Long responseCode, String responseMessage, List<Object> terminals) {}

  public record TerminalIdCreateData(List<Object> deviceSerialNumber, List<Object> duplicateTerminalIds, Long responseCode, String responseMessage, List<Object> terminals) {}

  public record TransactionHistory(String authorizationCode, String cardBrand, String clearingAmountFrom, String clearingAmountTo, String clearingCurrency, String clearingStatus, String corporateUUID, String orderByTransactionDate, Map<String, Object> pagination, String paymentTokenPublicId, String receiptNumber, String referencedTransactionId, Long responseCode, String responseMessage, String retrievalReferenceNumber, Long sourceId, String tecsengineResponseCodeFrom, String tecsengineResponseCodeTo, Long terminalId, String traceNumber, String transactionAmountFrom, String transactionAmountTo, String transactionDateFrom, String transactionDateTo, List<Object> transactionHistories, String transactionId, String transactionType, String wallet) {}

  public record TransactionHistoryCreateData(String authorizationCode, String cardBrand, String clearingAmountFrom, String clearingAmountTo, String clearingCurrency, String clearingStatus, String corporateUUID, String orderByTransactionDate, Map<String, Object> pagination, String paymentTokenPublicId, String receiptNumber, String referencedTransactionId, Long responseCode, String responseMessage, String retrievalReferenceNumber, Long sourceId, String tecsengineResponseCodeFrom, String tecsengineResponseCodeTo, Long terminalId, String traceNumber, String transactionAmountFrom, String transactionAmountTo, String transactionDateFrom, String transactionDateTo, List<Object> transactionHistories, String transactionId, String transactionType, String wallet) {}

  public record TransactionsCount(String period, Long responseCode, String responseMessage, String transactionDateFrom, String transactionDateTo, List<Object> transactionsCount) {}

  public record TransactionsCountCreateData(String period, Long responseCode, String responseMessage, String transactionDateFrom, String transactionDateTo, List<Object> transactionsCount) {}

  public record TransactionsCountCardBrand(String period, Long responseCode, String responseMessage, String transactionDateFrom, String transactionDateTo, List<Object> transactionsCount) {}

  public record TransactionsCountCardBrandCreateData(String period, Long responseCode, String responseMessage, String transactionDateFrom, String transactionDateTo, List<Object> transactionsCount) {}

  public record TransactionsTurnover(String period, Long responseCode, String responseMessage, String transactionDateFrom, String transactionDateTo, List<Object> turnovers) {}

  public record TransactionsTurnoverCreateData(String period, Long responseCode, String responseMessage, String transactionDateFrom, String transactionDateTo, List<Object> turnovers) {}

  public record UpdateMerchant(String city, String corporateUuid, String country, String merchantCategoryCode, String name, Long responseCode, String responseMessage, String state, String street, String vuNummer, String zipcode) {}

  public record UpdateMerchantCreateData(String city, String corporateUuid, String country, String merchantCategoryCode, String name, Long responseCode, String responseMessage, String state, String street, String vuNummer, String zipcode) {}

  public record UpdateTemplateXml(Long responseCode, String responseMessage, String templateName, String templateXml) {}

  public record UpdateTemplateXmlCreateData(Long responseCode, String responseMessage, String templateName, String templateXml) {}

  public record Version(String appName, String buildDate, String version) {}

  public record VersionLoadMatch(String appName, String buildDate, String version) {}

}
