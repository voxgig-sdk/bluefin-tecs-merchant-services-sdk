// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import (
	"encoding/json"

	"github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/core"
)

// CancelTransaction is the typed data model for the cancel_transaction entity.
type CancelTransaction struct {
	AcquirerId *string `json:"acquirerId,omitempty"`
	AcquirerName *string `json:"acquirerName,omitempty"`
	ActualBonusPoints *string `json:"actualBonusPoints,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	BalanceAmount *string `json:"balanceAmount,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	ClientId int `json:"clientId"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ecData,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvData *string `json:"emvData,omitempty"`
	ExchangeFee *int `json:"exchangeFee,omitempty"`
	ExchangeRate *string `json:"exchangeRate,omitempty"`
	LanguageCode *string `json:"languageCode,omitempty"`
	MerchantAddress *string `json:"merchantAddress,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	MessageType *string `json:"messageType,omitempty"`
	OriginalTraceNumber *int `json:"originalTraceNumber,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptFooter *string `json:"receiptFooter,omitempty"`
	ReceiptHeader *string `json:"receiptHeader,omitempty"`
	ReceiptLayout *int `json:"receiptLayout,omitempty"`
	ReceiptNumber string `json:"receiptNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber *string `json:"serialNumber,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminalId"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TxType *string `json:"txType,omitempty"`
	UserData *string `json:"userData,omitempty"`
}

// CancelTransactionCreateData is the typed request payload for CancelTransaction.CreateTyped.
type CancelTransactionCreateData struct {
	AcquirerId *string `json:"acquirerId,omitempty"`
	AcquirerName *string `json:"acquirerName,omitempty"`
	ActualBonusPoints *string `json:"actualBonusPoints,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	BalanceAmount *string `json:"balanceAmount,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	ClientId int `json:"clientId"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ecData,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvData *string `json:"emvData,omitempty"`
	ExchangeFee *int `json:"exchangeFee,omitempty"`
	ExchangeRate *string `json:"exchangeRate,omitempty"`
	LanguageCode *string `json:"languageCode,omitempty"`
	MerchantAddress *string `json:"merchantAddress,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	MessageType *string `json:"messageType,omitempty"`
	OriginalTraceNumber *int `json:"originalTraceNumber,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptFooter *string `json:"receiptFooter,omitempty"`
	ReceiptHeader *string `json:"receiptHeader,omitempty"`
	ReceiptLayout *int `json:"receiptLayout,omitempty"`
	ReceiptNumber string `json:"receiptNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber *string `json:"serialNumber,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminalId"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TxType *string `json:"txType,omitempty"`
	UserData *string `json:"userData,omitempty"`
}

// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
type CheckCardBlackListed struct {
	CardNo *string `json:"cardNo,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.CreateTyped.
type CheckCardBlackListedCreateData struct {
	CardNo *string `json:"cardNo,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// CreateProduct is the typed data model for the create_product entity.
type CreateProduct struct {
	AcquirerId *int `json:"acquirerId,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
	TemplateType string `json:"templateType"`
	TemplateXml string `json:"templateXml"`
	TerminalType string `json:"terminalType"`
}

// CreateProductCreateData is the typed request payload for CreateProduct.CreateTyped.
type CreateProductCreateData struct {
	AcquirerId *int `json:"acquirerId,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
	TemplateType string `json:"templateType"`
	TemplateXml string `json:"templateXml"`
	TerminalType string `json:"terminalType"`
}

// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
type DeactivateTerminal struct {
	CorporateUuid *string `json:"corporateUuid,omitempty"`
	DeactivationReason string `json:"deactivationReason"`
	PackageOrderUuid *string `json:"packageOrderUuid,omitempty"`
	ProductOrderUuid *string `json:"productOrderUuid,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
}

// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.CreateTyped.
type DeactivateTerminalCreateData struct {
	CorporateUuid *string `json:"corporateUuid,omitempty"`
	DeactivationReason string `json:"deactivationReason"`
	PackageOrderUuid *string `json:"packageOrderUuid,omitempty"`
	ProductOrderUuid *string `json:"productOrderUuid,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
}

// DigitalServicesApi is the typed data model for the digital_services_api entity.
type DigitalServicesApi struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TxCount *int `json:"txCount,omitempty"`
	TxIdEnd *string `json:"txIdEnd,omitempty"`
	TxIdStart *string `json:"txIdStart,omitempty"`
	TxSeqNoEnd *int `json:"txSeqNoEnd,omitempty"`
	TxSeqNoStart *int `json:"txSeqNoStart,omitempty"`
	TxTotal *int `json:"txTotal,omitempty"`
}

// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.LoadTyped.
type DigitalServicesApiLoadMatch struct {
	ClearingDateFrom *string `json:"clearingDateFrom,omitempty"`
	ClearingDateTo *string `json:"clearingDateTo,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TxCount *int `json:"txCount,omitempty"`
	TxIdEnd *string `json:"txIdEnd,omitempty"`
	TxIdStart *string `json:"txIdStart,omitempty"`
	TxSeqNoEnd *int `json:"txSeqNoEnd,omitempty"`
	TxSeqNoStart *int `json:"txSeqNoStart,omitempty"`
	TxTotal *int `json:"txTotal,omitempty"`
}

// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.CreateTyped.
type DigitalServicesApiCreateData struct {
	FileId string `json:"file_id"`
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TxCount *int `json:"txCount,omitempty"`
	TxIdEnd *string `json:"txIdEnd,omitempty"`
	TxIdStart *string `json:"txIdStart,omitempty"`
	TxSeqNoEnd *int `json:"txSeqNoEnd,omitempty"`
	TxSeqNoStart *int `json:"txSeqNoStart,omitempty"`
	TxTotal *int `json:"txTotal,omitempty"`
}

// EcDataEcom is the typed data model for the ec_data_ecom entity.
type EcDataEcom struct {
	EcomData *string `json:"ecomData,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
	TransactionId string `json:"transactionId"`
	TransactionType string `json:"transactionType"`
}

// EcDataEcomCreateData is the typed request payload for EcDataEcom.CreateTyped.
type EcDataEcomCreateData struct {
	EcomData *string `json:"ecomData,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
	TransactionId string `json:"transactionId"`
	TransactionType string `json:"transactionType"`
}

// EcomParameter is the typed data model for the ecom_parameter entity.
type EcomParameter struct {
	EcomPass *string `json:"ecomPass,omitempty"`
	EcomSkey *string `json:"ecomSkey,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
}

// EcomParameterCreateData is the typed request payload for EcomParameter.CreateTyped.
type EcomParameterCreateData struct {
	EcomPass *string `json:"ecomPass,omitempty"`
	EcomSkey *string `json:"ecomSkey,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
}

// EcrData is the typed data model for the ecr_data entity.
type EcrData struct {
	EcrData *string `json:"ecrData,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
	TransactionId string `json:"transactionId"`
	TransactionType string `json:"transactionType"`
}

// EcrDataCreateData is the typed request payload for EcrData.CreateTyped.
type EcrDataCreateData struct {
	EcrData *string `json:"ecrData,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
	TransactionId string `json:"transactionId"`
	TransactionType string `json:"transactionType"`
}

// EmvData is the typed data model for the emv_data entity.
type EmvData struct {
	EmvData *string `json:"emvData,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
	TransactionId string `json:"transactionId"`
	TransactionType string `json:"transactionType"`
}

// EmvDataCreateData is the typed request payload for EmvData.CreateTyped.
type EmvDataCreateData struct {
	EmvData *string `json:"emvData,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
	TransactionId string `json:"transactionId"`
	TransactionType string `json:"transactionType"`
}

// EnableAcquiring is the typed data model for the enable_acquiring entity.
type EnableAcquiring struct {
	AccountNo *int `json:"accountNo,omitempty"`
	AdditionalData *map[string]any `json:"additionalData,omitempty"`
	CorporateUuid string `json:"corporateUuid"`
	Currency string `json:"currency"`
	MerchantCategoryCode int `json:"merchantCategoryCode"`
	PackageOrderUuid string `json:"packageOrderUuid"`
	ProductOrderUuid string `json:"productOrderUuid"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SortingCode *int `json:"sortingCode,omitempty"`
	TemplateName string `json:"templateName"`
	TerminalIdAcq *string `json:"terminalIdAcq,omitempty"`
	TerminalIds *[]any `json:"terminalIds,omitempty"`
	VuNummer *string `json:"vuNummer,omitempty"`
}

// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.CreateTyped.
type EnableAcquiringCreateData struct {
	AccountNo *int `json:"accountNo,omitempty"`
	AdditionalData *map[string]any `json:"additionalData,omitempty"`
	CorporateUuid string `json:"corporateUuid"`
	Currency string `json:"currency"`
	MerchantCategoryCode int `json:"merchantCategoryCode"`
	PackageOrderUuid string `json:"packageOrderUuid"`
	ProductOrderUuid string `json:"productOrderUuid"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SortingCode *int `json:"sortingCode,omitempty"`
	TemplateName string `json:"templateName"`
	TerminalIdAcq *string `json:"terminalIdAcq,omitempty"`
	TerminalIds *[]any `json:"terminalIds,omitempty"`
	VuNummer *string `json:"vuNummer,omitempty"`
}

// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
type GetMerchantContractNumber struct {
	MerchantContractNumber string `json:"merchantContractNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.CreateTyped.
type GetMerchantContractNumberCreateData struct {
	MerchantContractNumber string `json:"merchantContractNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// GetTemplateXml is the typed data model for the get_template_xml entity.
type GetTemplateXml struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
}

// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.CreateTyped.
type GetTemplateXmlCreateData struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
}

// IntroduceMandator is the typed data model for the introduce_mandator entity.
type IntroduceMandator struct {
	MandatorName string `json:"mandatorName"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.CreateTyped.
type IntroduceMandatorCreateData struct {
	MandatorName string `json:"mandatorName"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// IntroducePackage is the typed data model for the introduce_package entity.
type IntroducePackage struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalTemplateDescription string `json:"terminalTemplateDescription"`
}

// IntroducePackageCreateData is the typed request payload for IntroducePackage.CreateTyped.
type IntroducePackageCreateData struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalTemplateDescription string `json:"terminalTemplateDescription"`
}

// KeepAlive is the typed data model for the keep_alive entity.
type KeepAlive struct {
	Hwserialno *string `json:"hwserialno,omitempty"`
	KaDateTimeFrom *string `json:"kaDateTimeFrom,omitempty"`
	KaDateTimeTo *string `json:"kaDateTimeTo,omitempty"`
	KeepAliveData *[]any `json:"keepAliveData,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalDateTimeFrom *string `json:"terminalDateTimeFrom,omitempty"`
	TerminalDateTimeTo *string `json:"terminalDateTimeTo,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
}

// KeepAliveCreateData is the typed request payload for KeepAlive.CreateTyped.
type KeepAliveCreateData struct {
	Hwserialno *string `json:"hwserialno,omitempty"`
	KaDateTimeFrom *string `json:"kaDateTimeFrom,omitempty"`
	KaDateTimeTo *string `json:"kaDateTimeTo,omitempty"`
	KeepAliveData *[]any `json:"keepAliveData,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalDateTimeFrom *string `json:"terminalDateTimeFrom,omitempty"`
	TerminalDateTimeTo *string `json:"terminalDateTimeTo,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
}

// ListTerminal is the typed data model for the list_terminal entity.
type ListTerminal struct {
	CorporateUuid *[]any `json:"corporateUuid,omitempty"`
	Filter *map[string]any `json:"filter,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Terminals *[]any `json:"terminals,omitempty"`
}

// ListTerminalCreateData is the typed request payload for ListTerminal.CreateTyped.
type ListTerminalCreateData struct {
	CorporateUuid *[]any `json:"corporateUuid,omitempty"`
	Filter *map[string]any `json:"filter,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Terminals *[]any `json:"terminals,omitempty"`
}

// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
type MandatorClearingExport struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	Records *[]any `json:"records,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.CreateTyped.
type MandatorClearingExportCreateData struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	Records *[]any `json:"records,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
type MandatorClearingExportDownload struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	FileId *string `json:"fileId,omitempty"`
	FilenameTemplate *string `json:"filenameTemplate,omitempty"`
	Id *string `json:"id,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Status *string `json:"status,omitempty"`
}

// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.LoadTyped.
type MandatorClearingExportDownloadLoadMatch struct {
	Id string `json:"id"`
}

// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.CreateTyped.
type MandatorClearingExportDownloadCreateData struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	FileId *string `json:"fileId,omitempty"`
	FilenameTemplate *string `json:"filenameTemplate,omitempty"`
	Id *string `json:"id,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Status *string `json:"status,omitempty"`
}

// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
type MandatorClearingExportSummary struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	Records *[]any `json:"records,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.CreateTyped.
type MandatorClearingExportSummaryCreateData struct {
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	Records *[]any `json:"records,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
type MerchantPortalServicesApi struct {
	F3DSecure *string `json:"3DSecure,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	ClearingAmountFrom *string `json:"clearingAmountFrom,omitempty"`
	ClearingAmountTo *string `json:"clearingAmountTo,omitempty"`
	ClearingCurrency *string `json:"clearingCurrency,omitempty"`
	ClearingStatus *string `json:"clearingStatus,omitempty"`
	CorporateUUID *string `json:"corporateUUID,omitempty"`
	OrderByTransactionDate *string `json:"orderByTransactionDate,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ReceiptNumber *string `json:"receiptNumber,omitempty"`
	ReferencedTransactionId *string `json:"referencedTransactionId,omitempty"`
	RetrievalReferenceNumber *string `json:"retrievalReferenceNumber,omitempty"`
	SourceId *int `json:"sourceId,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengineResponseCodeFrom,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengineResponseCodeTo,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
	TraceNumber *string `json:"traceNumber,omitempty"`
	TransactionAmountFrom *string `json:"transactionAmountFrom,omitempty"`
	TransactionAmountTo *string `json:"transactionAmountTo,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionType *string `json:"transactionType,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.CreateTyped.
type MerchantPortalServicesApiCreateData struct {
	F3DSecure *string `json:"3DSecure,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	ClearingAmountFrom *string `json:"clearingAmountFrom,omitempty"`
	ClearingAmountTo *string `json:"clearingAmountTo,omitempty"`
	ClearingCurrency *string `json:"clearingCurrency,omitempty"`
	ClearingStatus *string `json:"clearingStatus,omitempty"`
	CorporateUUID *string `json:"corporateUUID,omitempty"`
	OrderByTransactionDate *string `json:"orderByTransactionDate,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ReceiptNumber *string `json:"receiptNumber,omitempty"`
	ReferencedTransactionId *string `json:"referencedTransactionId,omitempty"`
	RetrievalReferenceNumber *string `json:"retrievalReferenceNumber,omitempty"`
	SourceId *int `json:"sourceId,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengineResponseCodeFrom,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengineResponseCodeTo,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
	TraceNumber *string `json:"traceNumber,omitempty"`
	TransactionAmountFrom *string `json:"transactionAmountFrom,omitempty"`
	TransactionAmountTo *string `json:"transactionAmountTo,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionType *string `json:"transactionType,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// MoveTid is the typed data model for the move_tid entity.
type MoveTid struct {
	Productorderuuids []any `json:"productorderuuids"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TargetPackageorderuuid *string `json:"targetPackageorderuuid,omitempty"`
	TargetProductorderuuid *string `json:"targetProductorderuuid,omitempty"`
}

// MoveTidCreateData is the typed request payload for MoveTid.CreateTyped.
type MoveTidCreateData struct {
	Productorderuuids []any `json:"productorderuuids"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TargetPackageorderuuid *string `json:"targetPackageorderuuid,omitempty"`
	TargetProductorderuuid *string `json:"targetProductorderuuid,omitempty"`
}

// PaymentManual is the typed data model for the payment_manual entity.
type PaymentManual struct {
	AcquirerName *string `json:"acquirerName,omitempty"`
	Amount int `json:"amount"`
	AuthorizationNumber *string `json:"authorizationNumber,omitempty"`
	CardNumber string `json:"cardNumber"`
	CardType *string `json:"cardType,omitempty"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	DateTimeTx *string `json:"dateTimeTx,omitempty"`
	ExpDate string `json:"expDate"`
	MerchantId *string `json:"merchantId,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	ResponseCode *string `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId *string `json:"terminalId,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	Txtype string `json:"txtype"`
}

// PaymentManualCreateData is the typed request payload for PaymentManual.CreateTyped.
type PaymentManualCreateData struct {
	AcquirerName *string `json:"acquirerName,omitempty"`
	Amount int `json:"amount"`
	AuthorizationNumber *string `json:"authorizationNumber,omitempty"`
	CardNumber string `json:"cardNumber"`
	CardType *string `json:"cardType,omitempty"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	DateTimeTx *string `json:"dateTimeTx,omitempty"`
	ExpDate string `json:"expDate"`
	MerchantId *string `json:"merchantId,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	ResponseCode *string `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId *string `json:"terminalId,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	Txtype string `json:"txtype"`
}

// PaymentSred is the typed data model for the payment_sred entity.
type PaymentSred struct {
	Amount int `json:"amount"`
	Currency string `json:"currency"`
	Device *string `json:"device,omitempty"`
	DevicePayload string `json:"devicePayload"`
	ExpDate *string `json:"expDate,omitempty"`
	Mode *string `json:"mode,omitempty"`
	PanMasked *string `json:"panMasked,omitempty"`
	Password *string `json:"password,omitempty"`
	Serial *string `json:"serial,omitempty"`
	ServiceCode *string `json:"serviceCode,omitempty"`
	TerminalId string `json:"terminalId"`
	Txtype string `json:"txtype"`
}

// PaymentSredCreateData is the typed request payload for PaymentSred.CreateTyped.
type PaymentSredCreateData struct {
	Amount int `json:"amount"`
	Currency string `json:"currency"`
	Device *string `json:"device,omitempty"`
	DevicePayload string `json:"devicePayload"`
	ExpDate *string `json:"expDate,omitempty"`
	Mode *string `json:"mode,omitempty"`
	PanMasked *string `json:"panMasked,omitempty"`
	Password *string `json:"password,omitempty"`
	Serial *string `json:"serial,omitempty"`
	ServiceCode *string `json:"serviceCode,omitempty"`
	TerminalId string `json:"terminalId"`
	Txtype string `json:"txtype"`
}

// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
type PreAuthTransactionCompletion struct {
	AcquirerId *string `json:"acquirerId,omitempty"`
	AcquirerName *string `json:"acquirerName,omitempty"`
	ActualBonusPoints *string `json:"actualBonusPoints,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	BalanceAmount *string `json:"balanceAmount,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	CardNumberReference string `json:"cardNumberReference"`
	ClientId int `json:"clientId"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ecData,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvData *string `json:"emvData,omitempty"`
	ExchangeFee *int `json:"exchangeFee,omitempty"`
	ExchangeRate *string `json:"exchangeRate,omitempty"`
	LanguageCode *string `json:"languageCode,omitempty"`
	MerchantAddress *string `json:"merchantAddress,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	MessageType *string `json:"messageType,omitempty"`
	OriginalTraceNumber *int `json:"originalTraceNumber,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptFooter *string `json:"receiptFooter,omitempty"`
	ReceiptHeader *string `json:"receiptHeader,omitempty"`
	ReceiptLayout *int `json:"receiptLayout,omitempty"`
	ReceiptNumber string `json:"receiptNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber *string `json:"serialNumber,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminalId"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionType string `json:"transactionType"`
	TxType *string `json:"txType,omitempty"`
	UserData *string `json:"userData,omitempty"`
}

// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.CreateTyped.
type PreAuthTransactionCompletionCreateData struct {
	AcquirerId *string `json:"acquirerId,omitempty"`
	AcquirerName *string `json:"acquirerName,omitempty"`
	ActualBonusPoints *string `json:"actualBonusPoints,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	BalanceAmount *string `json:"balanceAmount,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	CardNumberReference string `json:"cardNumberReference"`
	ClientId int `json:"clientId"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ecData,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvData *string `json:"emvData,omitempty"`
	ExchangeFee *int `json:"exchangeFee,omitempty"`
	ExchangeRate *string `json:"exchangeRate,omitempty"`
	LanguageCode *string `json:"languageCode,omitempty"`
	MerchantAddress *string `json:"merchantAddress,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	MessageType *string `json:"messageType,omitempty"`
	OriginalTraceNumber *int `json:"originalTraceNumber,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptFooter *string `json:"receiptFooter,omitempty"`
	ReceiptHeader *string `json:"receiptHeader,omitempty"`
	ReceiptLayout *int `json:"receiptLayout,omitempty"`
	ReceiptNumber string `json:"receiptNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber *string `json:"serialNumber,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminalId"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionType string `json:"transactionType"`
	TxType *string `json:"txType,omitempty"`
	UserData *string `json:"userData,omitempty"`
}

// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
type ReactivateTerminal struct {
	CorporateUuid *string `json:"corporateUuid,omitempty"`
	PackageOrderUuid *string `json:"packageOrderUuid,omitempty"`
	ProductOrderUuid *string `json:"productOrderUuid,omitempty"`
	ReactivationReason string `json:"reactivationReason"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
}

// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.CreateTyped.
type ReactivateTerminalCreateData struct {
	CorporateUuid *string `json:"corporateUuid,omitempty"`
	PackageOrderUuid *string `json:"packageOrderUuid,omitempty"`
	ProductOrderUuid *string `json:"productOrderUuid,omitempty"`
	ReactivationReason string `json:"reactivationReason"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TerminalId int `json:"terminalId"`
}

// RefundTransaction is the typed data model for the refund_transaction entity.
type RefundTransaction struct {
	AcquirerId *string `json:"acquirerId,omitempty"`
	AcquirerName *string `json:"acquirerName,omitempty"`
	ActualBonusPoints *string `json:"actualBonusPoints,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	BalanceAmount *string `json:"balanceAmount,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	ClientId int `json:"clientId"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ecData,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvData *string `json:"emvData,omitempty"`
	ExchangeFee *int `json:"exchangeFee,omitempty"`
	ExchangeRate *string `json:"exchangeRate,omitempty"`
	LanguageCode *string `json:"languageCode,omitempty"`
	MerchantAddress *string `json:"merchantAddress,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	MessageType *string `json:"messageType,omitempty"`
	OriginalTraceNumber *int `json:"originalTraceNumber,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptFooter *string `json:"receiptFooter,omitempty"`
	ReceiptHeader *string `json:"receiptHeader,omitempty"`
	ReceiptLayout *int `json:"receiptLayout,omitempty"`
	ReceiptNumber string `json:"receiptNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber *string `json:"serialNumber,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminalId"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TxType *string `json:"txType,omitempty"`
	UserData *string `json:"userData,omitempty"`
}

// RefundTransactionCreateData is the typed request payload for RefundTransaction.CreateTyped.
type RefundTransactionCreateData struct {
	AcquirerId *string `json:"acquirerId,omitempty"`
	AcquirerName *string `json:"acquirerName,omitempty"`
	ActualBonusPoints *string `json:"actualBonusPoints,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	BalanceAmount *string `json:"balanceAmount,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	ClientId int `json:"clientId"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ecData,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvData *string `json:"emvData,omitempty"`
	ExchangeFee *int `json:"exchangeFee,omitempty"`
	ExchangeRate *string `json:"exchangeRate,omitempty"`
	LanguageCode *string `json:"languageCode,omitempty"`
	MerchantAddress *string `json:"merchantAddress,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	MessageType *string `json:"messageType,omitempty"`
	OriginalTraceNumber *int `json:"originalTraceNumber,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptFooter *string `json:"receiptFooter,omitempty"`
	ReceiptHeader *string `json:"receiptHeader,omitempty"`
	ReceiptLayout *int `json:"receiptLayout,omitempty"`
	ReceiptNumber string `json:"receiptNumber"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber *string `json:"serialNumber,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminalId"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TxType *string `json:"txType,omitempty"`
	UserData *string `json:"userData,omitempty"`
}

// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
type RegisterTecsCompany struct {
	CorporateUuid string `json:"corporateUuid"`
	PackageOrderUuid string `json:"packageOrderUuid"`
	PartnerId *int `json:"partnerId,omitempty"`
	PartnerName *string `json:"partnerName,omitempty"`
	ProductOrderUuid string `json:"productOrderUuid"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
}

// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.CreateTyped.
type RegisterTecsCompanyCreateData struct {
	CorporateUuid string `json:"corporateUuid"`
	PackageOrderUuid string `json:"packageOrderUuid"`
	PartnerId *int `json:"partnerId,omitempty"`
	PartnerName *string `json:"partnerName,omitempty"`
	ProductOrderUuid string `json:"productOrderUuid"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
}

// RegisterTerminal is the typed data model for the register_terminal entity.
type RegisterTerminal struct {
	AdditionalData *map[string]any `json:"additionalData,omitempty"`
	CorporateUuid string `json:"corporateUuid"`
	PackageOrderUuid string `json:"packageOrderUuid"`
	ProductOrderUuid string `json:"productOrderUuid"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TecsWebSecretKey *string `json:"tecsWebSecretKey,omitempty"`
	TemplateName string `json:"templateName"`
	TerminalCountryCode string `json:"terminalCountryCode"`
	TerminalId *int `json:"terminalId,omitempty"`
	TerminalIdAcq *string `json:"terminalIdAcq,omitempty"`
	TerminalLanguageCode string `json:"terminalLanguageCode"`
	TerminalLocation string `json:"terminalLocation"`
	TerminalSerialNumber *string `json:"terminalSerialNumber,omitempty"`
	TokenIOAlias *string `json:"tokenIOAlias,omitempty"`
	TokenIOIban *string `json:"tokenIOIban,omitempty"`
	TokenIOMemberId *string `json:"tokenIOMemberId,omitempty"`
	WebShopUrl *string `json:"webShopUrl,omitempty"`
}

// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.CreateTyped.
type RegisterTerminalCreateData struct {
	AdditionalData *map[string]any `json:"additionalData,omitempty"`
	CorporateUuid string `json:"corporateUuid"`
	PackageOrderUuid string `json:"packageOrderUuid"`
	ProductOrderUuid string `json:"productOrderUuid"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TecsWebSecretKey *string `json:"tecsWebSecretKey,omitempty"`
	TemplateName string `json:"templateName"`
	TerminalCountryCode string `json:"terminalCountryCode"`
	TerminalId *int `json:"terminalId,omitempty"`
	TerminalIdAcq *string `json:"terminalIdAcq,omitempty"`
	TerminalLanguageCode string `json:"terminalLanguageCode"`
	TerminalLocation string `json:"terminalLocation"`
	TerminalSerialNumber *string `json:"terminalSerialNumber,omitempty"`
	TokenIOAlias *string `json:"tokenIOAlias,omitempty"`
	TokenIOIban *string `json:"tokenIOIban,omitempty"`
	TokenIOMemberId *string `json:"tokenIOMemberId,omitempty"`
	WebShopUrl *string `json:"webShopUrl,omitempty"`
}

// ReportData is the typed data model for the report_data entity.
type ReportData struct {
	CardBrandReportData *[]any `json:"cardBrandReportData,omitempty"`
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	CorporateId string `json:"corporateId"`
	Currency string `json:"currency"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SumOverCreditTx *map[string]any `json:"sumOverCreditTx,omitempty"`
	SumOverDebitTx *map[string]any `json:"sumOverDebitTx,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
}

// ReportDataCreateData is the typed request payload for ReportData.CreateTyped.
type ReportDataCreateData struct {
	CardBrandReportData *[]any `json:"cardBrandReportData,omitempty"`
	ClearingDateFrom string `json:"clearingDateFrom"`
	ClearingDateTo string `json:"clearingDateTo"`
	CorporateId string `json:"corporateId"`
	Currency string `json:"currency"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SumOverCreditTx *map[string]any `json:"sumOverCreditTx,omitempty"`
	SumOverDebitTx *map[string]any `json:"sumOverDebitTx,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
}

// StatusTransaction is the typed data model for the status_transaction entity.
type StatusTransaction struct {
	AcquirerName *string `json:"acquirerName,omitempty"`
	AcquirerTerminalId *string `json:"acquirerTerminalId,omitempty"`
	Amount *int `json:"amount,omitempty"`
	ApplicationCryptogram *string `json:"applicationCryptogram,omitempty"`
	AuthorizationCode *any `json:"authorizationCode,omitempty"`
	AuthorizationDate *string `json:"authorizationDate,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardEntry *string `json:"cardEntry,omitempty"`
	CardExpiration *string `json:"cardExpiration,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	ClearingAmount *int `json:"clearingAmount,omitempty"`
	ClearingBatchId *string `json:"clearingBatchId,omitempty"`
	ClearingCurrency *string `json:"clearingCurrency,omitempty"`
	ClearingDate *string `json:"clearingDate,omitempty"`
	ClearingProcessedDate *string `json:"clearingProcessedDate,omitempty"`
	ClearingStatus *string `json:"clearingStatus,omitempty"`
	ClientId *int `json:"clientId,omitempty"`
	Currency *string `json:"currency,omitempty"`
	Cvm *string `json:"cvm,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvApplicationId *string `json:"emvApplicationId,omitempty"`
	EmvApplicationLabel *string `json:"emvApplicationLabel,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	OriginalClientId *string `json:"originalClientId,omitempty"`
	OriginalTerminalId *int `json:"originalTerminalId,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptNumber *string `json:"receiptNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseCodeFromAS *string `json:"responseCodeFromAS,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	RetrievalReferenceNumber *string `json:"retrievalReferenceNumber,omitempty"`
	ServiceCode *string `json:"serviceCode,omitempty"`
	SettlementStatus *string `json:"settlementStatus,omitempty"`
	SourceId *int `json:"sourceId,omitempty"`
	TecsengineResponseCode *int `json:"tecsengineResponseCode,omitempty"`
	TecsengineResponseText *string `json:"tecsengineResponseText,omitempty"`
	TerminalEndOfDayDate *string `json:"terminalEndOfDayDate,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TipAmount *int `json:"tipAmount,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionClearingDate *string `json:"transactionClearingDate,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionSeqNumber *int `json:"transactionSeqNumber,omitempty"`
	TransactionServerDate *string `json:"transactionServerDate,omitempty"`
	TransactionSource *string `json:"transactionSource,omitempty"`
	TransactionType *string `json:"transactionType,omitempty"`
}

// StatusTransactionCreateData is the typed request payload for StatusTransaction.CreateTyped.
type StatusTransactionCreateData struct {
	AcquirerName *string `json:"acquirerName,omitempty"`
	AcquirerTerminalId *string `json:"acquirerTerminalId,omitempty"`
	Amount *int `json:"amount,omitempty"`
	ApplicationCryptogram *string `json:"applicationCryptogram,omitempty"`
	AuthorizationCode *any `json:"authorizationCode,omitempty"`
	AuthorizationDate *string `json:"authorizationDate,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	CardEntry *string `json:"cardEntry,omitempty"`
	CardExpiration *string `json:"cardExpiration,omitempty"`
	CardNumber *string `json:"cardNumber,omitempty"`
	ClearingAmount *int `json:"clearingAmount,omitempty"`
	ClearingBatchId *string `json:"clearingBatchId,omitempty"`
	ClearingCurrency *string `json:"clearingCurrency,omitempty"`
	ClearingDate *string `json:"clearingDate,omitempty"`
	ClearingProcessedDate *string `json:"clearingProcessedDate,omitempty"`
	ClearingStatus *string `json:"clearingStatus,omitempty"`
	ClientId *int `json:"clientId,omitempty"`
	Currency *string `json:"currency,omitempty"`
	Cvm *string `json:"cvm,omitempty"`
	EcrData *string `json:"ecrData,omitempty"`
	EmvApplicationId *string `json:"emvApplicationId,omitempty"`
	EmvApplicationLabel *string `json:"emvApplicationLabel,omitempty"`
	MerchantName *string `json:"merchantName,omitempty"`
	MerchantNumber *string `json:"merchantNumber,omitempty"`
	OriginalClientId *string `json:"originalClientId,omitempty"`
	OriginalTerminalId *int `json:"originalTerminalId,omitempty"`
	OriginalTransactionId *string `json:"originalTransactionId,omitempty"`
	PaymentReason *string `json:"paymentReason,omitempty"`
	ReceiptNumber *string `json:"receiptNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseCodeFromAS *string `json:"responseCodeFromAS,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	RetrievalReferenceNumber *string `json:"retrievalReferenceNumber,omitempty"`
	ServiceCode *string `json:"serviceCode,omitempty"`
	SettlementStatus *string `json:"settlementStatus,omitempty"`
	SourceId *int `json:"sourceId,omitempty"`
	TecsengineResponseCode *int `json:"tecsengineResponseCode,omitempty"`
	TecsengineResponseText *string `json:"tecsengineResponseText,omitempty"`
	TerminalEndOfDayDate *string `json:"terminalEndOfDayDate,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
	TerminalLocation *string `json:"terminalLocation,omitempty"`
	TipAmount *int `json:"tipAmount,omitempty"`
	TraceNumber *int `json:"traceNumber,omitempty"`
	TransactionClearingDate *string `json:"transactionClearingDate,omitempty"`
	TransactionDate *string `json:"transactionDate,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionSeqNumber *int `json:"transactionSeqNumber,omitempty"`
	TransactionServerDate *string `json:"transactionServerDate,omitempty"`
	TransactionSource *string `json:"transactionSource,omitempty"`
	TransactionType *string `json:"transactionType,omitempty"`
}

// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
type StoreTerminalParameter struct {
	AcqTabNexo *map[string]any `json:"acqTabNexo,omitempty"`
	ConfigVersion *string `json:"configVersion,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber string `json:"serialNumber"`
	TidSent *string `json:"tidSent,omitempty"`
}

// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.CreateTyped.
type StoreTerminalParameterCreateData struct {
	AcqTabNexo *map[string]any `json:"acqTabNexo,omitempty"`
	ConfigVersion *string `json:"configVersion,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	SerialNumber string `json:"serialNumber"`
	TidSent *string `json:"tidSent,omitempty"`
}

// TerminalId is the typed data model for the terminal_id entity.
type TerminalId struct {
	DeviceSerialNumber []any `json:"deviceSerialNumber"`
	DuplicateTerminalIds *[]any `json:"duplicateTerminalIds,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Terminals *[]any `json:"terminals,omitempty"`
}

// TerminalIdCreateData is the typed request payload for TerminalId.CreateTyped.
type TerminalIdCreateData struct {
	DeviceSerialNumber []any `json:"deviceSerialNumber"`
	DuplicateTerminalIds *[]any `json:"duplicateTerminalIds,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Terminals *[]any `json:"terminals,omitempty"`
}

// TransactionHistory is the typed data model for the transaction_history entity.
type TransactionHistory struct {
	F3DSecure *string `json:"3DSecure,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	ClearingAmountFrom *string `json:"clearingAmountFrom,omitempty"`
	ClearingAmountTo *string `json:"clearingAmountTo,omitempty"`
	ClearingCurrency *string `json:"clearingCurrency,omitempty"`
	ClearingStatus *string `json:"clearingStatus,omitempty"`
	CorporateUUID *string `json:"corporateUUID,omitempty"`
	OrderByTransactionDate *string `json:"orderByTransactionDate,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	PaymentTokenPublicId *string `json:"paymentTokenPublicId,omitempty"`
	ReceiptNumber *string `json:"receiptNumber,omitempty"`
	ReferencedTransactionId *string `json:"referencedTransactionId,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	RetrievalReferenceNumber *string `json:"retrievalReferenceNumber,omitempty"`
	SourceId *int `json:"sourceId,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengineResponseCodeFrom,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengineResponseCodeTo,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
	TraceNumber *string `json:"traceNumber,omitempty"`
	TransactionAmountFrom *string `json:"transactionAmountFrom,omitempty"`
	TransactionAmountTo *string `json:"transactionAmountTo,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionHistories *[]any `json:"transactionHistories,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionType *string `json:"transactionType,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// TransactionHistoryCreateData is the typed request payload for TransactionHistory.CreateTyped.
type TransactionHistoryCreateData struct {
	F3DSecure *string `json:"3DSecure,omitempty"`
	AuthorizationCode *string `json:"authorizationCode,omitempty"`
	CardBrand *string `json:"cardBrand,omitempty"`
	ClearingAmountFrom *string `json:"clearingAmountFrom,omitempty"`
	ClearingAmountTo *string `json:"clearingAmountTo,omitempty"`
	ClearingCurrency *string `json:"clearingCurrency,omitempty"`
	ClearingStatus *string `json:"clearingStatus,omitempty"`
	CorporateUUID *string `json:"corporateUUID,omitempty"`
	OrderByTransactionDate *string `json:"orderByTransactionDate,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	PaymentTokenPublicId *string `json:"paymentTokenPublicId,omitempty"`
	ReceiptNumber *string `json:"receiptNumber,omitempty"`
	ReferencedTransactionId *string `json:"referencedTransactionId,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	RetrievalReferenceNumber *string `json:"retrievalReferenceNumber,omitempty"`
	SourceId *int `json:"sourceId,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengineResponseCodeFrom,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengineResponseCodeTo,omitempty"`
	TerminalId *int `json:"terminalId,omitempty"`
	TraceNumber *string `json:"traceNumber,omitempty"`
	TransactionAmountFrom *string `json:"transactionAmountFrom,omitempty"`
	TransactionAmountTo *string `json:"transactionAmountTo,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionHistories *[]any `json:"transactionHistories,omitempty"`
	TransactionId *string `json:"transactionId,omitempty"`
	TransactionType *string `json:"transactionType,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// TransactionsCount is the typed data model for the transactions_count entity.
type TransactionsCount struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionsCount *[]any `json:"transactionsCount,omitempty"`
}

// TransactionsCountCreateData is the typed request payload for TransactionsCount.CreateTyped.
type TransactionsCountCreateData struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionsCount *[]any `json:"transactionsCount,omitempty"`
}

// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
type TransactionsCountCardBrand struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionsCount *[]any `json:"transactionsCount,omitempty"`
}

// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.CreateTyped.
type TransactionsCountCardBrandCreateData struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	TransactionsCount *[]any `json:"transactionsCount,omitempty"`
}

// TransactionsTurnover is the typed data model for the transactions_turnover entity.
type TransactionsTurnover struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	Turnovers *[]any `json:"turnovers,omitempty"`
}

// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.CreateTyped.
type TransactionsTurnoverCreateData struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TransactionDateFrom *string `json:"transactionDateFrom,omitempty"`
	TransactionDateTo *string `json:"transactionDateTo,omitempty"`
	Turnovers *[]any `json:"turnovers,omitempty"`
}

// UpdateMerchant is the typed data model for the update_merchant entity.
type UpdateMerchant struct {
	City *string `json:"city,omitempty"`
	CorporateUuid string `json:"corporateUuid"`
	Country *string `json:"country,omitempty"`
	MerchantCategoryCode *string `json:"merchantCategoryCode,omitempty"`
	Name *string `json:"name,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	State *string `json:"state,omitempty"`
	Street *string `json:"street,omitempty"`
	VuNummer *string `json:"vuNummer,omitempty"`
	Zipcode *string `json:"zipcode,omitempty"`
}

// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.CreateTyped.
type UpdateMerchantCreateData struct {
	City *string `json:"city,omitempty"`
	CorporateUuid string `json:"corporateUuid"`
	Country *string `json:"country,omitempty"`
	MerchantCategoryCode *string `json:"merchantCategoryCode,omitempty"`
	Name *string `json:"name,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	State *string `json:"state,omitempty"`
	Street *string `json:"street,omitempty"`
	VuNummer *string `json:"vuNummer,omitempty"`
	Zipcode *string `json:"zipcode,omitempty"`
}

// UpdateTemplateXml is the typed data model for the update_template_xml entity.
type UpdateTemplateXml struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
	TemplateXml string `json:"templateXml"`
}

// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.CreateTyped.
type UpdateTemplateXmlCreateData struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	TemplateName string `json:"templateName"`
	TemplateXml string `json:"templateXml"`
}

// Version is the typed data model for the version entity.
type Version struct {
	AppName *string `json:"appName,omitempty"`
	BuildDate *string `json:"buildDate,omitempty"`
	Version *string `json:"version,omitempty"`
}

// VersionLoadMatch is the typed request payload for Version.LoadTyped.
type VersionLoadMatch struct {
	AppName *string `json:"appName,omitempty"`
	BuildDate *string `json:"buildDate,omitempty"`
	Version *string `json:"version,omitempty"`
}

// asMap turns a typed request/data struct into the map[string]any the
// runtime op pipeline consumes, honouring the json tags above.
func asMap(v any) map[string]any {
	out := map[string]any{}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// entityData unwraps an entity to its data map.
//
// Operations resolve to the ENTITY, not the raw data (see AGENTS.md), and an
// entity's fields are UNEXPORTED — marshalling one directly yields `{}`, so
// every typed accessor would silently hand back a zero-valued struct. The
// typed boundary therefore takes the data hop first.
func entityData(v any) any {
	if ent, ok := v.(core.Entity); ok {
		return ent.Data()
	}
	return v
}

// typedFrom decodes a runtime value (an entity, or the map[string]any the op
// pipeline produced) into a typed model T via a JSON round-trip. On any error
// it returns the zero value of T; the op's own (value, error) tuple carries
// the real error.
func typedFrom[T any](v any) T {
	var out T
	v = entityData(v)
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedSliceFrom decodes a runtime list value into a typed slice []T via a
// JSON round-trip, for list ops. `list` resolves to a slice of ENTITY
// instances, so each element takes the data hop.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	if list, ok := v.([]any); ok {
		unwrapped := make([]any, 0, len(list))
		for _, item := range list {
			unwrapped = append(unwrapped, entityData(item))
		}
		v = unwrapped
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}
