# Typed models for the BluefinTecsMerchantServices SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class CancelTransactionRequired(TypedDict):
    client_id: int
    currency: str
    receipt_number: str
    terminal_id: int


class CancelTransaction(CancelTransactionRequired, total=False):
    acquirer_id: str
    acquirer_name: str
    actual_bonus_point: str
    amount: int
    authorization_code: str
    balance_amount: str
    card_brand: str
    card_number: str
    cvc: str
    ec_data: str
    ecr_data: str
    emv_data: str
    exchange_fee: int
    exchange_rate: str
    language_code: str
    merchant_address: str
    merchant_name: str
    merchant_number: str
    message_type: str
    original_trace_number: int
    original_transaction_id: str
    password: str
    payment_reason: str
    receipt_footer: str
    receipt_header: str
    receipt_layout: int
    response_code: int
    response_message: str
    serial_number: str
    svc: str
    terminal_location: str
    trace_number: int
    transaction_date: str
    transaction_id: str
    tx_type: str
    user_data: str


class CancelTransactionCreateDataRequired(TypedDict):
    client_id: int
    currency: str
    receipt_number: str
    terminal_id: int


class CancelTransactionCreateData(CancelTransactionCreateDataRequired, total=False):
    acquirer_id: str
    acquirer_name: str
    actual_bonus_point: str
    amount: int
    authorization_code: str
    balance_amount: str
    card_brand: str
    card_number: str
    cvc: str
    ec_data: str
    ecr_data: str
    emv_data: str
    exchange_fee: int
    exchange_rate: str
    language_code: str
    merchant_address: str
    merchant_name: str
    merchant_number: str
    message_type: str
    original_trace_number: int
    original_transaction_id: str
    password: str
    payment_reason: str
    receipt_footer: str
    receipt_header: str
    receipt_layout: int
    response_code: int
    response_message: str
    serial_number: str
    svc: str
    terminal_location: str
    trace_number: int
    transaction_date: str
    transaction_id: str
    tx_type: str
    user_data: str


class CheckCardBlackListed(TypedDict, total=False):
    card_no: str
    response_code: int
    response_message: str


class CheckCardBlackListedCreateData(TypedDict, total=False):
    card_no: str
    response_code: int
    response_message: str


class CreateProductRequired(TypedDict):
    template_name: str
    template_type: str
    template_xml: str
    terminal_type: str


class CreateProduct(CreateProductRequired, total=False):
    acquirer_id: int
    response_code: int
    response_message: str


class CreateProductCreateDataRequired(TypedDict):
    template_name: str
    template_type: str
    template_xml: str
    terminal_type: str


class CreateProductCreateData(CreateProductCreateDataRequired, total=False):
    acquirer_id: int
    response_code: int
    response_message: str


class DeactivateTerminalRequired(TypedDict):
    deactivation_reason: str
    terminal_id: int


class DeactivateTerminal(DeactivateTerminalRequired, total=False):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    response_code: int
    response_message: str


class DeactivateTerminalCreateDataRequired(TypedDict):
    deactivation_reason: str
    terminal_id: int


class DeactivateTerminalCreateData(DeactivateTerminalCreateDataRequired, total=False):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    response_code: int
    response_message: str


class DigitalServicesApiRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class DigitalServicesApi(DigitalServicesApiRequired, total=False):
    response_code: int
    response_message: str
    tx_count: int
    tx_id_end: str
    tx_id_start: str
    tx_seq_no_end: int
    tx_seq_no_start: int
    tx_total: int


class DigitalServicesApiLoadMatch(TypedDict, total=False):
    clearing_date_from: str
    clearing_date_to: str
    response_code: int
    response_message: str
    tx_count: int
    tx_id_end: str
    tx_id_start: str
    tx_seq_no_end: int
    tx_seq_no_start: int
    tx_total: int


class DigitalServicesApiCreateData(TypedDict, total=False):
    file_id: str


class EcDataEcomRequired(TypedDict):
    terminal_id: int
    transaction_id: str
    transaction_type: str


class EcDataEcom(EcDataEcomRequired, total=False):
    ecom_data: str
    response_code: int
    response_message: str


class EcDataEcomCreateDataRequired(TypedDict):
    terminal_id: int
    transaction_id: str
    transaction_type: str


class EcDataEcomCreateData(EcDataEcomCreateDataRequired, total=False):
    ecom_data: str
    response_code: int
    response_message: str


class EcomParameterRequired(TypedDict):
    terminal_id: int


class EcomParameter(EcomParameterRequired, total=False):
    ecom_pass: str
    ecom_skey: str
    response_code: int
    response_message: str


class EcomParameterCreateDataRequired(TypedDict):
    terminal_id: int


class EcomParameterCreateData(EcomParameterCreateDataRequired, total=False):
    ecom_pass: str
    ecom_skey: str
    response_code: int
    response_message: str


class EcrDataRequired(TypedDict):
    terminal_id: int
    transaction_id: str
    transaction_type: str


class EcrData(EcrDataRequired, total=False):
    ecr_data: str
    response_code: int
    response_message: str


class EcrDataCreateDataRequired(TypedDict):
    terminal_id: int
    transaction_id: str
    transaction_type: str


class EcrDataCreateData(EcrDataCreateDataRequired, total=False):
    ecr_data: str
    response_code: int
    response_message: str


class EmvDataRequired(TypedDict):
    terminal_id: int
    transaction_id: str
    transaction_type: str


class EmvData(EmvDataRequired, total=False):
    emv_data: str
    response_code: int
    response_message: str


class EmvDataCreateDataRequired(TypedDict):
    terminal_id: int
    transaction_id: str
    transaction_type: str


class EmvDataCreateData(EmvDataCreateDataRequired, total=False):
    emv_data: str
    response_code: int
    response_message: str


class EnableAcquiringRequired(TypedDict):
    corporate_uuid: str
    currency: str
    merchant_category_code: int
    package_order_uuid: str
    product_order_uuid: str
    template_name: str


class EnableAcquiring(EnableAcquiringRequired, total=False):
    account_no: int
    additional_data: dict
    response_code: int
    response_message: str
    sorting_code: int
    terminal_id: list
    terminal_id_acq: str
    vu_nummer: str


class EnableAcquiringCreateDataRequired(TypedDict):
    corporate_uuid: str
    currency: str
    merchant_category_code: int
    package_order_uuid: str
    product_order_uuid: str
    template_name: str


class EnableAcquiringCreateData(EnableAcquiringCreateDataRequired, total=False):
    account_no: int
    additional_data: dict
    response_code: int
    response_message: str
    sorting_code: int
    terminal_id: list
    terminal_id_acq: str
    vu_nummer: str


class GetMerchantContractNumberRequired(TypedDict):
    merchant_contract_number: str


class GetMerchantContractNumber(GetMerchantContractNumberRequired, total=False):
    response_code: int
    response_message: str


class GetMerchantContractNumberCreateDataRequired(TypedDict):
    merchant_contract_number: str


class GetMerchantContractNumberCreateData(GetMerchantContractNumberCreateDataRequired, total=False):
    response_code: int
    response_message: str


class GetTemplateXmlRequired(TypedDict):
    template_name: str


class GetTemplateXml(GetTemplateXmlRequired, total=False):
    response_code: int
    response_message: str


class GetTemplateXmlCreateDataRequired(TypedDict):
    template_name: str


class GetTemplateXmlCreateData(GetTemplateXmlCreateDataRequired, total=False):
    response_code: int
    response_message: str


class IntroduceMandatorRequired(TypedDict):
    mandator_name: str


class IntroduceMandator(IntroduceMandatorRequired, total=False):
    response_code: int
    response_message: str


class IntroduceMandatorCreateDataRequired(TypedDict):
    mandator_name: str


class IntroduceMandatorCreateData(IntroduceMandatorCreateDataRequired, total=False):
    response_code: int
    response_message: str


class IntroducePackageRequired(TypedDict):
    terminal_template_description: str


class IntroducePackage(IntroducePackageRequired, total=False):
    response_code: int
    response_message: str


class IntroducePackageCreateDataRequired(TypedDict):
    terminal_template_description: str


class IntroducePackageCreateData(IntroducePackageCreateDataRequired, total=False):
    response_code: int
    response_message: str


class KeepAlive(TypedDict, total=False):
    hwserialno: str
    ka_date_time_from: str
    ka_date_time_to: str
    keep_alive_data: list
    pagination: dict
    response_code: int
    response_message: str
    terminal_date_time_from: str
    terminal_date_time_to: str
    terminal_id: int


class KeepAliveCreateData(TypedDict, total=False):
    hwserialno: str
    ka_date_time_from: str
    ka_date_time_to: str
    keep_alive_data: list
    pagination: dict
    response_code: int
    response_message: str
    terminal_date_time_from: str
    terminal_date_time_to: str
    terminal_id: int


class ListTerminal(TypedDict, total=False):
    corporate_uuid: list
    filter: dict
    pagination: dict
    response_code: int
    response_message: str
    terminal: list


class ListTerminalCreateData(TypedDict, total=False):
    corporate_uuid: list
    filter: dict
    pagination: dict
    response_code: int
    response_message: str
    terminal: list


class MandatorClearingExportRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class MandatorClearingExport(MandatorClearingExportRequired, total=False):
    pagination: dict
    record: list
    response_code: int
    response_message: str


class MandatorClearingExportCreateDataRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class MandatorClearingExportCreateData(MandatorClearingExportCreateDataRequired, total=False):
    pagination: dict
    record: list
    response_code: int
    response_message: str


class MandatorClearingExportDownloadRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class MandatorClearingExportDownload(MandatorClearingExportDownloadRequired, total=False):
    file_id: str
    filename_template: str
    response_code: int
    response_message: str
    status: str


class MandatorClearingExportDownloadLoadMatch(TypedDict):
    id: str


class MandatorClearingExportDownloadCreateDataRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class MandatorClearingExportDownloadCreateData(MandatorClearingExportDownloadCreateDataRequired, total=False):
    file_id: str
    filename_template: str
    response_code: int
    response_message: str
    status: str


class MandatorClearingExportSummaryRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class MandatorClearingExportSummary(MandatorClearingExportSummaryRequired, total=False):
    record: list
    response_code: int
    response_message: str


class MandatorClearingExportSummaryCreateDataRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str


class MandatorClearingExportSummaryCreateData(MandatorClearingExportSummaryCreateDataRequired, total=False):
    record: list
    response_code: int
    response_message: str


class MerchantPortalServicesApi(TypedDict, total=False):
    authorization_code: str
    card_brand: str
    clearing_amount_from: str
    clearing_amount_to: str
    clearing_currency: str
    clearing_status: str
    corporate_uuid: str
    order_by_transaction_date: str
    pagination: dict
    receipt_number: str
    referenced_transaction_id: str
    retrieval_reference_number: str
    source_id: int
    tecsengine_response_code_from: str
    tecsengine_response_code_to: str
    terminal_id: int
    trace_number: str
    transaction_amount_from: str
    transaction_amount_to: str
    transaction_date_from: str
    transaction_date_to: str
    transaction_id: str
    transaction_type: str
    wallet: str


class MerchantPortalServicesApiCreateData(TypedDict, total=False):
    authorization_code: str
    card_brand: str
    clearing_amount_from: str
    clearing_amount_to: str
    clearing_currency: str
    clearing_status: str
    corporate_uuid: str
    order_by_transaction_date: str
    pagination: dict
    receipt_number: str
    referenced_transaction_id: str
    retrieval_reference_number: str
    source_id: int
    tecsengine_response_code_from: str
    tecsengine_response_code_to: str
    terminal_id: int
    trace_number: str
    transaction_amount_from: str
    transaction_amount_to: str
    transaction_date_from: str
    transaction_date_to: str
    transaction_id: str
    transaction_type: str
    wallet: str


class MoveTidRequired(TypedDict):
    productorderuuid: list


class MoveTid(MoveTidRequired, total=False):
    response_code: int
    response_message: str
    target_packageorderuuid: str
    target_productorderuuid: str


class MoveTidCreateDataRequired(TypedDict):
    productorderuuid: list


class MoveTidCreateData(MoveTidCreateDataRequired, total=False):
    response_code: int
    response_message: str
    target_packageorderuuid: str
    target_productorderuuid: str


class PaymentManualRequired(TypedDict):
    amount: int
    card_number: str
    currency: str
    exp_date: str
    txtype: str


class PaymentManual(PaymentManualRequired, total=False):
    acquirer_name: str
    authorization_number: str
    card_type: str
    cvc: str
    date_time_tx: str
    merchant_id: str
    original_transaction_id: str
    password: str
    response_code: str
    response_message: str
    terminal_id: str
    transaction_id: str


class PaymentManualCreateDataRequired(TypedDict):
    amount: int
    card_number: str
    currency: str
    exp_date: str
    txtype: str


class PaymentManualCreateData(PaymentManualCreateDataRequired, total=False):
    acquirer_name: str
    authorization_number: str
    card_type: str
    cvc: str
    date_time_tx: str
    merchant_id: str
    original_transaction_id: str
    password: str
    response_code: str
    response_message: str
    terminal_id: str
    transaction_id: str


class PaymentSredRequired(TypedDict):
    amount: int
    currency: str
    device_payload: str
    txtype: str


class PaymentSred(PaymentSredRequired, total=False):
    acquirer_name: str
    authorization_number: str
    card_type: str
    date_time_tx: str
    merchant_id: str
    original_transaction_id: str
    password: str
    response_code: str
    response_message: str
    sred: dict
    terminal_id: str
    transaction_id: str


class PaymentSredCreateDataRequired(TypedDict):
    amount: int
    currency: str
    device_payload: str
    txtype: str


class PaymentSredCreateData(PaymentSredCreateDataRequired, total=False):
    acquirer_name: str
    authorization_number: str
    card_type: str
    date_time_tx: str
    merchant_id: str
    original_transaction_id: str
    password: str
    response_code: str
    response_message: str
    sred: dict
    terminal_id: str
    transaction_id: str


class PreAuthTransactionCompletionRequired(TypedDict):
    card_number_reference: str
    client_id: int
    currency: str
    receipt_number: str
    terminal_id: int
    transaction_type: str


class PreAuthTransactionCompletion(PreAuthTransactionCompletionRequired, total=False):
    acquirer_id: str
    acquirer_name: str
    actual_bonus_point: str
    amount: int
    authorization_code: str
    balance_amount: str
    card_brand: str
    card_number: str
    cvc: str
    ec_data: str
    ecr_data: str
    emv_data: str
    exchange_fee: int
    exchange_rate: str
    language_code: str
    merchant_address: str
    merchant_name: str
    merchant_number: str
    message_type: str
    original_trace_number: int
    original_transaction_id: str
    password: str
    payment_reason: str
    receipt_footer: str
    receipt_header: str
    receipt_layout: int
    response_code: int
    response_message: str
    serial_number: str
    svc: str
    terminal_location: str
    trace_number: int
    transaction_date: str
    transaction_id: str
    tx_type: str
    user_data: str


class PreAuthTransactionCompletionCreateDataRequired(TypedDict):
    card_number_reference: str
    client_id: int
    currency: str
    receipt_number: str
    terminal_id: int
    transaction_type: str


class PreAuthTransactionCompletionCreateData(PreAuthTransactionCompletionCreateDataRequired, total=False):
    acquirer_id: str
    acquirer_name: str
    actual_bonus_point: str
    amount: int
    authorization_code: str
    balance_amount: str
    card_brand: str
    card_number: str
    cvc: str
    ec_data: str
    ecr_data: str
    emv_data: str
    exchange_fee: int
    exchange_rate: str
    language_code: str
    merchant_address: str
    merchant_name: str
    merchant_number: str
    message_type: str
    original_trace_number: int
    original_transaction_id: str
    password: str
    payment_reason: str
    receipt_footer: str
    receipt_header: str
    receipt_layout: int
    response_code: int
    response_message: str
    serial_number: str
    svc: str
    terminal_location: str
    trace_number: int
    transaction_date: str
    transaction_id: str
    tx_type: str
    user_data: str


class ReactivateTerminalRequired(TypedDict):
    reactivation_reason: str
    terminal_id: int


class ReactivateTerminal(ReactivateTerminalRequired, total=False):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    response_code: int
    response_message: str


class ReactivateTerminalCreateDataRequired(TypedDict):
    reactivation_reason: str
    terminal_id: int


class ReactivateTerminalCreateData(ReactivateTerminalCreateDataRequired, total=False):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    response_code: int
    response_message: str


class RefundTransactionRequired(TypedDict):
    client_id: int
    currency: str
    receipt_number: str
    terminal_id: int


class RefundTransaction(RefundTransactionRequired, total=False):
    acquirer_id: str
    acquirer_name: str
    actual_bonus_point: str
    amount: int
    authorization_code: str
    balance_amount: str
    card_brand: str
    card_number: str
    cvc: str
    ec_data: str
    ecr_data: str
    emv_data: str
    exchange_fee: int
    exchange_rate: str
    language_code: str
    merchant_address: str
    merchant_name: str
    merchant_number: str
    message_type: str
    original_trace_number: int
    original_transaction_id: str
    password: str
    payment_reason: str
    receipt_footer: str
    receipt_header: str
    receipt_layout: int
    response_code: int
    response_message: str
    serial_number: str
    svc: str
    terminal_location: str
    trace_number: int
    transaction_date: str
    transaction_id: str
    tx_type: str
    user_data: str


class RefundTransactionCreateDataRequired(TypedDict):
    client_id: int
    currency: str
    receipt_number: str
    terminal_id: int


class RefundTransactionCreateData(RefundTransactionCreateDataRequired, total=False):
    acquirer_id: str
    acquirer_name: str
    actual_bonus_point: str
    amount: int
    authorization_code: str
    balance_amount: str
    card_brand: str
    card_number: str
    cvc: str
    ec_data: str
    ecr_data: str
    emv_data: str
    exchange_fee: int
    exchange_rate: str
    language_code: str
    merchant_address: str
    merchant_name: str
    merchant_number: str
    message_type: str
    original_trace_number: int
    original_transaction_id: str
    password: str
    payment_reason: str
    receipt_footer: str
    receipt_header: str
    receipt_layout: int
    response_code: int
    response_message: str
    serial_number: str
    svc: str
    terminal_location: str
    trace_number: int
    transaction_date: str
    transaction_id: str
    tx_type: str
    user_data: str


class RegisterTecsCompanyRequired(TypedDict):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    template_name: str


class RegisterTecsCompany(RegisterTecsCompanyRequired, total=False):
    partner_id: int
    partner_name: str
    response_code: int
    response_message: str


class RegisterTecsCompanyCreateDataRequired(TypedDict):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    template_name: str


class RegisterTecsCompanyCreateData(RegisterTecsCompanyCreateDataRequired, total=False):
    partner_id: int
    partner_name: str
    response_code: int
    response_message: str


class RegisterTerminalRequired(TypedDict):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    template_name: str
    terminal_country_code: str
    terminal_language_code: str
    terminal_location: str


class RegisterTerminal(RegisterTerminalRequired, total=False):
    additional_data: dict
    response_code: int
    response_message: str
    tecs_web_secret_key: str
    terminal_id: int
    terminal_id_acq: str
    terminal_serial_number: str
    token_io_alia: str
    token_io_iban: str
    token_io_member_id: str
    web_shop_url: str


class RegisterTerminalCreateDataRequired(TypedDict):
    corporate_uuid: str
    package_order_uuid: str
    product_order_uuid: str
    template_name: str
    terminal_country_code: str
    terminal_language_code: str
    terminal_location: str


class RegisterTerminalCreateData(RegisterTerminalCreateDataRequired, total=False):
    additional_data: dict
    response_code: int
    response_message: str
    tecs_web_secret_key: str
    terminal_id: int
    terminal_id_acq: str
    terminal_serial_number: str
    token_io_alia: str
    token_io_iban: str
    token_io_member_id: str
    web_shop_url: str


class ReportDataRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str
    corporate_id: str
    currency: str


class ReportData(ReportDataRequired, total=False):
    card_brand_report_data: list
    response_code: int
    response_message: str
    sum_over_credit_tx: dict
    sum_over_debit_tx: dict
    terminal_id: int


class ReportDataCreateDataRequired(TypedDict):
    clearing_date_from: str
    clearing_date_to: str
    corporate_id: str
    currency: str


class ReportDataCreateData(ReportDataCreateDataRequired, total=False):
    card_brand_report_data: list
    response_code: int
    response_message: str
    sum_over_credit_tx: dict
    sum_over_debit_tx: dict
    terminal_id: int


class StatusTransaction(TypedDict, total=False):
    acquirer_name: str
    acquirer_terminal_id: str
    amount: int
    application_cryptogram: str
    authorization_code: str | None
    authorization_date: str
    card_brand: str
    card_entry: str
    card_expiration: str
    card_number: str
    clearing_amount: int
    clearing_batch_id: str
    clearing_currency: str
    clearing_date: str
    clearing_processed_date: str
    clearing_status: str
    client_id: int
    currency: str
    cvm: str
    ecr_data: str
    emv_application_id: str
    emv_application_label: str
    merchant_name: str
    merchant_number: str
    original_client_id: str
    original_terminal_id: int
    original_transaction_id: str
    payment_reason: str
    receipt_number: str
    response_code: int
    response_code_from_a: str
    response_message: str
    retrieval_reference_number: str
    service_code: str
    settlement_status: str
    source_id: int
    tecsengine_response_code: int
    tecsengine_response_text: str
    terminal_end_of_day_date: str
    terminal_id: int
    terminal_location: str
    tip_amount: int
    trace_number: int
    transaction_clearing_date: str
    transaction_date: str
    transaction_id: str
    transaction_seq_number: int
    transaction_server_date: str
    transaction_source: str
    transaction_type: str


class StatusTransactionCreateData(TypedDict, total=False):
    acquirer_name: str
    acquirer_terminal_id: str
    amount: int
    application_cryptogram: str
    authorization_code: str | None
    authorization_date: str
    card_brand: str
    card_entry: str
    card_expiration: str
    card_number: str
    clearing_amount: int
    clearing_batch_id: str
    clearing_currency: str
    clearing_date: str
    clearing_processed_date: str
    clearing_status: str
    client_id: int
    currency: str
    cvm: str
    ecr_data: str
    emv_application_id: str
    emv_application_label: str
    merchant_name: str
    merchant_number: str
    original_client_id: str
    original_terminal_id: int
    original_transaction_id: str
    payment_reason: str
    receipt_number: str
    response_code: int
    response_code_from_a: str
    response_message: str
    retrieval_reference_number: str
    service_code: str
    settlement_status: str
    source_id: int
    tecsengine_response_code: int
    tecsengine_response_text: str
    terminal_end_of_day_date: str
    terminal_id: int
    terminal_location: str
    tip_amount: int
    trace_number: int
    transaction_clearing_date: str
    transaction_date: str
    transaction_id: str
    transaction_seq_number: int
    transaction_server_date: str
    transaction_source: str
    transaction_type: str


class StoreTerminalParameterRequired(TypedDict):
    serial_number: str


class StoreTerminalParameter(StoreTerminalParameterRequired, total=False):
    acq_tab_nexo: dict
    config_version: str
    response_code: int
    response_message: str
    tid_sent: str


class StoreTerminalParameterCreateDataRequired(TypedDict):
    serial_number: str


class StoreTerminalParameterCreateData(StoreTerminalParameterCreateDataRequired, total=False):
    acq_tab_nexo: dict
    config_version: str
    response_code: int
    response_message: str
    tid_sent: str


class TerminalIdRequired(TypedDict):
    device_serial_number: list


class TerminalId(TerminalIdRequired, total=False):
    duplicate_terminal_id: list
    response_code: int
    response_message: str
    terminal: list


class TerminalIdCreateDataRequired(TypedDict):
    device_serial_number: list


class TerminalIdCreateData(TerminalIdCreateDataRequired, total=False):
    duplicate_terminal_id: list
    response_code: int
    response_message: str
    terminal: list


class TransactionHistory(TypedDict, total=False):
    authorization_code: str
    card_brand: str
    clearing_amount_from: str
    clearing_amount_to: str
    clearing_currency: str
    clearing_status: str
    corporate_uuid: str
    order_by_transaction_date: str
    pagination: dict
    payment_token_public_id: str
    receipt_number: str
    referenced_transaction_id: str
    response_code: int
    response_message: str
    retrieval_reference_number: str
    source_id: int
    tecsengine_response_code_from: str
    tecsengine_response_code_to: str
    terminal_id: int
    trace_number: str
    transaction_amount_from: str
    transaction_amount_to: str
    transaction_date_from: str
    transaction_date_to: str
    transaction_history: list
    transaction_id: str
    transaction_type: str
    wallet: str


class TransactionHistoryCreateData(TypedDict, total=False):
    authorization_code: str
    card_brand: str
    clearing_amount_from: str
    clearing_amount_to: str
    clearing_currency: str
    clearing_status: str
    corporate_uuid: str
    order_by_transaction_date: str
    pagination: dict
    payment_token_public_id: str
    receipt_number: str
    referenced_transaction_id: str
    response_code: int
    response_message: str
    retrieval_reference_number: str
    source_id: int
    tecsengine_response_code_from: str
    tecsengine_response_code_to: str
    terminal_id: int
    trace_number: str
    transaction_amount_from: str
    transaction_amount_to: str
    transaction_date_from: str
    transaction_date_to: str
    transaction_history: list
    transaction_id: str
    transaction_type: str
    wallet: str


class TransactionsCount(TypedDict, total=False):
    period: str
    response_code: int
    response_message: str
    transaction_date_from: str
    transaction_date_to: str
    transactions_count: list


class TransactionsCountCreateData(TypedDict, total=False):
    period: str
    response_code: int
    response_message: str
    transaction_date_from: str
    transaction_date_to: str
    transactions_count: list


class TransactionsCountCardBrand(TypedDict, total=False):
    period: str
    response_code: int
    response_message: str
    transaction_date_from: str
    transaction_date_to: str
    transactions_count: list


class TransactionsCountCardBrandCreateData(TypedDict, total=False):
    period: str
    response_code: int
    response_message: str
    transaction_date_from: str
    transaction_date_to: str
    transactions_count: list


class TransactionsTurnover(TypedDict, total=False):
    period: str
    response_code: int
    response_message: str
    transaction_date_from: str
    transaction_date_to: str
    turnover: list


class TransactionsTurnoverCreateData(TypedDict, total=False):
    period: str
    response_code: int
    response_message: str
    transaction_date_from: str
    transaction_date_to: str
    turnover: list


class UpdateMerchantRequired(TypedDict):
    corporate_uuid: str


class UpdateMerchant(UpdateMerchantRequired, total=False):
    city: str
    country: str
    merchant_category_code: str
    name: str
    response_code: int
    response_message: str
    state: str
    street: str
    vu_nummer: str
    zipcode: str


class UpdateMerchantCreateDataRequired(TypedDict):
    corporate_uuid: str


class UpdateMerchantCreateData(UpdateMerchantCreateDataRequired, total=False):
    city: str
    country: str
    merchant_category_code: str
    name: str
    response_code: int
    response_message: str
    state: str
    street: str
    vu_nummer: str
    zipcode: str


class UpdateTemplateXmlRequired(TypedDict):
    template_name: str
    template_xml: str


class UpdateTemplateXml(UpdateTemplateXmlRequired, total=False):
    response_code: int
    response_message: str


class UpdateTemplateXmlCreateDataRequired(TypedDict):
    template_name: str
    template_xml: str


class UpdateTemplateXmlCreateData(UpdateTemplateXmlCreateDataRequired, total=False):
    response_code: int
    response_message: str


class Version(TypedDict, total=False):
    app_name: str
    build_date: str
    version: str


class VersionLoadMatch(TypedDict, total=False):
    app_name: str
    build_date: str
    version: str
