// Typed models for the BluefinTecsMerchantServices SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return the
// `Value` enum), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support.
#![allow(dead_code, non_snake_case, unused_imports)]

use crate::utility::voxgigstruct::Value;

/// CancelTransaction is the typed data model for the cancel_transaction entity.
#[derive(Debug, Clone)]
pub struct CancelTransaction {
    pub acquirerid: Option<String>,
    pub acquirername: Option<String>,
    pub actualbonuspoints: Option<String>,
    pub amount: Option<i64>,
    pub authorizationcode: Option<String>,
    pub balanceamount: Option<String>,
    pub cardbrand: Option<String>,
    pub cardnumber: Option<String>,
    pub clientid: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ecdata: Option<String>,
    pub ecrdata: Option<String>,
    pub emvdata: Option<String>,
    pub exchangefee: Option<i64>,
    pub exchangerate: Option<String>,
    pub languagecode: Option<String>,
    pub merchantaddress: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub messagetype: Option<String>,
    pub originaltracenumber: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptfooter: Option<String>,
    pub receiptheader: Option<String>,
    pub receiptlayout: Option<i64>,
    pub receiptnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: Option<String>,
    pub svc: Option<String>,
    pub terminalid: i64,
    pub terminallocation: Option<String>,
    pub tracenumber: Option<i64>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub txtype: Option<String>,
    pub userdata: Option<String>,
}

/// CancelTransactionCreateData is the typed request payload for CancelTransaction.create.
#[derive(Debug, Clone)]
pub struct CancelTransactionCreateData {
    pub acquirerid: Option<String>,
    pub acquirername: Option<String>,
    pub actualbonuspoints: Option<String>,
    pub amount: Option<i64>,
    pub authorizationcode: Option<String>,
    pub balanceamount: Option<String>,
    pub cardbrand: Option<String>,
    pub cardnumber: Option<String>,
    pub clientid: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ecdata: Option<String>,
    pub ecrdata: Option<String>,
    pub emvdata: Option<String>,
    pub exchangefee: Option<i64>,
    pub exchangerate: Option<String>,
    pub languagecode: Option<String>,
    pub merchantaddress: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub messagetype: Option<String>,
    pub originaltracenumber: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptfooter: Option<String>,
    pub receiptheader: Option<String>,
    pub receiptlayout: Option<i64>,
    pub receiptnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: Option<String>,
    pub svc: Option<String>,
    pub terminalid: i64,
    pub terminallocation: Option<String>,
    pub tracenumber: Option<i64>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub txtype: Option<String>,
    pub userdata: Option<String>,
}

/// CheckCardBlackListed is the typed data model for the check_card_black_listed entity.
#[derive(Debug, Clone)]
pub struct CheckCardBlackListed {
    pub cardno: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// CheckCardBlackListedCreateData is the typed request payload for CheckCardBlackListed.create.
#[derive(Debug, Clone)]
pub struct CheckCardBlackListedCreateData {
    pub cardno: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// CreateProduct is the typed data model for the create_product entity.
#[derive(Debug, Clone)]
pub struct CreateProduct {
    pub acquirerid: Option<i64>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
    pub templatetype: String,
    pub templatexml: String,
    pub terminaltype: String,
}

/// CreateProductCreateData is the typed request payload for CreateProduct.create.
#[derive(Debug, Clone)]
pub struct CreateProductCreateData {
    pub acquirerid: Option<i64>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
    pub templatetype: String,
    pub templatexml: String,
    pub terminaltype: String,
}

/// DeactivateTerminal is the typed data model for the deactivate_terminal entity.
#[derive(Debug, Clone)]
pub struct DeactivateTerminal {
    pub corporateuuid: Option<String>,
    pub deactivationreason: String,
    pub packageorderuuid: Option<String>,
    pub productorderuuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
}

/// DeactivateTerminalCreateData is the typed request payload for DeactivateTerminal.create.
#[derive(Debug, Clone)]
pub struct DeactivateTerminalCreateData {
    pub corporateuuid: Option<String>,
    pub deactivationreason: String,
    pub packageorderuuid: Option<String>,
    pub productorderuuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
}

/// DigitalServicesApi is the typed data model for the digital_services_api entity.
#[derive(Debug, Clone)]
pub struct DigitalServicesApi {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub txcount: Option<i64>,
    pub txidend: Option<String>,
    pub txidstart: Option<String>,
    pub txseqnoend: Option<i64>,
    pub txseqnostart: Option<i64>,
    pub txtotal: Option<i64>,
}

/// DigitalServicesApiLoadMatch is the typed request payload for DigitalServicesApi.load.
#[derive(Debug, Clone)]
pub struct DigitalServicesApiLoadMatch {
    pub clearingdatefrom: Option<String>,
    pub clearingdateto: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub txcount: Option<i64>,
    pub txidend: Option<String>,
    pub txidstart: Option<String>,
    pub txseqnoend: Option<i64>,
    pub txseqnostart: Option<i64>,
    pub txtotal: Option<i64>,
}

/// DigitalServicesApiCreateData is the typed request payload for DigitalServicesApi.create.
#[derive(Debug, Clone)]
pub struct DigitalServicesApiCreateData {
    pub file_id: String,
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub txcount: Option<i64>,
    pub txidend: Option<String>,
    pub txidstart: Option<String>,
    pub txseqnoend: Option<i64>,
    pub txseqnostart: Option<i64>,
    pub txtotal: Option<i64>,
}

/// EcDataEcom is the typed data model for the ec_data_ecom entity.
#[derive(Debug, Clone)]
pub struct EcDataEcom {
    pub ecomdata: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
    pub transactionid: String,
    pub transactiontype: String,
}

/// EcDataEcomCreateData is the typed request payload for EcDataEcom.create.
#[derive(Debug, Clone)]
pub struct EcDataEcomCreateData {
    pub ecomdata: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
    pub transactionid: String,
    pub transactiontype: String,
}

/// EcomParameter is the typed data model for the ecom_parameter entity.
#[derive(Debug, Clone)]
pub struct EcomParameter {
    pub ecompass: Option<String>,
    pub ecomskey: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
}

/// EcomParameterCreateData is the typed request payload for EcomParameter.create.
#[derive(Debug, Clone)]
pub struct EcomParameterCreateData {
    pub ecompass: Option<String>,
    pub ecomskey: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
}

/// EcrData is the typed data model for the ecr_data entity.
#[derive(Debug, Clone)]
pub struct EcrData {
    pub ecrdata: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
    pub transactionid: String,
    pub transactiontype: String,
}

/// EcrDataCreateData is the typed request payload for EcrData.create.
#[derive(Debug, Clone)]
pub struct EcrDataCreateData {
    pub ecrdata: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
    pub transactionid: String,
    pub transactiontype: String,
}

/// EmvData is the typed data model for the emv_data entity.
#[derive(Debug, Clone)]
pub struct EmvData {
    pub emvdata: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
    pub transactionid: String,
    pub transactiontype: String,
}

/// EmvDataCreateData is the typed request payload for EmvData.create.
#[derive(Debug, Clone)]
pub struct EmvDataCreateData {
    pub emvdata: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
    pub transactionid: String,
    pub transactiontype: String,
}

/// EnableAcquiring is the typed data model for the enable_acquiring entity.
#[derive(Debug, Clone)]
pub struct EnableAcquiring {
    pub accountno: Option<i64>,
    pub additionaldata: Option<std::collections::HashMap<String, Value>>,
    pub corporateuuid: String,
    pub currency: String,
    pub merchantcategorycode: i64,
    pub packageorderuuid: String,
    pub productorderuuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sortingcode: Option<i64>,
    pub templatename: String,
    pub terminalidacq: Option<String>,
    pub terminalids: Option<Vec<Value>>,
    pub vunummer: Option<String>,
}

/// EnableAcquiringCreateData is the typed request payload for EnableAcquiring.create.
#[derive(Debug, Clone)]
pub struct EnableAcquiringCreateData {
    pub accountno: Option<i64>,
    pub additionaldata: Option<std::collections::HashMap<String, Value>>,
    pub corporateuuid: String,
    pub currency: String,
    pub merchantcategorycode: i64,
    pub packageorderuuid: String,
    pub productorderuuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sortingcode: Option<i64>,
    pub templatename: String,
    pub terminalidacq: Option<String>,
    pub terminalids: Option<Vec<Value>>,
    pub vunummer: Option<String>,
}

/// GetMerchantContractNumber is the typed data model for the get_merchant_contract_number entity.
#[derive(Debug, Clone)]
pub struct GetMerchantContractNumber {
    pub merchantcontractnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// GetMerchantContractNumberCreateData is the typed request payload for GetMerchantContractNumber.create.
#[derive(Debug, Clone)]
pub struct GetMerchantContractNumberCreateData {
    pub merchantcontractnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// GetTemplateXml is the typed data model for the get_template_xml entity.
#[derive(Debug, Clone)]
pub struct GetTemplateXml {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
}

/// GetTemplateXmlCreateData is the typed request payload for GetTemplateXml.create.
#[derive(Debug, Clone)]
pub struct GetTemplateXmlCreateData {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
}

/// IntroduceMandator is the typed data model for the introduce_mandator entity.
#[derive(Debug, Clone)]
pub struct IntroduceMandator {
    pub mandatorname: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// IntroduceMandatorCreateData is the typed request payload for IntroduceMandator.create.
#[derive(Debug, Clone)]
pub struct IntroduceMandatorCreateData {
    pub mandatorname: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// IntroducePackage is the typed data model for the introduce_package entity.
#[derive(Debug, Clone)]
pub struct IntroducePackage {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminaltemplatedescription: String,
}

/// IntroducePackageCreateData is the typed request payload for IntroducePackage.create.
#[derive(Debug, Clone)]
pub struct IntroducePackageCreateData {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminaltemplatedescription: String,
}

/// KeepAlive is the typed data model for the keep_alive entity.
#[derive(Debug, Clone)]
pub struct KeepAlive {
    pub hwserialno: Option<String>,
    pub kadatetimefrom: Option<String>,
    pub kadatetimeto: Option<String>,
    pub keepalivedata: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminaldatetimefrom: Option<String>,
    pub terminaldatetimeto: Option<String>,
    pub terminalid: Option<i64>,
}

/// KeepAliveCreateData is the typed request payload for KeepAlive.create.
#[derive(Debug, Clone)]
pub struct KeepAliveCreateData {
    pub hwserialno: Option<String>,
    pub kadatetimefrom: Option<String>,
    pub kadatetimeto: Option<String>,
    pub keepalivedata: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminaldatetimefrom: Option<String>,
    pub terminaldatetimeto: Option<String>,
    pub terminalid: Option<i64>,
}

/// ListTerminal is the typed data model for the list_terminal entity.
#[derive(Debug, Clone)]
pub struct ListTerminal {
    pub corporateuuid: Option<Vec<Value>>,
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminals: Option<Vec<Value>>,
}

/// ListTerminalCreateData is the typed request payload for ListTerminal.create.
#[derive(Debug, Clone)]
pub struct ListTerminalCreateData {
    pub corporateuuid: Option<Vec<Value>>,
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminals: Option<Vec<Value>>,
}

/// MandatorClearingExport is the typed data model for the mandator_clearing_export entity.
#[derive(Debug, Clone)]
pub struct MandatorClearingExport {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub records: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// MandatorClearingExportCreateData is the typed request payload for MandatorClearingExport.create.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportCreateData {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub records: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// MandatorClearingExportDownload is the typed data model for the mandator_clearing_export_download entity.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportDownload {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub fileid: Option<String>,
    pub filenametemplate: Option<String>,
    pub id: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub status: Option<String>,
}

/// MandatorClearingExportDownloadLoadMatch is the typed request payload for MandatorClearingExportDownload.load.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportDownloadLoadMatch {
    pub id: String,
}

/// MandatorClearingExportDownloadCreateData is the typed request payload for MandatorClearingExportDownload.create.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportDownloadCreateData {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub fileid: Option<String>,
    pub filenametemplate: Option<String>,
    pub id: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub status: Option<String>,
}

/// MandatorClearingExportSummary is the typed data model for the mandator_clearing_export_summary entity.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportSummary {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub records: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// MandatorClearingExportSummaryCreateData is the typed request payload for MandatorClearingExportSummary.create.
#[derive(Debug, Clone)]
pub struct MandatorClearingExportSummaryCreateData {
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub records: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// MerchantPortalServicesApi is the typed data model for the merchant_portal_services_api entity.
#[derive(Debug, Clone)]
pub struct MerchantPortalServicesApi {
    pub _3dsecure: Option<String>,
    pub authorizationcode: Option<String>,
    pub cardbrand: Option<String>,
    pub clearingamountfrom: Option<String>,
    pub clearingamountto: Option<String>,
    pub clearingcurrency: Option<String>,
    pub clearingstatus: Option<String>,
    pub corporateuuid: Option<String>,
    pub orderbytransactiondate: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub receiptnumber: Option<String>,
    pub referencedtransactionid: Option<String>,
    pub retrievalreferencenumber: Option<String>,
    pub sourceid: Option<i64>,
    pub tecsengineresponsecodefrom: Option<String>,
    pub tecsengineresponsecodeto: Option<String>,
    pub terminalid: Option<i64>,
    pub tracenumber: Option<String>,
    pub transactionamountfrom: Option<String>,
    pub transactionamountto: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionid: Option<String>,
    pub transactiontype: Option<String>,
    pub wallet: Option<String>,
}

/// MerchantPortalServicesApiCreateData is the typed request payload for MerchantPortalServicesApi.create.
#[derive(Debug, Clone)]
pub struct MerchantPortalServicesApiCreateData {
    pub _3dsecure: Option<String>,
    pub authorizationcode: Option<String>,
    pub cardbrand: Option<String>,
    pub clearingamountfrom: Option<String>,
    pub clearingamountto: Option<String>,
    pub clearingcurrency: Option<String>,
    pub clearingstatus: Option<String>,
    pub corporateuuid: Option<String>,
    pub orderbytransactiondate: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub receiptnumber: Option<String>,
    pub referencedtransactionid: Option<String>,
    pub retrievalreferencenumber: Option<String>,
    pub sourceid: Option<i64>,
    pub tecsengineresponsecodefrom: Option<String>,
    pub tecsengineresponsecodeto: Option<String>,
    pub terminalid: Option<i64>,
    pub tracenumber: Option<String>,
    pub transactionamountfrom: Option<String>,
    pub transactionamountto: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionid: Option<String>,
    pub transactiontype: Option<String>,
    pub wallet: Option<String>,
}

/// MoveTid is the typed data model for the move_tid entity.
#[derive(Debug, Clone)]
pub struct MoveTid {
    pub productorderuuids: Vec<Value>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub targetpackageorderuuid: Option<String>,
    pub targetproductorderuuid: Option<String>,
}

/// MoveTidCreateData is the typed request payload for MoveTid.create.
#[derive(Debug, Clone)]
pub struct MoveTidCreateData {
    pub productorderuuids: Vec<Value>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub targetpackageorderuuid: Option<String>,
    pub targetproductorderuuid: Option<String>,
}

/// PaymentManual is the typed data model for the payment_manual entity.
#[derive(Debug, Clone)]
pub struct PaymentManual {
    pub acquirername: Option<String>,
    pub amount: i64,
    pub authorizationnumber: Option<String>,
    pub cardnumber: String,
    pub cardtype: Option<String>,
    pub currency: String,
    pub cvc: Option<String>,
    pub datetimetx: Option<String>,
    pub expdate: String,
    pub merchantid: Option<String>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub responsecode: Option<String>,
    pub responsemessage: Option<String>,
    pub terminalid: Option<String>,
    pub transactionid: Option<String>,
    pub txtype: String,
}

/// PaymentManualCreateData is the typed request payload for PaymentManual.create.
#[derive(Debug, Clone)]
pub struct PaymentManualCreateData {
    pub acquirername: Option<String>,
    pub amount: i64,
    pub authorizationnumber: Option<String>,
    pub cardnumber: String,
    pub cardtype: Option<String>,
    pub currency: String,
    pub cvc: Option<String>,
    pub datetimetx: Option<String>,
    pub expdate: String,
    pub merchantid: Option<String>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub responsecode: Option<String>,
    pub responsemessage: Option<String>,
    pub terminalid: Option<String>,
    pub transactionid: Option<String>,
    pub txtype: String,
}

/// PaymentSred is the typed data model for the payment_sred entity.
#[derive(Debug, Clone)]
pub struct PaymentSred {
    pub amount: i64,
    pub currency: String,
    pub device: Option<String>,
    pub devicepayload: String,
    pub expdate: Option<String>,
    pub mode: Option<String>,
    pub panmasked: Option<String>,
    pub password: Option<String>,
    pub serial: Option<String>,
    pub servicecode: Option<String>,
    pub terminalid: String,
    pub txtype: String,
}

/// PaymentSredCreateData is the typed request payload for PaymentSred.create.
#[derive(Debug, Clone)]
pub struct PaymentSredCreateData {
    pub amount: i64,
    pub currency: String,
    pub device: Option<String>,
    pub devicepayload: String,
    pub expdate: Option<String>,
    pub mode: Option<String>,
    pub panmasked: Option<String>,
    pub password: Option<String>,
    pub serial: Option<String>,
    pub servicecode: Option<String>,
    pub terminalid: String,
    pub txtype: String,
}

/// PreAuthTransactionCompletion is the typed data model for the pre_auth_transaction_completion entity.
#[derive(Debug, Clone)]
pub struct PreAuthTransactionCompletion {
    pub acquirerid: Option<String>,
    pub acquirername: Option<String>,
    pub actualbonuspoints: Option<String>,
    pub amount: Option<i64>,
    pub authorizationcode: Option<String>,
    pub balanceamount: Option<String>,
    pub cardbrand: Option<String>,
    pub cardnumber: Option<String>,
    pub cardnumberreference: String,
    pub clientid: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ecdata: Option<String>,
    pub ecrdata: Option<String>,
    pub emvdata: Option<String>,
    pub exchangefee: Option<i64>,
    pub exchangerate: Option<String>,
    pub languagecode: Option<String>,
    pub merchantaddress: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub messagetype: Option<String>,
    pub originaltracenumber: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptfooter: Option<String>,
    pub receiptheader: Option<String>,
    pub receiptlayout: Option<i64>,
    pub receiptnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: Option<String>,
    pub svc: Option<String>,
    pub terminalid: i64,
    pub terminallocation: Option<String>,
    pub tracenumber: Option<i64>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub transactiontype: String,
    pub txtype: Option<String>,
    pub userdata: Option<String>,
}

/// PreAuthTransactionCompletionCreateData is the typed request payload for PreAuthTransactionCompletion.create.
#[derive(Debug, Clone)]
pub struct PreAuthTransactionCompletionCreateData {
    pub acquirerid: Option<String>,
    pub acquirername: Option<String>,
    pub actualbonuspoints: Option<String>,
    pub amount: Option<i64>,
    pub authorizationcode: Option<String>,
    pub balanceamount: Option<String>,
    pub cardbrand: Option<String>,
    pub cardnumber: Option<String>,
    pub cardnumberreference: String,
    pub clientid: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ecdata: Option<String>,
    pub ecrdata: Option<String>,
    pub emvdata: Option<String>,
    pub exchangefee: Option<i64>,
    pub exchangerate: Option<String>,
    pub languagecode: Option<String>,
    pub merchantaddress: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub messagetype: Option<String>,
    pub originaltracenumber: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptfooter: Option<String>,
    pub receiptheader: Option<String>,
    pub receiptlayout: Option<i64>,
    pub receiptnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: Option<String>,
    pub svc: Option<String>,
    pub terminalid: i64,
    pub terminallocation: Option<String>,
    pub tracenumber: Option<i64>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub transactiontype: String,
    pub txtype: Option<String>,
    pub userdata: Option<String>,
}

/// ReactivateTerminal is the typed data model for the reactivate_terminal entity.
#[derive(Debug, Clone)]
pub struct ReactivateTerminal {
    pub corporateuuid: Option<String>,
    pub packageorderuuid: Option<String>,
    pub productorderuuid: Option<String>,
    pub reactivationreason: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
}

/// ReactivateTerminalCreateData is the typed request payload for ReactivateTerminal.create.
#[derive(Debug, Clone)]
pub struct ReactivateTerminalCreateData {
    pub corporateuuid: Option<String>,
    pub packageorderuuid: Option<String>,
    pub productorderuuid: Option<String>,
    pub reactivationreason: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminalid: i64,
}

/// RefundTransaction is the typed data model for the refund_transaction entity.
#[derive(Debug, Clone)]
pub struct RefundTransaction {
    pub acquirerid: Option<String>,
    pub acquirername: Option<String>,
    pub actualbonuspoints: Option<String>,
    pub amount: Option<i64>,
    pub authorizationcode: Option<String>,
    pub balanceamount: Option<String>,
    pub cardbrand: Option<String>,
    pub cardnumber: Option<String>,
    pub clientid: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ecdata: Option<String>,
    pub ecrdata: Option<String>,
    pub emvdata: Option<String>,
    pub exchangefee: Option<i64>,
    pub exchangerate: Option<String>,
    pub languagecode: Option<String>,
    pub merchantaddress: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub messagetype: Option<String>,
    pub originaltracenumber: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptfooter: Option<String>,
    pub receiptheader: Option<String>,
    pub receiptlayout: Option<i64>,
    pub receiptnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: Option<String>,
    pub svc: Option<String>,
    pub terminalid: i64,
    pub terminallocation: Option<String>,
    pub tracenumber: Option<i64>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub txtype: Option<String>,
    pub userdata: Option<String>,
}

/// RefundTransactionCreateData is the typed request payload for RefundTransaction.create.
#[derive(Debug, Clone)]
pub struct RefundTransactionCreateData {
    pub acquirerid: Option<String>,
    pub acquirername: Option<String>,
    pub actualbonuspoints: Option<String>,
    pub amount: Option<i64>,
    pub authorizationcode: Option<String>,
    pub balanceamount: Option<String>,
    pub cardbrand: Option<String>,
    pub cardnumber: Option<String>,
    pub clientid: i64,
    pub currency: String,
    pub cvc: Option<String>,
    pub ecdata: Option<String>,
    pub ecrdata: Option<String>,
    pub emvdata: Option<String>,
    pub exchangefee: Option<i64>,
    pub exchangerate: Option<String>,
    pub languagecode: Option<String>,
    pub merchantaddress: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub messagetype: Option<String>,
    pub originaltracenumber: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub password: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptfooter: Option<String>,
    pub receiptheader: Option<String>,
    pub receiptlayout: Option<i64>,
    pub receiptnumber: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: Option<String>,
    pub svc: Option<String>,
    pub terminalid: i64,
    pub terminallocation: Option<String>,
    pub tracenumber: Option<i64>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub txtype: Option<String>,
    pub userdata: Option<String>,
}

/// RegisterTecsCompany is the typed data model for the register_tecs_company entity.
#[derive(Debug, Clone)]
pub struct RegisterTecsCompany {
    pub corporateuuid: String,
    pub packageorderuuid: String,
    pub partnerid: Option<i64>,
    pub partnername: Option<String>,
    pub productorderuuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
}

/// RegisterTecsCompanyCreateData is the typed request payload for RegisterTecsCompany.create.
#[derive(Debug, Clone)]
pub struct RegisterTecsCompanyCreateData {
    pub corporateuuid: String,
    pub packageorderuuid: String,
    pub partnerid: Option<i64>,
    pub partnername: Option<String>,
    pub productorderuuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
}

/// RegisterTerminal is the typed data model for the register_terminal entity.
#[derive(Debug, Clone)]
pub struct RegisterTerminal {
    pub additionaldata: Option<std::collections::HashMap<String, Value>>,
    pub corporateuuid: String,
    pub packageorderuuid: String,
    pub productorderuuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub tecswebsecretkey: Option<String>,
    pub templatename: String,
    pub terminalcountrycode: String,
    pub terminalid: Option<i64>,
    pub terminalidacq: Option<String>,
    pub terminallanguagecode: String,
    pub terminallocation: String,
    pub terminalserialnumber: Option<String>,
    pub tokenioalias: Option<String>,
    pub tokenioiban: Option<String>,
    pub tokeniomemberid: Option<String>,
    pub webshopurl: Option<String>,
}

/// RegisterTerminalCreateData is the typed request payload for RegisterTerminal.create.
#[derive(Debug, Clone)]
pub struct RegisterTerminalCreateData {
    pub additionaldata: Option<std::collections::HashMap<String, Value>>,
    pub corporateuuid: String,
    pub packageorderuuid: String,
    pub productorderuuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub tecswebsecretkey: Option<String>,
    pub templatename: String,
    pub terminalcountrycode: String,
    pub terminalid: Option<i64>,
    pub terminalidacq: Option<String>,
    pub terminallanguagecode: String,
    pub terminallocation: String,
    pub terminalserialnumber: Option<String>,
    pub tokenioalias: Option<String>,
    pub tokenioiban: Option<String>,
    pub tokeniomemberid: Option<String>,
    pub webshopurl: Option<String>,
}

/// ReportData is the typed data model for the report_data entity.
#[derive(Debug, Clone)]
pub struct ReportData {
    pub cardbrandreportdata: Option<Vec<Value>>,
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub corporateid: String,
    pub currency: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sumovercredittx: Option<std::collections::HashMap<String, Value>>,
    pub sumoverdebittx: Option<std::collections::HashMap<String, Value>>,
    pub terminalid: Option<i64>,
}

/// ReportDataCreateData is the typed request payload for ReportData.create.
#[derive(Debug, Clone)]
pub struct ReportDataCreateData {
    pub cardbrandreportdata: Option<Vec<Value>>,
    pub clearingdatefrom: String,
    pub clearingdateto: String,
    pub corporateid: String,
    pub currency: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sumovercredittx: Option<std::collections::HashMap<String, Value>>,
    pub sumoverdebittx: Option<std::collections::HashMap<String, Value>>,
    pub terminalid: Option<i64>,
}

/// StatusTransaction is the typed data model for the status_transaction entity.
#[derive(Debug, Clone)]
pub struct StatusTransaction {
    pub acquirername: Option<String>,
    pub acquirerterminalid: Option<String>,
    pub amount: Option<i64>,
    pub applicationcryptogram: Option<String>,
    pub authorizationcode: Option<Value>,
    pub authorizationdate: Option<String>,
    pub cardbrand: Option<String>,
    pub cardentry: Option<String>,
    pub cardexpiration: Option<String>,
    pub cardnumber: Option<String>,
    pub clearingamount: Option<i64>,
    pub clearingbatchid: Option<String>,
    pub clearingcurrency: Option<String>,
    pub clearingdate: Option<String>,
    pub clearingprocesseddate: Option<String>,
    pub clearingstatus: Option<String>,
    pub clientid: Option<i64>,
    pub currency: Option<String>,
    pub cvm: Option<String>,
    pub ecrdata: Option<String>,
    pub emvapplicationid: Option<String>,
    pub emvapplicationlabel: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub originalclientid: Option<String>,
    pub originalterminalid: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptnumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsecodefromas: Option<String>,
    pub responsemessage: Option<String>,
    pub retrievalreferencenumber: Option<String>,
    pub servicecode: Option<String>,
    pub settlementstatus: Option<String>,
    pub sourceid: Option<i64>,
    pub tecsengineresponsecode: Option<i64>,
    pub tecsengineresponsetext: Option<String>,
    pub terminalendofdaydate: Option<String>,
    pub terminalid: Option<i64>,
    pub terminallocation: Option<String>,
    pub tipamount: Option<i64>,
    pub tracenumber: Option<i64>,
    pub transactionclearingdate: Option<String>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub transactionseqnumber: Option<i64>,
    pub transactionserverdate: Option<String>,
    pub transactionsource: Option<String>,
    pub transactiontype: Option<String>,
}

/// StatusTransactionCreateData is the typed request payload for StatusTransaction.create.
#[derive(Debug, Clone)]
pub struct StatusTransactionCreateData {
    pub acquirername: Option<String>,
    pub acquirerterminalid: Option<String>,
    pub amount: Option<i64>,
    pub applicationcryptogram: Option<String>,
    pub authorizationcode: Option<Value>,
    pub authorizationdate: Option<String>,
    pub cardbrand: Option<String>,
    pub cardentry: Option<String>,
    pub cardexpiration: Option<String>,
    pub cardnumber: Option<String>,
    pub clearingamount: Option<i64>,
    pub clearingbatchid: Option<String>,
    pub clearingcurrency: Option<String>,
    pub clearingdate: Option<String>,
    pub clearingprocesseddate: Option<String>,
    pub clearingstatus: Option<String>,
    pub clientid: Option<i64>,
    pub currency: Option<String>,
    pub cvm: Option<String>,
    pub ecrdata: Option<String>,
    pub emvapplicationid: Option<String>,
    pub emvapplicationlabel: Option<String>,
    pub merchantname: Option<String>,
    pub merchantnumber: Option<String>,
    pub originalclientid: Option<String>,
    pub originalterminalid: Option<i64>,
    pub originaltransactionid: Option<String>,
    pub paymentreason: Option<String>,
    pub receiptnumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsecodefromas: Option<String>,
    pub responsemessage: Option<String>,
    pub retrievalreferencenumber: Option<String>,
    pub servicecode: Option<String>,
    pub settlementstatus: Option<String>,
    pub sourceid: Option<i64>,
    pub tecsengineresponsecode: Option<i64>,
    pub tecsengineresponsetext: Option<String>,
    pub terminalendofdaydate: Option<String>,
    pub terminalid: Option<i64>,
    pub terminallocation: Option<String>,
    pub tipamount: Option<i64>,
    pub tracenumber: Option<i64>,
    pub transactionclearingdate: Option<String>,
    pub transactiondate: Option<String>,
    pub transactionid: Option<String>,
    pub transactionseqnumber: Option<i64>,
    pub transactionserverdate: Option<String>,
    pub transactionsource: Option<String>,
    pub transactiontype: Option<String>,
}

/// StoreTerminalParameter is the typed data model for the store_terminal_parameter entity.
#[derive(Debug, Clone)]
pub struct StoreTerminalParameter {
    pub acqtabnexo: Option<std::collections::HashMap<String, Value>>,
    pub configversion: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: String,
    pub tidsent: Option<String>,
}

/// StoreTerminalParameterCreateData is the typed request payload for StoreTerminalParameter.create.
#[derive(Debug, Clone)]
pub struct StoreTerminalParameterCreateData {
    pub acqtabnexo: Option<std::collections::HashMap<String, Value>>,
    pub configversion: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub serialnumber: String,
    pub tidsent: Option<String>,
}

/// TerminalId is the typed data model for the terminal_id entity.
#[derive(Debug, Clone)]
pub struct TerminalId {
    pub deviceserialnumber: Vec<Value>,
    pub duplicateterminalids: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminals: Option<Vec<Value>>,
}

/// TerminalIdCreateData is the typed request payload for TerminalId.create.
#[derive(Debug, Clone)]
pub struct TerminalIdCreateData {
    pub deviceserialnumber: Vec<Value>,
    pub duplicateterminalids: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub terminals: Option<Vec<Value>>,
}

/// TransactionHistory is the typed data model for the transaction_history entity.
#[derive(Debug, Clone)]
pub struct TransactionHistory {
    pub _3dsecure: Option<String>,
    pub authorizationcode: Option<String>,
    pub cardbrand: Option<String>,
    pub clearingamountfrom: Option<String>,
    pub clearingamountto: Option<String>,
    pub clearingcurrency: Option<String>,
    pub clearingstatus: Option<String>,
    pub corporateuuid: Option<String>,
    pub orderbytransactiondate: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub paymenttokenpublicid: Option<String>,
    pub receiptnumber: Option<String>,
    pub referencedtransactionid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub retrievalreferencenumber: Option<String>,
    pub sourceid: Option<i64>,
    pub tecsengineresponsecodefrom: Option<String>,
    pub tecsengineresponsecodeto: Option<String>,
    pub terminalid: Option<i64>,
    pub tracenumber: Option<String>,
    pub transactionamountfrom: Option<String>,
    pub transactionamountto: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionhistories: Option<Vec<Value>>,
    pub transactionid: Option<String>,
    pub transactiontype: Option<String>,
    pub wallet: Option<String>,
}

/// TransactionHistoryCreateData is the typed request payload for TransactionHistory.create.
#[derive(Debug, Clone)]
pub struct TransactionHistoryCreateData {
    pub _3dsecure: Option<String>,
    pub authorizationcode: Option<String>,
    pub cardbrand: Option<String>,
    pub clearingamountfrom: Option<String>,
    pub clearingamountto: Option<String>,
    pub clearingcurrency: Option<String>,
    pub clearingstatus: Option<String>,
    pub corporateuuid: Option<String>,
    pub orderbytransactiondate: Option<String>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub paymenttokenpublicid: Option<String>,
    pub receiptnumber: Option<String>,
    pub referencedtransactionid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub retrievalreferencenumber: Option<String>,
    pub sourceid: Option<i64>,
    pub tecsengineresponsecodefrom: Option<String>,
    pub tecsengineresponsecodeto: Option<String>,
    pub terminalid: Option<i64>,
    pub tracenumber: Option<String>,
    pub transactionamountfrom: Option<String>,
    pub transactionamountto: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionhistories: Option<Vec<Value>>,
    pub transactionid: Option<String>,
    pub transactiontype: Option<String>,
    pub wallet: Option<String>,
}

/// TransactionsCount is the typed data model for the transactions_count entity.
#[derive(Debug, Clone)]
pub struct TransactionsCount {
    pub period: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionscount: Option<Vec<Value>>,
}

/// TransactionsCountCreateData is the typed request payload for TransactionsCount.create.
#[derive(Debug, Clone)]
pub struct TransactionsCountCreateData {
    pub period: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionscount: Option<Vec<Value>>,
}

/// TransactionsCountCardBrand is the typed data model for the transactions_count_card_brand entity.
#[derive(Debug, Clone)]
pub struct TransactionsCountCardBrand {
    pub period: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionscount: Option<Vec<Value>>,
}

/// TransactionsCountCardBrandCreateData is the typed request payload for TransactionsCountCardBrand.create.
#[derive(Debug, Clone)]
pub struct TransactionsCountCardBrandCreateData {
    pub period: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub transactionscount: Option<Vec<Value>>,
}

/// TransactionsTurnover is the typed data model for the transactions_turnover entity.
#[derive(Debug, Clone)]
pub struct TransactionsTurnover {
    pub period: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub turnovers: Option<Vec<Value>>,
}

/// TransactionsTurnoverCreateData is the typed request payload for TransactionsTurnover.create.
#[derive(Debug, Clone)]
pub struct TransactionsTurnoverCreateData {
    pub period: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub transactiondatefrom: Option<String>,
    pub transactiondateto: Option<String>,
    pub turnovers: Option<Vec<Value>>,
}

/// UpdateMerchant is the typed data model for the update_merchant entity.
#[derive(Debug, Clone)]
pub struct UpdateMerchant {
    pub city: Option<String>,
    pub corporateuuid: String,
    pub country: Option<String>,
    pub merchantcategorycode: Option<String>,
    pub name: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub state: Option<String>,
    pub street: Option<String>,
    pub vunummer: Option<String>,
    pub zipcode: Option<String>,
}

/// UpdateMerchantCreateData is the typed request payload for UpdateMerchant.create.
#[derive(Debug, Clone)]
pub struct UpdateMerchantCreateData {
    pub city: Option<String>,
    pub corporateuuid: String,
    pub country: Option<String>,
    pub merchantcategorycode: Option<String>,
    pub name: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub state: Option<String>,
    pub street: Option<String>,
    pub vunummer: Option<String>,
    pub zipcode: Option<String>,
}

/// UpdateTemplateXml is the typed data model for the update_template_xml entity.
#[derive(Debug, Clone)]
pub struct UpdateTemplateXml {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
    pub templatexml: String,
}

/// UpdateTemplateXmlCreateData is the typed request payload for UpdateTemplateXml.create.
#[derive(Debug, Clone)]
pub struct UpdateTemplateXmlCreateData {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub templatename: String,
    pub templatexml: String,
}

/// Version is the typed data model for the version entity.
#[derive(Debug, Clone)]
pub struct Version {
    pub appname: Option<String>,
    pub builddate: Option<String>,
    pub version: Option<String>,
}

/// VersionLoadMatch is the typed request payload for Version.load.
#[derive(Debug, Clone)]
pub struct VersionLoadMatch {
    pub appname: Option<String>,
    pub builddate: Option<String>,
    pub version: Option<String>,
}

