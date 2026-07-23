// BluefinTecsMerchantServices SDK client. All transport and pipeline behaviour lives in the
// SdkClient base (core/types.hpp); this class binds the API-specific entity
// accessors and the test-mode constructor.

#ifndef SDK_CORE_CLIENT_HPP
#define SDK_CORE_CLIENT_HPP

#include <memory>

#include "../core/types.hpp"
#include "../entity/entities.hpp"

namespace sdk {

class BluefinTecsMerchantServicesSDK : public SdkClient {
public:
  explicit BluefinTecsMerchantServicesSDK(Value options = Value::undef()) : SdkClient(options) {}


  // CancelTransaction entity bound to this client.
  std::shared_ptr<CancelTransactionEntity> cancel_transaction(Value entopts = Value::undef()) {
    return std::make_shared<CancelTransactionEntity>(this, entopts);
  }

  // CheckCardBlackListed entity bound to this client.
  std::shared_ptr<CheckCardBlackListedEntity> check_card_black_listed(Value entopts = Value::undef()) {
    return std::make_shared<CheckCardBlackListedEntity>(this, entopts);
  }

  // CreateProduct entity bound to this client.
  std::shared_ptr<CreateProductEntity> create_product(Value entopts = Value::undef()) {
    return std::make_shared<CreateProductEntity>(this, entopts);
  }

  // DeactivateTerminal entity bound to this client.
  std::shared_ptr<DeactivateTerminalEntity> deactivate_terminal(Value entopts = Value::undef()) {
    return std::make_shared<DeactivateTerminalEntity>(this, entopts);
  }

  // DigitalServicesApi entity bound to this client.
  std::shared_ptr<DigitalServicesApiEntity> digital_services_api(Value entopts = Value::undef()) {
    return std::make_shared<DigitalServicesApiEntity>(this, entopts);
  }

  // EcDataEcom entity bound to this client.
  std::shared_ptr<EcDataEcomEntity> ec_data_ecom(Value entopts = Value::undef()) {
    return std::make_shared<EcDataEcomEntity>(this, entopts);
  }

  // EcomParameter entity bound to this client.
  std::shared_ptr<EcomParameterEntity> ecom_parameter(Value entopts = Value::undef()) {
    return std::make_shared<EcomParameterEntity>(this, entopts);
  }

  // EcrData entity bound to this client.
  std::shared_ptr<EcrDataEntity> ecr_data(Value entopts = Value::undef()) {
    return std::make_shared<EcrDataEntity>(this, entopts);
  }

  // EmvData entity bound to this client.
  std::shared_ptr<EmvDataEntity> emv_data(Value entopts = Value::undef()) {
    return std::make_shared<EmvDataEntity>(this, entopts);
  }

  // EnableAcquiring entity bound to this client.
  std::shared_ptr<EnableAcquiringEntity> enable_acquiring(Value entopts = Value::undef()) {
    return std::make_shared<EnableAcquiringEntity>(this, entopts);
  }

  // GetMerchantContractNumber entity bound to this client.
  std::shared_ptr<GetMerchantContractNumberEntity> get_merchant_contract_number(Value entopts = Value::undef()) {
    return std::make_shared<GetMerchantContractNumberEntity>(this, entopts);
  }

  // GetTemplateXml entity bound to this client.
  std::shared_ptr<GetTemplateXmlEntity> get_template_xml(Value entopts = Value::undef()) {
    return std::make_shared<GetTemplateXmlEntity>(this, entopts);
  }

  // IntroduceMandator entity bound to this client.
  std::shared_ptr<IntroduceMandatorEntity> introduce_mandator(Value entopts = Value::undef()) {
    return std::make_shared<IntroduceMandatorEntity>(this, entopts);
  }

  // IntroducePackage entity bound to this client.
  std::shared_ptr<IntroducePackageEntity> introduce_package(Value entopts = Value::undef()) {
    return std::make_shared<IntroducePackageEntity>(this, entopts);
  }

  // KeepAlive entity bound to this client.
  std::shared_ptr<KeepAliveEntity> keep_alive(Value entopts = Value::undef()) {
    return std::make_shared<KeepAliveEntity>(this, entopts);
  }

  // ListTerminal entity bound to this client.
  std::shared_ptr<ListTerminalEntity> list_terminal(Value entopts = Value::undef()) {
    return std::make_shared<ListTerminalEntity>(this, entopts);
  }

  // MandatorClearingExport entity bound to this client.
  std::shared_ptr<MandatorClearingExportEntity> mandator_clearing_export(Value entopts = Value::undef()) {
    return std::make_shared<MandatorClearingExportEntity>(this, entopts);
  }

  // MandatorClearingExportDownload entity bound to this client.
  std::shared_ptr<MandatorClearingExportDownloadEntity> mandator_clearing_export_download(Value entopts = Value::undef()) {
    return std::make_shared<MandatorClearingExportDownloadEntity>(this, entopts);
  }

  // MandatorClearingExportSummary entity bound to this client.
  std::shared_ptr<MandatorClearingExportSummaryEntity> mandator_clearing_export_summary(Value entopts = Value::undef()) {
    return std::make_shared<MandatorClearingExportSummaryEntity>(this, entopts);
  }

  // MerchantPortalServicesApi entity bound to this client.
  std::shared_ptr<MerchantPortalServicesApiEntity> merchant_portal_services_api(Value entopts = Value::undef()) {
    return std::make_shared<MerchantPortalServicesApiEntity>(this, entopts);
  }

  // MoveTid entity bound to this client.
  std::shared_ptr<MoveTidEntity> move_tid(Value entopts = Value::undef()) {
    return std::make_shared<MoveTidEntity>(this, entopts);
  }

  // PaymentManual entity bound to this client.
  std::shared_ptr<PaymentManualEntity> payment_manual(Value entopts = Value::undef()) {
    return std::make_shared<PaymentManualEntity>(this, entopts);
  }

  // PaymentSred entity bound to this client.
  std::shared_ptr<PaymentSredEntity> payment_sred(Value entopts = Value::undef()) {
    return std::make_shared<PaymentSredEntity>(this, entopts);
  }

  // PreAuthTransactionCompletion entity bound to this client.
  std::shared_ptr<PreAuthTransactionCompletionEntity> pre_auth_transaction_completion(Value entopts = Value::undef()) {
    return std::make_shared<PreAuthTransactionCompletionEntity>(this, entopts);
  }

  // ReactivateTerminal entity bound to this client.
  std::shared_ptr<ReactivateTerminalEntity> reactivate_terminal(Value entopts = Value::undef()) {
    return std::make_shared<ReactivateTerminalEntity>(this, entopts);
  }

  // RefundTransaction entity bound to this client.
  std::shared_ptr<RefundTransactionEntity> refund_transaction(Value entopts = Value::undef()) {
    return std::make_shared<RefundTransactionEntity>(this, entopts);
  }

  // RegisterTecsCompany entity bound to this client.
  std::shared_ptr<RegisterTecsCompanyEntity> register_tecs_company(Value entopts = Value::undef()) {
    return std::make_shared<RegisterTecsCompanyEntity>(this, entopts);
  }

  // RegisterTerminal entity bound to this client.
  std::shared_ptr<RegisterTerminalEntity> register_terminal(Value entopts = Value::undef()) {
    return std::make_shared<RegisterTerminalEntity>(this, entopts);
  }

  // ReportData entity bound to this client.
  std::shared_ptr<ReportDataEntity> report_data(Value entopts = Value::undef()) {
    return std::make_shared<ReportDataEntity>(this, entopts);
  }

  // StatusTransaction entity bound to this client.
  std::shared_ptr<StatusTransactionEntity> status_transaction(Value entopts = Value::undef()) {
    return std::make_shared<StatusTransactionEntity>(this, entopts);
  }

  // StoreTerminalParameter entity bound to this client.
  std::shared_ptr<StoreTerminalParameterEntity> store_terminal_parameter(Value entopts = Value::undef()) {
    return std::make_shared<StoreTerminalParameterEntity>(this, entopts);
  }

  // TerminalId entity bound to this client.
  std::shared_ptr<TerminalIdEntity> terminal_id(Value entopts = Value::undef()) {
    return std::make_shared<TerminalIdEntity>(this, entopts);
  }

  // TransactionHistory entity bound to this client.
  std::shared_ptr<TransactionHistoryEntity> transaction_history(Value entopts = Value::undef()) {
    return std::make_shared<TransactionHistoryEntity>(this, entopts);
  }

  // TransactionsCount entity bound to this client.
  std::shared_ptr<TransactionsCountEntity> transactions_count(Value entopts = Value::undef()) {
    return std::make_shared<TransactionsCountEntity>(this, entopts);
  }

  // TransactionsCountCardBrand entity bound to this client.
  std::shared_ptr<TransactionsCountCardBrandEntity> transactions_count_card_brand(Value entopts = Value::undef()) {
    return std::make_shared<TransactionsCountCardBrandEntity>(this, entopts);
  }

  // TransactionsTurnover entity bound to this client.
  std::shared_ptr<TransactionsTurnoverEntity> transactions_turnover(Value entopts = Value::undef()) {
    return std::make_shared<TransactionsTurnoverEntity>(this, entopts);
  }

  // UpdateMerchant entity bound to this client.
  std::shared_ptr<UpdateMerchantEntity> update_merchant(Value entopts = Value::undef()) {
    return std::make_shared<UpdateMerchantEntity>(this, entopts);
  }

  // UpdateTemplateXml entity bound to this client.
  std::shared_ptr<UpdateTemplateXmlEntity> update_template_xml(Value entopts = Value::undef()) {
    return std::make_shared<UpdateTemplateXmlEntity>(this, entopts);
  }

  // Version entity bound to this client.
  std::shared_ptr<VersionEntity> version(Value entopts = Value::undef()) {
    return std::make_shared<VersionEntity>(this, entopts);
  }


  // testSDK builds a client in test mode: the test feature is activated,
  // installing the in-memory mock transport (no network activity).
  static std::shared_ptr<BluefinTecsMerchantServicesSDK> testSDK() {
    return testSDK(Value::undef(), Value::undef());
  }

  static std::shared_ptr<BluefinTecsMerchantServicesSDK> testSDK(Value testopts, Value sdkopts) {
    auto sdk = std::make_shared<BluefinTecsMerchantServicesSDK>(SdkClient::testOptions(testopts, sdkopts));
    sdk->mode = "test";
    return sdk;
  }

  // Convenience no-arg constructor.
  static std::shared_ptr<BluefinTecsMerchantServicesSDK> create() {
    return std::make_shared<BluefinTecsMerchantServicesSDK>(Value::undef());
  }
};

using BluefinTecsMerchantServicesSDKPtr = std::shared_ptr<BluefinTecsMerchantServicesSDK>;

} // namespace sdk

#endif // SDK_CORE_CLIENT_HPP
