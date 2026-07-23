// Aggregating entry point for the generated per-entity SDK tests. Drives
// every <Entity>EntityTest / <Entity>DirectTest object through one shared
// SdkTestReport and exits non-zero on any failure.
// Run: scala-cli run . --main-class SdkEntityTestMain

object SdkEntityTestMain {

  def main(args: Array[String]): Unit = {
    val rep = new SdkTestReport()

    CancelTransactionEntityTest.run(rep)
    CheckCardBlackListedEntityTest.run(rep)
    CreateProductEntityTest.run(rep)
    DeactivateTerminalEntityTest.run(rep)
    DigitalServicesApiEntityTest.run(rep)
    DigitalServicesApiDirectTest.run(rep)
    EcDataEcomEntityTest.run(rep)
    EcomParameterEntityTest.run(rep)
    EcrDataEntityTest.run(rep)
    EmvDataEntityTest.run(rep)
    EnableAcquiringEntityTest.run(rep)
    GetMerchantContractNumberEntityTest.run(rep)
    GetTemplateXmlEntityTest.run(rep)
    IntroduceMandatorEntityTest.run(rep)
    IntroducePackageEntityTest.run(rep)
    KeepAliveEntityTest.run(rep)
    ListTerminalEntityTest.run(rep)
    MandatorClearingExportEntityTest.run(rep)
    MandatorClearingExportDownloadEntityTest.run(rep)
    MandatorClearingExportDownloadDirectTest.run(rep)
    MandatorClearingExportSummaryEntityTest.run(rep)
    MerchantPortalServicesApiEntityTest.run(rep)
    MoveTidEntityTest.run(rep)
    PaymentManualEntityTest.run(rep)
    PaymentSredEntityTest.run(rep)
    PreAuthTransactionCompletionEntityTest.run(rep)
    ReactivateTerminalEntityTest.run(rep)
    RefundTransactionEntityTest.run(rep)
    RegisterTecsCompanyEntityTest.run(rep)
    RegisterTerminalEntityTest.run(rep)
    ReportDataEntityTest.run(rep)
    StatusTransactionEntityTest.run(rep)
    StoreTerminalParameterEntityTest.run(rep)
    TerminalIdEntityTest.run(rep)
    TransactionHistoryEntityTest.run(rep)
    TransactionsCountEntityTest.run(rep)
    TransactionsCountCardBrandEntityTest.run(rep)
    TransactionsTurnoverEntityTest.run(rep)
    UpdateMerchantEntityTest.run(rep)
    UpdateTemplateXmlEntityTest.run(rep)
    VersionEntityTest.run(rep)
    VersionDirectTest.run(rep)

    ReadmeExamplesTest.run(rep)

    rep.finish("ENTITY")
  }
}
