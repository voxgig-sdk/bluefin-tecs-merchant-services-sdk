
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }


  main = {
    name: 'BluefinTecsMerchantServices',
  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    },

  }


  options = {
    base: 'https://test.tecs.at/merchantservices',

    auth: {
      prefix: 'Bearer',
    },

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      cancel_transaction: {
      },

      check_card_black_listed: {
      },

      create_product: {
      },

      deactivate_terminal: {
      },

      digital_services_api: {
      },

      ec_data_ecom: {
      },

      ecom_parameter: {
      },

      ecr_data: {
      },

      emv_data: {
      },

      enable_acquiring: {
      },

      get_merchant_contract_number: {
      },

      get_template_xml: {
      },

      introduce_mandator: {
      },

      introduce_package: {
      },

      keep_alive: {
      },

      list_terminal: {
      },

      mandator_clearing_export: {
      },

      mandator_clearing_export_download: {
      },

      mandator_clearing_export_summary: {
      },

      merchant_portal_services_api: {
      },

      move_tid: {
      },

      payment_manual: {
      },

      payment_sred: {
      },

      pre_auth_transaction_completion: {
      },

      reactivate_terminal: {
      },

      refund_transaction: {
      },

      register_tecs_company: {
      },

      register_terminal: {
      },

      report_data: {
      },

      status_transaction: {
      },

      store_terminal_parameter: {
      },

      terminal_id: {
      },

      transaction_history: {
      },

      transactions_count: {
      },

      transactions_count_card_brand: {
      },

      transactions_turnover: {
      },

      update_merchant: {
      },

      update_template_xml: {
      },

      version: {
      },

    }
  }


  entity = {
    "cancel_transaction": {
      "fields": [
        {
          "active": true,
          "name": "acquirerId",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "acquirerName",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "actualBonusPoints",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "amount",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "req": false,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "authorizationCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "balanceAmount",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "cardBrand",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "cardNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "clientId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 8
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 9
        },
        {
          "active": true,
          "name": "cvc",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "ecData",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "ecrData",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "emvData",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        },
        {
          "active": true,
          "name": "exchangeFee",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 14
        },
        {
          "active": true,
          "name": "exchangeRate",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "languageCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 16
        },
        {
          "active": true,
          "name": "merchantAddress",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        },
        {
          "active": true,
          "name": "merchantName",
          "req": false,
          "type": "`$STRING`",
          "index$": 18
        },
        {
          "active": true,
          "name": "merchantNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 19
        },
        {
          "active": true,
          "name": "messageType",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 20
        },
        {
          "active": true,
          "name": "originalTraceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 21
        },
        {
          "active": true,
          "name": "originalTransactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 22
        },
        {
          "active": true,
          "name": "password",
          "req": false,
          "type": "`$STRING`",
          "index$": 23
        },
        {
          "active": true,
          "name": "paymentReason",
          "req": false,
          "type": "`$STRING`",
          "index$": 24
        },
        {
          "active": true,
          "name": "receiptFooter",
          "req": false,
          "type": "`$STRING`",
          "index$": 25
        },
        {
          "active": true,
          "name": "receiptHeader",
          "req": false,
          "type": "`$STRING`",
          "index$": 26
        },
        {
          "active": true,
          "name": "receiptLayout",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 27
        },
        {
          "active": true,
          "name": "receiptNumber",
          "req": true,
          "type": "`$STRING`",
          "index$": 28
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 29
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 30
        },
        {
          "active": true,
          "name": "serialNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 31
        },
        {
          "active": true,
          "name": "svc",
          "req": false,
          "type": "`$STRING`",
          "index$": 32
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 33
        },
        {
          "active": true,
          "name": "terminalLocation",
          "req": false,
          "type": "`$STRING`",
          "index$": 34
        },
        {
          "active": true,
          "name": "traceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 35
        },
        {
          "active": true,
          "name": "transactionDate",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 36
        },
        {
          "active": true,
          "name": "transactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 37
        },
        {
          "active": true,
          "name": "txType",
          "req": false,
          "type": "`$STRING`",
          "index$": 38
        },
        {
          "active": true,
          "name": "userData",
          "req": false,
          "type": "`$STRING`",
          "index$": 39
        }
      ],
      "name": "cancel_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/cancelTransaction",
              "parts": [
                "public",
                "cancelTransaction"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "check_card_black_listed": {
      "fields": [
        {
          "active": true,
          "name": "cardNo",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "check_card_black_listed",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {
                "header": [
                  {
                    "active": true,
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/checkCardBlackListed",
              "parts": [
                "checkCardBlackListed"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "create_product": {
      "fields": [
        {
          "active": true,
          "name": "acquirerId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "templateName",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "templateType",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "templateXml",
          "req": true,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "terminalType",
          "req": true,
          "type": "`$STRING`",
          "index$": 6
        }
      ],
      "name": "create_product",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/createProduct",
              "parts": [
                "createProduct"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "deactivate_terminal": {
      "fields": [
        {
          "active": true,
          "name": "corporateUuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "deactivationReason",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "packageOrderUuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "productOrderUuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 6
        }
      ],
      "name": "deactivate_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/deactivateTerminal",
              "parts": [
                "deactivateTerminal"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "digital_services_api": {
      "fields": [
        {
          "active": true,
          "name": "clearingDateFrom",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "clearingDateTo",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "txCount",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "txIdEnd",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "txIdStart",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "txSeqNoEnd",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 7
        },
        {
          "active": true,
          "name": "txSeqNoStart",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 8
        },
        {
          "active": true,
          "name": "txTotal",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 9
        }
      ],
      "name": "digital_services_api",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {
                "params": [
                  {
                    "active": true,
                    "kind": "param",
                    "name": "file_id",
                    "orig": "file_id",
                    "reqd": true,
                    "type": "`$STRING`",
                    "index$": 0
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "{file_id}"
              ],
              "rename": {
                "param": {
                  "fileId": "file_id"
                }
              },
              "select": {
                "exist": [
                  "file_id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            },
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportMetadata",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportMetadata"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 1
            }
          ],
          "key$": "create"
        },
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "GET",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/status",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "status"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "load"
        }
      },
      "relations": {
        "ancestors": [
          [
            "mandator_clearing_export_download"
          ]
        ]
      }
    },
    "ec_data_ecom": {
      "fields": [
        {
          "active": true,
          "name": "ecomData",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "transactionId",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`",
          "index$": 5
        }
      ],
      "name": "ec_data_ecom",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEcData",
              "parts": [
                "public",
                "getEcData"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "ecom_parameter": {
      "fields": [
        {
          "active": true,
          "name": "ecomPass",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "ecomSkey",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 4
        }
      ],
      "name": "ecom_parameter",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEcomParameters",
              "parts": [
                "public",
                "getEcomParameters"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "ecr_data": {
      "fields": [
        {
          "active": true,
          "name": "ecrData",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "transactionId",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`",
          "index$": 5
        }
      ],
      "name": "ecr_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEcrData",
              "parts": [
                "public",
                "getEcrData"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "emv_data": {
      "fields": [
        {
          "active": true,
          "name": "emvData",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "transactionId",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`",
          "index$": 5
        }
      ],
      "name": "emv_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEmvData",
              "parts": [
                "public",
                "getEmvData"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "enable_acquiring": {
      "fields": [
        {
          "active": true,
          "name": "accountNo",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "additionalData",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 1
        },
        {
          "active": true,
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "merchantCategoryCode",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "packageOrderUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "productOrderUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 7
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "sortingCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 9
        },
        {
          "active": true,
          "name": "templateName",
          "req": true,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "terminalIdAcq",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "terminalIds",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 12
        },
        {
          "active": true,
          "name": "vuNummer",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        }
      ],
      "name": "enable_acquiring",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/enableAcquiring",
              "parts": [
                "enableAcquiring"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "get_merchant_contract_number": {
      "fields": [
        {
          "active": true,
          "name": "merchantContractNumber",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "get_merchant_contract_number",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/getMerchantContractNumber",
              "parts": [
                "getMerchantContractNumber"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "get_template_xml": {
      "fields": [
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "templateName",
          "req": true,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "get_template_xml",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/getTemplateXml",
              "parts": [
                "public",
                "getTemplateXml"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "introduce_mandator": {
      "fields": [
        {
          "active": true,
          "name": "mandatorName",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "introduce_mandator",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/introduceMandator",
              "parts": [
                "introduceMandator"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "introduce_package": {
      "fields": [
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "terminalTemplateDescription",
          "req": true,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "introduce_package",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/introducePackage",
              "parts": [
                "introducePackage"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "keep_alive": {
      "fields": [
        {
          "active": true,
          "name": "hwserialno",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "kaDateTimeFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "kaDateTimeTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "keepAliveData",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 3
        },
        {
          "active": true,
          "name": "pagination",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 5
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "terminalDateTimeFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "terminalDateTimeTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "terminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 9
        }
      ],
      "name": "keep_alive",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/keepalive",
              "parts": [
                "public",
                "keepalive"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "list_terminal": {
      "fields": [
        {
          "active": true,
          "name": "corporateUuid",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 0
        },
        {
          "active": true,
          "name": "filter",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 1
        },
        {
          "active": true,
          "name": "pagination",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 2
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "terminals",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 5
        }
      ],
      "name": "list_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/listTerminals",
              "parts": [
                "public",
                "listTerminals"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "mandator_clearing_export": {
      "fields": [
        {
          "active": true,
          "name": "clearingDateFrom",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "clearingDateTo",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "pagination",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 2
        },
        {
          "active": true,
          "name": "records",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        }
      ],
      "name": "mandator_clearing_export",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExport",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExport"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "mandator_clearing_export_download": {
      "fields": [
        {
          "active": true,
          "name": "clearingDateFrom",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "clearingDateTo",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "fileId",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "filenameTemplate",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "status",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        }
      ],
      "name": "mandator_clearing_export_download",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportDownload",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        },
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "active": true,
              "args": {
                "params": [
                  {
                    "active": true,
                    "kind": "param",
                    "name": "id",
                    "orig": "file_id",
                    "reqd": true,
                    "type": "`$STRING`",
                    "index$": 0
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "{id}"
              ],
              "rename": {
                "param": {
                  "fileId": "id"
                }
              },
              "select": {
                "exist": [
                  "id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "load"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "mandator_clearing_export_summary": {
      "fields": [
        {
          "active": true,
          "name": "clearingDateFrom",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "clearingDateTo",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "records",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 2
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        }
      ],
      "name": "mandator_clearing_export_summary",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportSummary",
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportSummary"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "merchant_portal_services_api": {
      "fields": [
        {
          "active": true,
          "name": "3DSecure",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "authorizationCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "cardBrand",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "clearingAmountFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "clearingAmountTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "clearingCurrency",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "clearingStatus",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "corporateUUID",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "orderByTransactionDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "pagination",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 9
        },
        {
          "active": true,
          "name": "receiptNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "referencedTransactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "retrievalReferenceNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "sourceId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 13
        },
        {
          "active": true,
          "name": "tecsengineResponseCodeFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 14
        },
        {
          "active": true,
          "name": "tecsengineResponseCodeTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "terminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 16
        },
        {
          "active": true,
          "name": "traceNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        },
        {
          "active": true,
          "name": "transactionAmountFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 18
        },
        {
          "active": true,
          "name": "transactionAmountTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 19
        },
        {
          "active": true,
          "name": "transactionDateFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 20
        },
        {
          "active": true,
          "name": "transactionDateTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 21
        },
        {
          "active": true,
          "name": "transactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 22
        },
        {
          "active": true,
          "name": "transactionType",
          "req": false,
          "type": "`$STRING`",
          "index$": 23
        },
        {
          "active": true,
          "name": "wallet",
          "req": false,
          "type": "`$STRING`",
          "index$": 24
        }
      ],
      "name": "merchant_portal_services_api",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/transactionHistoryCsv",
              "parts": [
                "public",
                "transactionHistoryCsv"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "move_tid": {
      "fields": [
        {
          "active": true,
          "name": "productorderuuids",
          "req": true,
          "type": "`$ARRAY`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "targetPackageorderuuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "targetProductorderuuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        }
      ],
      "name": "move_tid",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/moveTid",
              "parts": [
                "moveTid"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "payment_manual": {
      "fields": [
        {
          "active": true,
          "name": "acquirerName",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "amount",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "authorizationNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "cardNumber",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "cardType",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "cvc",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "dateTimeTx",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "expDate",
          "req": true,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "merchantId",
          "req": false,
          "type": "`$STRING`",
          "index$": 9
        },
        {
          "active": true,
          "name": "originalTransactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "password",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        },
        {
          "active": true,
          "name": "terminalId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 14
        },
        {
          "active": true,
          "name": "transactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "txtype",
          "req": true,
          "type": "`$STRING`",
          "index$": 16
        }
      ],
      "name": "payment_manual",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/paymentManual",
              "parts": [
                "public",
                "paymentManual"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "payment_sred": {
      "fields": [
        {
          "active": true,
          "name": "amount",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "device",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "devicePayload",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "expDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "mode",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "panMasked",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "password",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "serial",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "serviceCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 9
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "txtype",
          "req": true,
          "type": "`$STRING`",
          "index$": 11
        }
      ],
      "name": "payment_sred",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/paymentSred",
              "parts": [
                "public",
                "paymentSred"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "pre_auth_transaction_completion": {
      "fields": [
        {
          "active": true,
          "name": "acquirerId",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "acquirerName",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "actualBonusPoints",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "amount",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "req": false,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "authorizationCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "balanceAmount",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "cardBrand",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "cardNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "cardNumberReference",
          "req": true,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "clientId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 9
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "cvc",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "ecData",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "ecrData",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        },
        {
          "active": true,
          "name": "emvData",
          "req": false,
          "type": "`$STRING`",
          "index$": 14
        },
        {
          "active": true,
          "name": "exchangeFee",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 15
        },
        {
          "active": true,
          "name": "exchangeRate",
          "req": false,
          "type": "`$STRING`",
          "index$": 16
        },
        {
          "active": true,
          "name": "languageCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        },
        {
          "active": true,
          "name": "merchantAddress",
          "req": false,
          "type": "`$STRING`",
          "index$": 18
        },
        {
          "active": true,
          "name": "merchantName",
          "req": false,
          "type": "`$STRING`",
          "index$": 19
        },
        {
          "active": true,
          "name": "merchantNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 20
        },
        {
          "active": true,
          "name": "messageType",
          "req": false,
          "type": "`$STRING`",
          "index$": 21
        },
        {
          "active": true,
          "name": "originalTraceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 22
        },
        {
          "active": true,
          "name": "originalTransactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 23
        },
        {
          "active": true,
          "name": "password",
          "req": false,
          "type": "`$STRING`",
          "index$": 24
        },
        {
          "active": true,
          "name": "paymentReason",
          "req": false,
          "type": "`$STRING`",
          "index$": 25
        },
        {
          "active": true,
          "name": "receiptFooter",
          "req": false,
          "type": "`$STRING`",
          "index$": 26
        },
        {
          "active": true,
          "name": "receiptHeader",
          "req": false,
          "type": "`$STRING`",
          "index$": 27
        },
        {
          "active": true,
          "name": "receiptLayout",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 28
        },
        {
          "active": true,
          "name": "receiptNumber",
          "req": true,
          "type": "`$STRING`",
          "index$": 29
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 30
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 31
        },
        {
          "active": true,
          "name": "serialNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 32
        },
        {
          "active": true,
          "name": "svc",
          "req": false,
          "type": "`$STRING`",
          "index$": 33
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 34
        },
        {
          "active": true,
          "name": "terminalLocation",
          "req": false,
          "type": "`$STRING`",
          "index$": 35
        },
        {
          "active": true,
          "name": "traceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 36
        },
        {
          "active": true,
          "name": "transactionDate",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 37
        },
        {
          "active": true,
          "name": "transactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 38
        },
        {
          "active": true,
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`",
          "index$": 39
        },
        {
          "active": true,
          "name": "txType",
          "req": false,
          "type": "`$STRING`",
          "index$": 40
        },
        {
          "active": true,
          "name": "userData",
          "req": false,
          "type": "`$STRING`",
          "index$": 41
        }
      ],
      "name": "pre_auth_transaction_completion",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/paymentTransaction",
              "parts": [
                "public",
                "paymentTransaction"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            },
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/preAuthCompletionTransaction",
              "parts": [
                "public",
                "preAuthCompletionTransaction"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 1
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "reactivate_terminal": {
      "fields": [
        {
          "active": true,
          "name": "corporateUuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "packageOrderUuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "productOrderUuid",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "reactivationReason",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 6
        }
      ],
      "name": "reactivate_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/reactivateTerminal",
              "parts": [
                "reactivateTerminal"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "refund_transaction": {
      "fields": [
        {
          "active": true,
          "name": "acquirerId",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "acquirerName",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "actualBonusPoints",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "amount",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "req": false,
          "type": "`$INTEGER`",
          "index$": 3
        },
        {
          "active": true,
          "name": "authorizationCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "balanceAmount",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "cardBrand",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "cardNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "clientId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 8
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 9
        },
        {
          "active": true,
          "name": "cvc",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "ecData",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "ecrData",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "emvData",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        },
        {
          "active": true,
          "name": "exchangeFee",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 14
        },
        {
          "active": true,
          "name": "exchangeRate",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "languageCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 16
        },
        {
          "active": true,
          "name": "merchantAddress",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        },
        {
          "active": true,
          "name": "merchantName",
          "req": false,
          "type": "`$STRING`",
          "index$": 18
        },
        {
          "active": true,
          "name": "merchantNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 19
        },
        {
          "active": true,
          "name": "messageType",
          "req": false,
          "type": "`$STRING`",
          "index$": 20
        },
        {
          "active": true,
          "name": "originalTraceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 21
        },
        {
          "active": true,
          "name": "originalTransactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 22
        },
        {
          "active": true,
          "name": "password",
          "req": false,
          "type": "`$STRING`",
          "index$": 23
        },
        {
          "active": true,
          "name": "paymentReason",
          "req": false,
          "type": "`$STRING`",
          "index$": 24
        },
        {
          "active": true,
          "name": "receiptFooter",
          "req": false,
          "type": "`$STRING`",
          "index$": 25
        },
        {
          "active": true,
          "name": "receiptHeader",
          "req": false,
          "type": "`$STRING`",
          "index$": 26
        },
        {
          "active": true,
          "name": "receiptLayout",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 27
        },
        {
          "active": true,
          "name": "receiptNumber",
          "req": true,
          "type": "`$STRING`",
          "index$": 28
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 29
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 30
        },
        {
          "active": true,
          "name": "serialNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 31
        },
        {
          "active": true,
          "name": "svc",
          "req": false,
          "type": "`$STRING`",
          "index$": 32
        },
        {
          "active": true,
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`",
          "index$": 33
        },
        {
          "active": true,
          "name": "terminalLocation",
          "req": false,
          "type": "`$STRING`",
          "index$": 34
        },
        {
          "active": true,
          "name": "traceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 35
        },
        {
          "active": true,
          "name": "transactionDate",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 36
        },
        {
          "active": true,
          "name": "transactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 37
        },
        {
          "active": true,
          "name": "txType",
          "req": false,
          "type": "`$STRING`",
          "index$": 38
        },
        {
          "active": true,
          "name": "userData",
          "req": false,
          "type": "`$STRING`",
          "index$": 39
        }
      ],
      "name": "refund_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/refundTransaction",
              "parts": [
                "public",
                "refundTransaction"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "register_tecs_company": {
      "fields": [
        {
          "active": true,
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "packageOrderUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "partnerId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        },
        {
          "active": true,
          "name": "partnerName",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "productOrderUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 5
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "templateName",
          "req": true,
          "type": "`$STRING`",
          "index$": 7
        }
      ],
      "name": "register_tecs_company",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/registerTecsCompany",
              "parts": [
                "registerTecsCompany"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "register_terminal": {
      "fields": [
        {
          "active": true,
          "name": "additionalData",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 0
        },
        {
          "active": true,
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "packageOrderUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "productOrderUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "tecsWebSecretKey",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "templateName",
          "req": true,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "terminalCountryCode",
          "req": true,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "terminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 9
        },
        {
          "active": true,
          "name": "terminalIdAcq",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "terminalLanguageCode",
          "req": true,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "terminalLocation",
          "req": true,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "terminalSerialNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        },
        {
          "active": true,
          "name": "tokenIOAlias",
          "req": false,
          "type": "`$STRING`",
          "index$": 14
        },
        {
          "active": true,
          "name": "tokenIOIban",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "tokenIOMemberId",
          "req": false,
          "type": "`$STRING`",
          "index$": 16
        },
        {
          "active": true,
          "name": "webShopUrl",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        }
      ],
      "name": "register_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/registerTerminal",
              "parts": [
                "registerTerminal"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "report_data": {
      "fields": [
        {
          "active": true,
          "name": "cardBrandReportData",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 0
        },
        {
          "active": true,
          "name": "clearingDateFrom",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "clearingDateTo",
          "req": true,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "corporateId",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "currency",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 5
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "sumOverCreditTx",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 7
        },
        {
          "active": true,
          "name": "sumOverDebitTx",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 8
        },
        {
          "active": true,
          "name": "terminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 9
        }
      ],
      "name": "report_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/reportData",
              "parts": [
                "public",
                "digitalservices",
                "reportData"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "status_transaction": {
      "fields": [
        {
          "active": true,
          "name": "acquirerName",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "acquirerTerminalId",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "amount",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        },
        {
          "active": true,
          "name": "applicationCryptogram",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "authorizationCode",
          "req": false,
          "type": [
            "`$ONE`",
            [
              "`$STRING`",
              "`$NULL`"
            ]
          ],
          "index$": 4
        },
        {
          "active": true,
          "name": "authorizationDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "cardBrand",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "cardEntry",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "cardExpiration",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "cardNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 9
        },
        {
          "active": true,
          "name": "clearingAmount",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 10
        },
        {
          "active": true,
          "name": "clearingBatchId",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "clearingCurrency",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "clearingDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 13
        },
        {
          "active": true,
          "name": "clearingProcessedDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 14
        },
        {
          "active": true,
          "name": "clearingStatus",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "clientId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 16
        },
        {
          "active": true,
          "name": "currency",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        },
        {
          "active": true,
          "name": "cvm",
          "req": false,
          "type": "`$STRING`",
          "index$": 18
        },
        {
          "active": true,
          "name": "ecrData",
          "req": false,
          "type": "`$STRING`",
          "index$": 19
        },
        {
          "active": true,
          "name": "emvApplicationId",
          "req": false,
          "type": "`$STRING`",
          "index$": 20
        },
        {
          "active": true,
          "name": "emvApplicationLabel",
          "req": false,
          "type": "`$STRING`",
          "index$": 21
        },
        {
          "active": true,
          "name": "merchantName",
          "req": false,
          "type": "`$STRING`",
          "index$": 22
        },
        {
          "active": true,
          "name": "merchantNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 23
        },
        {
          "active": true,
          "name": "originalClientId",
          "req": false,
          "type": "`$STRING`",
          "index$": 24
        },
        {
          "active": true,
          "name": "originalTerminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 25
        },
        {
          "active": true,
          "name": "originalTransactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 26
        },
        {
          "active": true,
          "name": "paymentReason",
          "req": false,
          "type": "`$STRING`",
          "index$": 27
        },
        {
          "active": true,
          "name": "receiptNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 28
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 29
        },
        {
          "active": true,
          "name": "responseCodeFromAS",
          "req": false,
          "type": "`$STRING`",
          "index$": 30
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 31
        },
        {
          "active": true,
          "name": "retrievalReferenceNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 32
        },
        {
          "active": true,
          "name": "serviceCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 33
        },
        {
          "active": true,
          "name": "settlementStatus",
          "req": false,
          "type": "`$STRING`",
          "index$": 34
        },
        {
          "active": true,
          "name": "sourceId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 35
        },
        {
          "active": true,
          "name": "tecsengineResponseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 36
        },
        {
          "active": true,
          "name": "tecsengineResponseText",
          "req": false,
          "type": "`$STRING`",
          "index$": 37
        },
        {
          "active": true,
          "name": "terminalEndOfDayDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 38
        },
        {
          "active": true,
          "name": "terminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 39
        },
        {
          "active": true,
          "name": "terminalLocation",
          "req": false,
          "type": "`$STRING`",
          "index$": 40
        },
        {
          "active": true,
          "name": "tipAmount",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 41
        },
        {
          "active": true,
          "name": "traceNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 42
        },
        {
          "active": true,
          "name": "transactionClearingDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 43
        },
        {
          "active": true,
          "name": "transactionDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 44
        },
        {
          "active": true,
          "name": "transactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 45
        },
        {
          "active": true,
          "name": "transactionSeqNumber",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 46
        },
        {
          "active": true,
          "name": "transactionServerDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 47
        },
        {
          "active": true,
          "name": "transactionSource",
          "req": false,
          "type": "`$STRING`",
          "index$": 48
        },
        {
          "active": true,
          "name": "transactionType",
          "req": false,
          "type": "`$STRING`",
          "index$": 49
        }
      ],
      "name": "status_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/statusTransaction",
              "parts": [
                "public",
                "statusTransaction"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "store_terminal_parameter": {
      "fields": [
        {
          "active": true,
          "name": "acqTabNexo",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 0
        },
        {
          "active": true,
          "name": "configVersion",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "serialNumber",
          "req": true,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "tidSent",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        }
      ],
      "name": "store_terminal_parameter",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/storeTerminalParameters",
              "parts": [
                "storeTerminalParameters"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "terminal_id": {
      "fields": [
        {
          "active": true,
          "name": "deviceSerialNumber",
          "req": true,
          "type": "`$ARRAY`",
          "index$": 0
        },
        {
          "active": true,
          "name": "duplicateTerminalIds",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 2
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "terminals",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 4
        }
      ],
      "name": "terminal_id",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/getTerminalId",
              "parts": [
                "public",
                "getTerminalId"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transaction_history": {
      "fields": [
        {
          "active": true,
          "name": "3DSecure",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "authorizationCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "cardBrand",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "clearingAmountFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "clearingAmountTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "clearingCurrency",
          "req": false,
          "type": "`$STRING`",
          "index$": 5
        },
        {
          "active": true,
          "name": "clearingStatus",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "corporateUUID",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "orderByTransactionDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "pagination",
          "req": false,
          "type": "`$OBJECT`",
          "index$": 9
        },
        {
          "active": true,
          "name": "paymentTokenPublicId",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        },
        {
          "active": true,
          "name": "receiptNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 11
        },
        {
          "active": true,
          "name": "referencedTransactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 12
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 13
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 14
        },
        {
          "active": true,
          "name": "retrievalReferenceNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 15
        },
        {
          "active": true,
          "name": "sourceId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 16
        },
        {
          "active": true,
          "name": "tecsengineResponseCodeFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 17
        },
        {
          "active": true,
          "name": "tecsengineResponseCodeTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 18
        },
        {
          "active": true,
          "name": "terminalId",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 19
        },
        {
          "active": true,
          "name": "traceNumber",
          "req": false,
          "type": "`$STRING`",
          "index$": 20
        },
        {
          "active": true,
          "name": "transactionAmountFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 21
        },
        {
          "active": true,
          "name": "transactionAmountTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 22
        },
        {
          "active": true,
          "name": "transactionDateFrom",
          "req": false,
          "type": "`$STRING`",
          "index$": 23
        },
        {
          "active": true,
          "name": "transactionDateTo",
          "req": false,
          "type": "`$STRING`",
          "index$": 24
        },
        {
          "active": true,
          "name": "transactionHistories",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 25
        },
        {
          "active": true,
          "name": "transactionId",
          "req": false,
          "type": "`$STRING`",
          "index$": 26
        },
        {
          "active": true,
          "name": "transactionType",
          "req": false,
          "type": "`$STRING`",
          "index$": 27
        },
        {
          "active": true,
          "name": "wallet",
          "req": false,
          "type": "`$STRING`",
          "index$": 28
        }
      ],
      "name": "transaction_history",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/mcom/transactionHistory",
              "parts": [
                "public",
                "mcom",
                "transactionHistory"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            },
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/transactionHistory",
              "parts": [
                "public",
                "transactionHistory"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 1
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transactions_count": {
      "fields": [
        {
          "active": true,
          "name": "period",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "transactionDateFrom",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "transactionDateTo",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "transactionsCount",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 5
        }
      ],
      "name": "transactions_count",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/countAuthorisedTransactions",
              "parts": [
                "public",
                "countAuthorisedTransactions"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            },
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/countNotAuthorisedTransactions",
              "parts": [
                "public",
                "countNotAuthorisedTransactions"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 1
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transactions_count_card_brand": {
      "fields": [
        {
          "active": true,
          "name": "period",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "transactionDateFrom",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "transactionDateTo",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "transactionsCount",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 5
        }
      ],
      "name": "transactions_count_card_brand",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/countTransactionsByCardBrand",
              "parts": [
                "public",
                "countTransactionsByCardBrand"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transactions_turnover": {
      "fields": [
        {
          "active": true,
          "name": "period",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 1
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "transactionDateFrom",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "transactionDateTo",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "turnovers",
          "req": false,
          "type": "`$ARRAY`",
          "index$": 5
        }
      ],
      "name": "transactions_turnover",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/transactionTurnover",
              "parts": [
                "public",
                "transactionTurnover"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "update_merchant": {
      "fields": [
        {
          "active": true,
          "name": "city",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "country",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "merchantCategoryCode",
          "req": false,
          "type": "`$STRING`",
          "index$": 3
        },
        {
          "active": true,
          "name": "name",
          "req": false,
          "type": "`$STRING`",
          "index$": 4
        },
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 5
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 6
        },
        {
          "active": true,
          "name": "state",
          "req": false,
          "type": "`$STRING`",
          "index$": 7
        },
        {
          "active": true,
          "name": "street",
          "req": false,
          "type": "`$STRING`",
          "index$": 8
        },
        {
          "active": true,
          "name": "vuNummer",
          "req": false,
          "type": "`$STRING`",
          "index$": 9
        },
        {
          "active": true,
          "name": "zipcode",
          "req": false,
          "type": "`$STRING`",
          "index$": 10
        }
      ],
      "name": "update_merchant",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/updateMerchant",
              "parts": [
                "public",
                "updateMerchant"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "update_template_xml": {
      "fields": [
        {
          "active": true,
          "name": "responseCode",
          "req": false,
          "type": "`$INTEGER`",
          "index$": 0
        },
        {
          "active": true,
          "name": "responseMessage",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "templateName",
          "req": true,
          "type": "`$STRING`",
          "index$": 2
        },
        {
          "active": true,
          "name": "templateXml",
          "req": true,
          "type": "`$STRING`",
          "index$": 3
        }
      ],
      "name": "update_template_xml",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/public/updateTemplateXml",
              "parts": [
                "public",
                "updateTemplateXml"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "create"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "version": {
      "fields": [
        {
          "active": true,
          "name": "appName",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "buildDate",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "version",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "version",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "GET",
              "orig": "/public/version",
              "parts": [
                "public",
                "version"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "load"
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

