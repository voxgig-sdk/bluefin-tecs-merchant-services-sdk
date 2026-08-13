// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return
// `voxgig_value*`), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support. This header is standalone
// and is not #included by any generated .c.

#ifndef BLUEFINTECSMERCHANTSERVICES_ENTITY_TYPES_H
#define BLUEFINTECSMERCHANTSERVICES_ENTITY_TYPES_H

#include "sdk.h"

// CancelTransaction is the typed data model for the cancel_transaction entity.
typedef struct {
  char*acquirerid;  // optional
  char*acquirername;  // optional
  char*actualbonuspoints;  // optional
  int64_t amount;  // optional
  char*authorizationcode;  // optional
  char*balanceamount;  // optional
  char*cardbrand;  // optional
  char*cardnumber;  // optional
  int64_t clientid;
  char*currency;
  char*cvc;  // optional
  char*ecdata;  // optional
  char*ecrdata;  // optional
  char*emvdata;  // optional
  int64_t exchangefee;  // optional
  char*exchangerate;  // optional
  char*languagecode;  // optional
  char*merchantaddress;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*messagetype;  // optional
  int64_t originaltracenumber;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*paymentreason;  // optional
  char*receiptfooter;  // optional
  char*receiptheader;  // optional
  int64_t receiptlayout;  // optional
  char*receiptnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;  // optional
  char*svc;  // optional
  int64_t terminalid;
  char*terminallocation;  // optional
  int64_t tracenumber;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  char*txtype;  // optional
  char*userdata;  // optional
} CancelTransaction;

// CancelTransactionCreateData is the typed request payload for CancelTransaction.create.
typedef struct {
  char*acquirerid;  // optional
  char*acquirername;  // optional
  char*actualbonuspoints;  // optional
  int64_t amount;  // optional
  char*authorizationcode;  // optional
  char*balanceamount;  // optional
  char*cardbrand;  // optional
  char*cardnumber;  // optional
  int64_t clientid;
  char*currency;
  char*cvc;  // optional
  char*ecdata;  // optional
  char*ecrdata;  // optional
  char*emvdata;  // optional
  int64_t exchangefee;  // optional
  char*exchangerate;  // optional
  char*languagecode;  // optional
  char*merchantaddress;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*messagetype;  // optional
  int64_t originaltracenumber;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*paymentreason;  // optional
  char*receiptfooter;  // optional
  char*receiptheader;  // optional
  int64_t receiptlayout;  // optional
  char*receiptnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;  // optional
  char*svc;  // optional
  int64_t terminalid;
  char*terminallocation;  // optional
  int64_t tracenumber;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  char*txtype;  // optional
  char*userdata;  // optional
} CancelTransactionCreateData;

// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
typedef struct {
  char*cardno;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} CheckCardBlackListed;

// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.create.
typedef struct {
  char*cardno;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} CheckCardBlackListedCreateData;

// CreateProduct is the typed data model for the create_product entity.
typedef struct {
  int64_t acquirerid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
  char*templatetype;
  char*templatexml;
  char*terminaltype;
} CreateProduct;

// CreateProductCreateData is the typed request payload for CreateProduct.create.
typedef struct {
  int64_t acquirerid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
  char*templatetype;
  char*templatexml;
  char*terminaltype;
} CreateProductCreateData;

// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
typedef struct {
  char*corporateuuid;  // optional
  char*deactivationreason;
  char*packageorderuuid;  // optional
  char*productorderuuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
} DeactivateTerminal;

// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.create.
typedef struct {
  char*corporateuuid;  // optional
  char*deactivationreason;
  char*packageorderuuid;  // optional
  char*productorderuuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
} DeactivateTerminalCreateData;

// DigitalServicesApi is the typed data model for the digital_services_api entity.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t txcount;  // optional
  char*txidend;  // optional
  char*txidstart;  // optional
  int64_t txseqnoend;  // optional
  int64_t txseqnostart;  // optional
  int64_t txtotal;  // optional
} DigitalServicesApi;

// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.load.
typedef struct {
  char*clearingdatefrom;  // optional
  char*clearingdateto;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t txcount;  // optional
  char*txidend;  // optional
  char*txidstart;  // optional
  int64_t txseqnoend;  // optional
  int64_t txseqnostart;  // optional
  int64_t txtotal;  // optional
} DigitalServicesApiLoadMatch;

// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.create.
typedef struct {
  char*file_id;  // optional
  char*clearingdatefrom;
  char*clearingdateto;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t txcount;  // optional
  char*txidend;  // optional
  char*txidstart;  // optional
  int64_t txseqnoend;  // optional
  int64_t txseqnostart;  // optional
  int64_t txtotal;  // optional
} DigitalServicesApiCreateData;

// EcDataEcom is the typed data model for the ec_data_ecom entity.
typedef struct {
  char*ecomdata;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
  char*transactionid;
  char*transactiontype;
} EcDataEcom;

// EcDataEcomCreateData is the typed request payload for EcDataEcom.create.
typedef struct {
  char*ecomdata;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
  char*transactionid;
  char*transactiontype;
} EcDataEcomCreateData;

// EcomParameter is the typed data model for the ecom_parameter entity.
typedef struct {
  char*ecompass;  // optional
  char*ecomskey;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
} EcomParameter;

// EcomParameterCreateData is the typed request payload for EcomParameter.create.
typedef struct {
  char*ecompass;  // optional
  char*ecomskey;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
} EcomParameterCreateData;

// EcrData is the typed data model for the ecr_data entity.
typedef struct {
  char*ecrdata;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
  char*transactionid;
  char*transactiontype;
} EcrData;

// EcrDataCreateData is the typed request payload for EcrData.create.
typedef struct {
  char*ecrdata;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
  char*transactionid;
  char*transactiontype;
} EcrDataCreateData;

// EmvData is the typed data model for the emv_data entity.
typedef struct {
  char*emvdata;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
  char*transactionid;
  char*transactiontype;
} EmvData;

// EmvDataCreateData is the typed request payload for EmvData.create.
typedef struct {
  char*emvdata;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
  char*transactionid;
  char*transactiontype;
} EmvDataCreateData;

// EnableAcquiring is the typed data model for the enable_acquiring entity.
typedef struct {
  int64_t accountno;  // optional
  voxgig_value*additionaldata;  // optional
  char*corporateuuid;
  char*currency;
  int64_t merchantcategorycode;
  char*packageorderuuid;
  char*productorderuuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t sortingcode;  // optional
  char*templatename;
  char*terminalidacq;  // optional
  voxgig_value*terminalids;  // optional
  char*vunummer;  // optional
} EnableAcquiring;

// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.create.
typedef struct {
  int64_t accountno;  // optional
  voxgig_value*additionaldata;  // optional
  char*corporateuuid;
  char*currency;
  int64_t merchantcategorycode;
  char*packageorderuuid;
  char*productorderuuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t sortingcode;  // optional
  char*templatename;
  char*terminalidacq;  // optional
  voxgig_value*terminalids;  // optional
  char*vunummer;  // optional
} EnableAcquiringCreateData;

// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
typedef struct {
  char*merchantcontractnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} GetMerchantContractNumber;

// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.create.
typedef struct {
  char*merchantcontractnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} GetMerchantContractNumberCreateData;

// GetTemplateXml is the typed data model for the get_template_xml entity.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
} GetTemplateXml;

// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.create.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
} GetTemplateXmlCreateData;

// IntroduceMandator is the typed data model for the introduce_mandator entity.
typedef struct {
  char*mandatorname;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} IntroduceMandator;

// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.create.
typedef struct {
  char*mandatorname;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} IntroduceMandatorCreateData;

// IntroducePackage is the typed data model for the introduce_package entity.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*terminaltemplatedescription;
} IntroducePackage;

// IntroducePackageCreateData is the typed request payload for IntroducePackage.create.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*terminaltemplatedescription;
} IntroducePackageCreateData;

// KeepAlive is the typed data model for the keep_alive entity.
typedef struct {
  char*hwserialno;  // optional
  char*kadatetimefrom;  // optional
  char*kadatetimeto;  // optional
  voxgig_value*keepalivedata;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*terminaldatetimefrom;  // optional
  char*terminaldatetimeto;  // optional
  int64_t terminalid;  // optional
} KeepAlive;

// KeepAliveCreateData is the typed request payload for KeepAlive.create.
typedef struct {
  char*hwserialno;  // optional
  char*kadatetimefrom;  // optional
  char*kadatetimeto;  // optional
  voxgig_value*keepalivedata;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*terminaldatetimefrom;  // optional
  char*terminaldatetimeto;  // optional
  int64_t terminalid;  // optional
} KeepAliveCreateData;

// ListTerminal is the typed data model for the list_terminal entity.
typedef struct {
  voxgig_value*corporateuuid;  // optional
  voxgig_value*filter;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*terminals;  // optional
} ListTerminal;

// ListTerminalCreateData is the typed request payload for ListTerminal.create.
typedef struct {
  voxgig_value*corporateuuid;  // optional
  voxgig_value*filter;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*terminals;  // optional
} ListTerminalCreateData;

// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  voxgig_value*pagination;  // optional
  voxgig_value*records;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} MandatorClearingExport;

// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.create.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  voxgig_value*pagination;  // optional
  voxgig_value*records;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} MandatorClearingExportCreateData;

// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  char*fileid;  // optional
  char*filenametemplate;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*status;  // optional
} MandatorClearingExportDownload;

// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.load.
typedef struct {
  char*id;
} MandatorClearingExportDownloadLoadMatch;

// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.create.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  char*fileid;  // optional
  char*filenametemplate;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*status;  // optional
} MandatorClearingExportDownloadCreateData;

// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  voxgig_value*records;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} MandatorClearingExportSummary;

// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.create.
typedef struct {
  char*clearingdatefrom;
  char*clearingdateto;
  voxgig_value*records;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} MandatorClearingExportSummaryCreateData;

// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
typedef struct {
  char*_3dsecure;  // optional
  char*authorizationcode;  // optional
  char*cardbrand;  // optional
  char*clearingamountfrom;  // optional
  char*clearingamountto;  // optional
  char*clearingcurrency;  // optional
  char*clearingstatus;  // optional
  char*corporateuuid;  // optional
  char*orderbytransactiondate;  // optional
  voxgig_value*pagination;  // optional
  char*receiptnumber;  // optional
  char*referencedtransactionid;  // optional
  char*retrievalreferencenumber;  // optional
  int64_t sourceid;  // optional
  char*tecsengineresponsecodefrom;  // optional
  char*tecsengineresponsecodeto;  // optional
  int64_t terminalid;  // optional
  char*tracenumber;  // optional
  char*transactionamountfrom;  // optional
  char*transactionamountto;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  char*transactionid;  // optional
  char*transactiontype;  // optional
  char*wallet;  // optional
} MerchantPortalServicesApi;

// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.create.
typedef struct {
  char*_3dsecure;  // optional
  char*authorizationcode;  // optional
  char*cardbrand;  // optional
  char*clearingamountfrom;  // optional
  char*clearingamountto;  // optional
  char*clearingcurrency;  // optional
  char*clearingstatus;  // optional
  char*corporateuuid;  // optional
  char*orderbytransactiondate;  // optional
  voxgig_value*pagination;  // optional
  char*receiptnumber;  // optional
  char*referencedtransactionid;  // optional
  char*retrievalreferencenumber;  // optional
  int64_t sourceid;  // optional
  char*tecsengineresponsecodefrom;  // optional
  char*tecsengineresponsecodeto;  // optional
  int64_t terminalid;  // optional
  char*tracenumber;  // optional
  char*transactionamountfrom;  // optional
  char*transactionamountto;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  char*transactionid;  // optional
  char*transactiontype;  // optional
  char*wallet;  // optional
} MerchantPortalServicesApiCreateData;

// MoveTid is the typed data model for the move_tid entity.
typedef struct {
  voxgig_value*productorderuuids;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*targetpackageorderuuid;  // optional
  char*targetproductorderuuid;  // optional
} MoveTid;

// MoveTidCreateData is the typed request payload for MoveTid.create.
typedef struct {
  voxgig_value*productorderuuids;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*targetpackageorderuuid;  // optional
  char*targetproductorderuuid;  // optional
} MoveTidCreateData;

// PaymentManual is the typed data model for the payment_manual entity.
typedef struct {
  char*acquirername;  // optional
  int64_t amount;
  char*authorizationnumber;  // optional
  char*cardnumber;
  char*cardtype;  // optional
  char*currency;
  char*cvc;  // optional
  char*datetimetx;  // optional
  char*expdate;
  char*merchantid;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*responsecode;  // optional
  char*responsemessage;  // optional
  char*terminalid;  // optional
  char*transactionid;  // optional
  char*txtype;
} PaymentManual;

// PaymentManualCreateData is the typed request payload for PaymentManual.create.
typedef struct {
  char*acquirername;  // optional
  int64_t amount;
  char*authorizationnumber;  // optional
  char*cardnumber;
  char*cardtype;  // optional
  char*currency;
  char*cvc;  // optional
  char*datetimetx;  // optional
  char*expdate;
  char*merchantid;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*responsecode;  // optional
  char*responsemessage;  // optional
  char*terminalid;  // optional
  char*transactionid;  // optional
  char*txtype;
} PaymentManualCreateData;

// PaymentSred is the typed data model for the payment_sred entity.
typedef struct {
  int64_t amount;
  char*currency;
  char*device;  // optional
  char*devicepayload;
  char*expdate;  // optional
  char*mode;  // optional
  char*panmasked;  // optional
  char*password;  // optional
  char*serial;  // optional
  char*servicecode;  // optional
  char*terminalid;
  char*txtype;
} PaymentSred;

// PaymentSredCreateData is the typed request payload for PaymentSred.create.
typedef struct {
  int64_t amount;
  char*currency;
  char*device;  // optional
  char*devicepayload;
  char*expdate;  // optional
  char*mode;  // optional
  char*panmasked;  // optional
  char*password;  // optional
  char*serial;  // optional
  char*servicecode;  // optional
  char*terminalid;
  char*txtype;
} PaymentSredCreateData;

// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
typedef struct {
  char*acquirerid;  // optional
  char*acquirername;  // optional
  char*actualbonuspoints;  // optional
  int64_t amount;  // optional
  char*authorizationcode;  // optional
  char*balanceamount;  // optional
  char*cardbrand;  // optional
  char*cardnumber;  // optional
  char*cardnumberreference;
  int64_t clientid;
  char*currency;
  char*cvc;  // optional
  char*ecdata;  // optional
  char*ecrdata;  // optional
  char*emvdata;  // optional
  int64_t exchangefee;  // optional
  char*exchangerate;  // optional
  char*languagecode;  // optional
  char*merchantaddress;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*messagetype;  // optional
  int64_t originaltracenumber;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*paymentreason;  // optional
  char*receiptfooter;  // optional
  char*receiptheader;  // optional
  int64_t receiptlayout;  // optional
  char*receiptnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;  // optional
  char*svc;  // optional
  int64_t terminalid;
  char*terminallocation;  // optional
  int64_t tracenumber;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  char*transactiontype;
  char*txtype;  // optional
  char*userdata;  // optional
} PreAuthTransactionCompletion;

// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.create.
typedef struct {
  char*acquirerid;  // optional
  char*acquirername;  // optional
  char*actualbonuspoints;  // optional
  int64_t amount;  // optional
  char*authorizationcode;  // optional
  char*balanceamount;  // optional
  char*cardbrand;  // optional
  char*cardnumber;  // optional
  char*cardnumberreference;
  int64_t clientid;
  char*currency;
  char*cvc;  // optional
  char*ecdata;  // optional
  char*ecrdata;  // optional
  char*emvdata;  // optional
  int64_t exchangefee;  // optional
  char*exchangerate;  // optional
  char*languagecode;  // optional
  char*merchantaddress;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*messagetype;  // optional
  int64_t originaltracenumber;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*paymentreason;  // optional
  char*receiptfooter;  // optional
  char*receiptheader;  // optional
  int64_t receiptlayout;  // optional
  char*receiptnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;  // optional
  char*svc;  // optional
  int64_t terminalid;
  char*terminallocation;  // optional
  int64_t tracenumber;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  char*transactiontype;
  char*txtype;  // optional
  char*userdata;  // optional
} PreAuthTransactionCompletionCreateData;

// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
typedef struct {
  char*corporateuuid;  // optional
  char*packageorderuuid;  // optional
  char*productorderuuid;  // optional
  char*reactivationreason;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
} ReactivateTerminal;

// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.create.
typedef struct {
  char*corporateuuid;  // optional
  char*packageorderuuid;  // optional
  char*productorderuuid;  // optional
  char*reactivationreason;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  int64_t terminalid;
} ReactivateTerminalCreateData;

// RefundTransaction is the typed data model for the refund_transaction entity.
typedef struct {
  char*acquirerid;  // optional
  char*acquirername;  // optional
  char*actualbonuspoints;  // optional
  int64_t amount;  // optional
  char*authorizationcode;  // optional
  char*balanceamount;  // optional
  char*cardbrand;  // optional
  char*cardnumber;  // optional
  int64_t clientid;
  char*currency;
  char*cvc;  // optional
  char*ecdata;  // optional
  char*ecrdata;  // optional
  char*emvdata;  // optional
  int64_t exchangefee;  // optional
  char*exchangerate;  // optional
  char*languagecode;  // optional
  char*merchantaddress;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*messagetype;  // optional
  int64_t originaltracenumber;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*paymentreason;  // optional
  char*receiptfooter;  // optional
  char*receiptheader;  // optional
  int64_t receiptlayout;  // optional
  char*receiptnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;  // optional
  char*svc;  // optional
  int64_t terminalid;
  char*terminallocation;  // optional
  int64_t tracenumber;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  char*txtype;  // optional
  char*userdata;  // optional
} RefundTransaction;

// RefundTransactionCreateData is the typed request payload for RefundTransaction.create.
typedef struct {
  char*acquirerid;  // optional
  char*acquirername;  // optional
  char*actualbonuspoints;  // optional
  int64_t amount;  // optional
  char*authorizationcode;  // optional
  char*balanceamount;  // optional
  char*cardbrand;  // optional
  char*cardnumber;  // optional
  int64_t clientid;
  char*currency;
  char*cvc;  // optional
  char*ecdata;  // optional
  char*ecrdata;  // optional
  char*emvdata;  // optional
  int64_t exchangefee;  // optional
  char*exchangerate;  // optional
  char*languagecode;  // optional
  char*merchantaddress;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*messagetype;  // optional
  int64_t originaltracenumber;  // optional
  char*originaltransactionid;  // optional
  char*password;  // optional
  char*paymentreason;  // optional
  char*receiptfooter;  // optional
  char*receiptheader;  // optional
  int64_t receiptlayout;  // optional
  char*receiptnumber;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;  // optional
  char*svc;  // optional
  int64_t terminalid;
  char*terminallocation;  // optional
  int64_t tracenumber;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  char*txtype;  // optional
  char*userdata;  // optional
} RefundTransactionCreateData;

// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
typedef struct {
  char*corporateuuid;
  char*packageorderuuid;
  int64_t partnerid;  // optional
  char*partnername;  // optional
  char*productorderuuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
} RegisterTecsCompany;

// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.create.
typedef struct {
  char*corporateuuid;
  char*packageorderuuid;
  int64_t partnerid;  // optional
  char*partnername;  // optional
  char*productorderuuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
} RegisterTecsCompanyCreateData;

// RegisterTerminal is the typed data model for the register_terminal entity.
typedef struct {
  voxgig_value*additionaldata;  // optional
  char*corporateuuid;
  char*packageorderuuid;
  char*productorderuuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*tecswebsecretkey;  // optional
  char*templatename;
  char*terminalcountrycode;
  int64_t terminalid;  // optional
  char*terminalidacq;  // optional
  char*terminallanguagecode;
  char*terminallocation;
  char*terminalserialnumber;  // optional
  char*tokenioalias;  // optional
  char*tokenioiban;  // optional
  char*tokeniomemberid;  // optional
  char*webshopurl;  // optional
} RegisterTerminal;

// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.create.
typedef struct {
  voxgig_value*additionaldata;  // optional
  char*corporateuuid;
  char*packageorderuuid;
  char*productorderuuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*tecswebsecretkey;  // optional
  char*templatename;
  char*terminalcountrycode;
  int64_t terminalid;  // optional
  char*terminalidacq;  // optional
  char*terminallanguagecode;
  char*terminallocation;
  char*terminalserialnumber;  // optional
  char*tokenioalias;  // optional
  char*tokenioiban;  // optional
  char*tokeniomemberid;  // optional
  char*webshopurl;  // optional
} RegisterTerminalCreateData;

// ReportData is the typed data model for the report_data entity.
typedef struct {
  voxgig_value*cardbrandreportdata;  // optional
  char*clearingdatefrom;
  char*clearingdateto;
  char*corporateid;
  char*currency;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sumovercredittx;  // optional
  voxgig_value*sumoverdebittx;  // optional
  int64_t terminalid;  // optional
} ReportData;

// ReportDataCreateData is the typed request payload for ReportData.create.
typedef struct {
  voxgig_value*cardbrandreportdata;  // optional
  char*clearingdatefrom;
  char*clearingdateto;
  char*corporateid;
  char*currency;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sumovercredittx;  // optional
  voxgig_value*sumoverdebittx;  // optional
  int64_t terminalid;  // optional
} ReportDataCreateData;

// StatusTransaction is the typed data model for the status_transaction entity.
typedef struct {
  char*acquirername;  // optional
  char*acquirerterminalid;  // optional
  int64_t amount;  // optional
  char*applicationcryptogram;  // optional
  voxgig_value*authorizationcode;  // optional
  char*authorizationdate;  // optional
  char*cardbrand;  // optional
  char*cardentry;  // optional
  char*cardexpiration;  // optional
  char*cardnumber;  // optional
  int64_t clearingamount;  // optional
  char*clearingbatchid;  // optional
  char*clearingcurrency;  // optional
  char*clearingdate;  // optional
  char*clearingprocesseddate;  // optional
  char*clearingstatus;  // optional
  int64_t clientid;  // optional
  char*currency;  // optional
  char*cvm;  // optional
  char*ecrdata;  // optional
  char*emvapplicationid;  // optional
  char*emvapplicationlabel;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*originalclientid;  // optional
  int64_t originalterminalid;  // optional
  char*originaltransactionid;  // optional
  char*paymentreason;  // optional
  char*receiptnumber;  // optional
  int64_t responsecode;  // optional
  char*responsecodefromas;  // optional
  char*responsemessage;  // optional
  char*retrievalreferencenumber;  // optional
  char*servicecode;  // optional
  char*settlementstatus;  // optional
  int64_t sourceid;  // optional
  int64_t tecsengineresponsecode;  // optional
  char*tecsengineresponsetext;  // optional
  char*terminalendofdaydate;  // optional
  int64_t terminalid;  // optional
  char*terminallocation;  // optional
  int64_t tipamount;  // optional
  int64_t tracenumber;  // optional
  char*transactionclearingdate;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  int64_t transactionseqnumber;  // optional
  char*transactionserverdate;  // optional
  char*transactionsource;  // optional
  char*transactiontype;  // optional
} StatusTransaction;

// StatusTransactionCreateData is the typed request payload for StatusTransaction.create.
typedef struct {
  char*acquirername;  // optional
  char*acquirerterminalid;  // optional
  int64_t amount;  // optional
  char*applicationcryptogram;  // optional
  voxgig_value*authorizationcode;  // optional
  char*authorizationdate;  // optional
  char*cardbrand;  // optional
  char*cardentry;  // optional
  char*cardexpiration;  // optional
  char*cardnumber;  // optional
  int64_t clearingamount;  // optional
  char*clearingbatchid;  // optional
  char*clearingcurrency;  // optional
  char*clearingdate;  // optional
  char*clearingprocesseddate;  // optional
  char*clearingstatus;  // optional
  int64_t clientid;  // optional
  char*currency;  // optional
  char*cvm;  // optional
  char*ecrdata;  // optional
  char*emvapplicationid;  // optional
  char*emvapplicationlabel;  // optional
  char*merchantname;  // optional
  char*merchantnumber;  // optional
  char*originalclientid;  // optional
  int64_t originalterminalid;  // optional
  char*originaltransactionid;  // optional
  char*paymentreason;  // optional
  char*receiptnumber;  // optional
  int64_t responsecode;  // optional
  char*responsecodefromas;  // optional
  char*responsemessage;  // optional
  char*retrievalreferencenumber;  // optional
  char*servicecode;  // optional
  char*settlementstatus;  // optional
  int64_t sourceid;  // optional
  int64_t tecsengineresponsecode;  // optional
  char*tecsengineresponsetext;  // optional
  char*terminalendofdaydate;  // optional
  int64_t terminalid;  // optional
  char*terminallocation;  // optional
  int64_t tipamount;  // optional
  int64_t tracenumber;  // optional
  char*transactionclearingdate;  // optional
  char*transactiondate;  // optional
  char*transactionid;  // optional
  int64_t transactionseqnumber;  // optional
  char*transactionserverdate;  // optional
  char*transactionsource;  // optional
  char*transactiontype;  // optional
} StatusTransactionCreateData;

// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
typedef struct {
  voxgig_value*acqtabnexo;  // optional
  char*configversion;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;
  char*tidsent;  // optional
} StoreTerminalParameter;

// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.create.
typedef struct {
  voxgig_value*acqtabnexo;  // optional
  char*configversion;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*serialnumber;
  char*tidsent;  // optional
} StoreTerminalParameterCreateData;

// TerminalId is the typed data model for the terminal_id entity.
typedef struct {
  voxgig_value*deviceserialnumber;
  voxgig_value*duplicateterminalids;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*terminals;  // optional
} TerminalId;

// TerminalIdCreateData is the typed request payload for TerminalId.create.
typedef struct {
  voxgig_value*deviceserialnumber;
  voxgig_value*duplicateterminalids;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*terminals;  // optional
} TerminalIdCreateData;

// TransactionHistory is the typed data model for the transaction_history entity.
typedef struct {
  char*_3dsecure;  // optional
  char*authorizationcode;  // optional
  char*cardbrand;  // optional
  char*clearingamountfrom;  // optional
  char*clearingamountto;  // optional
  char*clearingcurrency;  // optional
  char*clearingstatus;  // optional
  char*corporateuuid;  // optional
  char*orderbytransactiondate;  // optional
  voxgig_value*pagination;  // optional
  char*paymenttokenpublicid;  // optional
  char*receiptnumber;  // optional
  char*referencedtransactionid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*retrievalreferencenumber;  // optional
  int64_t sourceid;  // optional
  char*tecsengineresponsecodefrom;  // optional
  char*tecsengineresponsecodeto;  // optional
  int64_t terminalid;  // optional
  char*tracenumber;  // optional
  char*transactionamountfrom;  // optional
  char*transactionamountto;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*transactionhistories;  // optional
  char*transactionid;  // optional
  char*transactiontype;  // optional
  char*wallet;  // optional
} TransactionHistory;

// TransactionHistoryCreateData is the typed request payload for TransactionHistory.create.
typedef struct {
  char*_3dsecure;  // optional
  char*authorizationcode;  // optional
  char*cardbrand;  // optional
  char*clearingamountfrom;  // optional
  char*clearingamountto;  // optional
  char*clearingcurrency;  // optional
  char*clearingstatus;  // optional
  char*corporateuuid;  // optional
  char*orderbytransactiondate;  // optional
  voxgig_value*pagination;  // optional
  char*paymenttokenpublicid;  // optional
  char*receiptnumber;  // optional
  char*referencedtransactionid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*retrievalreferencenumber;  // optional
  int64_t sourceid;  // optional
  char*tecsengineresponsecodefrom;  // optional
  char*tecsengineresponsecodeto;  // optional
  int64_t terminalid;  // optional
  char*tracenumber;  // optional
  char*transactionamountfrom;  // optional
  char*transactionamountto;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*transactionhistories;  // optional
  char*transactionid;  // optional
  char*transactiontype;  // optional
  char*wallet;  // optional
} TransactionHistoryCreateData;

// TransactionsCount is the typed data model for the transactions_count entity.
typedef struct {
  char*period;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*transactionscount;  // optional
} TransactionsCount;

// TransactionsCountCreateData is the typed request payload for TransactionsCount.create.
typedef struct {
  char*period;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*transactionscount;  // optional
} TransactionsCountCreateData;

// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
typedef struct {
  char*period;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*transactionscount;  // optional
} TransactionsCountCardBrand;

// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.create.
typedef struct {
  char*period;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*transactionscount;  // optional
} TransactionsCountCardBrandCreateData;

// TransactionsTurnover is the typed data model for the transactions_turnover entity.
typedef struct {
  char*period;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*turnovers;  // optional
} TransactionsTurnover;

// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.create.
typedef struct {
  char*period;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*transactiondatefrom;  // optional
  char*transactiondateto;  // optional
  voxgig_value*turnovers;  // optional
} TransactionsTurnoverCreateData;

// UpdateMerchant is the typed data model for the update_merchant entity.
typedef struct {
  char*city;  // optional
  char*corporateuuid;
  char*country;  // optional
  char*merchantcategorycode;  // optional
  char*name;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*state;  // optional
  char*street;  // optional
  char*vunummer;  // optional
  char*zipcode;  // optional
} UpdateMerchant;

// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.create.
typedef struct {
  char*city;  // optional
  char*corporateuuid;
  char*country;  // optional
  char*merchantcategorycode;  // optional
  char*name;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*state;  // optional
  char*street;  // optional
  char*vunummer;  // optional
  char*zipcode;  // optional
} UpdateMerchantCreateData;

// UpdateTemplateXml is the typed data model for the update_template_xml entity.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
  char*templatexml;
} UpdateTemplateXml;

// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.create.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*templatename;
  char*templatexml;
} UpdateTemplateXmlCreateData;

// Version is the typed data model for the version entity.
typedef struct {
  char*appname;  // optional
  char*builddate;  // optional
  char*version;  // optional
} Version;

// VersionLoadMatch is the typed request payload for Version.load.
typedef struct {
  char*appname;  // optional
  char*builddate;  // optional
  char*version;  // optional
} VersionLoadMatch;

#endif // BLUEFINTECSMERCHANTSERVICES_ENTITY_TYPES_H
