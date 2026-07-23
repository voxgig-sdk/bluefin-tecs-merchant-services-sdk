package voxgig.bluefintecsmerchantservicessdk.core;

import java.util.Map;

/**
 * BluefinTecsMerchantServices SDK client. All transport and pipeline behaviour lives in
 * the SdkClient base (core/SdkClient.java); this class binds the
 * API-specific entity accessors and the test-mode constructor.
 */
public class BluefinTecsMerchantServicesSDK extends SdkClient {

  public BluefinTecsMerchantServicesSDK() {
    this(null);
  }

  public BluefinTecsMerchantServicesSDK(Map<String, Object> options) {
    super(options);
  }


  /**
   * Returns a cancel_transaction entity bound to this client.
   * Idiomatic usage: client.cancelTransaction(null).list(null, null) or
   * client.cancelTransaction(null).load(Map.of("id", ...), null).
   */
  public SdkEntity cancelTransaction(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.CancelTransactionEntity(this, entopts);
  }

  /**
   * Returns a check_card_black_listed entity bound to this client.
   * Idiomatic usage: client.checkCardBlackListed(null).list(null, null) or
   * client.checkCardBlackListed(null).load(Map.of("id", ...), null).
   */
  public SdkEntity checkCardBlackListed(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.CheckCardBlackListedEntity(this, entopts);
  }

  /**
   * Returns a create_product entity bound to this client.
   * Idiomatic usage: client.createProduct(null).list(null, null) or
   * client.createProduct(null).load(Map.of("id", ...), null).
   */
  public SdkEntity createProduct(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.CreateProductEntity(this, entopts);
  }

  /**
   * Returns a deactivate_terminal entity bound to this client.
   * Idiomatic usage: client.deactivateTerminal(null).list(null, null) or
   * client.deactivateTerminal(null).load(Map.of("id", ...), null).
   */
  public SdkEntity deactivateTerminal(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.DeactivateTerminalEntity(this, entopts);
  }

  /**
   * Returns a digital_services_api entity bound to this client.
   * Idiomatic usage: client.digitalServicesApi(null).list(null, null) or
   * client.digitalServicesApi(null).load(Map.of("id", ...), null).
   */
  public SdkEntity digitalServicesApi(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.DigitalServicesApiEntity(this, entopts);
  }

  /**
   * Returns a ec_data_ecom entity bound to this client.
   * Idiomatic usage: client.ecDataEcom(null).list(null, null) or
   * client.ecDataEcom(null).load(Map.of("id", ...), null).
   */
  public SdkEntity ecDataEcom(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.EcDataEcomEntity(this, entopts);
  }

  /**
   * Returns a ecom_parameter entity bound to this client.
   * Idiomatic usage: client.ecomParameter(null).list(null, null) or
   * client.ecomParameter(null).load(Map.of("id", ...), null).
   */
  public SdkEntity ecomParameter(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.EcomParameterEntity(this, entopts);
  }

  /**
   * Returns a ecr_data entity bound to this client.
   * Idiomatic usage: client.ecrData(null).list(null, null) or
   * client.ecrData(null).load(Map.of("id", ...), null).
   */
  public SdkEntity ecrData(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.EcrDataEntity(this, entopts);
  }

  /**
   * Returns a emv_data entity bound to this client.
   * Idiomatic usage: client.emvData(null).list(null, null) or
   * client.emvData(null).load(Map.of("id", ...), null).
   */
  public SdkEntity emvData(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.EmvDataEntity(this, entopts);
  }

  /**
   * Returns a enable_acquiring entity bound to this client.
   * Idiomatic usage: client.enableAcquiring(null).list(null, null) or
   * client.enableAcquiring(null).load(Map.of("id", ...), null).
   */
  public SdkEntity enableAcquiring(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.EnableAcquiringEntity(this, entopts);
  }

  /**
   * Returns a get_merchant_contract_number entity bound to this client.
   * Idiomatic usage: client.getMerchantContractNumber(null).list(null, null) or
   * client.getMerchantContractNumber(null).load(Map.of("id", ...), null).
   */
  public SdkEntity getMerchantContractNumber(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.GetMerchantContractNumberEntity(this, entopts);
  }

  /**
   * Returns a get_template_xml entity bound to this client.
   * Idiomatic usage: client.getTemplateXml(null).list(null, null) or
   * client.getTemplateXml(null).load(Map.of("id", ...), null).
   */
  public SdkEntity getTemplateXml(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.GetTemplateXmlEntity(this, entopts);
  }

  /**
   * Returns a introduce_mandator entity bound to this client.
   * Idiomatic usage: client.introduceMandator(null).list(null, null) or
   * client.introduceMandator(null).load(Map.of("id", ...), null).
   */
  public SdkEntity introduceMandator(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.IntroduceMandatorEntity(this, entopts);
  }

  /**
   * Returns a introduce_package entity bound to this client.
   * Idiomatic usage: client.introducePackage(null).list(null, null) or
   * client.introducePackage(null).load(Map.of("id", ...), null).
   */
  public SdkEntity introducePackage(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.IntroducePackageEntity(this, entopts);
  }

  /**
   * Returns a keep_alive entity bound to this client.
   * Idiomatic usage: client.keepAlive(null).list(null, null) or
   * client.keepAlive(null).load(Map.of("id", ...), null).
   */
  public SdkEntity keepAlive(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.KeepAliveEntity(this, entopts);
  }

  /**
   * Returns a list_terminal entity bound to this client.
   * Idiomatic usage: client.listTerminal(null).list(null, null) or
   * client.listTerminal(null).load(Map.of("id", ...), null).
   */
  public SdkEntity listTerminal(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.ListTerminalEntity(this, entopts);
  }

  /**
   * Returns a mandator_clearing_export entity bound to this client.
   * Idiomatic usage: client.mandatorClearingExport(null).list(null, null) or
   * client.mandatorClearingExport(null).load(Map.of("id", ...), null).
   */
  public SdkEntity mandatorClearingExport(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.MandatorClearingExportEntity(this, entopts);
  }

  /**
   * Returns a mandator_clearing_export_download entity bound to this client.
   * Idiomatic usage: client.mandatorClearingExportDownload(null).list(null, null) or
   * client.mandatorClearingExportDownload(null).load(Map.of("id", ...), null).
   */
  public SdkEntity mandatorClearingExportDownload(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.MandatorClearingExportDownloadEntity(this, entopts);
  }

  /**
   * Returns a mandator_clearing_export_summary entity bound to this client.
   * Idiomatic usage: client.mandatorClearingExportSummary(null).list(null, null) or
   * client.mandatorClearingExportSummary(null).load(Map.of("id", ...), null).
   */
  public SdkEntity mandatorClearingExportSummary(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.MandatorClearingExportSummaryEntity(this, entopts);
  }

  /**
   * Returns a merchant_portal_services_api entity bound to this client.
   * Idiomatic usage: client.merchantPortalServicesApi(null).list(null, null) or
   * client.merchantPortalServicesApi(null).load(Map.of("id", ...), null).
   */
  public SdkEntity merchantPortalServicesApi(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.MerchantPortalServicesApiEntity(this, entopts);
  }

  /**
   * Returns a move_tid entity bound to this client.
   * Idiomatic usage: client.moveTid(null).list(null, null) or
   * client.moveTid(null).load(Map.of("id", ...), null).
   */
  public SdkEntity moveTid(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.MoveTidEntity(this, entopts);
  }

  /**
   * Returns a payment_manual entity bound to this client.
   * Idiomatic usage: client.paymentManual(null).list(null, null) or
   * client.paymentManual(null).load(Map.of("id", ...), null).
   */
  public SdkEntity paymentManual(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.PaymentManualEntity(this, entopts);
  }

  /**
   * Returns a payment_sred entity bound to this client.
   * Idiomatic usage: client.paymentSred(null).list(null, null) or
   * client.paymentSred(null).load(Map.of("id", ...), null).
   */
  public SdkEntity paymentSred(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.PaymentSredEntity(this, entopts);
  }

  /**
   * Returns a pre_auth_transaction_completion entity bound to this client.
   * Idiomatic usage: client.preAuthTransactionCompletion(null).list(null, null) or
   * client.preAuthTransactionCompletion(null).load(Map.of("id", ...), null).
   */
  public SdkEntity preAuthTransactionCompletion(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.PreAuthTransactionCompletionEntity(this, entopts);
  }

  /**
   * Returns a reactivate_terminal entity bound to this client.
   * Idiomatic usage: client.reactivateTerminal(null).list(null, null) or
   * client.reactivateTerminal(null).load(Map.of("id", ...), null).
   */
  public SdkEntity reactivateTerminal(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.ReactivateTerminalEntity(this, entopts);
  }

  /**
   * Returns a refund_transaction entity bound to this client.
   * Idiomatic usage: client.refundTransaction(null).list(null, null) or
   * client.refundTransaction(null).load(Map.of("id", ...), null).
   */
  public SdkEntity refundTransaction(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.RefundTransactionEntity(this, entopts);
  }

  /**
   * Returns a register_tecs_company entity bound to this client.
   * Idiomatic usage: client.registerTecsCompany(null).list(null, null) or
   * client.registerTecsCompany(null).load(Map.of("id", ...), null).
   */
  public SdkEntity registerTecsCompany(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.RegisterTecsCompanyEntity(this, entopts);
  }

  /**
   * Returns a register_terminal entity bound to this client.
   * Idiomatic usage: client.registerTerminal(null).list(null, null) or
   * client.registerTerminal(null).load(Map.of("id", ...), null).
   */
  public SdkEntity registerTerminal(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.RegisterTerminalEntity(this, entopts);
  }

  /**
   * Returns a report_data entity bound to this client.
   * Idiomatic usage: client.reportData(null).list(null, null) or
   * client.reportData(null).load(Map.of("id", ...), null).
   */
  public SdkEntity reportData(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.ReportDataEntity(this, entopts);
  }

  /**
   * Returns a status_transaction entity bound to this client.
   * Idiomatic usage: client.statusTransaction(null).list(null, null) or
   * client.statusTransaction(null).load(Map.of("id", ...), null).
   */
  public SdkEntity statusTransaction(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.StatusTransactionEntity(this, entopts);
  }

  /**
   * Returns a store_terminal_parameter entity bound to this client.
   * Idiomatic usage: client.storeTerminalParameter(null).list(null, null) or
   * client.storeTerminalParameter(null).load(Map.of("id", ...), null).
   */
  public SdkEntity storeTerminalParameter(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.StoreTerminalParameterEntity(this, entopts);
  }

  /**
   * Returns a terminal_id entity bound to this client.
   * Idiomatic usage: client.terminalId(null).list(null, null) or
   * client.terminalId(null).load(Map.of("id", ...), null).
   */
  public SdkEntity terminalId(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.TerminalIdEntity(this, entopts);
  }

  /**
   * Returns a transaction_history entity bound to this client.
   * Idiomatic usage: client.transactionHistory(null).list(null, null) or
   * client.transactionHistory(null).load(Map.of("id", ...), null).
   */
  public SdkEntity transactionHistory(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.TransactionHistoryEntity(this, entopts);
  }

  /**
   * Returns a transactions_count entity bound to this client.
   * Idiomatic usage: client.transactionsCount(null).list(null, null) or
   * client.transactionsCount(null).load(Map.of("id", ...), null).
   */
  public SdkEntity transactionsCount(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.TransactionsCountEntity(this, entopts);
  }

  /**
   * Returns a transactions_count_card_brand entity bound to this client.
   * Idiomatic usage: client.transactionsCountCardBrand(null).list(null, null) or
   * client.transactionsCountCardBrand(null).load(Map.of("id", ...), null).
   */
  public SdkEntity transactionsCountCardBrand(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.TransactionsCountCardBrandEntity(this, entopts);
  }

  /**
   * Returns a transactions_turnover entity bound to this client.
   * Idiomatic usage: client.transactionsTurnover(null).list(null, null) or
   * client.transactionsTurnover(null).load(Map.of("id", ...), null).
   */
  public SdkEntity transactionsTurnover(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.TransactionsTurnoverEntity(this, entopts);
  }

  /**
   * Returns a update_merchant entity bound to this client.
   * Idiomatic usage: client.updateMerchant(null).list(null, null) or
   * client.updateMerchant(null).load(Map.of("id", ...), null).
   */
  public SdkEntity updateMerchant(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.UpdateMerchantEntity(this, entopts);
  }

  /**
   * Returns a update_template_xml entity bound to this client.
   * Idiomatic usage: client.updateTemplateXml(null).list(null, null) or
   * client.updateTemplateXml(null).load(Map.of("id", ...), null).
   */
  public SdkEntity updateTemplateXml(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.UpdateTemplateXmlEntity(this, entopts);
  }

  /**
   * Returns a version entity bound to this client.
   * Idiomatic usage: client.version(null).list(null, null) or
   * client.version(null).load(Map.of("id", ...), null).
   */
  public SdkEntity version(Map<String, Object> entopts) {
    return new voxgig.bluefintecsmerchantservicessdk.entity.VersionEntity(this, entopts);
  }


  // testSDK builds a client in test mode: the test feature is activated,
  // installing the in-memory mock transport (no network activity).
  public static BluefinTecsMerchantServicesSDK testSDK() {
    return testSDK(null, null);
  }

  public static BluefinTecsMerchantServicesSDK testSDK(
      Map<String, Object> testopts, Map<String, Object> sdkopts) {
    BluefinTecsMerchantServicesSDK sdk = new BluefinTecsMerchantServicesSDK(SdkClient.testOptions(testopts, sdkopts));
    sdk.mode = "test";
    return sdk;
  }
}
