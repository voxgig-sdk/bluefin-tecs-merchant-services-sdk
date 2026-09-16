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
				"transactions_count": map[string]any{},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "actualBonusPoints",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "amount",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$INTEGER`",
							},
						},
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "authorizationCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "balanceAmount",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "clientId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cvc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvData",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int64",
						"name": "exchangeFee",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "exchangeRate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "languageCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantAddress",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "messageType",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "originalTraceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "originalTransactionId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptFooter",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptHeader",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "receiptLayout",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "receiptNumber",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "svc",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "terminalLocation",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "traceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDate",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txType",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "userData",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"cancelTransaction",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
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
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/checkCardBlackListed",
								"segments": []any{
									map[string]any{
										"lit": "checkCardBlackListed",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"checkCardBlackListed",
								},
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
						"format": "int32",
						"name": "acquirerId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateType",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateXml",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalType",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "create_product",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/createProduct",
								"segments": []any{
									map[string]any{
										"lit": "createProduct",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"createProduct",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "deactivationReason",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
				},
				"name": "deactivate_terminal",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/deactivateTerminal",
								"segments": []any{
									map[string]any{
										"lit": "deactivateTerminal",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"deactivateTerminal",
								},
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
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingDateTo",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "txCount",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "txIdEnd",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txIdStart",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "txSeqNoEnd",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "int32",
						"name": "txSeqNoStart",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "int32",
						"name": "txTotal",
						"type": "`$INTEGER`",
					},
				},
				"name": "digital_services_api",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"kind": "param",
											"name": "file_id",
											"orig": "file_id",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
								"rename": map[string]any{
									"param": map[string]any{
										"fileId": "file_id",
									},
								},
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
								"select": map[string]any{
									"exist": []any{
										"file_id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
									"{file_id}",
								},
							},
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportMetadata",
								},
							},
						},
					},
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
									"status",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{
						[]any{
							"mandator_clearing_export_download",
						},
					},
				},
			},
			"ec_data_ecom": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "ecomData",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "transactionId",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "ec_data_ecom",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"getEcData",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecomSkey",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
				},
				"name": "ecom_parameter",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"getEcomParameters",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "transactionId",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "ecr_data",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"getEcrData",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "transactionId",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "emv_data",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"getEmvData",
								},
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
						"format": "int32",
						"name": "accountNo",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "additionalData",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "corporateUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "merchantCategoryCode",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "sortingCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "templateName",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalIdAcq",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalIds",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "vuNummer",
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
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/enableAcquiring",
								"segments": []any{
									map[string]any{
										"lit": "enableAcquiring",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"enableAcquiring",
								},
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
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
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
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/getMerchantContractNumber",
								"segments": []any{
									map[string]any{
										"lit": "getMerchantContractNumber",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"getMerchantContractNumber",
								},
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
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "get_template_xml",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"getTemplateXml",
								},
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
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
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
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/introduceMandator",
								"segments": []any{
									map[string]any{
										"lit": "introduceMandator",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"introduceMandator",
								},
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
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalTemplateDescription",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "introduce_package",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/introducePackage",
								"segments": []any{
									map[string]any{
										"lit": "introducePackage",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"introducePackage",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "kaDateTimeFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "kaDateTimeTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "keepAliveData",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalDateTimeFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalDateTimeTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"type": "`$INTEGER`",
					},
				},
				"name": "keep_alive",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"keepalive",
								},
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
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminals",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"listTerminals",
								},
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
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingDateTo",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "records",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExport",
								},
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
						"format": "date-time",
						"name": "clearingDateFrom",
						"req": true,
						"short": "Start date for clearing export (inclusive)",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "clearingDateTo",
						"req": true,
						"short": "End date for clearing export (inclusive)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "fileId",
						"short": "Unique file identifier for tracking and downloading",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "filenameTemplate",
						"short": "Optional filename template for the export file",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "id",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"short": "Processing status of the export request",
						"type": "`$STRING`",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
								},
							},
						},
					},
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"kind": "param",
											"name": "id",
											"orig": "file_id",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
								"rename": map[string]any{
									"param": map[string]any{
										"fileId": "id",
									},
								},
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
								"select": map[string]any{
									"exist": []any{
										"id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportDownload",
									"{id}",
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
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingDateTo",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "records",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"mandatorClearingExportSummary",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "authorizationCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingCurrency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingStatus",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateUUID",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "orderByTransactionDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "receiptNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "referencedTransactionId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "retrievalReferenceNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "sourceId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "tecsengineResponseCodeFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tecsengineResponseCodeTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "traceNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "wallet",
						"short": "Filter by wallet type.",
						"type": "`$STRING`",
					},
				},
				"name": "merchant_portal_services_api",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"transactionHistoryCsv",
								},
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
						"req": true,
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "targetPackageorderuuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "targetProductorderuuid",
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
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/moveTid",
								"segments": []any{
									map[string]any{
										"lit": "moveTid",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"moveTid",
								},
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
						"short": "Acquirer name parsed from KKG field",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "amount",
						"req": true,
						"short": "Transaction amount in minor units (cents)",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "authorizationNumber",
						"short": "Authorization number from the gateway",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"req": true,
						"short": "Card number - 12 to 19 digits, must pass Luhn validation",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardType",
						"short": "Card type parsed from KKG field",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"short": "Currency code - 3 uppercase letters (ISO 4217)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cvc",
						"short": "Card verification code - 3-4 digits (optional)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "dateTimeTx",
						"short": "Date and time of the transaction",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "expDate",
						"req": true,
						"short": "Card expiry date in MMYY format",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantId",
						"short": "Merchant ID (VU-NUMMER)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "originalTransactionId",
						"short": "Original transaction ID from gateway",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "password",
						"short": "Terminal password sent as Kennwort in TECS XML (optional)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"short": "Response code - 00 for success, otherwise error code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseMessage",
						"short": "Response message - 'Approved' for success, error description otherwise",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"short": "Terminal ID used for the transaction",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionId",
						"short": "Transaction ID generated by the backend",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txtype",
						"req": true,
						"short": "Transaction type",
						"type": "`$STRING`",
					},
				},
				"name": "payment_manual",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"paymentManual",
								},
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
						"format": "int32",
						"name": "amount",
						"req": true,
						"short": "Transaction amount in minor units (cents)",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"short": "Currency code - 3 uppercase letters (ISO 4217)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "device",
						"short": "Device type that provided the SRED payload",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "devicePayload",
						"req": true,
						"short": "SRED encrypted device payload from the device (minimum 32 characters)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "expDate",
						"short": "Card expiry date in MMYY format",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "mode",
						"short": "Decryption mode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "panMasked",
						"short": "Masked PAN (first 6 and last 4 digits)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "password",
						"short": "Terminal password sent as Kennwort in TECS XML (optional)",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serial",
						"short": "Device serial number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serviceCode",
						"short": "Service code from the card",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalId",
						"req": true,
						"short": "Terminal ID - 8 digits",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txtype",
						"req": true,
						"short": "Transaction type",
						"type": "`$STRING`",
					},
				},
				"name": "payment_sred",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.sred`",
								},
								"parts": []any{
									"public",
									"paymentSred",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "actualBonusPoints",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "amount",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$INTEGER`",
							},
						},
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "authorizationCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "balanceAmount",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumberReference",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "clientId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cvc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvData",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int64",
						"name": "exchangeFee",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "exchangeRate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "languageCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantAddress",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "messageType",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "originalTraceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "originalTransactionId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptFooter",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptHeader",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "receiptLayout",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "receiptNumber",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "svc",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "terminalLocation",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "traceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDate",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txType",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "userData",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"paymentTransaction",
								},
							},
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"preAuthCompletionTransaction",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "reactivationReason",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
				},
				"name": "reactivate_terminal",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/reactivateTerminal",
								"segments": []any{
									map[string]any{
										"lit": "reactivateTerminal",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"reactivateTerminal",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "actualBonusPoints",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "amount",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$INTEGER`",
							},
						},
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "authorizationCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "balanceAmount",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "clientId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cvc",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvData",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int64",
						"name": "exchangeFee",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "exchangeRate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "languageCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantAddress",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "messageType",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "originalTraceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "originalTransactionId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptFooter",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptHeader",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "receiptLayout",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "receiptNumber",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "svc",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"req": true,
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "terminalLocation",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "traceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDate",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionId",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "txType",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "userData",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"refundTransaction",
								},
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
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "partnerId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "partnerName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "register_tecs_company",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/registerTecsCompany",
								"segments": []any{
									map[string]any{
										"lit": "registerTecsCompany",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"registerTecsCompany",
								},
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
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "corporateUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "packageOrderUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "productOrderUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tecsWebSecretKey",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalCountryCode",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "terminalIdAcq",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalLanguageCode",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalLocation",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminalSerialNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tokenIOAlias",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tokenIOIban",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tokenIOMemberId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "webShopUrl",
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
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/registerTerminal",
								"segments": []any{
									map[string]any{
										"lit": "registerTerminal",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"registerTerminal",
								},
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
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "clearingDateFrom",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingDateTo",
						"req": true,
						"short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateId",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "currency",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sumOverCreditTx",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "sumOverDebitTx",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"type": "`$INTEGER`",
					},
				},
				"name": "report_data",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"digitalservices",
									"reportData",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "acquirerTerminalId",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "amount",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "applicationCryptogram",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "authorizationCode",
						"short": "Authorization code returned by the acquirer; null when not available",
						"type": []any{
							"`$ONE`",
							[]any{
								"`$STRING`",
								"`$NULL`",
							},
						},
					},
					map[string]any{
						"format": "date-time",
						"name": "authorizationDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardEntry",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardExpiration",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "clearingAmount",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "clearingBatchId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingCurrency",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "clearingDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "clearingProcessedDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingStatus",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "clientId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "currency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cvm",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ecrData",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvApplicationId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emvApplicationLabel",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "originalClientId",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "originalTerminalId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "originalTransactionId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "paymentReason",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseCodeFromAS",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "retrievalReferenceNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serviceCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "settlementStatus",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "sourceId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "int32",
						"name": "tecsengineResponseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "tecsengineResponseText",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "terminalEndOfDayDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "terminalLocation",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "tipAmount",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "int32",
						"name": "traceNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionClearingDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionId",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int64",
						"name": "transactionSeqNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionServerDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionSource",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"statusTransaction",
								},
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
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "configVersion",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "serialNumber",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tidSent",
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
								"args": map[string]any{},
								"kind": "http",
								"method": "POST",
								"orig": "/storeTerminalParameters",
								"segments": []any{
									map[string]any{
										"lit": "storeTerminalParameters",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"storeTerminalParameters",
								},
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
						"req": true,
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "duplicateTerminalIds",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "terminals",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"getTerminalId",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "authorizationCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cardBrand",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingAmountTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingCurrency",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "clearingStatus",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateUUID",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "orderByTransactionDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "paymentTokenPublicId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "receiptNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "referencedTransactionId",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "retrievalReferenceNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "sourceId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "tecsengineResponseCodeFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "tecsengineResponseCodeTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "terminalId",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "traceNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionAmountTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateFrom",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateTo",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionHistories",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "transactionId",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionType",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "wallet",
						"short": "Filter by wallet type.",
						"type": "`$STRING`",
					},
				},
				"name": "transaction_history",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"mcom",
									"transactionHistory",
								},
							},
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"transactionHistory",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"transactions_count": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "period",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateFrom",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateTo",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionsCount",
						"type": "`$ARRAY`",
					},
				},
				"name": "transactions_count",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"countAuthorisedTransactions",
								},
							},
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"countNotAuthorisedTransactions",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateFrom",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateTo",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionsCount",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"countTransactionsByCardBrand",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateFrom",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date-time",
						"name": "transactionDateTo",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "turnovers",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"transactionTurnover",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "corporateUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "country",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "merchantCategoryCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "name",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "vuNummer",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zipcode",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"updateMerchant",
								},
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
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateName",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "templateXml",
						"req": true,
						"type": "`$STRING`",
					},
				},
				"name": "update_template_xml",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"updateTemplateXml",
								},
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
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "buildDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "version",
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
								"args": map[string]any{},
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
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"public",
									"version",
								},
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
