package voxgigbluefintecsmerchantservicessdk

import (
	"github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/core"
	"github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/entity"
	"github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/feature"
	_ "github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/utility"
)

// Type aliases preserve external API.
type BluefinTecsMerchantServicesSDK = core.BluefinTecsMerchantServicesSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type BluefinTecsMerchantServicesEntity = core.BluefinTecsMerchantServicesEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type BluefinTecsMerchantServicesError = core.BluefinTecsMerchantServicesError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewCancelTransactionEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewCancelTransactionEntity(client, entopts)
	}
	core.NewCheckCardBlackListedEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewCheckCardBlackListedEntity(client, entopts)
	}
	core.NewCreateProductEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewCreateProductEntity(client, entopts)
	}
	core.NewDeactivateTerminalEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewDeactivateTerminalEntity(client, entopts)
	}
	core.NewDigitalServicesApiEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewDigitalServicesApiEntity(client, entopts)
	}
	core.NewEcDataEcomEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewEcDataEcomEntity(client, entopts)
	}
	core.NewEcomParameterEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewEcomParameterEntity(client, entopts)
	}
	core.NewEcrDataEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewEcrDataEntity(client, entopts)
	}
	core.NewEmvDataEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewEmvDataEntity(client, entopts)
	}
	core.NewEnableAcquiringEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewEnableAcquiringEntity(client, entopts)
	}
	core.NewGetMerchantContractNumberEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewGetMerchantContractNumberEntity(client, entopts)
	}
	core.NewGetTemplateXmlEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewGetTemplateXmlEntity(client, entopts)
	}
	core.NewIntroduceMandatorEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewIntroduceMandatorEntity(client, entopts)
	}
	core.NewIntroducePackageEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewIntroducePackageEntity(client, entopts)
	}
	core.NewKeepAliveEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewKeepAliveEntity(client, entopts)
	}
	core.NewListTerminalEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewListTerminalEntity(client, entopts)
	}
	core.NewMandatorClearingExportEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewMandatorClearingExportEntity(client, entopts)
	}
	core.NewMandatorClearingExportDownloadEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewMandatorClearingExportDownloadEntity(client, entopts)
	}
	core.NewMandatorClearingExportSummaryEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewMandatorClearingExportSummaryEntity(client, entopts)
	}
	core.NewMerchantPortalServicesApiEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewMerchantPortalServicesApiEntity(client, entopts)
	}
	core.NewMoveTidEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewMoveTidEntity(client, entopts)
	}
	core.NewPaymentManualEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewPaymentManualEntity(client, entopts)
	}
	core.NewPaymentSredEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewPaymentSredEntity(client, entopts)
	}
	core.NewPreAuthTransactionCompletionEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewPreAuthTransactionCompletionEntity(client, entopts)
	}
	core.NewReactivateTerminalEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewReactivateTerminalEntity(client, entopts)
	}
	core.NewRefundTransactionEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewRefundTransactionEntity(client, entopts)
	}
	core.NewRegisterTecsCompanyEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewRegisterTecsCompanyEntity(client, entopts)
	}
	core.NewRegisterTerminalEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewRegisterTerminalEntity(client, entopts)
	}
	core.NewReportDataEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewReportDataEntity(client, entopts)
	}
	core.NewStatusTransactionEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewStatusTransactionEntity(client, entopts)
	}
	core.NewStoreTerminalParameterEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewStoreTerminalParameterEntity(client, entopts)
	}
	core.NewTerminalIdEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewTerminalIdEntity(client, entopts)
	}
	core.NewTransactionHistoryEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewTransactionHistoryEntity(client, entopts)
	}
	core.NewTransactionsCountEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewTransactionsCountEntity(client, entopts)
	}
	core.NewTransactionsCountCardBrandEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewTransactionsCountCardBrandEntity(client, entopts)
	}
	core.NewTransactionsTurnoverEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewTransactionsTurnoverEntity(client, entopts)
	}
	core.NewUpdateMerchantEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewUpdateMerchantEntity(client, entopts)
	}
	core.NewUpdateTemplateXmlEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewUpdateTemplateXmlEntity(client, entopts)
	}
	core.NewVersionEntityFunc = func(client *core.BluefinTecsMerchantServicesSDK, entopts map[string]any) core.BluefinTecsMerchantServicesEntity {
		return entity.NewVersionEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewBluefinTecsMerchantServicesSDK = core.NewBluefinTecsMerchantServicesSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var SharedConfig = core.SharedConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewBluefinTecsMerchantServicesSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *BluefinTecsMerchantServicesSDK  { return NewBluefinTecsMerchantServicesSDK(nil) }
func Test() *BluefinTecsMerchantServicesSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
