// Typed reference models for the BluefinTecsMerchantServices SDK (C++).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params. The C++ SDK runtime is Value-based, so these structs are
// DOCUMENTATION / convenience types only — the SDK neither includes nor
// requires this header. Array fields surface as std::vector<Value>, object
// fields as std::map<std::string, Value>, and any/null fields as sdk::Value.
// Optional (req:false) members are flagged with a trailing "// optional"
// comment. Do not edit by hand.

#ifndef SDK_BLUEFINTECSMERCHANTSERVICES_TYPES_HPP
#define SDK_BLUEFINTECSMERCHANTSERVICES_TYPES_HPP

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "core/types.hpp"

namespace sdk {
namespace types {

struct CancelTransaction {
  std::string acquirerId;  // optional
  std::string acquirerName;  // optional
  std::string actualBonusPoints;  // optional
  int64_t amount;  // optional
  std::string authorizationCode;  // optional
  std::string balanceAmount;  // optional
  std::string cardBrand;  // optional
  std::string cardNumber;  // optional
  int64_t clientId;
  std::string currency;
  std::string cvc;  // optional
  std::string ecData;  // optional
  std::string ecrData;  // optional
  std::string emvData;  // optional
  int64_t exchangeFee;  // optional
  std::string exchangeRate;  // optional
  std::string languageCode;  // optional
  std::string merchantAddress;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string messageType;  // optional
  int64_t originalTraceNumber;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string paymentReason;  // optional
  std::string receiptFooter;  // optional
  std::string receiptHeader;  // optional
  int64_t receiptLayout;  // optional
  std::string receiptNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;  // optional
  std::string svc;  // optional
  int64_t terminalId;
  std::string terminalLocation;  // optional
  int64_t traceNumber;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  std::string txType;  // optional
  std::string userData;  // optional
};

struct CancelTransactionCreateData {
  std::string acquirerId;  // optional
  std::string acquirerName;  // optional
  std::string actualBonusPoints;  // optional
  int64_t amount;  // optional
  std::string authorizationCode;  // optional
  std::string balanceAmount;  // optional
  std::string cardBrand;  // optional
  std::string cardNumber;  // optional
  int64_t clientId;
  std::string currency;
  std::string cvc;  // optional
  std::string ecData;  // optional
  std::string ecrData;  // optional
  std::string emvData;  // optional
  int64_t exchangeFee;  // optional
  std::string exchangeRate;  // optional
  std::string languageCode;  // optional
  std::string merchantAddress;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string messageType;  // optional
  int64_t originalTraceNumber;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string paymentReason;  // optional
  std::string receiptFooter;  // optional
  std::string receiptHeader;  // optional
  int64_t receiptLayout;  // optional
  std::string receiptNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;  // optional
  std::string svc;  // optional
  int64_t terminalId;
  std::string terminalLocation;  // optional
  int64_t traceNumber;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  std::string txType;  // optional
  std::string userData;  // optional
};

struct CheckCardBlackListed {
  std::string cardNo;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct CheckCardBlackListedCreateData {
  std::string cardNo;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct CreateProduct {
  int64_t acquirerId;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
  std::string templateType;
  std::string templateXml;
  std::string terminalType;
};

struct CreateProductCreateData {
  int64_t acquirerId;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
  std::string templateType;
  std::string templateXml;
  std::string terminalType;
};

struct DeactivateTerminal {
  std::string corporateUuid;  // optional
  std::string deactivationReason;
  std::string packageOrderUuid;  // optional
  std::string productOrderUuid;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
};

struct DeactivateTerminalCreateData {
  std::string corporateUuid;  // optional
  std::string deactivationReason;
  std::string packageOrderUuid;  // optional
  std::string productOrderUuid;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
};

struct DigitalServicesApi {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t txCount;  // optional
  std::string txIdEnd;  // optional
  std::string txIdStart;  // optional
  int64_t txSeqNoEnd;  // optional
  int64_t txSeqNoStart;  // optional
  int64_t txTotal;  // optional
};

struct DigitalServicesApiLoadMatch {
  std::string clearingDateFrom;  // optional
  std::string clearingDateTo;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t txCount;  // optional
  std::string txIdEnd;  // optional
  std::string txIdStart;  // optional
  int64_t txSeqNoEnd;  // optional
  int64_t txSeqNoStart;  // optional
  int64_t txTotal;  // optional
};

struct DigitalServicesApiCreateData {
  std::string file_id;
  std::string clearingDateFrom;
  std::string clearingDateTo;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t txCount;  // optional
  std::string txIdEnd;  // optional
  std::string txIdStart;  // optional
  int64_t txSeqNoEnd;  // optional
  int64_t txSeqNoStart;  // optional
  int64_t txTotal;  // optional
};

struct EcDataEcom {
  std::string ecomData;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
  std::string transactionId;
  std::string transactionType;
};

struct EcDataEcomCreateData {
  std::string ecomData;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
  std::string transactionId;
  std::string transactionType;
};

struct EcomParameter {
  std::string ecomPass;  // optional
  std::string ecomSkey;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
};

struct EcomParameterCreateData {
  std::string ecomPass;  // optional
  std::string ecomSkey;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
};

struct EcrData {
  std::string ecrData;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
  std::string transactionId;
  std::string transactionType;
};

struct EcrDataCreateData {
  std::string ecrData;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
  std::string transactionId;
  std::string transactionType;
};

struct EmvData {
  std::string emvData;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
  std::string transactionId;
  std::string transactionType;
};

struct EmvDataCreateData {
  std::string emvData;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
  std::string transactionId;
  std::string transactionType;
};

struct EnableAcquiring {
  int64_t accountNo;  // optional
  std::map<std::string, Value> additionalData;  // optional
  std::string corporateUuid;
  std::string currency;
  int64_t merchantCategoryCode;
  std::string packageOrderUuid;
  std::string productOrderUuid;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t sortingCode;  // optional
  std::string templateName;
  std::string terminalIdAcq;  // optional
  std::vector<Value> terminalIds;  // optional
  std::string vuNummer;  // optional
};

struct EnableAcquiringCreateData {
  int64_t accountNo;  // optional
  std::map<std::string, Value> additionalData;  // optional
  std::string corporateUuid;
  std::string currency;
  int64_t merchantCategoryCode;
  std::string packageOrderUuid;
  std::string productOrderUuid;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t sortingCode;  // optional
  std::string templateName;
  std::string terminalIdAcq;  // optional
  std::vector<Value> terminalIds;  // optional
  std::string vuNummer;  // optional
};

struct GetMerchantContractNumber {
  std::string merchantContractNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct GetMerchantContractNumberCreateData {
  std::string merchantContractNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct GetTemplateXml {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
};

struct GetTemplateXmlCreateData {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
};

struct IntroduceMandator {
  std::string mandatorName;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct IntroduceMandatorCreateData {
  std::string mandatorName;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct IntroducePackage {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string terminalTemplateDescription;
};

struct IntroducePackageCreateData {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string terminalTemplateDescription;
};

struct KeepAlive {
  std::string hwserialno;  // optional
  std::string kaDateTimeFrom;  // optional
  std::string kaDateTimeTo;  // optional
  std::vector<Value> keepAliveData;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string terminalDateTimeFrom;  // optional
  std::string terminalDateTimeTo;  // optional
  int64_t terminalId;  // optional
};

struct KeepAliveCreateData {
  std::string hwserialno;  // optional
  std::string kaDateTimeFrom;  // optional
  std::string kaDateTimeTo;  // optional
  std::vector<Value> keepAliveData;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string terminalDateTimeFrom;  // optional
  std::string terminalDateTimeTo;  // optional
  int64_t terminalId;  // optional
};

struct ListTerminal {
  std::vector<Value> corporateUuid;  // optional
  std::map<std::string, Value> filter;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> terminals;  // optional
};

struct ListTerminalCreateData {
  std::vector<Value> corporateUuid;  // optional
  std::map<std::string, Value> filter;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> terminals;  // optional
};

struct MandatorClearingExport {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::map<std::string, Value> pagination;  // optional
  std::vector<Value> records;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct MandatorClearingExportCreateData {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::map<std::string, Value> pagination;  // optional
  std::vector<Value> records;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct MandatorClearingExportDownload {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::string fileId;  // optional
  std::string filenameTemplate;  // optional
  std::string id;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string status;  // optional
};

struct MandatorClearingExportDownloadLoadMatch {
  std::string id;
};

struct MandatorClearingExportDownloadCreateData {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::string fileId;  // optional
  std::string filenameTemplate;  // optional
  std::string id;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string status;  // optional
};

struct MandatorClearingExportSummary {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::vector<Value> records;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct MandatorClearingExportSummaryCreateData {
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::vector<Value> records;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct MerchantPortalServicesApi {
  std::string authorizationCode;  // optional
  std::string cardBrand;  // optional
  std::string clearingAmountFrom;  // optional
  std::string clearingAmountTo;  // optional
  std::string clearingCurrency;  // optional
  std::string clearingStatus;  // optional
  std::string corporateUUID;  // optional
  std::string orderByTransactionDate;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string receiptNumber;  // optional
  std::string referencedTransactionId;  // optional
  std::string retrievalReferenceNumber;  // optional
  int64_t sourceId;  // optional
  std::string tecsengineResponseCodeFrom;  // optional
  std::string tecsengineResponseCodeTo;  // optional
  int64_t terminalId;  // optional
  std::string traceNumber;  // optional
  std::string transactionAmountFrom;  // optional
  std::string transactionAmountTo;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::string transactionId;  // optional
  std::string transactionType;  // optional
  std::string wallet;  // optional
};

struct MerchantPortalServicesApiCreateData {
  std::string authorizationCode;  // optional
  std::string cardBrand;  // optional
  std::string clearingAmountFrom;  // optional
  std::string clearingAmountTo;  // optional
  std::string clearingCurrency;  // optional
  std::string clearingStatus;  // optional
  std::string corporateUUID;  // optional
  std::string orderByTransactionDate;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string receiptNumber;  // optional
  std::string referencedTransactionId;  // optional
  std::string retrievalReferenceNumber;  // optional
  int64_t sourceId;  // optional
  std::string tecsengineResponseCodeFrom;  // optional
  std::string tecsengineResponseCodeTo;  // optional
  int64_t terminalId;  // optional
  std::string traceNumber;  // optional
  std::string transactionAmountFrom;  // optional
  std::string transactionAmountTo;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::string transactionId;  // optional
  std::string transactionType;  // optional
  std::string wallet;  // optional
};

struct MoveTid {
  std::vector<Value> productorderuuids;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string targetPackageorderuuid;  // optional
  std::string targetProductorderuuid;  // optional
};

struct MoveTidCreateData {
  std::vector<Value> productorderuuids;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string targetPackageorderuuid;  // optional
  std::string targetProductorderuuid;  // optional
};

struct PaymentManual {
  std::string acquirerName;  // optional
  int64_t amount;
  std::string authorizationNumber;  // optional
  std::string cardNumber;
  std::string cardType;  // optional
  std::string currency;
  std::string cvc;  // optional
  std::string dateTimeTx;  // optional
  std::string expDate;
  std::string merchantId;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string responseCode;  // optional
  std::string responseMessage;  // optional
  std::string terminalId;  // optional
  std::string transactionId;  // optional
  std::string txtype;
};

struct PaymentManualCreateData {
  std::string acquirerName;  // optional
  int64_t amount;
  std::string authorizationNumber;  // optional
  std::string cardNumber;
  std::string cardType;  // optional
  std::string currency;
  std::string cvc;  // optional
  std::string dateTimeTx;  // optional
  std::string expDate;
  std::string merchantId;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string responseCode;  // optional
  std::string responseMessage;  // optional
  std::string terminalId;  // optional
  std::string transactionId;  // optional
  std::string txtype;
};

struct PaymentSred {
  int64_t amount;
  std::string currency;
  std::string device;  // optional
  std::string devicePayload;
  std::string expDate;  // optional
  std::string mode;  // optional
  std::string panMasked;  // optional
  std::string password;  // optional
  std::string serial;  // optional
  std::string serviceCode;  // optional
  std::string terminalId;
  std::string txtype;
};

struct PaymentSredCreateData {
  int64_t amount;
  std::string currency;
  std::string device;  // optional
  std::string devicePayload;
  std::string expDate;  // optional
  std::string mode;  // optional
  std::string panMasked;  // optional
  std::string password;  // optional
  std::string serial;  // optional
  std::string serviceCode;  // optional
  std::string terminalId;
  std::string txtype;
};

struct PreAuthTransactionCompletion {
  std::string acquirerId;  // optional
  std::string acquirerName;  // optional
  std::string actualBonusPoints;  // optional
  int64_t amount;  // optional
  std::string authorizationCode;  // optional
  std::string balanceAmount;  // optional
  std::string cardBrand;  // optional
  std::string cardNumber;  // optional
  std::string cardNumberReference;
  int64_t clientId;
  std::string currency;
  std::string cvc;  // optional
  std::string ecData;  // optional
  std::string ecrData;  // optional
  std::string emvData;  // optional
  int64_t exchangeFee;  // optional
  std::string exchangeRate;  // optional
  std::string languageCode;  // optional
  std::string merchantAddress;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string messageType;  // optional
  int64_t originalTraceNumber;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string paymentReason;  // optional
  std::string receiptFooter;  // optional
  std::string receiptHeader;  // optional
  int64_t receiptLayout;  // optional
  std::string receiptNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;  // optional
  std::string svc;  // optional
  int64_t terminalId;
  std::string terminalLocation;  // optional
  int64_t traceNumber;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  std::string transactionType;
  std::string txType;  // optional
  std::string userData;  // optional
};

struct PreAuthTransactionCompletionCreateData {
  std::string acquirerId;  // optional
  std::string acquirerName;  // optional
  std::string actualBonusPoints;  // optional
  int64_t amount;  // optional
  std::string authorizationCode;  // optional
  std::string balanceAmount;  // optional
  std::string cardBrand;  // optional
  std::string cardNumber;  // optional
  std::string cardNumberReference;
  int64_t clientId;
  std::string currency;
  std::string cvc;  // optional
  std::string ecData;  // optional
  std::string ecrData;  // optional
  std::string emvData;  // optional
  int64_t exchangeFee;  // optional
  std::string exchangeRate;  // optional
  std::string languageCode;  // optional
  std::string merchantAddress;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string messageType;  // optional
  int64_t originalTraceNumber;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string paymentReason;  // optional
  std::string receiptFooter;  // optional
  std::string receiptHeader;  // optional
  int64_t receiptLayout;  // optional
  std::string receiptNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;  // optional
  std::string svc;  // optional
  int64_t terminalId;
  std::string terminalLocation;  // optional
  int64_t traceNumber;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  std::string transactionType;
  std::string txType;  // optional
  std::string userData;  // optional
};

struct ReactivateTerminal {
  std::string corporateUuid;  // optional
  std::string packageOrderUuid;  // optional
  std::string productOrderUuid;  // optional
  std::string reactivationReason;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
};

struct ReactivateTerminalCreateData {
  std::string corporateUuid;  // optional
  std::string packageOrderUuid;  // optional
  std::string productOrderUuid;  // optional
  std::string reactivationReason;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  int64_t terminalId;
};

struct RefundTransaction {
  std::string acquirerId;  // optional
  std::string acquirerName;  // optional
  std::string actualBonusPoints;  // optional
  int64_t amount;  // optional
  std::string authorizationCode;  // optional
  std::string balanceAmount;  // optional
  std::string cardBrand;  // optional
  std::string cardNumber;  // optional
  int64_t clientId;
  std::string currency;
  std::string cvc;  // optional
  std::string ecData;  // optional
  std::string ecrData;  // optional
  std::string emvData;  // optional
  int64_t exchangeFee;  // optional
  std::string exchangeRate;  // optional
  std::string languageCode;  // optional
  std::string merchantAddress;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string messageType;  // optional
  int64_t originalTraceNumber;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string paymentReason;  // optional
  std::string receiptFooter;  // optional
  std::string receiptHeader;  // optional
  int64_t receiptLayout;  // optional
  std::string receiptNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;  // optional
  std::string svc;  // optional
  int64_t terminalId;
  std::string terminalLocation;  // optional
  int64_t traceNumber;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  std::string txType;  // optional
  std::string userData;  // optional
};

struct RefundTransactionCreateData {
  std::string acquirerId;  // optional
  std::string acquirerName;  // optional
  std::string actualBonusPoints;  // optional
  int64_t amount;  // optional
  std::string authorizationCode;  // optional
  std::string balanceAmount;  // optional
  std::string cardBrand;  // optional
  std::string cardNumber;  // optional
  int64_t clientId;
  std::string currency;
  std::string cvc;  // optional
  std::string ecData;  // optional
  std::string ecrData;  // optional
  std::string emvData;  // optional
  int64_t exchangeFee;  // optional
  std::string exchangeRate;  // optional
  std::string languageCode;  // optional
  std::string merchantAddress;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string messageType;  // optional
  int64_t originalTraceNumber;  // optional
  std::string originalTransactionId;  // optional
  std::string password;  // optional
  std::string paymentReason;  // optional
  std::string receiptFooter;  // optional
  std::string receiptHeader;  // optional
  int64_t receiptLayout;  // optional
  std::string receiptNumber;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;  // optional
  std::string svc;  // optional
  int64_t terminalId;
  std::string terminalLocation;  // optional
  int64_t traceNumber;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  std::string txType;  // optional
  std::string userData;  // optional
};

struct RegisterTecsCompany {
  std::string corporateUuid;
  std::string packageOrderUuid;
  int64_t partnerId;  // optional
  std::string partnerName;  // optional
  std::string productOrderUuid;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
};

struct RegisterTecsCompanyCreateData {
  std::string corporateUuid;
  std::string packageOrderUuid;
  int64_t partnerId;  // optional
  std::string partnerName;  // optional
  std::string productOrderUuid;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
};

struct RegisterTerminal {
  std::map<std::string, Value> additionalData;  // optional
  std::string corporateUuid;
  std::string packageOrderUuid;
  std::string productOrderUuid;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string tecsWebSecretKey;  // optional
  std::string templateName;
  std::string terminalCountryCode;
  int64_t terminalId;  // optional
  std::string terminalIdAcq;  // optional
  std::string terminalLanguageCode;
  std::string terminalLocation;
  std::string terminalSerialNumber;  // optional
  std::string tokenIOAlias;  // optional
  std::string tokenIOIban;  // optional
  std::string tokenIOMemberId;  // optional
  std::string webShopUrl;  // optional
};

struct RegisterTerminalCreateData {
  std::map<std::string, Value> additionalData;  // optional
  std::string corporateUuid;
  std::string packageOrderUuid;
  std::string productOrderUuid;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string tecsWebSecretKey;  // optional
  std::string templateName;
  std::string terminalCountryCode;
  int64_t terminalId;  // optional
  std::string terminalIdAcq;  // optional
  std::string terminalLanguageCode;
  std::string terminalLocation;
  std::string terminalSerialNumber;  // optional
  std::string tokenIOAlias;  // optional
  std::string tokenIOIban;  // optional
  std::string tokenIOMemberId;  // optional
  std::string webShopUrl;  // optional
};

struct ReportData {
  std::vector<Value> cardBrandReportData;  // optional
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::string corporateId;
  std::string currency;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sumOverCreditTx;  // optional
  std::map<std::string, Value> sumOverDebitTx;  // optional
  int64_t terminalId;  // optional
};

struct ReportDataCreateData {
  std::vector<Value> cardBrandReportData;  // optional
  std::string clearingDateFrom;
  std::string clearingDateTo;
  std::string corporateId;
  std::string currency;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sumOverCreditTx;  // optional
  std::map<std::string, Value> sumOverDebitTx;  // optional
  int64_t terminalId;  // optional
};

struct StatusTransaction {
  std::string acquirerName;  // optional
  std::string acquirerTerminalId;  // optional
  int64_t amount;  // optional
  std::string applicationCryptogram;  // optional
  Value authorizationCode;  // optional
  std::string authorizationDate;  // optional
  std::string cardBrand;  // optional
  std::string cardEntry;  // optional
  std::string cardExpiration;  // optional
  std::string cardNumber;  // optional
  int64_t clearingAmount;  // optional
  std::string clearingBatchId;  // optional
  std::string clearingCurrency;  // optional
  std::string clearingDate;  // optional
  std::string clearingProcessedDate;  // optional
  std::string clearingStatus;  // optional
  int64_t clientId;  // optional
  std::string currency;  // optional
  std::string cvm;  // optional
  std::string ecrData;  // optional
  std::string emvApplicationId;  // optional
  std::string emvApplicationLabel;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string originalClientId;  // optional
  int64_t originalTerminalId;  // optional
  std::string originalTransactionId;  // optional
  std::string paymentReason;  // optional
  std::string receiptNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseCodeFromAS;  // optional
  std::string responseMessage;  // optional
  std::string retrievalReferenceNumber;  // optional
  std::string serviceCode;  // optional
  std::string settlementStatus;  // optional
  int64_t sourceId;  // optional
  int64_t tecsengineResponseCode;  // optional
  std::string tecsengineResponseText;  // optional
  std::string terminalEndOfDayDate;  // optional
  int64_t terminalId;  // optional
  std::string terminalLocation;  // optional
  int64_t tipAmount;  // optional
  int64_t traceNumber;  // optional
  std::string transactionClearingDate;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  int64_t transactionSeqNumber;  // optional
  std::string transactionServerDate;  // optional
  std::string transactionSource;  // optional
  std::string transactionType;  // optional
};

struct StatusTransactionCreateData {
  std::string acquirerName;  // optional
  std::string acquirerTerminalId;  // optional
  int64_t amount;  // optional
  std::string applicationCryptogram;  // optional
  Value authorizationCode;  // optional
  std::string authorizationDate;  // optional
  std::string cardBrand;  // optional
  std::string cardEntry;  // optional
  std::string cardExpiration;  // optional
  std::string cardNumber;  // optional
  int64_t clearingAmount;  // optional
  std::string clearingBatchId;  // optional
  std::string clearingCurrency;  // optional
  std::string clearingDate;  // optional
  std::string clearingProcessedDate;  // optional
  std::string clearingStatus;  // optional
  int64_t clientId;  // optional
  std::string currency;  // optional
  std::string cvm;  // optional
  std::string ecrData;  // optional
  std::string emvApplicationId;  // optional
  std::string emvApplicationLabel;  // optional
  std::string merchantName;  // optional
  std::string merchantNumber;  // optional
  std::string originalClientId;  // optional
  int64_t originalTerminalId;  // optional
  std::string originalTransactionId;  // optional
  std::string paymentReason;  // optional
  std::string receiptNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseCodeFromAS;  // optional
  std::string responseMessage;  // optional
  std::string retrievalReferenceNumber;  // optional
  std::string serviceCode;  // optional
  std::string settlementStatus;  // optional
  int64_t sourceId;  // optional
  int64_t tecsengineResponseCode;  // optional
  std::string tecsengineResponseText;  // optional
  std::string terminalEndOfDayDate;  // optional
  int64_t terminalId;  // optional
  std::string terminalLocation;  // optional
  int64_t tipAmount;  // optional
  int64_t traceNumber;  // optional
  std::string transactionClearingDate;  // optional
  std::string transactionDate;  // optional
  std::string transactionId;  // optional
  int64_t transactionSeqNumber;  // optional
  std::string transactionServerDate;  // optional
  std::string transactionSource;  // optional
  std::string transactionType;  // optional
};

struct StoreTerminalParameter {
  std::map<std::string, Value> acqTabNexo;  // optional
  std::string configVersion;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;
  std::string tidSent;  // optional
};

struct StoreTerminalParameterCreateData {
  std::map<std::string, Value> acqTabNexo;  // optional
  std::string configVersion;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string serialNumber;
  std::string tidSent;  // optional
};

struct TerminalId {
  std::vector<Value> deviceSerialNumber;
  std::vector<Value> duplicateTerminalIds;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> terminals;  // optional
};

struct TerminalIdCreateData {
  std::vector<Value> deviceSerialNumber;
  std::vector<Value> duplicateTerminalIds;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> terminals;  // optional
};

struct TransactionHistory {
  std::string authorizationCode;  // optional
  std::string cardBrand;  // optional
  std::string clearingAmountFrom;  // optional
  std::string clearingAmountTo;  // optional
  std::string clearingCurrency;  // optional
  std::string clearingStatus;  // optional
  std::string corporateUUID;  // optional
  std::string orderByTransactionDate;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string paymentTokenPublicId;  // optional
  std::string receiptNumber;  // optional
  std::string referencedTransactionId;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string retrievalReferenceNumber;  // optional
  int64_t sourceId;  // optional
  std::string tecsengineResponseCodeFrom;  // optional
  std::string tecsengineResponseCodeTo;  // optional
  int64_t terminalId;  // optional
  std::string traceNumber;  // optional
  std::string transactionAmountFrom;  // optional
  std::string transactionAmountTo;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> transactionHistories;  // optional
  std::string transactionId;  // optional
  std::string transactionType;  // optional
  std::string wallet;  // optional
};

struct TransactionHistoryCreateData {
  std::string authorizationCode;  // optional
  std::string cardBrand;  // optional
  std::string clearingAmountFrom;  // optional
  std::string clearingAmountTo;  // optional
  std::string clearingCurrency;  // optional
  std::string clearingStatus;  // optional
  std::string corporateUUID;  // optional
  std::string orderByTransactionDate;  // optional
  std::map<std::string, Value> pagination;  // optional
  std::string paymentTokenPublicId;  // optional
  std::string receiptNumber;  // optional
  std::string referencedTransactionId;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string retrievalReferenceNumber;  // optional
  int64_t sourceId;  // optional
  std::string tecsengineResponseCodeFrom;  // optional
  std::string tecsengineResponseCodeTo;  // optional
  int64_t terminalId;  // optional
  std::string traceNumber;  // optional
  std::string transactionAmountFrom;  // optional
  std::string transactionAmountTo;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> transactionHistories;  // optional
  std::string transactionId;  // optional
  std::string transactionType;  // optional
  std::string wallet;  // optional
};

struct TransactionsCount {
  std::string period;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> transactionsCount;  // optional
};

struct TransactionsCountCreateData {
  std::string period;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> transactionsCount;  // optional
};

struct TransactionsCountCardBrand {
  std::string period;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> transactionsCount;  // optional
};

struct TransactionsCountCardBrandCreateData {
  std::string period;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> transactionsCount;  // optional
};

struct TransactionsTurnover {
  std::string period;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> turnovers;  // optional
};

struct TransactionsTurnoverCreateData {
  std::string period;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string transactionDateFrom;  // optional
  std::string transactionDateTo;  // optional
  std::vector<Value> turnovers;  // optional
};

struct UpdateMerchant {
  std::string city;  // optional
  std::string corporateUuid;
  std::string country;  // optional
  std::string merchantCategoryCode;  // optional
  std::string name;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string state;  // optional
  std::string street;  // optional
  std::string vuNummer;  // optional
  std::string zipcode;  // optional
};

struct UpdateMerchantCreateData {
  std::string city;  // optional
  std::string corporateUuid;
  std::string country;  // optional
  std::string merchantCategoryCode;  // optional
  std::string name;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string state;  // optional
  std::string street;  // optional
  std::string vuNummer;  // optional
  std::string zipcode;  // optional
};

struct UpdateTemplateXml {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
  std::string templateXml;
};

struct UpdateTemplateXmlCreateData {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string templateName;
  std::string templateXml;
};

struct Version {
  std::string appName;  // optional
  std::string buildDate;  // optional
  std::string version;  // optional
};

struct VersionLoadMatch {
  std::string appName;  // optional
  std::string buildDate;  // optional
  std::string version;  // optional
};

} // namespace types
} // namespace sdk

#endif // SDK_BLUEFINTECSMERCHANTSERVICES_TYPES_HPP
