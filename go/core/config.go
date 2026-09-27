package core

import (
	"sync"
)

// MakeConfig builds a fresh, fully materialised config map. Every call
// rebuilds the whole structure, so prefer SharedConfig unless you need a
// private copy you intend to mutate.
func MakeConfig() map[string]any {
	return map[string]any{
		"main": map[string]any{
			"name": "BluefinTecsMerchantServices",
			"slug": "bluefin-tecs-merchant-services",
			"version": "0.1.1",
			"target": "go",
		},
		"feature": map[string]any{
			"audit": map[string]any{
				"options": map[string]any{
					"active": false,
					"actor": "anonymous",
					"max": 1000,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"sink": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"clienttrack": map[string]any{
				"options": map[string]any{
					"active": false,
					"clientVersion": "0.0.1",
				},
				"optspec": map[string]any{
					"clientName": "`$STRING`",
					"clientVersion": "`$STRING`",
					"headers": "`$MAP`",
					"idgen": "`$FUNCTION`",
					"sessionId": "`$STRING`",
				},
				"strict": false,
				"transport": "none",
			},
			"debug": map[string]any{
				"options": map[string]any{
					"active": false,
					"max": 100,
					"redact": []any{
						"authorization",
						"cookie",
						"set-cookie",
						"api-key",
						"apikey",
						"x-api-key",
						"idempotency-key",
					},
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"onEntry": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"idempotency": map[string]any{
				"options": map[string]any{
					"active": false,
					"header": "Idempotency-Key",
					"methods": []any{
						"POST",
						"PUT",
						"PATCH",
						"DELETE",
					},
					"ops": []any{
						"create",
						"update",
						"remove",
					},
				},
				"optspec": map[string]any{
					"keygen": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"log": map[string]any{
				"options": map[string]any{
					"active": true,
				},
				"optspec": map[string]any{
					"level": "`$STRING`",
					"logger": "`$ANY`",
				},
				"strict": false,
				"transport": "none",
			},
			"metrics": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"paging": map[string]any{
				"options": map[string]any{
					"active": false,
					"afterVar": "after",
					"cursorParam": "cursor",
					"firstVar": "first",
					"limitParam": "limit",
					"pageParam": "page",
					"startPage": 1,
				},
				"optspec": map[string]any{
					"limit": "`$NUMBER`",
					"ops": "`$LIST`",
				},
				"strict": false,
				"transport": "none",
			},
			"ratelimit": map[string]any{
				"options": map[string]any{
					"active": false,
					"burst": 5,
					"rate": 5,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"retry": map[string]any{
				"options": map[string]any{
					"active": false,
					"factor": 2,
					"maxDelay": 2000,
					"minDelay": 50,
					"retries": 2,
					"statuses": []any{
						408,
						425,
						429,
						500,
						502,
						503,
						504,
					},
				},
				"optspec": map[string]any{
					"jitter": "`$BOOLEAN`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"telemetry": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"exporter": "`$FUNCTION`",
					"headers": "`$MAP`",
					"idgen": "`$FUNCTION`",
					"now": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"entity": "`$MAP`",
					"net": "`$MAP`",
				},
				"strict": false,
				"transport": "base",
			},
			"timeout": map[string]any{
				"options": map[string]any{
					"active": false,
					"ms": 30000,
				},
				"optspec": map[string]any{
					"clearTimer": "`$FUNCTION`",
					"setTimer": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
		},
		"options": map[string]any{
			"base": "https://test.tecs.at/merchantservices",
			"auth": map[string]any{
				"prefix": "Bearer",
			},
			"headers": map[string]any{
				"content-type": "application/json",
			},
			"entity": map[string]any{
				"cancel_transaction": map[string]any{},
				"check_card_black_listed": map[string]any{},
				"count_authorised_transaction": map[string]any{},
				"count_not_authorised_transaction": map[string]any{},
				"create_product": map[string]any{},
				"deactivate_terminal": map[string]any{},
				"digital_services_api": map[string]any{},
				"ec_data_ecom": map[string]any{},
				"ecom_parameter": map[string]any{},
				"ecr_data": map[string]any{},
				"emv_data": map[string]any{},
				"enable_acquiring": map[string]any{},
				"get_merchant_contract_number": map[string]any{},
				"get_template_xml": map[string]any{},
				"introduce_mandator": map[string]any{},
				"introduce_package": map[string]any{},
				"keep_alive": map[string]any{},
				"list_terminal": map[string]any{},
				"mandator_clearing_export": map[string]any{},
				"mandator_clearing_export_download": map[string]any{},
				"mandator_clearing_export_summary": map[string]any{},
				"merchant_portal_services_api": map[string]any{},
				"move_tid": map[string]any{},
				"payment_manual": map[string]any{},
				"payment_sred": map[string]any{},
				"pre_auth_transaction_completion": map[string]any{},
				"reactivate_terminal": map[string]any{},
				"refund_transaction": map[string]any{},
				"register_tecs_company": map[string]any{},
				"register_terminal": map[string]any{},
				"report_data": map[string]any{},
				"status_transaction": map[string]any{},
				"store_terminal_parameter": map[string]any{},
				"terminal_id": map[string]any{},
				"transaction_history": map[string]any{},
				"transactions_count_card_brand": map[string]any{},
				"transactions_turnover": map[string]any{},
				"update_merchant": map[string]any{},
				"update_template_xml": map[string]any{},
				"version": map[string]any{},
			},
		},
		"entity": map[string]any{
			"cancel_transaction": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acquirerId",
						"title": "Acquirer Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerName",
						"title": "Acquirer Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "actualBonusPoints",
						"title": "Actual Bonus Points",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "amount",
						"title": "Amount",
						"type": "`$INTEGER`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$INTEGER`",
							},
						},
						"format": "int32",
					},
					map[string]any{
						"name": "authorizationCode",
						"title": "Authorization Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "balanceAmount",
						"title": "Balance Amount",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"title": "Card Brand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"title": "Card Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clientId",
						"title": "Client Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "cvc",
						"title": "Cvc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecData",
						"title": "Ec Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"title": "Ecr Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvData",
						"title": "Emv Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "exchangeFee",
						"title": "Exchange Fee",
						"type": "`$INTEGER`",
						"format": "int64",
					},
					map[string]any{
						"name": "exchangeRate",
						"title": "Exchange Rate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "languageCode",
						"title": "Language Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantAddress",
						"title": "Merchant Address",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"title": "Merchant Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"title": "Merchant Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "messageType",
						"title": "Message Type",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "originalTraceNumber",
						"title": "Original Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "originalTransactionId",
						"title": "Original Transaction Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "password",
						"title": "Password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"title": "Payment Reason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptFooter",
						"title": "Receipt Footer",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptHeader",
						"title": "Receipt Header",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptLayout",
						"title": "Receipt Layout",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "receiptNumber",
						"title": "Receipt Number",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"title": "Serial Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "svc",
						"title": "Svc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "terminalLocation",
						"title": "Terminal Location",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "traceNumber",
						"title": "Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "transactionDate",
						"title": "Transaction Date",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "txType",
						"title": "Tx Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "userData",
						"title": "User Data",
						"type": "`$STRING`",
					},
				},
				"name": "cancel_transaction",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/cancelTransaction",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "cancelTransaction",
									},
								},
								"parts": []any{
									"public",
									"cancelTransaction",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"check_card_black_listed": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "cardNo",
						"title": "Card No",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
				},
				"name": "check_card_black_listed",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/checkCardBlackListed",
								"segments": []any{
									map[string]any{
										"lit": "checkCardBlackListed",
									},
								},
								"parts": []any{
									"checkCardBlackListed",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"count_authorised_transaction": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "period",
						"title": "Period",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionDateFrom",
						"title": "Transaction Date From",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDateTo",
						"title": "Transaction Date To",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionsCount",
						"title": "Transactions Count",
						"type": "`$ARRAY`",
					},
				},
				"name": "count_authorised_transaction",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/countAuthorisedTransactions",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "countAuthorisedTransactions",
									},
								},
								"parts": []any{
									"public",
									"countAuthorisedTransactions",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"count_not_authorised_transaction": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "period",
						"title": "Period",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionDateFrom",
						"title": "Transaction Date From",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDateTo",
						"title": "Transaction Date To",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionsCount",
						"title": "Transactions Count",
						"type": "`$ARRAY`",
					},
				},
				"name": "count_not_authorised_transaction",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/countNotAuthorisedTransactions",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "countNotAuthorisedTransactions",
									},
								},
								"parts": []any{
									"public",
									"countNotAuthorisedTransactions",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"create_product": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acquirerId",
						"title": "Acquirer Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"title": "Template Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "templateType",
						"title": "Template Type",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "templateXml",
						"title": "Template Xml",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "terminalType",
						"title": "Terminal Type",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "create_product",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/createProduct",
								"segments": []any{
									map[string]any{
										"lit": "createProduct",
									},
								},
								"parts": []any{
									"createProduct",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"deactivate_terminal": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "deactivationReason",
						"title": "Deactivation Reason",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "packageOrderUuid",
						"title": "Package Order Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"title": "Product Order Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
				},
				"name": "deactivate_terminal",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/deactivateTerminal",
								"segments": []any{
									map[string]any{
										"lit": "deactivateTerminal",
									},
								},
								"parts": []any{
									"deactivateTerminal",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"digital_services_api": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "clearingDateFrom",
						"title": "Clearing Date From",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
					},
					map[string]any{
						"name": "clearingDateTo",
						"title": "Clearing Date To",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txCount",
						"title": "Tx Count",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "txIdEnd",
						"title": "Tx Id End",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txIdStart",
						"title": "Tx Id Start",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txSeqNoEnd",
						"title": "Tx Seq No End",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "txSeqNoStart",
						"title": "Tx Seq No Start",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "txTotal",
						"title": "Tx Total",
						"type": "`$INTEGER`",
						"format": "int32",
					},
				},
				"name": "digital_services_api",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExportDownload",
									},
									map[string]any{
										"var": "file_id",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
									"{file_id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"fileId": "file_id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"name": "file_id",
											"orig": "file_id",
											"type": "`$STRING`",
											"kind": "param",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"file_id",
									},
								},
							},
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/mandatorClearingExportMetadata",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExportMetadata",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportMetadata",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/public/digitalservices/mandatorClearingExportDownload/status",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExportDownload",
									},
									map[string]any{
										"lit": "status",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
									"status",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{
						[]any{
							"$.main.kit.entity.mandator_clearing_export_download",
						},
					},
				},
			},
			"ec_data_ecom": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "ecomData",
						"title": "Ecom Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "ec_data_ecom",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/getEcData",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "getEcData",
									},
								},
								"parts": []any{
									"public",
									"getEcData",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"ecom_parameter": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "ecomPass",
						"title": "Ecom Pass",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecomSkey",
						"title": "Ecom Skey",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
				},
				"name": "ecom_parameter",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/getEcomParameters",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "getEcomParameters",
									},
								},
								"parts": []any{
									"public",
									"getEcomParameters",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"ecr_data": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "ecrData",
						"title": "Ecr Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "ecr_data",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/getEcrData",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "getEcrData",
									},
								},
								"parts": []any{
									"public",
									"getEcrData",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"emv_data": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "emvData",
						"title": "Emv Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "emv_data",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/getEmvData",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "getEmvData",
									},
								},
								"parts": []any{
									"public",
									"getEmvData",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"enable_acquiring": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "accountNo",
						"title": "Account No",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "additionalData",
						"title": "Additional Data",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "merchantCategoryCode",
						"title": "Merchant Category Code",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"title": "Package Order Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "productOrderUuid",
						"title": "Product Order Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sortingCode",
						"title": "Sorting Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "templateName",
						"title": "Template Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "terminalIdAcq",
						"title": "Terminal Id Acq",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalIds",
						"title": "Terminal Ids",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "vuNummer",
						"title": "Vu Nummer",
						"type": "`$STRING`",
					},
				},
				"name": "enable_acquiring",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/enableAcquiring",
								"segments": []any{
									map[string]any{
										"lit": "enableAcquiring",
									},
								},
								"parts": []any{
									"enableAcquiring",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"get_merchant_contract_number": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "merchantContractNumber",
						"title": "Merchant Contract Number",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
				},
				"name": "get_merchant_contract_number",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/getMerchantContractNumber",
								"segments": []any{
									map[string]any{
										"lit": "getMerchantContractNumber",
									},
								},
								"parts": []any{
									"getMerchantContractNumber",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"get_template_xml": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"title": "Template Name",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "get_template_xml",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/getTemplateXml",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "getTemplateXml",
									},
								},
								"parts": []any{
									"public",
									"getTemplateXml",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"introduce_mandator": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "mandatorName",
						"title": "Mandator Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
				},
				"name": "introduce_mandator",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/introduceMandator",
								"segments": []any{
									map[string]any{
										"lit": "introduceMandator",
									},
								},
								"parts": []any{
									"introduceMandator",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"introduce_package": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalTemplateDescription",
						"title": "Terminal Template Description",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "introduce_package",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/introducePackage",
								"segments": []any{
									map[string]any{
										"lit": "introducePackage",
									},
								},
								"parts": []any{
									"introducePackage",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"keep_alive": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "hwserialno",
						"title": "Hwserialno",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "kaDateTimeFrom",
						"title": "Ka Date Time From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "kaDateTimeTo",
						"title": "Ka Date Time To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "keepAliveData",
						"title": "Keep Alive Data",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalDateTimeFrom",
						"title": "Terminal Date Time From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalDateTimeTo",
						"title": "Terminal Date Time To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
				},
				"name": "keep_alive",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/keepalive",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "keepalive",
									},
								},
								"parts": []any{
									"public",
									"keepalive",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"list_terminal": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "filter",
						"title": "Filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminals",
						"title": "Terminals",
						"type": "`$ARRAY`",
					},
				},
				"name": "list_terminal",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/listTerminals",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "listTerminals",
									},
								},
								"parts": []any{
									"public",
									"listTerminals",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"mandator_clearing_export": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "clearingDateFrom",
						"title": "Clearing Date From",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
					},
					map[string]any{
						"name": "clearingDateTo",
						"title": "Clearing Date To",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "records",
						"title": "Records",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
				},
				"name": "mandator_clearing_export",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/mandatorClearingExport",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExport",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExport",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"mandator_clearing_export_download": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "clearingDateFrom",
						"title": "Clearing Date From",
						"type": "`$STRING`",
						"req": true,
						"short": "Start date for clearing export (inclusive)",
						"format": "date-time",
					},
					map[string]any{
						"name": "clearingDateTo",
						"title": "Clearing Date To",
						"type": "`$STRING`",
						"req": true,
						"short": "End date for clearing export (inclusive)",
						"format": "date-time",
					},
					map[string]any{
						"name": "fileId",
						"title": "File Id",
						"type": "`$STRING`",
						"short": "Unique file identifier for tracking and downloading",
					},
					map[string]any{
						"name": "filenameTemplate",
						"title": "Filename Template",
						"type": "`$STRING`",
						"short": "Optional filename template for the export file",
					},
					map[string]any{
						"name": "id",
						"title": "Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"title": "Status",
						"type": "`$STRING`",
						"short": "Processing status of the export request",
					},
				},
				"id": map[string]any{
					"field": "id",
					"name": "id",
				},
				"name": "mandator_clearing_export_download",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/mandatorClearingExportDownload",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExportDownload",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExportDownload",
									},
									map[string]any{
										"var": "id",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"fileId": "id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"name": "id",
											"orig": "file_id",
											"type": "`$STRING`",
											"kind": "param",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"id",
									},
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"mandator_clearing_export_summary": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "clearingDateFrom",
						"title": "Clearing Date From",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
					},
					map[string]any{
						"name": "clearingDateTo",
						"title": "Clearing Date To",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
					},
					map[string]any{
						"name": "records",
						"title": "Records",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
				},
				"name": "mandator_clearing_export_summary",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/mandatorClearingExportSummary",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "mandatorClearingExportSummary",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportSummary",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"merchant_portal_services_api": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "3DSecure",
						"title": "3 D Secure",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "authorizationCode",
						"title": "Authorization Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"title": "Card Brand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountFrom",
						"title": "Clearing Amount From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountTo",
						"title": "Clearing Amount To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingCurrency",
						"title": "Clearing Currency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingStatus",
						"title": "Clearing Status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateUUID",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "orderByTransactionDate",
						"title": "Order By Transaction Date",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "receiptNumber",
						"title": "Receipt Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "referencedTransactionId",
						"title": "Referenced Transaction Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "retrievalReferenceNumber",
						"title": "Retrieval Reference Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sourceId",
						"title": "Source Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "tecsengineResponseCodeFrom",
						"title": "Tecsengine Response Code From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tecsengineResponseCodeTo",
						"title": "Tecsengine Response Code To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "traceNumber",
						"title": "Trace Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountFrom",
						"title": "Transaction Amount From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountTo",
						"title": "Transaction Amount To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionDateFrom",
						"title": "Transaction Date From",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDateTo",
						"title": "Transaction Date To",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "wallet",
						"title": "Wallet",
						"type": "`$STRING`",
						"short": "Filter by wallet type.",
					},
				},
				"name": "merchant_portal_services_api",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/transactionHistoryCsv",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "transactionHistoryCsv",
									},
								},
								"parts": []any{
									"public",
									"transactionHistoryCsv",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"move_tid": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "productorderuuids",
						"title": "Productorderuuids",
						"type": "`$ARRAY`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "targetPackageorderuuid",
						"title": "Target Packageorderuuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "targetProductorderuuid",
						"title": "Target Productorderuuid",
						"type": "`$STRING`",
					},
				},
				"name": "move_tid",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/moveTid",
								"segments": []any{
									map[string]any{
										"lit": "moveTid",
									},
								},
								"parts": []any{
									"moveTid",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"payment_manual": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acquirerName",
						"title": "Acquirer Name",
						"type": "`$STRING`",
						"short": "Acquirer name parsed from KKG field",
					},
					map[string]any{
						"name": "amount",
						"title": "Amount",
						"type": "`$INTEGER`",
						"req": true,
						"short": "Transaction amount in minor units (cents)",
						"format": "int32",
					},
					map[string]any{
						"name": "authorizationNumber",
						"title": "Authorization Number",
						"type": "`$STRING`",
						"short": "Authorization number from the gateway",
					},
					map[string]any{
						"name": "cardNumber",
						"title": "Card Number",
						"type": "`$STRING`",
						"req": true,
						"short": "Card number - 12 to 19 digits, must pass Luhn validation",
					},
					map[string]any{
						"name": "cardType",
						"title": "Card Type",
						"type": "`$STRING`",
						"short": "Card type parsed from KKG field",
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
						"short": "Currency code - 3 uppercase letters (ISO 4217)",
					},
					map[string]any{
						"name": "cvc",
						"title": "Cvc",
						"type": "`$STRING`",
						"short": "Card verification code - 3-4 digits (optional)",
					},
					map[string]any{
						"name": "dateTimeTx",
						"title": "Date Time Tx",
						"type": "`$STRING`",
						"short": "Date and time of the transaction",
					},
					map[string]any{
						"name": "expDate",
						"title": "Exp Date",
						"type": "`$STRING`",
						"req": true,
						"short": "Card expiry date in MMYY format",
					},
					map[string]any{
						"name": "merchantId",
						"title": "Merchant Id",
						"type": "`$STRING`",
						"short": "Merchant ID (VU-NUMMER)",
					},
					map[string]any{
						"name": "originalTransactionId",
						"title": "Original Transaction Id",
						"type": "`$STRING`",
						"short": "Original transaction ID from gateway",
					},
					map[string]any{
						"name": "password",
						"title": "Password",
						"type": "`$STRING`",
						"short": "Terminal password sent as Kennwort in TECS XML (optional)",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$STRING`",
						"short": "Response code - 00 for success, otherwise error code",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
						"short": "Response message - 'Approved' for success, error description otherwise",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"short": "Terminal ID used for the transaction",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"short": "Transaction ID generated by the backend",
					},
					map[string]any{
						"name": "txtype",
						"title": "Txtype",
						"type": "`$STRING`",
						"req": true,
						"short": "Transaction type",
					},
				},
				"name": "payment_manual",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/paymentManual",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "paymentManual",
									},
								},
								"parts": []any{
									"public",
									"paymentManual",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"payment_sred": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "amount",
						"title": "Amount",
						"type": "`$INTEGER`",
						"req": true,
						"short": "Transaction amount in minor units (cents)",
						"format": "int32",
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
						"short": "Currency code - 3 uppercase letters (ISO 4217)",
					},
					map[string]any{
						"name": "device",
						"title": "Device",
						"type": "`$STRING`",
						"short": "Device type that provided the SRED payload",
					},
					map[string]any{
						"name": "devicePayload",
						"title": "Device Payload",
						"type": "`$STRING`",
						"req": true,
						"short": "SRED encrypted device payload from the device (minimum 32 characters)",
					},
					map[string]any{
						"name": "expDate",
						"title": "Exp Date",
						"type": "`$STRING`",
						"short": "Card expiry date in MMYY format",
					},
					map[string]any{
						"name": "mode",
						"title": "Mode",
						"type": "`$STRING`",
						"short": "Decryption mode",
					},
					map[string]any{
						"name": "panMasked",
						"title": "Pan Masked",
						"type": "`$STRING`",
						"short": "Masked PAN (first 6 and last 4 digits)",
					},
					map[string]any{
						"name": "password",
						"title": "Password",
						"type": "`$STRING`",
						"short": "Terminal password sent as Kennwort in TECS XML (optional)",
					},
					map[string]any{
						"name": "serial",
						"title": "Serial",
						"type": "`$STRING`",
						"short": "Device serial number",
					},
					map[string]any{
						"name": "serviceCode",
						"title": "Service Code",
						"type": "`$STRING`",
						"short": "Service code from the card",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$STRING`",
						"req": true,
						"short": "Terminal ID - 8 digits",
					},
					map[string]any{
						"name": "txtype",
						"title": "Txtype",
						"type": "`$STRING`",
						"req": true,
						"short": "Transaction type",
					},
				},
				"name": "payment_sred",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/paymentSred",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "paymentSred",
									},
								},
								"parts": []any{
									"public",
									"paymentSred",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.sred`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"pre_auth_transaction_completion": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acquirerId",
						"title": "Acquirer Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerName",
						"title": "Acquirer Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "actualBonusPoints",
						"title": "Actual Bonus Points",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "amount",
						"title": "Amount",
						"type": "`$INTEGER`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$INTEGER`",
							},
						},
						"format": "int32",
					},
					map[string]any{
						"name": "authorizationCode",
						"title": "Authorization Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "balanceAmount",
						"title": "Balance Amount",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"title": "Card Brand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"title": "Card Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumberReference",
						"title": "Card Number Reference",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "clientId",
						"title": "Client Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "cvc",
						"title": "Cvc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecData",
						"title": "Ec Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"title": "Ecr Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvData",
						"title": "Emv Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "exchangeFee",
						"title": "Exchange Fee",
						"type": "`$INTEGER`",
						"format": "int64",
					},
					map[string]any{
						"name": "exchangeRate",
						"title": "Exchange Rate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "languageCode",
						"title": "Language Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantAddress",
						"title": "Merchant Address",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"title": "Merchant Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"title": "Merchant Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "messageType",
						"title": "Message Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "originalTraceNumber",
						"title": "Original Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "originalTransactionId",
						"title": "Original Transaction Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "password",
						"title": "Password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"title": "Payment Reason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptFooter",
						"title": "Receipt Footer",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptHeader",
						"title": "Receipt Header",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptLayout",
						"title": "Receipt Layout",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "receiptNumber",
						"title": "Receipt Number",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"title": "Serial Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "svc",
						"title": "Svc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "terminalLocation",
						"title": "Terminal Location",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "traceNumber",
						"title": "Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "transactionDate",
						"title": "Transaction Date",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "txType",
						"title": "Tx Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "userData",
						"title": "User Data",
						"type": "`$STRING`",
					},
				},
				"name": "pre_auth_transaction_completion",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/paymentTransaction",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "paymentTransaction",
									},
								},
								"parts": []any{
									"public",
									"paymentTransaction",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/preAuthCompletionTransaction",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "preAuthCompletionTransaction",
									},
								},
								"parts": []any{
									"public",
									"preAuthCompletionTransaction",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"reactivate_terminal": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"title": "Package Order Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"title": "Product Order Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "reactivationReason",
						"title": "Reactivation Reason",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
				},
				"name": "reactivate_terminal",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/reactivateTerminal",
								"segments": []any{
									map[string]any{
										"lit": "reactivateTerminal",
									},
								},
								"parts": []any{
									"reactivateTerminal",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"refund_transaction": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acquirerId",
						"title": "Acquirer Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerName",
						"title": "Acquirer Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "actualBonusPoints",
						"title": "Actual Bonus Points",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "amount",
						"title": "Amount",
						"type": "`$INTEGER`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$INTEGER`",
							},
						},
						"format": "int32",
					},
					map[string]any{
						"name": "authorizationCode",
						"title": "Authorization Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "balanceAmount",
						"title": "Balance Amount",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"title": "Card Brand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"title": "Card Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clientId",
						"title": "Client Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "cvc",
						"title": "Cvc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecData",
						"title": "Ec Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"title": "Ecr Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvData",
						"title": "Emv Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "exchangeFee",
						"title": "Exchange Fee",
						"type": "`$INTEGER`",
						"format": "int64",
					},
					map[string]any{
						"name": "exchangeRate",
						"title": "Exchange Rate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "languageCode",
						"title": "Language Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantAddress",
						"title": "Merchant Address",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"title": "Merchant Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"title": "Merchant Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "messageType",
						"title": "Message Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "originalTraceNumber",
						"title": "Original Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "originalTransactionId",
						"title": "Original Transaction Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "password",
						"title": "Password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"title": "Payment Reason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptFooter",
						"title": "Receipt Footer",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptHeader",
						"title": "Receipt Header",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptLayout",
						"title": "Receipt Layout",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "receiptNumber",
						"title": "Receipt Number",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"title": "Serial Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "svc",
						"title": "Svc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"req": true,
						"format": "int32",
					},
					map[string]any{
						"name": "terminalLocation",
						"title": "Terminal Location",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "traceNumber",
						"title": "Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "transactionDate",
						"title": "Transaction Date",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "txType",
						"title": "Tx Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "userData",
						"title": "User Data",
						"type": "`$STRING`",
					},
				},
				"name": "refund_transaction",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/refundTransaction",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "refundTransaction",
									},
								},
								"parts": []any{
									"public",
									"refundTransaction",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"register_tecs_company": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "packageOrderUuid",
						"title": "Package Order Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "partnerId",
						"title": "Partner Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "partnerName",
						"title": "Partner Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"title": "Product Order Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"title": "Template Name",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "register_tecs_company",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/registerTecsCompany",
								"segments": []any{
									map[string]any{
										"lit": "registerTecsCompany",
									},
								},
								"parts": []any{
									"registerTecsCompany",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"register_terminal": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "additionalData",
						"title": "Additional Data",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "packageOrderUuid",
						"title": "Package Order Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "productOrderUuid",
						"title": "Product Order Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tecsWebSecretKey",
						"title": "Tecs Web Secret Key",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"title": "Template Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "terminalCountryCode",
						"title": "Terminal Country Code",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "terminalIdAcq",
						"title": "Terminal Id Acq",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalLanguageCode",
						"title": "Terminal Language Code",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "terminalLocation",
						"title": "Terminal Location",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "terminalSerialNumber",
						"title": "Terminal Serial Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tokenIOAlias",
						"title": "Token Io Alias",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tokenIOIban",
						"title": "Token Io Iban",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tokenIOMemberId",
						"title": "Token Io Member Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "webShopUrl",
						"title": "Web Shop Url",
						"type": "`$STRING`",
					},
				},
				"name": "register_terminal",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/registerTerminal",
								"segments": []any{
									map[string]any{
										"lit": "registerTerminal",
									},
								},
								"parts": []any{
									"registerTerminal",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"report_data": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "cardBrandReportData",
						"title": "Card Brand Report Data",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "clearingDateFrom",
						"title": "Clearing Date From",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
					},
					map[string]any{
						"name": "clearingDateTo",
						"title": "Clearing Date To",
						"type": "`$STRING`",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
					},
					map[string]any{
						"name": "corporateId",
						"title": "Corporate Id",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sumOverCreditTx",
						"title": "Sum Over Credit Tx",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "sumOverDebitTx",
						"title": "Sum Over Debit Tx",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
				},
				"name": "report_data",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/reportData",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "digitalservices",
									},
									map[string]any{
										"lit": "reportData",
									},
								},
								"parts": []any{
									"public",
									"digitalservices",
									"reportData",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"status_transaction": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acquirerName",
						"title": "Acquirer Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerTerminalId",
						"title": "Acquirer Terminal Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "amount",
						"title": "Amount",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "applicationCryptogram",
						"title": "Application Cryptogram",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "authorizationCode",
						"title": "Authorization Code",
						"type": []any{
							"`$ONE`",
							[]any{
								"`$STRING`",
								"`$NULL`",
							},
						},
						"short": "Authorization code returned by the acquirer; null when not available",
					},
					map[string]any{
						"name": "authorizationDate",
						"title": "Authorization Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "cardBrand",
						"title": "Card Brand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardEntry",
						"title": "Card Entry",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardExpiration",
						"title": "Card Expiration",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"title": "Card Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmount",
						"title": "Clearing Amount",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "clearingBatchId",
						"title": "Clearing Batch Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingCurrency",
						"title": "Clearing Currency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingDate",
						"title": "Clearing Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "clearingProcessedDate",
						"title": "Clearing Processed Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "clearingStatus",
						"title": "Clearing Status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clientId",
						"title": "Client Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "currency",
						"title": "Currency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cvm",
						"title": "Cvm",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"title": "Ecr Data",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvApplicationId",
						"title": "Emv Application Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvApplicationLabel",
						"title": "Emv Application Label",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"title": "Merchant Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"title": "Merchant Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "originalClientId",
						"title": "Original Client Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "originalTerminalId",
						"title": "Original Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "originalTransactionId",
						"title": "Original Transaction Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"title": "Payment Reason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptNumber",
						"title": "Receipt Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseCodeFromAS",
						"title": "Response Code From As",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "retrievalReferenceNumber",
						"title": "Retrieval Reference Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serviceCode",
						"title": "Service Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "settlementStatus",
						"title": "Settlement Status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sourceId",
						"title": "Source Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "tecsengineResponseCode",
						"title": "Tecsengine Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "tecsengineResponseText",
						"title": "Tecsengine Response Text",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalEndOfDayDate",
						"title": "Terminal End Of Day Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "terminalLocation",
						"title": "Terminal Location",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tipAmount",
						"title": "Tip Amount",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "traceNumber",
						"title": "Trace Number",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "transactionClearingDate",
						"title": "Transaction Clearing Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDate",
						"title": "Transaction Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionSeqNumber",
						"title": "Transaction Seq Number",
						"type": "`$INTEGER`",
						"format": "int64",
					},
					map[string]any{
						"name": "transactionServerDate",
						"title": "Transaction Server Date",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionSource",
						"title": "Transaction Source",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
					},
				},
				"name": "status_transaction",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/statusTransaction",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "statusTransaction",
									},
								},
								"parts": []any{
									"public",
									"statusTransaction",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"store_terminal_parameter": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "acqTabNexo",
						"title": "Acq Tab Nexo",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "configVersion",
						"title": "Config Version",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"title": "Serial Number",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "tidSent",
						"title": "Tid Sent",
						"type": "`$STRING`",
					},
				},
				"name": "store_terminal_parameter",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/storeTerminalParameters",
								"segments": []any{
									map[string]any{
										"lit": "storeTerminalParameters",
									},
								},
								"parts": []any{
									"storeTerminalParameters",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"terminal_id": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "deviceSerialNumber",
						"title": "Device Serial Number",
						"type": "`$ARRAY`",
						"req": true,
					},
					map[string]any{
						"name": "duplicateTerminalIds",
						"title": "Duplicate Terminal Ids",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminals",
						"title": "Terminals",
						"type": "`$ARRAY`",
					},
				},
				"name": "terminal_id",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/getTerminalId",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "getTerminalId",
									},
								},
								"parts": []any{
									"public",
									"getTerminalId",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"transaction_history": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "3DSecure",
						"title": "3 D Secure",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "authorizationCode",
						"title": "Authorization Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"title": "Card Brand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountFrom",
						"title": "Clearing Amount From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountTo",
						"title": "Clearing Amount To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingCurrency",
						"title": "Clearing Currency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingStatus",
						"title": "Clearing Status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateUUID",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "orderByTransactionDate",
						"title": "Order By Transaction Date",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "paymentTokenPublicId",
						"title": "Payment Token Public Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptNumber",
						"title": "Receipt Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "referencedTransactionId",
						"title": "Referenced Transaction Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "retrievalReferenceNumber",
						"title": "Retrieval Reference Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sourceId",
						"title": "Source Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "tecsengineResponseCodeFrom",
						"title": "Tecsengine Response Code From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tecsengineResponseCodeTo",
						"title": "Tecsengine Response Code To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"title": "Terminal Id",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "traceNumber",
						"title": "Trace Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountFrom",
						"title": "Transaction Amount From",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountTo",
						"title": "Transaction Amount To",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionDateFrom",
						"title": "Transaction Date From",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDateTo",
						"title": "Transaction Date To",
						"type": "`$STRING`",
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionHistories",
						"title": "Transaction Histories",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "transactionId",
						"title": "Transaction Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"title": "Transaction Type",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "wallet",
						"title": "Wallet",
						"type": "`$STRING`",
						"short": "Filter by wallet type.",
					},
				},
				"name": "transaction_history",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/mcom/transactionHistory",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "mcom",
									},
									map[string]any{
										"lit": "transactionHistory",
									},
								},
								"parts": []any{
									"public",
									"mcom",
									"transactionHistory",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/transactionHistory",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "transactionHistory",
									},
								},
								"parts": []any{
									"public",
									"transactionHistory",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"transactions_count_card_brand": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "period",
						"title": "Period",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionDateFrom",
						"title": "Transaction Date From",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDateTo",
						"title": "Transaction Date To",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionsCount",
						"title": "Transactions Count",
						"type": "`$ARRAY`",
					},
				},
				"name": "transactions_count_card_brand",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/countTransactionsByCardBrand",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "countTransactionsByCardBrand",
									},
								},
								"parts": []any{
									"public",
									"countTransactionsByCardBrand",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"transactions_turnover": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "period",
						"title": "Period",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionDateFrom",
						"title": "Transaction Date From",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "transactionDateTo",
						"title": "Transaction Date To",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"format": "date-time",
					},
					map[string]any{
						"name": "turnovers",
						"title": "Turnovers",
						"type": "`$ARRAY`",
					},
				},
				"name": "transactions_turnover",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/transactionTurnover",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "transactionTurnover",
									},
								},
								"parts": []any{
									"public",
									"transactionTurnover",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"update_merchant": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "city",
						"title": "City",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateUuid",
						"title": "Corporate Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "country",
						"title": "Country",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantCategoryCode",
						"title": "Merchant Category Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "name",
						"title": "Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"title": "State",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street",
						"title": "Street",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "vuNummer",
						"title": "Vu Nummer",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zipcode",
						"title": "Zipcode",
						"type": "`$STRING`",
					},
				},
				"name": "update_merchant",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/updateMerchant",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "updateMerchant",
									},
								},
								"parts": []any{
									"public",
									"updateMerchant",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"update_template_xml": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"title": "Template Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "templateXml",
						"title": "Template Xml",
						"type": "`$STRING`",
						"req": true,
					},
				},
				"name": "update_template_xml",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/public/updateTemplateXml",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "updateTemplateXml",
									},
								},
								"parts": []any{
									"public",
									"updateTemplateXml",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"version": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "appName",
						"title": "App Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "buildDate",
						"title": "Build Date",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "version",
						"title": "Version",
						"type": "`$STRING`",
					},
				},
				"name": "version",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/public/version",
								"segments": []any{
									map[string]any{
										"lit": "public",
									},
									map[string]any{
										"lit": "version",
									},
								},
								"parts": []any{
									"public",
									"version",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
		},
	}
}

// The plugin definitions the model selected per feature, as []any so a
// feature package can consume them without core naming its types. Empty
// when no active feature declares active plugin groups for this target.
var featurePlugins = map[string][]any{
}

// FeaturePlugins is the definitions list for one feature's chain.
func FeaturePlugins(name string) []any {
	return featurePlugins[name]
}

var (
	sharedConfigOnce sync.Once
	sharedConfigVal  map[string]any
)

// SharedConfig returns the process-wide config, built once on first use.
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client.
//
// The returned map is shared: treat it as read-only. Callers that need to
// mutate should use MakeConfig, which always returns a fresh copy.
func SharedConfig() map[string]any {
	sharedConfigOnce.Do(func() {
		sharedConfigVal = MakeConfig()
	})
	return sharedConfigVal
}

func makeFeature(name string) Feature {
	switch name {
	case "audit":
		if NewAuditFeatureFunc != nil {
			return NewAuditFeatureFunc()
		}
	case "clienttrack":
		if NewClienttrackFeatureFunc != nil {
			return NewClienttrackFeatureFunc()
		}
	case "debug":
		if NewDebugFeatureFunc != nil {
			return NewDebugFeatureFunc()
		}
	case "idempotency":
		if NewIdempotencyFeatureFunc != nil {
			return NewIdempotencyFeatureFunc()
		}
	case "log":
		if NewLogFeatureFunc != nil {
			return NewLogFeatureFunc()
		}
	case "metrics":
		if NewMetricsFeatureFunc != nil {
			return NewMetricsFeatureFunc()
		}
	case "paging":
		if NewPagingFeatureFunc != nil {
			return NewPagingFeatureFunc()
		}
	case "ratelimit":
		if NewRatelimitFeatureFunc != nil {
			return NewRatelimitFeatureFunc()
		}
	case "retry":
		if NewRetryFeatureFunc != nil {
			return NewRetryFeatureFunc()
		}
	case "telemetry":
		if NewTelemetryFeatureFunc != nil {
			return NewTelemetryFeatureFunc()
		}
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	case "timeout":
		if NewTimeoutFeatureFunc != nil {
			return NewTimeoutFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}
