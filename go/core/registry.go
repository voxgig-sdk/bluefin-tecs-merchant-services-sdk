package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewCancelTransactionEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewCheckCardBlackListedEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewCreateProductEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewDeactivateTerminalEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewDigitalServicesApiEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewEcDataEcomEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewEcomParameterEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewEcrDataEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewEmvDataEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewEnableAcquiringEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewGetMerchantContractNumberEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewGetTemplateXmlEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewIntroduceMandatorEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewIntroducePackageEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewKeepAliveEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewListTerminalEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewMandatorClearingExportEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewMandatorClearingExportDownloadEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewMandatorClearingExportSummaryEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewMerchantPortalServicesApiEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewMoveTidEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewPaymentManualEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewPaymentSredEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewPreAuthTransactionCompletionEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewReactivateTerminalEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewRefundTransactionEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewRegisterTecsCompanyEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewRegisterTerminalEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewReportDataEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewStatusTransactionEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewStoreTerminalParameterEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewTerminalIdEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewTransactionHistoryEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewTransactionsCountEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewTransactionsCountCardBrandEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewTransactionsTurnoverEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewUpdateMerchantEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewUpdateTemplateXmlEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

var NewVersionEntityFunc func(client *BluefinTecsMerchantServicesSDK, entopts map[string]any) BluefinTecsMerchantServicesEntity

