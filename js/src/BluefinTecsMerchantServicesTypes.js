// Typed models for the BluefinTecsMerchantServices SDK (JSDoc typedefs).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
// edit by hand.

/**
 * @typedef {Object} CancelTransaction
 * @property {string} [acquirer_id]
 * @property {string} [acquirer_name]
 * @property {string} [actual_bonus_point]
 * @property {number} [amount]
 * @property {string} [authorization_code]
 * @property {string} [balance_amount]
 * @property {string} [card_brand]
 * @property {string} [card_number]
 * @property {number} client_id
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ec_data]
 * @property {string} [ecr_data]
 * @property {string} [emv_data]
 * @property {number} [exchange_fee]
 * @property {string} [exchange_rate]
 * @property {string} [language_code]
 * @property {string} [merchant_address]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [message_type]
 * @property {number} [original_trace_number]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [payment_reason]
 * @property {string} [receipt_footer]
 * @property {string} [receipt_header]
 * @property {number} [receipt_layout]
 * @property {string} receipt_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [serial_number]
 * @property {string} [svc]
 * @property {number} terminal_id
 * @property {string} [terminal_location]
 * @property {number} [trace_number]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {string} [tx_type]
 * @property {string} [user_data]
 */

/**
 * @typedef {Object} CancelTransactionCreateData
 * @property {string} [acquirer_id]
 * @property {string} [acquirer_name]
 * @property {string} [actual_bonus_point]
 * @property {number} [amount]
 * @property {string} [authorization_code]
 * @property {string} [balance_amount]
 * @property {string} [card_brand]
 * @property {string} [card_number]
 * @property {number} client_id
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ec_data]
 * @property {string} [ecr_data]
 * @property {string} [emv_data]
 * @property {number} [exchange_fee]
 * @property {string} [exchange_rate]
 * @property {string} [language_code]
 * @property {string} [merchant_address]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [message_type]
 * @property {number} [original_trace_number]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [payment_reason]
 * @property {string} [receipt_footer]
 * @property {string} [receipt_header]
 * @property {number} [receipt_layout]
 * @property {string} receipt_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [serial_number]
 * @property {string} [svc]
 * @property {number} terminal_id
 * @property {string} [terminal_location]
 * @property {number} [trace_number]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {string} [tx_type]
 * @property {string} [user_data]
 */

/**
 * @typedef {Object} CheckCardBlackListed
 * @property {string} [card_no]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} CheckCardBlackListedCreateData
 * @property {string} [card_no]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} CreateProduct
 * @property {number} [acquirer_id]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 * @property {string} template_type
 * @property {string} template_xml
 * @property {string} terminal_type
 */

/**
 * @typedef {Object} CreateProductCreateData
 * @property {number} [acquirer_id]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 * @property {string} template_type
 * @property {string} template_xml
 * @property {string} terminal_type
 */

/**
 * @typedef {Object} DeactivateTerminal
 * @property {string} [corporate_uuid]
 * @property {string} deactivation_reason
 * @property {string} [package_order_uuid]
 * @property {string} [product_order_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 */

/**
 * @typedef {Object} DeactivateTerminalCreateData
 * @property {string} [corporate_uuid]
 * @property {string} deactivation_reason
 * @property {string} [package_order_uuid]
 * @property {string} [product_order_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 */

/**
 * @typedef {Object} DigitalServicesApi
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} [tx_count]
 * @property {string} [tx_id_end]
 * @property {string} [tx_id_start]
 * @property {number} [tx_seq_no_end]
 * @property {number} [tx_seq_no_start]
 * @property {number} [tx_total]
 */

/**
 * @typedef {Object} DigitalServicesApiLoadMatch
 * @property {string} [clearing_date_from]
 * @property {string} [clearing_date_to]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} [tx_count]
 * @property {string} [tx_id_end]
 * @property {string} [tx_id_start]
 * @property {number} [tx_seq_no_end]
 * @property {number} [tx_seq_no_start]
 * @property {number} [tx_total]
 */

/**
 * @typedef {Object} DigitalServicesApiCreateData
 * @property {string} [file_id]
 */

/**
 * @typedef {Object} EcDataEcom
 * @property {string} [ecom_data]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 * @property {string} transaction_id
 * @property {string} transaction_type
 */

/**
 * @typedef {Object} EcDataEcomCreateData
 * @property {string} [ecom_data]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 * @property {string} transaction_id
 * @property {string} transaction_type
 */

/**
 * @typedef {Object} EcomParameter
 * @property {string} [ecom_pass]
 * @property {string} [ecom_skey]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 */

/**
 * @typedef {Object} EcomParameterCreateData
 * @property {string} [ecom_pass]
 * @property {string} [ecom_skey]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 */

/**
 * @typedef {Object} EcrData
 * @property {string} [ecr_data]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 * @property {string} transaction_id
 * @property {string} transaction_type
 */

/**
 * @typedef {Object} EcrDataCreateData
 * @property {string} [ecr_data]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 * @property {string} transaction_id
 * @property {string} transaction_type
 */

/**
 * @typedef {Object} EmvData
 * @property {string} [emv_data]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 * @property {string} transaction_id
 * @property {string} transaction_type
 */

/**
 * @typedef {Object} EmvDataCreateData
 * @property {string} [emv_data]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 * @property {string} transaction_id
 * @property {string} transaction_type
 */

/**
 * @typedef {Object} EnableAcquiring
 * @property {number} [account_no]
 * @property {Object} [additional_data]
 * @property {string} corporate_uuid
 * @property {string} currency
 * @property {number} merchant_category_code
 * @property {string} package_order_uuid
 * @property {string} product_order_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} [sorting_code]
 * @property {string} template_name
 * @property {Array} [terminal_id]
 * @property {string} [terminal_id_acq]
 * @property {string} [vu_nummer]
 */

/**
 * @typedef {Object} EnableAcquiringCreateData
 * @property {number} [account_no]
 * @property {Object} [additional_data]
 * @property {string} corporate_uuid
 * @property {string} currency
 * @property {number} merchant_category_code
 * @property {string} package_order_uuid
 * @property {string} product_order_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} [sorting_code]
 * @property {string} template_name
 * @property {Array} [terminal_id]
 * @property {string} [terminal_id_acq]
 * @property {string} [vu_nummer]
 */

/**
 * @typedef {Object} GetMerchantContractNumber
 * @property {string} merchant_contract_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} GetMerchantContractNumberCreateData
 * @property {string} merchant_contract_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} GetTemplateXml
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 */

/**
 * @typedef {Object} GetTemplateXmlCreateData
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 */

/**
 * @typedef {Object} IntroduceMandator
 * @property {string} mandator_name
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} IntroduceMandatorCreateData
 * @property {string} mandator_name
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} IntroducePackage
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} terminal_template_description
 */

/**
 * @typedef {Object} IntroducePackageCreateData
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} terminal_template_description
 */

/**
 * @typedef {Object} KeepAlive
 * @property {string} [hwserialno]
 * @property {string} [ka_date_time_from]
 * @property {string} [ka_date_time_to]
 * @property {Array} [keep_alive_data]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [terminal_date_time_from]
 * @property {string} [terminal_date_time_to]
 * @property {number} [terminal_id]
 */

/**
 * @typedef {Object} KeepAliveCreateData
 * @property {string} [hwserialno]
 * @property {string} [ka_date_time_from]
 * @property {string} [ka_date_time_to]
 * @property {Array} [keep_alive_data]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [terminal_date_time_from]
 * @property {string} [terminal_date_time_to]
 * @property {number} [terminal_id]
 */

/**
 * @typedef {Object} ListTerminal
 * @property {Array} [corporate_uuid]
 * @property {Object} [filter]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} [terminal]
 */

/**
 * @typedef {Object} ListTerminalCreateData
 * @property {Array} [corporate_uuid]
 * @property {Object} [filter]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} [terminal]
 */

/**
 * @typedef {Object} MandatorClearingExport
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {Object} [pagination]
 * @property {Array} [record]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} MandatorClearingExportCreateData
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {Object} [pagination]
 * @property {Array} [record]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} MandatorClearingExportDownload
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {string} [file_id]
 * @property {string} [filename_template]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [status]
 */

/**
 * @typedef {Object} MandatorClearingExportDownloadLoadMatch
 * @property {string} id
 */

/**
 * @typedef {Object} MandatorClearingExportDownloadCreateData
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {string} [file_id]
 * @property {string} [filename_template]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [status]
 */

/**
 * @typedef {Object} MandatorClearingExportSummary
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {Array} [record]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} MandatorClearingExportSummaryCreateData
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {Array} [record]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} MerchantPortalServicesApi
 * @property {string} ["3_d_secure"]
 * @property {string} [authorization_code]
 * @property {string} [card_brand]
 * @property {string} [clearing_amount_from]
 * @property {string} [clearing_amount_to]
 * @property {string} [clearing_currency]
 * @property {string} [clearing_status]
 * @property {string} [corporate_uuid]
 * @property {string} [order_by_transaction_date]
 * @property {Object} [pagination]
 * @property {string} [receipt_number]
 * @property {string} [referenced_transaction_id]
 * @property {string} [retrieval_reference_number]
 * @property {number} [source_id]
 * @property {string} [tecsengine_response_code_from]
 * @property {string} [tecsengine_response_code_to]
 * @property {number} [terminal_id]
 * @property {string} [trace_number]
 * @property {string} [transaction_amount_from]
 * @property {string} [transaction_amount_to]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {string} [transaction_id]
 * @property {string} [transaction_type]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} MerchantPortalServicesApiCreateData
 * @property {string} ["3_d_secure"]
 * @property {string} [authorization_code]
 * @property {string} [card_brand]
 * @property {string} [clearing_amount_from]
 * @property {string} [clearing_amount_to]
 * @property {string} [clearing_currency]
 * @property {string} [clearing_status]
 * @property {string} [corporate_uuid]
 * @property {string} [order_by_transaction_date]
 * @property {Object} [pagination]
 * @property {string} [receipt_number]
 * @property {string} [referenced_transaction_id]
 * @property {string} [retrieval_reference_number]
 * @property {number} [source_id]
 * @property {string} [tecsengine_response_code_from]
 * @property {string} [tecsengine_response_code_to]
 * @property {number} [terminal_id]
 * @property {string} [trace_number]
 * @property {string} [transaction_amount_from]
 * @property {string} [transaction_amount_to]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {string} [transaction_id]
 * @property {string} [transaction_type]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} MoveTid
 * @property {Array} productorderuuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [target_packageorderuuid]
 * @property {string} [target_productorderuuid]
 */

/**
 * @typedef {Object} MoveTidCreateData
 * @property {Array} productorderuuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [target_packageorderuuid]
 * @property {string} [target_productorderuuid]
 */

/**
 * @typedef {Object} PaymentManual
 * @property {string} [acquirer_name]
 * @property {number} amount
 * @property {string} [authorization_number]
 * @property {string} card_number
 * @property {string} [card_type]
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [date_time_tx]
 * @property {string} exp_date
 * @property {string} [merchant_id]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [response_code]
 * @property {string} [response_message]
 * @property {string} [terminal_id]
 * @property {string} [transaction_id]
 * @property {string} txtype
 */

/**
 * @typedef {Object} PaymentManualCreateData
 * @property {string} [acquirer_name]
 * @property {number} amount
 * @property {string} [authorization_number]
 * @property {string} card_number
 * @property {string} [card_type]
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [date_time_tx]
 * @property {string} exp_date
 * @property {string} [merchant_id]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [response_code]
 * @property {string} [response_message]
 * @property {string} [terminal_id]
 * @property {string} [transaction_id]
 * @property {string} txtype
 */

/**
 * @typedef {Object} PaymentSred
 * @property {string} [acquirer_name]
 * @property {number} amount
 * @property {string} [authorization_number]
 * @property {string} [card_type]
 * @property {string} currency
 * @property {string} [date_time_tx]
 * @property {string} device_payload
 * @property {string} [merchant_id]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sred]
 * @property {string} [terminal_id]
 * @property {string} [transaction_id]
 * @property {string} txtype
 */

/**
 * @typedef {Object} PaymentSredCreateData
 * @property {string} [acquirer_name]
 * @property {number} amount
 * @property {string} [authorization_number]
 * @property {string} [card_type]
 * @property {string} currency
 * @property {string} [date_time_tx]
 * @property {string} device_payload
 * @property {string} [merchant_id]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sred]
 * @property {string} [terminal_id]
 * @property {string} [transaction_id]
 * @property {string} txtype
 */

/**
 * @typedef {Object} PreAuthTransactionCompletion
 * @property {string} [acquirer_id]
 * @property {string} [acquirer_name]
 * @property {string} [actual_bonus_point]
 * @property {number} [amount]
 * @property {string} [authorization_code]
 * @property {string} [balance_amount]
 * @property {string} [card_brand]
 * @property {string} [card_number]
 * @property {string} card_number_reference
 * @property {number} client_id
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ec_data]
 * @property {string} [ecr_data]
 * @property {string} [emv_data]
 * @property {number} [exchange_fee]
 * @property {string} [exchange_rate]
 * @property {string} [language_code]
 * @property {string} [merchant_address]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [message_type]
 * @property {number} [original_trace_number]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [payment_reason]
 * @property {string} [receipt_footer]
 * @property {string} [receipt_header]
 * @property {number} [receipt_layout]
 * @property {string} receipt_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [serial_number]
 * @property {string} [svc]
 * @property {number} terminal_id
 * @property {string} [terminal_location]
 * @property {number} [trace_number]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {string} transaction_type
 * @property {string} [tx_type]
 * @property {string} [user_data]
 */

/**
 * @typedef {Object} PreAuthTransactionCompletionCreateData
 * @property {string} [acquirer_id]
 * @property {string} [acquirer_name]
 * @property {string} [actual_bonus_point]
 * @property {number} [amount]
 * @property {string} [authorization_code]
 * @property {string} [balance_amount]
 * @property {string} [card_brand]
 * @property {string} [card_number]
 * @property {string} card_number_reference
 * @property {number} client_id
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ec_data]
 * @property {string} [ecr_data]
 * @property {string} [emv_data]
 * @property {number} [exchange_fee]
 * @property {string} [exchange_rate]
 * @property {string} [language_code]
 * @property {string} [merchant_address]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [message_type]
 * @property {number} [original_trace_number]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [payment_reason]
 * @property {string} [receipt_footer]
 * @property {string} [receipt_header]
 * @property {number} [receipt_layout]
 * @property {string} receipt_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [serial_number]
 * @property {string} [svc]
 * @property {number} terminal_id
 * @property {string} [terminal_location]
 * @property {number} [trace_number]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {string} transaction_type
 * @property {string} [tx_type]
 * @property {string} [user_data]
 */

/**
 * @typedef {Object} ReactivateTerminal
 * @property {string} [corporate_uuid]
 * @property {string} [package_order_uuid]
 * @property {string} [product_order_uuid]
 * @property {string} reactivation_reason
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 */

/**
 * @typedef {Object} ReactivateTerminalCreateData
 * @property {string} [corporate_uuid]
 * @property {string} [package_order_uuid]
 * @property {string} [product_order_uuid]
 * @property {string} reactivation_reason
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {number} terminal_id
 */

/**
 * @typedef {Object} RefundTransaction
 * @property {string} [acquirer_id]
 * @property {string} [acquirer_name]
 * @property {string} [actual_bonus_point]
 * @property {number} [amount]
 * @property {string} [authorization_code]
 * @property {string} [balance_amount]
 * @property {string} [card_brand]
 * @property {string} [card_number]
 * @property {number} client_id
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ec_data]
 * @property {string} [ecr_data]
 * @property {string} [emv_data]
 * @property {number} [exchange_fee]
 * @property {string} [exchange_rate]
 * @property {string} [language_code]
 * @property {string} [merchant_address]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [message_type]
 * @property {number} [original_trace_number]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [payment_reason]
 * @property {string} [receipt_footer]
 * @property {string} [receipt_header]
 * @property {number} [receipt_layout]
 * @property {string} receipt_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [serial_number]
 * @property {string} [svc]
 * @property {number} terminal_id
 * @property {string} [terminal_location]
 * @property {number} [trace_number]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {string} [tx_type]
 * @property {string} [user_data]
 */

/**
 * @typedef {Object} RefundTransactionCreateData
 * @property {string} [acquirer_id]
 * @property {string} [acquirer_name]
 * @property {string} [actual_bonus_point]
 * @property {number} [amount]
 * @property {string} [authorization_code]
 * @property {string} [balance_amount]
 * @property {string} [card_brand]
 * @property {string} [card_number]
 * @property {number} client_id
 * @property {string} currency
 * @property {string} [cvc]
 * @property {string} [ec_data]
 * @property {string} [ecr_data]
 * @property {string} [emv_data]
 * @property {number} [exchange_fee]
 * @property {string} [exchange_rate]
 * @property {string} [language_code]
 * @property {string} [merchant_address]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [message_type]
 * @property {number} [original_trace_number]
 * @property {string} [original_transaction_id]
 * @property {string} [password]
 * @property {string} [payment_reason]
 * @property {string} [receipt_footer]
 * @property {string} [receipt_header]
 * @property {number} [receipt_layout]
 * @property {string} receipt_number
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [serial_number]
 * @property {string} [svc]
 * @property {number} terminal_id
 * @property {string} [terminal_location]
 * @property {number} [trace_number]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {string} [tx_type]
 * @property {string} [user_data]
 */

/**
 * @typedef {Object} RegisterTecsCompany
 * @property {string} corporate_uuid
 * @property {string} package_order_uuid
 * @property {number} [partner_id]
 * @property {string} [partner_name]
 * @property {string} product_order_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 */

/**
 * @typedef {Object} RegisterTecsCompanyCreateData
 * @property {string} corporate_uuid
 * @property {string} package_order_uuid
 * @property {number} [partner_id]
 * @property {string} [partner_name]
 * @property {string} product_order_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 */

/**
 * @typedef {Object} RegisterTerminal
 * @property {Object} [additional_data]
 * @property {string} corporate_uuid
 * @property {string} package_order_uuid
 * @property {string} product_order_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [tecs_web_secret_key]
 * @property {string} template_name
 * @property {string} terminal_country_code
 * @property {number} [terminal_id]
 * @property {string} [terminal_id_acq]
 * @property {string} terminal_language_code
 * @property {string} terminal_location
 * @property {string} [terminal_serial_number]
 * @property {string} [token_io_alia]
 * @property {string} [token_io_iban]
 * @property {string} [token_io_member_id]
 * @property {string} [web_shop_url]
 */

/**
 * @typedef {Object} RegisterTerminalCreateData
 * @property {Object} [additional_data]
 * @property {string} corporate_uuid
 * @property {string} package_order_uuid
 * @property {string} product_order_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [tecs_web_secret_key]
 * @property {string} template_name
 * @property {string} terminal_country_code
 * @property {number} [terminal_id]
 * @property {string} [terminal_id_acq]
 * @property {string} terminal_language_code
 * @property {string} terminal_location
 * @property {string} [terminal_serial_number]
 * @property {string} [token_io_alia]
 * @property {string} [token_io_iban]
 * @property {string} [token_io_member_id]
 * @property {string} [web_shop_url]
 */

/**
 * @typedef {Object} ReportData
 * @property {Array} [card_brand_report_data]
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {string} corporate_id
 * @property {string} currency
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sum_over_credit_tx]
 * @property {Object} [sum_over_debit_tx]
 * @property {number} [terminal_id]
 */

/**
 * @typedef {Object} ReportDataCreateData
 * @property {Array} [card_brand_report_data]
 * @property {string} clearing_date_from
 * @property {string} clearing_date_to
 * @property {string} corporate_id
 * @property {string} currency
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sum_over_credit_tx]
 * @property {Object} [sum_over_debit_tx]
 * @property {number} [terminal_id]
 */

/**
 * @typedef {Object} StatusTransaction
 * @property {string} [acquirer_name]
 * @property {string} [acquirer_terminal_id]
 * @property {number} [amount]
 * @property {string} [application_cryptogram]
 * @property {string|null} [authorization_code]
 * @property {string} [authorization_date]
 * @property {string} [card_brand]
 * @property {string} [card_entry]
 * @property {string} [card_expiration]
 * @property {string} [card_number]
 * @property {number} [clearing_amount]
 * @property {string} [clearing_batch_id]
 * @property {string} [clearing_currency]
 * @property {string} [clearing_date]
 * @property {string} [clearing_processed_date]
 * @property {string} [clearing_status]
 * @property {number} [client_id]
 * @property {string} [currency]
 * @property {string} [cvm]
 * @property {string} [ecr_data]
 * @property {string} [emv_application_id]
 * @property {string} [emv_application_label]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [original_client_id]
 * @property {number} [original_terminal_id]
 * @property {string} [original_transaction_id]
 * @property {string} [payment_reason]
 * @property {string} [receipt_number]
 * @property {number} [response_code]
 * @property {string} [response_code_from_a]
 * @property {string} [response_message]
 * @property {string} [retrieval_reference_number]
 * @property {string} [service_code]
 * @property {string} [settlement_status]
 * @property {number} [source_id]
 * @property {number} [tecsengine_response_code]
 * @property {string} [tecsengine_response_text]
 * @property {string} [terminal_end_of_day_date]
 * @property {number} [terminal_id]
 * @property {string} [terminal_location]
 * @property {number} [tip_amount]
 * @property {number} [trace_number]
 * @property {string} [transaction_clearing_date]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {number} [transaction_seq_number]
 * @property {string} [transaction_server_date]
 * @property {string} [transaction_source]
 * @property {string} [transaction_type]
 */

/**
 * @typedef {Object} StatusTransactionCreateData
 * @property {string} [acquirer_name]
 * @property {string} [acquirer_terminal_id]
 * @property {number} [amount]
 * @property {string} [application_cryptogram]
 * @property {string|null} [authorization_code]
 * @property {string} [authorization_date]
 * @property {string} [card_brand]
 * @property {string} [card_entry]
 * @property {string} [card_expiration]
 * @property {string} [card_number]
 * @property {number} [clearing_amount]
 * @property {string} [clearing_batch_id]
 * @property {string} [clearing_currency]
 * @property {string} [clearing_date]
 * @property {string} [clearing_processed_date]
 * @property {string} [clearing_status]
 * @property {number} [client_id]
 * @property {string} [currency]
 * @property {string} [cvm]
 * @property {string} [ecr_data]
 * @property {string} [emv_application_id]
 * @property {string} [emv_application_label]
 * @property {string} [merchant_name]
 * @property {string} [merchant_number]
 * @property {string} [original_client_id]
 * @property {number} [original_terminal_id]
 * @property {string} [original_transaction_id]
 * @property {string} [payment_reason]
 * @property {string} [receipt_number]
 * @property {number} [response_code]
 * @property {string} [response_code_from_a]
 * @property {string} [response_message]
 * @property {string} [retrieval_reference_number]
 * @property {string} [service_code]
 * @property {string} [settlement_status]
 * @property {number} [source_id]
 * @property {number} [tecsengine_response_code]
 * @property {string} [tecsengine_response_text]
 * @property {string} [terminal_end_of_day_date]
 * @property {number} [terminal_id]
 * @property {string} [terminal_location]
 * @property {number} [tip_amount]
 * @property {number} [trace_number]
 * @property {string} [transaction_clearing_date]
 * @property {string} [transaction_date]
 * @property {string} [transaction_id]
 * @property {number} [transaction_seq_number]
 * @property {string} [transaction_server_date]
 * @property {string} [transaction_source]
 * @property {string} [transaction_type]
 */

/**
 * @typedef {Object} StoreTerminalParameter
 * @property {Object} [acq_tab_nexo]
 * @property {string} [config_version]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} serial_number
 * @property {string} [tid_sent]
 */

/**
 * @typedef {Object} StoreTerminalParameterCreateData
 * @property {Object} [acq_tab_nexo]
 * @property {string} [config_version]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} serial_number
 * @property {string} [tid_sent]
 */

/**
 * @typedef {Object} TerminalId
 * @property {Array} device_serial_number
 * @property {Array} [duplicate_terminal_id]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} [terminal]
 */

/**
 * @typedef {Object} TerminalIdCreateData
 * @property {Array} device_serial_number
 * @property {Array} [duplicate_terminal_id]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} [terminal]
 */

/**
 * @typedef {Object} TransactionHistory
 * @property {string} ["3_d_secure"]
 * @property {string} [authorization_code]
 * @property {string} [card_brand]
 * @property {string} [clearing_amount_from]
 * @property {string} [clearing_amount_to]
 * @property {string} [clearing_currency]
 * @property {string} [clearing_status]
 * @property {string} [corporate_uuid]
 * @property {string} [order_by_transaction_date]
 * @property {Object} [pagination]
 * @property {string} [payment_token_public_id]
 * @property {string} [receipt_number]
 * @property {string} [referenced_transaction_id]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [retrieval_reference_number]
 * @property {number} [source_id]
 * @property {string} [tecsengine_response_code_from]
 * @property {string} [tecsengine_response_code_to]
 * @property {number} [terminal_id]
 * @property {string} [trace_number]
 * @property {string} [transaction_amount_from]
 * @property {string} [transaction_amount_to]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [transaction_history]
 * @property {string} [transaction_id]
 * @property {string} [transaction_type]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} TransactionHistoryCreateData
 * @property {string} ["3_d_secure"]
 * @property {string} [authorization_code]
 * @property {string} [card_brand]
 * @property {string} [clearing_amount_from]
 * @property {string} [clearing_amount_to]
 * @property {string} [clearing_currency]
 * @property {string} [clearing_status]
 * @property {string} [corporate_uuid]
 * @property {string} [order_by_transaction_date]
 * @property {Object} [pagination]
 * @property {string} [payment_token_public_id]
 * @property {string} [receipt_number]
 * @property {string} [referenced_transaction_id]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [retrieval_reference_number]
 * @property {number} [source_id]
 * @property {string} [tecsengine_response_code_from]
 * @property {string} [tecsengine_response_code_to]
 * @property {number} [terminal_id]
 * @property {string} [trace_number]
 * @property {string} [transaction_amount_from]
 * @property {string} [transaction_amount_to]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [transaction_history]
 * @property {string} [transaction_id]
 * @property {string} [transaction_type]
 * @property {string} [wallet]
 */

/**
 * @typedef {Object} TransactionsCount
 * @property {string} [period]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [transactions_count]
 */

/**
 * @typedef {Object} TransactionsCountCreateData
 * @property {string} [period]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [transactions_count]
 */

/**
 * @typedef {Object} TransactionsCountCardBrand
 * @property {string} [period]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [transactions_count]
 */

/**
 * @typedef {Object} TransactionsCountCardBrandCreateData
 * @property {string} [period]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [transactions_count]
 */

/**
 * @typedef {Object} TransactionsTurnover
 * @property {string} [period]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [turnover]
 */

/**
 * @typedef {Object} TransactionsTurnoverCreateData
 * @property {string} [period]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [transaction_date_from]
 * @property {string} [transaction_date_to]
 * @property {Array} [turnover]
 */

/**
 * @typedef {Object} UpdateMerchant
 * @property {string} [city]
 * @property {string} corporate_uuid
 * @property {string} [country]
 * @property {string} [merchant_category_code]
 * @property {string} [name]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [state]
 * @property {string} [street]
 * @property {string} [vu_nummer]
 * @property {string} [zipcode]
 */

/**
 * @typedef {Object} UpdateMerchantCreateData
 * @property {string} [city]
 * @property {string} corporate_uuid
 * @property {string} [country]
 * @property {string} [merchant_category_code]
 * @property {string} [name]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [state]
 * @property {string} [street]
 * @property {string} [vu_nummer]
 * @property {string} [zipcode]
 */

/**
 * @typedef {Object} UpdateTemplateXml
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 * @property {string} template_xml
 */

/**
 * @typedef {Object} UpdateTemplateXmlCreateData
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} template_name
 * @property {string} template_xml
 */

/**
 * @typedef {Object} Version
 * @property {string} [app_name]
 * @property {string} [build_date]
 * @property {string} [version]
 */

/**
 * @typedef {Object} VersionLoadMatch
 * @property {string} [app_name]
 * @property {string} [build_date]
 * @property {string} [version]
 */

