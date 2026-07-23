// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import "encoding/json"

// CancelTransaction is the typed data model for the cancel_transaction entity.
type CancelTransaction struct {
	AcquirerId *string `json:"acquirer_id,omitempty"`
	AcquirerName *string `json:"acquirer_name,omitempty"`
	ActualBonusPoint *string `json:"actual_bonus_point,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	BalanceAmount *string `json:"balance_amount,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	ClientId int `json:"client_id"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ec_data,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvData *string `json:"emv_data,omitempty"`
	ExchangeFee *int `json:"exchange_fee,omitempty"`
	ExchangeRate *string `json:"exchange_rate,omitempty"`
	LanguageCode *string `json:"language_code,omitempty"`
	MerchantAddress *string `json:"merchant_address,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	MessageType *string `json:"message_type,omitempty"`
	OriginalTraceNumber *int `json:"original_trace_number,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptFooter *string `json:"receipt_footer,omitempty"`
	ReceiptHeader *string `json:"receipt_header,omitempty"`
	ReceiptLayout *int `json:"receipt_layout,omitempty"`
	ReceiptNumber string `json:"receipt_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber *string `json:"serial_number,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminal_id"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TxType *string `json:"tx_type,omitempty"`
	UserData *string `json:"user_data,omitempty"`
}

// CancelTransactionCreateData is the typed request payload for CancelTransaction.CreateTyped.
type CancelTransactionCreateData struct {
	AcquirerId *string `json:"acquirer_id,omitempty"`
	AcquirerName *string `json:"acquirer_name,omitempty"`
	ActualBonusPoint *string `json:"actual_bonus_point,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	BalanceAmount *string `json:"balance_amount,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	ClientId int `json:"client_id"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ec_data,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvData *string `json:"emv_data,omitempty"`
	ExchangeFee *int `json:"exchange_fee,omitempty"`
	ExchangeRate *string `json:"exchange_rate,omitempty"`
	LanguageCode *string `json:"language_code,omitempty"`
	MerchantAddress *string `json:"merchant_address,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	MessageType *string `json:"message_type,omitempty"`
	OriginalTraceNumber *int `json:"original_trace_number,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptFooter *string `json:"receipt_footer,omitempty"`
	ReceiptHeader *string `json:"receipt_header,omitempty"`
	ReceiptLayout *int `json:"receipt_layout,omitempty"`
	ReceiptNumber string `json:"receipt_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber *string `json:"serial_number,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminal_id"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TxType *string `json:"tx_type,omitempty"`
	UserData *string `json:"user_data,omitempty"`
}

// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
type CheckCardBlackListed struct {
	CardNo *string `json:"card_no,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.CreateTyped.
type CheckCardBlackListedCreateData struct {
	CardNo *string `json:"card_no,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// CreateProduct is the typed data model for the create_product entity.
type CreateProduct struct {
	AcquirerId *int `json:"acquirer_id,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
	TemplateType string `json:"template_type"`
	TemplateXml string `json:"template_xml"`
	TerminalType string `json:"terminal_type"`
}

// CreateProductCreateData is the typed request payload for CreateProduct.CreateTyped.
type CreateProductCreateData struct {
	AcquirerId *int `json:"acquirer_id,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
	TemplateType string `json:"template_type"`
	TemplateXml string `json:"template_xml"`
	TerminalType string `json:"terminal_type"`
}

// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
type DeactivateTerminal struct {
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	DeactivationReason string `json:"deactivation_reason"`
	PackageOrderUuid *string `json:"package_order_uuid,omitempty"`
	ProductOrderUuid *string `json:"product_order_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
}

// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.CreateTyped.
type DeactivateTerminalCreateData struct {
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	DeactivationReason string `json:"deactivation_reason"`
	PackageOrderUuid *string `json:"package_order_uuid,omitempty"`
	ProductOrderUuid *string `json:"product_order_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
}

// DigitalServicesApi is the typed data model for the digital_services_api entity.
type DigitalServicesApi struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TxCount *int `json:"tx_count,omitempty"`
	TxIdEnd *string `json:"tx_id_end,omitempty"`
	TxIdStart *string `json:"tx_id_start,omitempty"`
	TxSeqNoEnd *int `json:"tx_seq_no_end,omitempty"`
	TxSeqNoStart *int `json:"tx_seq_no_start,omitempty"`
	TxTotal *int `json:"tx_total,omitempty"`
}

// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.LoadTyped.
type DigitalServicesApiLoadMatch struct {
	ClearingDateFrom *string `json:"clearing_date_from,omitempty"`
	ClearingDateTo *string `json:"clearing_date_to,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TxCount *int `json:"tx_count,omitempty"`
	TxIdEnd *string `json:"tx_id_end,omitempty"`
	TxIdStart *string `json:"tx_id_start,omitempty"`
	TxSeqNoEnd *int `json:"tx_seq_no_end,omitempty"`
	TxSeqNoStart *int `json:"tx_seq_no_start,omitempty"`
	TxTotal *int `json:"tx_total,omitempty"`
}

// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.CreateTyped.
type DigitalServicesApiCreateData struct {
	FileId *string `json:"file_id,omitempty"`
}

// EcDataEcom is the typed data model for the ec_data_ecom entity.
type EcDataEcom struct {
	EcomData *string `json:"ecom_data,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
	TransactionId string `json:"transaction_id"`
	TransactionType string `json:"transaction_type"`
}

// EcDataEcomCreateData is the typed request payload for EcDataEcom.CreateTyped.
type EcDataEcomCreateData struct {
	EcomData *string `json:"ecom_data,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
	TransactionId string `json:"transaction_id"`
	TransactionType string `json:"transaction_type"`
}

// EcomParameter is the typed data model for the ecom_parameter entity.
type EcomParameter struct {
	EcomPass *string `json:"ecom_pass,omitempty"`
	EcomSkey *string `json:"ecom_skey,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
}

// EcomParameterCreateData is the typed request payload for EcomParameter.CreateTyped.
type EcomParameterCreateData struct {
	EcomPass *string `json:"ecom_pass,omitempty"`
	EcomSkey *string `json:"ecom_skey,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
}

// EcrData is the typed data model for the ecr_data entity.
type EcrData struct {
	EcrData *string `json:"ecr_data,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
	TransactionId string `json:"transaction_id"`
	TransactionType string `json:"transaction_type"`
}

// EcrDataCreateData is the typed request payload for EcrData.CreateTyped.
type EcrDataCreateData struct {
	EcrData *string `json:"ecr_data,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
	TransactionId string `json:"transaction_id"`
	TransactionType string `json:"transaction_type"`
}

// EmvData is the typed data model for the emv_data entity.
type EmvData struct {
	EmvData *string `json:"emv_data,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
	TransactionId string `json:"transaction_id"`
	TransactionType string `json:"transaction_type"`
}

// EmvDataCreateData is the typed request payload for EmvData.CreateTyped.
type EmvDataCreateData struct {
	EmvData *string `json:"emv_data,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
	TransactionId string `json:"transaction_id"`
	TransactionType string `json:"transaction_type"`
}

// EnableAcquiring is the typed data model for the enable_acquiring entity.
type EnableAcquiring struct {
	AccountNo *int `json:"account_no,omitempty"`
	AdditionalData *map[string]any `json:"additional_data,omitempty"`
	CorporateUuid string `json:"corporate_uuid"`
	Currency string `json:"currency"`
	MerchantCategoryCode int `json:"merchant_category_code"`
	PackageOrderUuid string `json:"package_order_uuid"`
	ProductOrderUuid string `json:"product_order_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SortingCode *int `json:"sorting_code,omitempty"`
	TemplateName string `json:"template_name"`
	TerminalId *[]any `json:"terminal_id,omitempty"`
	TerminalIdAcq *string `json:"terminal_id_acq,omitempty"`
	VuNummer *string `json:"vu_nummer,omitempty"`
}

// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.CreateTyped.
type EnableAcquiringCreateData struct {
	AccountNo *int `json:"account_no,omitempty"`
	AdditionalData *map[string]any `json:"additional_data,omitempty"`
	CorporateUuid string `json:"corporate_uuid"`
	Currency string `json:"currency"`
	MerchantCategoryCode int `json:"merchant_category_code"`
	PackageOrderUuid string `json:"package_order_uuid"`
	ProductOrderUuid string `json:"product_order_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SortingCode *int `json:"sorting_code,omitempty"`
	TemplateName string `json:"template_name"`
	TerminalId *[]any `json:"terminal_id,omitempty"`
	TerminalIdAcq *string `json:"terminal_id_acq,omitempty"`
	VuNummer *string `json:"vu_nummer,omitempty"`
}

// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
type GetMerchantContractNumber struct {
	MerchantContractNumber string `json:"merchant_contract_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.CreateTyped.
type GetMerchantContractNumberCreateData struct {
	MerchantContractNumber string `json:"merchant_contract_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// GetTemplateXml is the typed data model for the get_template_xml entity.
type GetTemplateXml struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
}

// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.CreateTyped.
type GetTemplateXmlCreateData struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
}

// IntroduceMandator is the typed data model for the introduce_mandator entity.
type IntroduceMandator struct {
	MandatorName string `json:"mandator_name"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.CreateTyped.
type IntroduceMandatorCreateData struct {
	MandatorName string `json:"mandator_name"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// IntroducePackage is the typed data model for the introduce_package entity.
type IntroducePackage struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalTemplateDescription string `json:"terminal_template_description"`
}

// IntroducePackageCreateData is the typed request payload for IntroducePackage.CreateTyped.
type IntroducePackageCreateData struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalTemplateDescription string `json:"terminal_template_description"`
}

// KeepAlive is the typed data model for the keep_alive entity.
type KeepAlive struct {
	Hwserialno *string `json:"hwserialno,omitempty"`
	KaDateTimeFrom *string `json:"ka_date_time_from,omitempty"`
	KaDateTimeTo *string `json:"ka_date_time_to,omitempty"`
	KeepAliveData *[]any `json:"keep_alive_data,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalDateTimeFrom *string `json:"terminal_date_time_from,omitempty"`
	TerminalDateTimeTo *string `json:"terminal_date_time_to,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
}

// KeepAliveCreateData is the typed request payload for KeepAlive.CreateTyped.
type KeepAliveCreateData struct {
	Hwserialno *string `json:"hwserialno,omitempty"`
	KaDateTimeFrom *string `json:"ka_date_time_from,omitempty"`
	KaDateTimeTo *string `json:"ka_date_time_to,omitempty"`
	KeepAliveData *[]any `json:"keep_alive_data,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalDateTimeFrom *string `json:"terminal_date_time_from,omitempty"`
	TerminalDateTimeTo *string `json:"terminal_date_time_to,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
}

// ListTerminal is the typed data model for the list_terminal entity.
type ListTerminal struct {
	CorporateUuid *[]any `json:"corporate_uuid,omitempty"`
	Filter *map[string]any `json:"filter,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Terminal *[]any `json:"terminal,omitempty"`
}

// ListTerminalCreateData is the typed request payload for ListTerminal.CreateTyped.
type ListTerminalCreateData struct {
	CorporateUuid *[]any `json:"corporate_uuid,omitempty"`
	Filter *map[string]any `json:"filter,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Terminal *[]any `json:"terminal,omitempty"`
}

// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
type MandatorClearingExport struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	Record *[]any `json:"record,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.CreateTyped.
type MandatorClearingExportCreateData struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	Record *[]any `json:"record,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
type MandatorClearingExportDownload struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	FileId *string `json:"file_id,omitempty"`
	FilenameTemplate *string `json:"filename_template,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Status *string `json:"status,omitempty"`
}

// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.LoadTyped.
type MandatorClearingExportDownloadLoadMatch struct {
	Id string `json:"id"`
}

// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.CreateTyped.
type MandatorClearingExportDownloadCreateData struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	FileId *string `json:"file_id,omitempty"`
	FilenameTemplate *string `json:"filename_template,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Status *string `json:"status,omitempty"`
}

// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
type MandatorClearingExportSummary struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	Record *[]any `json:"record,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.CreateTyped.
type MandatorClearingExportSummaryCreateData struct {
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	Record *[]any `json:"record,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
type MerchantPortalServicesApi struct {
	F3DSecure *string `json:"3_d_secure,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	ClearingAmountFrom *string `json:"clearing_amount_from,omitempty"`
	ClearingAmountTo *string `json:"clearing_amount_to,omitempty"`
	ClearingCurrency *string `json:"clearing_currency,omitempty"`
	ClearingStatus *string `json:"clearing_status,omitempty"`
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	OrderByTransactionDate *string `json:"order_by_transaction_date,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ReceiptNumber *string `json:"receipt_number,omitempty"`
	ReferencedTransactionId *string `json:"referenced_transaction_id,omitempty"`
	RetrievalReferenceNumber *string `json:"retrieval_reference_number,omitempty"`
	SourceId *int `json:"source_id,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengine_response_code_from,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengine_response_code_to,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TraceNumber *string `json:"trace_number,omitempty"`
	TransactionAmountFrom *string `json:"transaction_amount_from,omitempty"`
	TransactionAmountTo *string `json:"transaction_amount_to,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionType *string `json:"transaction_type,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.CreateTyped.
type MerchantPortalServicesApiCreateData struct {
	F3DSecure *string `json:"3_d_secure,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	ClearingAmountFrom *string `json:"clearing_amount_from,omitempty"`
	ClearingAmountTo *string `json:"clearing_amount_to,omitempty"`
	ClearingCurrency *string `json:"clearing_currency,omitempty"`
	ClearingStatus *string `json:"clearing_status,omitempty"`
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	OrderByTransactionDate *string `json:"order_by_transaction_date,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ReceiptNumber *string `json:"receipt_number,omitempty"`
	ReferencedTransactionId *string `json:"referenced_transaction_id,omitempty"`
	RetrievalReferenceNumber *string `json:"retrieval_reference_number,omitempty"`
	SourceId *int `json:"source_id,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengine_response_code_from,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengine_response_code_to,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TraceNumber *string `json:"trace_number,omitempty"`
	TransactionAmountFrom *string `json:"transaction_amount_from,omitempty"`
	TransactionAmountTo *string `json:"transaction_amount_to,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionType *string `json:"transaction_type,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// MoveTid is the typed data model for the move_tid entity.
type MoveTid struct {
	Productorderuuid []any `json:"productorderuuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TargetPackageorderuuid *string `json:"target_packageorderuuid,omitempty"`
	TargetProductorderuuid *string `json:"target_productorderuuid,omitempty"`
}

// MoveTidCreateData is the typed request payload for MoveTid.CreateTyped.
type MoveTidCreateData struct {
	Productorderuuid []any `json:"productorderuuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TargetPackageorderuuid *string `json:"target_packageorderuuid,omitempty"`
	TargetProductorderuuid *string `json:"target_productorderuuid,omitempty"`
}

// PaymentManual is the typed data model for the payment_manual entity.
type PaymentManual struct {
	AcquirerName *string `json:"acquirer_name,omitempty"`
	Amount int `json:"amount"`
	AuthorizationNumber *string `json:"authorization_number,omitempty"`
	CardNumber string `json:"card_number"`
	CardType *string `json:"card_type,omitempty"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	DateTimeTx *string `json:"date_time_tx,omitempty"`
	ExpDate string `json:"exp_date"`
	MerchantId *string `json:"merchant_id,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	ResponseCode *string `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId *string `json:"terminal_id,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	Txtype string `json:"txtype"`
}

// PaymentManualCreateData is the typed request payload for PaymentManual.CreateTyped.
type PaymentManualCreateData struct {
	AcquirerName *string `json:"acquirer_name,omitempty"`
	Amount int `json:"amount"`
	AuthorizationNumber *string `json:"authorization_number,omitempty"`
	CardNumber string `json:"card_number"`
	CardType *string `json:"card_type,omitempty"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	DateTimeTx *string `json:"date_time_tx,omitempty"`
	ExpDate string `json:"exp_date"`
	MerchantId *string `json:"merchant_id,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	ResponseCode *string `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId *string `json:"terminal_id,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	Txtype string `json:"txtype"`
}

// PaymentSred is the typed data model for the payment_sred entity.
type PaymentSred struct {
	AcquirerName *string `json:"acquirer_name,omitempty"`
	Amount int `json:"amount"`
	AuthorizationNumber *string `json:"authorization_number,omitempty"`
	CardType *string `json:"card_type,omitempty"`
	Currency string `json:"currency"`
	DateTimeTx *string `json:"date_time_tx,omitempty"`
	DevicePayload string `json:"device_payload"`
	MerchantId *string `json:"merchant_id,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	ResponseCode *string `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sred *map[string]any `json:"sred,omitempty"`
	TerminalId *string `json:"terminal_id,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	Txtype string `json:"txtype"`
}

// PaymentSredCreateData is the typed request payload for PaymentSred.CreateTyped.
type PaymentSredCreateData struct {
	AcquirerName *string `json:"acquirer_name,omitempty"`
	Amount int `json:"amount"`
	AuthorizationNumber *string `json:"authorization_number,omitempty"`
	CardType *string `json:"card_type,omitempty"`
	Currency string `json:"currency"`
	DateTimeTx *string `json:"date_time_tx,omitempty"`
	DevicePayload string `json:"device_payload"`
	MerchantId *string `json:"merchant_id,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	ResponseCode *string `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sred *map[string]any `json:"sred,omitempty"`
	TerminalId *string `json:"terminal_id,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	Txtype string `json:"txtype"`
}

// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
type PreAuthTransactionCompletion struct {
	AcquirerId *string `json:"acquirer_id,omitempty"`
	AcquirerName *string `json:"acquirer_name,omitempty"`
	ActualBonusPoint *string `json:"actual_bonus_point,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	BalanceAmount *string `json:"balance_amount,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	CardNumberReference string `json:"card_number_reference"`
	ClientId int `json:"client_id"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ec_data,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvData *string `json:"emv_data,omitempty"`
	ExchangeFee *int `json:"exchange_fee,omitempty"`
	ExchangeRate *string `json:"exchange_rate,omitempty"`
	LanguageCode *string `json:"language_code,omitempty"`
	MerchantAddress *string `json:"merchant_address,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	MessageType *string `json:"message_type,omitempty"`
	OriginalTraceNumber *int `json:"original_trace_number,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptFooter *string `json:"receipt_footer,omitempty"`
	ReceiptHeader *string `json:"receipt_header,omitempty"`
	ReceiptLayout *int `json:"receipt_layout,omitempty"`
	ReceiptNumber string `json:"receipt_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber *string `json:"serial_number,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminal_id"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionType string `json:"transaction_type"`
	TxType *string `json:"tx_type,omitempty"`
	UserData *string `json:"user_data,omitempty"`
}

// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.CreateTyped.
type PreAuthTransactionCompletionCreateData struct {
	AcquirerId *string `json:"acquirer_id,omitempty"`
	AcquirerName *string `json:"acquirer_name,omitempty"`
	ActualBonusPoint *string `json:"actual_bonus_point,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	BalanceAmount *string `json:"balance_amount,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	CardNumberReference string `json:"card_number_reference"`
	ClientId int `json:"client_id"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ec_data,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvData *string `json:"emv_data,omitempty"`
	ExchangeFee *int `json:"exchange_fee,omitempty"`
	ExchangeRate *string `json:"exchange_rate,omitempty"`
	LanguageCode *string `json:"language_code,omitempty"`
	MerchantAddress *string `json:"merchant_address,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	MessageType *string `json:"message_type,omitempty"`
	OriginalTraceNumber *int `json:"original_trace_number,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptFooter *string `json:"receipt_footer,omitempty"`
	ReceiptHeader *string `json:"receipt_header,omitempty"`
	ReceiptLayout *int `json:"receipt_layout,omitempty"`
	ReceiptNumber string `json:"receipt_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber *string `json:"serial_number,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminal_id"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionType string `json:"transaction_type"`
	TxType *string `json:"tx_type,omitempty"`
	UserData *string `json:"user_data,omitempty"`
}

// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
type ReactivateTerminal struct {
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	PackageOrderUuid *string `json:"package_order_uuid,omitempty"`
	ProductOrderUuid *string `json:"product_order_uuid,omitempty"`
	ReactivationReason string `json:"reactivation_reason"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
}

// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.CreateTyped.
type ReactivateTerminalCreateData struct {
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	PackageOrderUuid *string `json:"package_order_uuid,omitempty"`
	ProductOrderUuid *string `json:"product_order_uuid,omitempty"`
	ReactivationReason string `json:"reactivation_reason"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TerminalId int `json:"terminal_id"`
}

// RefundTransaction is the typed data model for the refund_transaction entity.
type RefundTransaction struct {
	AcquirerId *string `json:"acquirer_id,omitempty"`
	AcquirerName *string `json:"acquirer_name,omitempty"`
	ActualBonusPoint *string `json:"actual_bonus_point,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	BalanceAmount *string `json:"balance_amount,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	ClientId int `json:"client_id"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ec_data,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvData *string `json:"emv_data,omitempty"`
	ExchangeFee *int `json:"exchange_fee,omitempty"`
	ExchangeRate *string `json:"exchange_rate,omitempty"`
	LanguageCode *string `json:"language_code,omitempty"`
	MerchantAddress *string `json:"merchant_address,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	MessageType *string `json:"message_type,omitempty"`
	OriginalTraceNumber *int `json:"original_trace_number,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptFooter *string `json:"receipt_footer,omitempty"`
	ReceiptHeader *string `json:"receipt_header,omitempty"`
	ReceiptLayout *int `json:"receipt_layout,omitempty"`
	ReceiptNumber string `json:"receipt_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber *string `json:"serial_number,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminal_id"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TxType *string `json:"tx_type,omitempty"`
	UserData *string `json:"user_data,omitempty"`
}

// RefundTransactionCreateData is the typed request payload for RefundTransaction.CreateTyped.
type RefundTransactionCreateData struct {
	AcquirerId *string `json:"acquirer_id,omitempty"`
	AcquirerName *string `json:"acquirer_name,omitempty"`
	ActualBonusPoint *string `json:"actual_bonus_point,omitempty"`
	Amount *int `json:"amount,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	BalanceAmount *string `json:"balance_amount,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	ClientId int `json:"client_id"`
	Currency string `json:"currency"`
	Cvc *string `json:"cvc,omitempty"`
	EcData *string `json:"ec_data,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvData *string `json:"emv_data,omitempty"`
	ExchangeFee *int `json:"exchange_fee,omitempty"`
	ExchangeRate *string `json:"exchange_rate,omitempty"`
	LanguageCode *string `json:"language_code,omitempty"`
	MerchantAddress *string `json:"merchant_address,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	MessageType *string `json:"message_type,omitempty"`
	OriginalTraceNumber *int `json:"original_trace_number,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	Password *string `json:"password,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptFooter *string `json:"receipt_footer,omitempty"`
	ReceiptHeader *string `json:"receipt_header,omitempty"`
	ReceiptLayout *int `json:"receipt_layout,omitempty"`
	ReceiptNumber string `json:"receipt_number"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber *string `json:"serial_number,omitempty"`
	Svc *string `json:"svc,omitempty"`
	TerminalId int `json:"terminal_id"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TxType *string `json:"tx_type,omitempty"`
	UserData *string `json:"user_data,omitempty"`
}

// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
type RegisterTecsCompany struct {
	CorporateUuid string `json:"corporate_uuid"`
	PackageOrderUuid string `json:"package_order_uuid"`
	PartnerId *int `json:"partner_id,omitempty"`
	PartnerName *string `json:"partner_name,omitempty"`
	ProductOrderUuid string `json:"product_order_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
}

// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.CreateTyped.
type RegisterTecsCompanyCreateData struct {
	CorporateUuid string `json:"corporate_uuid"`
	PackageOrderUuid string `json:"package_order_uuid"`
	PartnerId *int `json:"partner_id,omitempty"`
	PartnerName *string `json:"partner_name,omitempty"`
	ProductOrderUuid string `json:"product_order_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
}

// RegisterTerminal is the typed data model for the register_terminal entity.
type RegisterTerminal struct {
	AdditionalData *map[string]any `json:"additional_data,omitempty"`
	CorporateUuid string `json:"corporate_uuid"`
	PackageOrderUuid string `json:"package_order_uuid"`
	ProductOrderUuid string `json:"product_order_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TecsWebSecretKey *string `json:"tecs_web_secret_key,omitempty"`
	TemplateName string `json:"template_name"`
	TerminalCountryCode string `json:"terminal_country_code"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TerminalIdAcq *string `json:"terminal_id_acq,omitempty"`
	TerminalLanguageCode string `json:"terminal_language_code"`
	TerminalLocation string `json:"terminal_location"`
	TerminalSerialNumber *string `json:"terminal_serial_number,omitempty"`
	TokenIoAlia *string `json:"token_io_alia,omitempty"`
	TokenIoIban *string `json:"token_io_iban,omitempty"`
	TokenIoMemberId *string `json:"token_io_member_id,omitempty"`
	WebShopUrl *string `json:"web_shop_url,omitempty"`
}

// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.CreateTyped.
type RegisterTerminalCreateData struct {
	AdditionalData *map[string]any `json:"additional_data,omitempty"`
	CorporateUuid string `json:"corporate_uuid"`
	PackageOrderUuid string `json:"package_order_uuid"`
	ProductOrderUuid string `json:"product_order_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TecsWebSecretKey *string `json:"tecs_web_secret_key,omitempty"`
	TemplateName string `json:"template_name"`
	TerminalCountryCode string `json:"terminal_country_code"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TerminalIdAcq *string `json:"terminal_id_acq,omitempty"`
	TerminalLanguageCode string `json:"terminal_language_code"`
	TerminalLocation string `json:"terminal_location"`
	TerminalSerialNumber *string `json:"terminal_serial_number,omitempty"`
	TokenIoAlia *string `json:"token_io_alia,omitempty"`
	TokenIoIban *string `json:"token_io_iban,omitempty"`
	TokenIoMemberId *string `json:"token_io_member_id,omitempty"`
	WebShopUrl *string `json:"web_shop_url,omitempty"`
}

// ReportData is the typed data model for the report_data entity.
type ReportData struct {
	CardBrandReportData *[]any `json:"card_brand_report_data,omitempty"`
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	CorporateId string `json:"corporate_id"`
	Currency string `json:"currency"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SumOverCreditTx *map[string]any `json:"sum_over_credit_tx,omitempty"`
	SumOverDebitTx *map[string]any `json:"sum_over_debit_tx,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
}

// ReportDataCreateData is the typed request payload for ReportData.CreateTyped.
type ReportDataCreateData struct {
	CardBrandReportData *[]any `json:"card_brand_report_data,omitempty"`
	ClearingDateFrom string `json:"clearing_date_from"`
	ClearingDateTo string `json:"clearing_date_to"`
	CorporateId string `json:"corporate_id"`
	Currency string `json:"currency"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SumOverCreditTx *map[string]any `json:"sum_over_credit_tx,omitempty"`
	SumOverDebitTx *map[string]any `json:"sum_over_debit_tx,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
}

// StatusTransaction is the typed data model for the status_transaction entity.
type StatusTransaction struct {
	AcquirerName *string `json:"acquirer_name,omitempty"`
	AcquirerTerminalId *string `json:"acquirer_terminal_id,omitempty"`
	Amount *int `json:"amount,omitempty"`
	ApplicationCryptogram *string `json:"application_cryptogram,omitempty"`
	AuthorizationCode *any `json:"authorization_code,omitempty"`
	AuthorizationDate *string `json:"authorization_date,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardEntry *string `json:"card_entry,omitempty"`
	CardExpiration *string `json:"card_expiration,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	ClearingAmount *int `json:"clearing_amount,omitempty"`
	ClearingBatchId *string `json:"clearing_batch_id,omitempty"`
	ClearingCurrency *string `json:"clearing_currency,omitempty"`
	ClearingDate *string `json:"clearing_date,omitempty"`
	ClearingProcessedDate *string `json:"clearing_processed_date,omitempty"`
	ClearingStatus *string `json:"clearing_status,omitempty"`
	ClientId *int `json:"client_id,omitempty"`
	Currency *string `json:"currency,omitempty"`
	Cvm *string `json:"cvm,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvApplicationId *string `json:"emv_application_id,omitempty"`
	EmvApplicationLabel *string `json:"emv_application_label,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	OriginalClientId *string `json:"original_client_id,omitempty"`
	OriginalTerminalId *int `json:"original_terminal_id,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptNumber *string `json:"receipt_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseCodeFromA *string `json:"response_code_from_a,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	RetrievalReferenceNumber *string `json:"retrieval_reference_number,omitempty"`
	ServiceCode *string `json:"service_code,omitempty"`
	SettlementStatus *string `json:"settlement_status,omitempty"`
	SourceId *int `json:"source_id,omitempty"`
	TecsengineResponseCode *int `json:"tecsengine_response_code,omitempty"`
	TecsengineResponseText *string `json:"tecsengine_response_text,omitempty"`
	TerminalEndOfDayDate *string `json:"terminal_end_of_day_date,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TipAmount *int `json:"tip_amount,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionClearingDate *string `json:"transaction_clearing_date,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionSeqNumber *int `json:"transaction_seq_number,omitempty"`
	TransactionServerDate *string `json:"transaction_server_date,omitempty"`
	TransactionSource *string `json:"transaction_source,omitempty"`
	TransactionType *string `json:"transaction_type,omitempty"`
}

// StatusTransactionCreateData is the typed request payload for StatusTransaction.CreateTyped.
type StatusTransactionCreateData struct {
	AcquirerName *string `json:"acquirer_name,omitempty"`
	AcquirerTerminalId *string `json:"acquirer_terminal_id,omitempty"`
	Amount *int `json:"amount,omitempty"`
	ApplicationCryptogram *string `json:"application_cryptogram,omitempty"`
	AuthorizationCode *any `json:"authorization_code,omitempty"`
	AuthorizationDate *string `json:"authorization_date,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	CardEntry *string `json:"card_entry,omitempty"`
	CardExpiration *string `json:"card_expiration,omitempty"`
	CardNumber *string `json:"card_number,omitempty"`
	ClearingAmount *int `json:"clearing_amount,omitempty"`
	ClearingBatchId *string `json:"clearing_batch_id,omitempty"`
	ClearingCurrency *string `json:"clearing_currency,omitempty"`
	ClearingDate *string `json:"clearing_date,omitempty"`
	ClearingProcessedDate *string `json:"clearing_processed_date,omitempty"`
	ClearingStatus *string `json:"clearing_status,omitempty"`
	ClientId *int `json:"client_id,omitempty"`
	Currency *string `json:"currency,omitempty"`
	Cvm *string `json:"cvm,omitempty"`
	EcrData *string `json:"ecr_data,omitempty"`
	EmvApplicationId *string `json:"emv_application_id,omitempty"`
	EmvApplicationLabel *string `json:"emv_application_label,omitempty"`
	MerchantName *string `json:"merchant_name,omitempty"`
	MerchantNumber *string `json:"merchant_number,omitempty"`
	OriginalClientId *string `json:"original_client_id,omitempty"`
	OriginalTerminalId *int `json:"original_terminal_id,omitempty"`
	OriginalTransactionId *string `json:"original_transaction_id,omitempty"`
	PaymentReason *string `json:"payment_reason,omitempty"`
	ReceiptNumber *string `json:"receipt_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseCodeFromA *string `json:"response_code_from_a,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	RetrievalReferenceNumber *string `json:"retrieval_reference_number,omitempty"`
	ServiceCode *string `json:"service_code,omitempty"`
	SettlementStatus *string `json:"settlement_status,omitempty"`
	SourceId *int `json:"source_id,omitempty"`
	TecsengineResponseCode *int `json:"tecsengine_response_code,omitempty"`
	TecsengineResponseText *string `json:"tecsengine_response_text,omitempty"`
	TerminalEndOfDayDate *string `json:"terminal_end_of_day_date,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TerminalLocation *string `json:"terminal_location,omitempty"`
	TipAmount *int `json:"tip_amount,omitempty"`
	TraceNumber *int `json:"trace_number,omitempty"`
	TransactionClearingDate *string `json:"transaction_clearing_date,omitempty"`
	TransactionDate *string `json:"transaction_date,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionSeqNumber *int `json:"transaction_seq_number,omitempty"`
	TransactionServerDate *string `json:"transaction_server_date,omitempty"`
	TransactionSource *string `json:"transaction_source,omitempty"`
	TransactionType *string `json:"transaction_type,omitempty"`
}

// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
type StoreTerminalParameter struct {
	AcqTabNexo *map[string]any `json:"acq_tab_nexo,omitempty"`
	ConfigVersion *string `json:"config_version,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber string `json:"serial_number"`
	TidSent *string `json:"tid_sent,omitempty"`
}

// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.CreateTyped.
type StoreTerminalParameterCreateData struct {
	AcqTabNexo *map[string]any `json:"acq_tab_nexo,omitempty"`
	ConfigVersion *string `json:"config_version,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	SerialNumber string `json:"serial_number"`
	TidSent *string `json:"tid_sent,omitempty"`
}

// TerminalId is the typed data model for the terminal_id entity.
type TerminalId struct {
	DeviceSerialNumber []any `json:"device_serial_number"`
	DuplicateTerminalId *[]any `json:"duplicate_terminal_id,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Terminal *[]any `json:"terminal,omitempty"`
}

// TerminalIdCreateData is the typed request payload for TerminalId.CreateTyped.
type TerminalIdCreateData struct {
	DeviceSerialNumber []any `json:"device_serial_number"`
	DuplicateTerminalId *[]any `json:"duplicate_terminal_id,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Terminal *[]any `json:"terminal,omitempty"`
}

// TransactionHistory is the typed data model for the transaction_history entity.
type TransactionHistory struct {
	F3DSecure *string `json:"3_d_secure,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	ClearingAmountFrom *string `json:"clearing_amount_from,omitempty"`
	ClearingAmountTo *string `json:"clearing_amount_to,omitempty"`
	ClearingCurrency *string `json:"clearing_currency,omitempty"`
	ClearingStatus *string `json:"clearing_status,omitempty"`
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	OrderByTransactionDate *string `json:"order_by_transaction_date,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	PaymentTokenPublicId *string `json:"payment_token_public_id,omitempty"`
	ReceiptNumber *string `json:"receipt_number,omitempty"`
	ReferencedTransactionId *string `json:"referenced_transaction_id,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	RetrievalReferenceNumber *string `json:"retrieval_reference_number,omitempty"`
	SourceId *int `json:"source_id,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengine_response_code_from,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengine_response_code_to,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TraceNumber *string `json:"trace_number,omitempty"`
	TransactionAmountFrom *string `json:"transaction_amount_from,omitempty"`
	TransactionAmountTo *string `json:"transaction_amount_to,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionHistory *[]any `json:"transaction_history,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionType *string `json:"transaction_type,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// TransactionHistoryCreateData is the typed request payload for TransactionHistory.CreateTyped.
type TransactionHistoryCreateData struct {
	F3DSecure *string `json:"3_d_secure,omitempty"`
	AuthorizationCode *string `json:"authorization_code,omitempty"`
	CardBrand *string `json:"card_brand,omitempty"`
	ClearingAmountFrom *string `json:"clearing_amount_from,omitempty"`
	ClearingAmountTo *string `json:"clearing_amount_to,omitempty"`
	ClearingCurrency *string `json:"clearing_currency,omitempty"`
	ClearingStatus *string `json:"clearing_status,omitempty"`
	CorporateUuid *string `json:"corporate_uuid,omitempty"`
	OrderByTransactionDate *string `json:"order_by_transaction_date,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	PaymentTokenPublicId *string `json:"payment_token_public_id,omitempty"`
	ReceiptNumber *string `json:"receipt_number,omitempty"`
	ReferencedTransactionId *string `json:"referenced_transaction_id,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	RetrievalReferenceNumber *string `json:"retrieval_reference_number,omitempty"`
	SourceId *int `json:"source_id,omitempty"`
	TecsengineResponseCodeFrom *string `json:"tecsengine_response_code_from,omitempty"`
	TecsengineResponseCodeTo *string `json:"tecsengine_response_code_to,omitempty"`
	TerminalId *int `json:"terminal_id,omitempty"`
	TraceNumber *string `json:"trace_number,omitempty"`
	TransactionAmountFrom *string `json:"transaction_amount_from,omitempty"`
	TransactionAmountTo *string `json:"transaction_amount_to,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionHistory *[]any `json:"transaction_history,omitempty"`
	TransactionId *string `json:"transaction_id,omitempty"`
	TransactionType *string `json:"transaction_type,omitempty"`
	Wallet *string `json:"wallet,omitempty"`
}

// TransactionsCount is the typed data model for the transactions_count entity.
type TransactionsCount struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionsCount *[]any `json:"transactions_count,omitempty"`
}

// TransactionsCountCreateData is the typed request payload for TransactionsCount.CreateTyped.
type TransactionsCountCreateData struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionsCount *[]any `json:"transactions_count,omitempty"`
}

// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
type TransactionsCountCardBrand struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionsCount *[]any `json:"transactions_count,omitempty"`
}

// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.CreateTyped.
type TransactionsCountCardBrandCreateData struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	TransactionsCount *[]any `json:"transactions_count,omitempty"`
}

// TransactionsTurnover is the typed data model for the transactions_turnover entity.
type TransactionsTurnover struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	Turnover *[]any `json:"turnover,omitempty"`
}

// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.CreateTyped.
type TransactionsTurnoverCreateData struct {
	Period *string `json:"period,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TransactionDateFrom *string `json:"transaction_date_from,omitempty"`
	TransactionDateTo *string `json:"transaction_date_to,omitempty"`
	Turnover *[]any `json:"turnover,omitempty"`
}

// UpdateMerchant is the typed data model for the update_merchant entity.
type UpdateMerchant struct {
	City *string `json:"city,omitempty"`
	CorporateUuid string `json:"corporate_uuid"`
	Country *string `json:"country,omitempty"`
	MerchantCategoryCode *string `json:"merchant_category_code,omitempty"`
	Name *string `json:"name,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	State *string `json:"state,omitempty"`
	Street *string `json:"street,omitempty"`
	VuNummer *string `json:"vu_nummer,omitempty"`
	Zipcode *string `json:"zipcode,omitempty"`
}

// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.CreateTyped.
type UpdateMerchantCreateData struct {
	City *string `json:"city,omitempty"`
	CorporateUuid string `json:"corporate_uuid"`
	Country *string `json:"country,omitempty"`
	MerchantCategoryCode *string `json:"merchant_category_code,omitempty"`
	Name *string `json:"name,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	State *string `json:"state,omitempty"`
	Street *string `json:"street,omitempty"`
	VuNummer *string `json:"vu_nummer,omitempty"`
	Zipcode *string `json:"zipcode,omitempty"`
}

// UpdateTemplateXml is the typed data model for the update_template_xml entity.
type UpdateTemplateXml struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
	TemplateXml string `json:"template_xml"`
}

// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.CreateTyped.
type UpdateTemplateXmlCreateData struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	TemplateName string `json:"template_name"`
	TemplateXml string `json:"template_xml"`
}

// Version is the typed data model for the version entity.
type Version struct {
	AppName *string `json:"app_name,omitempty"`
	BuildDate *string `json:"build_date,omitempty"`
	Version *string `json:"version,omitempty"`
}

// VersionLoadMatch is the typed request payload for Version.LoadTyped.
type VersionLoadMatch struct {
	AppName *string `json:"app_name,omitempty"`
	BuildDate *string `json:"build_date,omitempty"`
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

// typedFrom decodes a runtime value (a map[string]any produced by the op
// pipeline) into a typed model T via a JSON round-trip. On any error it
// returns the zero value of T; the op's own (value, error) tuple carries the
// real error.
func typedFrom[T any](v any) T {
	var out T
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

// typedSliceFrom decodes a runtime list value ([]any of maps) into a typed
// slice []T via a JSON round-trip, for list ops.
func typedSliceFrom[T any](v any) []T {
	var out []T
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
