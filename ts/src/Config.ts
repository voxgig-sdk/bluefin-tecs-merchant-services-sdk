
import { BaseFeature } from './feature/base/BaseFeature'
import { AuditFeature } from './feature/audit/AuditFeature'
import { ClienttrackFeature } from './feature/clienttrack/ClienttrackFeature'
import { DebugFeature } from './feature/debug/DebugFeature'
import { IdempotencyFeature } from './feature/idempotency/IdempotencyFeature'
import { LogFeature } from './feature/log/LogFeature'
import { MetricsFeature } from './feature/metrics/MetricsFeature'
import { PagingFeature } from './feature/paging/PagingFeature'
import { RatelimitFeature } from './feature/ratelimit/RatelimitFeature'
import { RetryFeature } from './feature/retry/RetryFeature'
import { TelemetryFeature } from './feature/telemetry/TelemetryFeature'
import { TestFeature } from './feature/test/TestFeature'
import { TimeoutFeature } from './feature/timeout/TimeoutFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   audit: AuditFeature,
 clienttrack: ClienttrackFeature,
 debug: DebugFeature,
 idempotency: IdempotencyFeature,
 log: LogFeature,
 metrics: MetricsFeature,
 paging: PagingFeature,
 ratelimit: RatelimitFeature,
 retry: RetryFeature,
 telemetry: TelemetryFeature,
 test: TestFeature,
 timeout: TimeoutFeature,

}


const FEATURE_PLUGINS: Record<string, any[]> = {
  
}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    return fi
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  hasFeature(this: any, fn: string) {
    return null != FEATURE_CLASS[fn]
  }


  main = {
    name: 'BluefinTecsMerchantServices',
        slug: "bluefin-tecs-merchant-services",
    version: "0.1.1",
    target: "ts",

  }


  feature = {
     audit:     {
      "options": {
        "active": false,
        "actor": "anonymous",
        "max": 1000
      },
      "optspec": {
        "now": "`$FUNCTION`",
        "sink": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "none"
    },
 clienttrack:     {
      "options": {
        "active": false,
        "clientVersion": "0.0.1"
      },
      "optspec": {
        "clientName": "`$STRING`",
        "clientVersion": "`$STRING`",
        "headers": "`$MAP`",
        "idgen": "`$FUNCTION`",
        "sessionId": "`$STRING`"
      },
      "strict": false,
      "transport": "none"
    },
 debug:     {
      "options": {
        "active": false,
        "max": 100,
        "redact": [
          "authorization",
          "cookie",
          "set-cookie",
          "api-key",
          "apikey",
          "x-api-key",
          "idempotency-key"
        ]
      },
      "optspec": {
        "now": "`$FUNCTION`",
        "onEntry": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "none"
    },
 idempotency:     {
      "options": {
        "active": false,
        "header": "Idempotency-Key",
        "methods": [
          "POST",
          "PUT",
          "PATCH",
          "DELETE"
        ],
        "ops": [
          "create",
          "update",
          "remove"
        ]
      },
      "optspec": {
        "keygen": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "none"
    },
 log:     {
      "options": {
        "active": true
      },
      "optspec": {
        "level": "`$STRING`",
        "logger": "`$ANY`"
      },
      "strict": false,
      "transport": "none"
    },
 metrics:     {
      "options": {
        "active": false
      },
      "optspec": {
        "now": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "none"
    },
 paging:     {
      "options": {
        "active": false,
        "afterVar": "after",
        "cursorParam": "cursor",
        "firstVar": "first",
        "limitParam": "limit",
        "pageParam": "page",
        "startPage": 1
      },
      "optspec": {
        "limit": "`$NUMBER`",
        "ops": "`$LIST`"
      },
      "strict": false,
      "transport": "none"
    },
 ratelimit:     {
      "options": {
        "active": false,
        "burst": 5,
        "rate": 5
      },
      "optspec": {
        "now": "`$FUNCTION`",
        "sleep": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "wrap"
    },
 retry:     {
      "options": {
        "active": false,
        "factor": 2,
        "maxDelay": 2000,
        "minDelay": 50,
        "retries": 2,
        "statuses": [
          408,
          425,
          429,
          500,
          502,
          503,
          504
        ]
      },
      "optspec": {
        "jitter": "`$BOOLEAN`",
        "sleep": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "wrap"
    },
 telemetry:     {
      "options": {
        "active": false
      },
      "optspec": {
        "exporter": "`$FUNCTION`",
        "headers": "`$MAP`",
        "idgen": "`$FUNCTION`",
        "now": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "none"
    },
 test:     {
      "options": {
        "active": false
      },
      "optspec": {
        "entity": "`$MAP`",
        "net": "`$MAP`"
      },
      "strict": false,
      "transport": "base"
    },
 timeout:     {
      "options": {
        "active": false,
        "ms": 30000
      },
      "optspec": {
        "clearTimer": "`$FUNCTION`",
        "setTimer": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "wrap"
    },

  }


  options = {
    base: "https://test.tecs.at/merchantservices",

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
  
        count_authorised_transaction: {
        },
  
        count_not_authorised_transaction: {
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
          "name": "acquirerId",
          "title": "Acquirer Id",
          "type": "`$STRING`"
        },
        {
          "name": "acquirerName",
          "title": "Acquirer Name",
          "type": "`$STRING`"
        },
        {
          "name": "actualBonusPoints",
          "title": "Actual Bonus Points",
          "type": "`$STRING`"
        },
        {
          "name": "amount",
          "title": "Amount",
          "type": "`$INTEGER`",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "format": "int32"
        },
        {
          "name": "authorizationCode",
          "title": "Authorization Code",
          "type": "`$STRING`"
        },
        {
          "name": "balanceAmount",
          "title": "Balance Amount",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "title": "Card Brand",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "title": "Card Number",
          "type": "`$STRING`"
        },
        {
          "name": "clientId",
          "title": "Client Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "cvc",
          "title": "Cvc",
          "type": "`$STRING`"
        },
        {
          "name": "ecData",
          "title": "Ec Data",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "title": "Ecr Data",
          "type": "`$STRING`"
        },
        {
          "name": "emvData",
          "title": "Emv Data",
          "type": "`$STRING`"
        },
        {
          "name": "exchangeFee",
          "title": "Exchange Fee",
          "type": "`$INTEGER`",
          "format": "int64"
        },
        {
          "name": "exchangeRate",
          "title": "Exchange Rate",
          "type": "`$STRING`"
        },
        {
          "name": "languageCode",
          "title": "Language Code",
          "type": "`$STRING`"
        },
        {
          "name": "merchantAddress",
          "title": "Merchant Address",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "title": "Merchant Name",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "title": "Merchant Number",
          "type": "`$STRING`"
        },
        {
          "name": "messageType",
          "title": "Message Type",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "originalTraceNumber",
          "title": "Original Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "originalTransactionId",
          "title": "Original Transaction Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "password",
          "title": "Password",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "title": "Payment Reason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptFooter",
          "title": "Receipt Footer",
          "type": "`$STRING`"
        },
        {
          "name": "receiptHeader",
          "title": "Receipt Header",
          "type": "`$STRING`"
        },
        {
          "name": "receiptLayout",
          "title": "Receipt Layout",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "receiptNumber",
          "title": "Receipt Number",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "title": "Serial Number",
          "type": "`$STRING`"
        },
        {
          "name": "svc",
          "title": "Svc",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "terminalLocation",
          "title": "Terminal Location",
          "type": "`$STRING`"
        },
        {
          "name": "traceNumber",
          "title": "Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "transactionDate",
          "title": "Transaction Date",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "txType",
          "title": "Tx Type",
          "type": "`$STRING`"
        },
        {
          "name": "userData",
          "title": "User Data",
          "type": "`$STRING`"
        }
      ],
      "name": "cancel_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/cancelTransaction",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "cancelTransaction"
                }
              ],
              "parts": [
                "public",
                "cancelTransaction"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "check_card_black_listed": {
      "fields": [
        {
          "name": "cardNo",
          "title": "Card No",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        }
      ],
      "name": "check_card_black_listed",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/checkCardBlackListed",
              "segments": [
                {
                  "lit": "checkCardBlackListed"
                }
              ],
              "parts": [
                "checkCardBlackListed"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {
                "header": [
                  {
                    "name": "authorization",
                    "orig": "authorization",
                    "type": "`$STRING`",
                    "kind": "header",
                    "reqd": true
                  }
                ]
              },
              "select": {
                "exist": [
                  "authorization"
                ]
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "count_authorised_transaction": {
      "fields": [
        {
          "name": "period",
          "title": "Period",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "transactionDateFrom",
          "title": "Transaction Date From",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionDateTo",
          "title": "Transaction Date To",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionsCount",
          "title": "Transactions Count",
          "type": "`$ARRAY`"
        }
      ],
      "name": "count_authorised_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/countAuthorisedTransactions",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "countAuthorisedTransactions"
                }
              ],
              "parts": [
                "public",
                "countAuthorisedTransactions"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "count_not_authorised_transaction": {
      "fields": [
        {
          "name": "period",
          "title": "Period",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "transactionDateFrom",
          "title": "Transaction Date From",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionDateTo",
          "title": "Transaction Date To",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionsCount",
          "title": "Transactions Count",
          "type": "`$ARRAY`"
        }
      ],
      "name": "count_not_authorised_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/countNotAuthorisedTransactions",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "countNotAuthorisedTransactions"
                }
              ],
              "parts": [
                "public",
                "countNotAuthorisedTransactions"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "create_product": {
      "fields": [
        {
          "name": "acquirerId",
          "title": "Acquirer Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "title": "Template Name",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "templateType",
          "title": "Template Type",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "templateXml",
          "title": "Template Xml",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "terminalType",
          "title": "Terminal Type",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "create_product",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/createProduct",
              "segments": [
                {
                  "lit": "createProduct"
                }
              ],
              "parts": [
                "createProduct"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "deactivate_terminal": {
      "fields": [
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "deactivationReason",
          "title": "Deactivation Reason",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "packageOrderUuid",
          "title": "Package Order Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "title": "Product Order Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        }
      ],
      "name": "deactivate_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/deactivateTerminal",
              "segments": [
                {
                  "lit": "deactivateTerminal"
                }
              ],
              "parts": [
                "deactivateTerminal"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "digital_services_api": {
      "fields": [
        {
          "name": "clearingDateFrom",
          "title": "Clearing Date From",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"
        },
        {
          "name": "clearingDateTo",
          "title": "Clearing Date To",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "txCount",
          "title": "Tx Count",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "txIdEnd",
          "title": "Tx Id End",
          "type": "`$STRING`"
        },
        {
          "name": "txIdStart",
          "title": "Tx Id Start",
          "type": "`$STRING`"
        },
        {
          "name": "txSeqNoEnd",
          "title": "Tx Seq No End",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "txSeqNoStart",
          "title": "Tx Seq No Start",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "txTotal",
          "title": "Tx Total",
          "type": "`$INTEGER`",
          "format": "int32"
        }
      ],
      "name": "digital_services_api",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExportDownload"
                },
                {
                  "var": "file_id"
                }
              ],
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
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {
                "params": [
                  {
                    "name": "file_id",
                    "orig": "file_id",
                    "type": "`$STRING`",
                    "kind": "param",
                    "reqd": true
                  }
                ]
              },
              "select": {
                "exist": [
                  "file_id"
                ]
              }
            },
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportMetadata",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExportMetadata"
                }
              ],
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportMetadata"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        },
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "kind": "http",
              "method": "GET",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/status",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExportDownload"
                },
                {
                  "lit": "status"
                }
              ],
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "status"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": [
          [
            "$.main.kit.entity.mandator_clearing_export_download"
          ]
        ]
      }
    },
    "ec_data_ecom": {
      "fields": [
        {
          "name": "ecomData",
          "title": "Ecom Data",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "ec_data_ecom",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEcData",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "getEcData"
                }
              ],
              "parts": [
                "public",
                "getEcData"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "ecom_parameter": {
      "fields": [
        {
          "name": "ecomPass",
          "title": "Ecom Pass",
          "type": "`$STRING`"
        },
        {
          "name": "ecomSkey",
          "title": "Ecom Skey",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        }
      ],
      "name": "ecom_parameter",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEcomParameters",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "getEcomParameters"
                }
              ],
              "parts": [
                "public",
                "getEcomParameters"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "ecr_data": {
      "fields": [
        {
          "name": "ecrData",
          "title": "Ecr Data",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "ecr_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEcrData",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "getEcrData"
                }
              ],
              "parts": [
                "public",
                "getEcrData"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "emv_data": {
      "fields": [
        {
          "name": "emvData",
          "title": "Emv Data",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "emv_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/getEmvData",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "getEmvData"
                }
              ],
              "parts": [
                "public",
                "getEmvData"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "enable_acquiring": {
      "fields": [
        {
          "name": "accountNo",
          "title": "Account No",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "additionalData",
          "title": "Additional Data",
          "type": "`$OBJECT`"
        },
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "merchantCategoryCode",
          "title": "Merchant Category Code",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "packageOrderUuid",
          "title": "Package Order Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "productOrderUuid",
          "title": "Product Order Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "sortingCode",
          "title": "Sorting Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "templateName",
          "title": "Template Name",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "terminalIdAcq",
          "title": "Terminal Id Acq",
          "type": "`$STRING`"
        },
        {
          "name": "terminalIds",
          "title": "Terminal Ids",
          "type": "`$ARRAY`"
        },
        {
          "name": "vuNummer",
          "title": "Vu Nummer",
          "type": "`$STRING`"
        }
      ],
      "name": "enable_acquiring",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/enableAcquiring",
              "segments": [
                {
                  "lit": "enableAcquiring"
                }
              ],
              "parts": [
                "enableAcquiring"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "get_merchant_contract_number": {
      "fields": [
        {
          "name": "merchantContractNumber",
          "title": "Merchant Contract Number",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        }
      ],
      "name": "get_merchant_contract_number",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/getMerchantContractNumber",
              "segments": [
                {
                  "lit": "getMerchantContractNumber"
                }
              ],
              "parts": [
                "getMerchantContractNumber"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "get_template_xml": {
      "fields": [
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "title": "Template Name",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "get_template_xml",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/getTemplateXml",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "getTemplateXml"
                }
              ],
              "parts": [
                "public",
                "getTemplateXml"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "introduce_mandator": {
      "fields": [
        {
          "name": "mandatorName",
          "title": "Mandator Name",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        }
      ],
      "name": "introduce_mandator",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/introduceMandator",
              "segments": [
                {
                  "lit": "introduceMandator"
                }
              ],
              "parts": [
                "introduceMandator"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "introduce_package": {
      "fields": [
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalTemplateDescription",
          "title": "Terminal Template Description",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "introduce_package",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/introducePackage",
              "segments": [
                {
                  "lit": "introducePackage"
                }
              ],
              "parts": [
                "introducePackage"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "keep_alive": {
      "fields": [
        {
          "name": "hwserialno",
          "title": "Hwserialno",
          "type": "`$STRING`"
        },
        {
          "name": "kaDateTimeFrom",
          "title": "Ka Date Time From",
          "type": "`$STRING`"
        },
        {
          "name": "kaDateTimeTo",
          "title": "Ka Date Time To",
          "type": "`$STRING`"
        },
        {
          "name": "keepAliveData",
          "title": "Keep Alive Data",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "title": "Pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalDateTimeFrom",
          "title": "Terminal Date Time From",
          "type": "`$STRING`"
        },
        {
          "name": "terminalDateTimeTo",
          "title": "Terminal Date Time To",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        }
      ],
      "name": "keep_alive",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/keepalive",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "keepalive"
                }
              ],
              "parts": [
                "public",
                "keepalive"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "list_terminal": {
      "fields": [
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$ARRAY`"
        },
        {
          "name": "filter",
          "title": "Filter",
          "type": "`$OBJECT`"
        },
        {
          "name": "pagination",
          "title": "Pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminals",
          "title": "Terminals",
          "type": "`$ARRAY`"
        }
      ],
      "name": "list_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/listTerminals",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "listTerminals"
                }
              ],
              "parts": [
                "public",
                "listTerminals"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "mandator_clearing_export": {
      "fields": [
        {
          "name": "clearingDateFrom",
          "title": "Clearing Date From",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ"
        },
        {
          "name": "clearingDateTo",
          "title": "Clearing Date To",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ"
        },
        {
          "name": "pagination",
          "title": "Pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "records",
          "title": "Records",
          "type": "`$ARRAY`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        }
      ],
      "name": "mandator_clearing_export",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExport",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExport"
                }
              ],
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExport"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "mandator_clearing_export_download": {
      "fields": [
        {
          "name": "clearingDateFrom",
          "title": "Clearing Date From",
          "type": "`$STRING`",
          "req": true,
          "short": "Start date for clearing export (inclusive)",
          "format": "date-time"
        },
        {
          "name": "clearingDateTo",
          "title": "Clearing Date To",
          "type": "`$STRING`",
          "req": true,
          "short": "End date for clearing export (inclusive)",
          "format": "date-time"
        },
        {
          "name": "fileId",
          "title": "File Id",
          "type": "`$STRING`",
          "short": "Unique file identifier for tracking and downloading"
        },
        {
          "name": "filenameTemplate",
          "title": "Filename Template",
          "type": "`$STRING`",
          "short": "Optional filename template for the export file"
        },
        {
          "name": "id",
          "title": "Id",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "status",
          "title": "Status",
          "type": "`$STRING`",
          "short": "Processing status of the export request"
        }
      ],
      "id": {
        "field": "id",
        "name": "id"
      },
      "name": "mandator_clearing_export_download",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportDownload",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExportDownload"
                }
              ],
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        },
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "kind": "http",
              "method": "GET",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExportDownload"
                },
                {
                  "var": "id"
                }
              ],
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
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {
                "params": [
                  {
                    "name": "id",
                    "orig": "file_id",
                    "type": "`$STRING`",
                    "kind": "param",
                    "reqd": true
                  }
                ]
              },
              "select": {
                "exist": [
                  "id"
                ]
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "mandator_clearing_export_summary": {
      "fields": [
        {
          "name": "clearingDateFrom",
          "title": "Clearing Date From",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"
        },
        {
          "name": "clearingDateTo",
          "title": "Clearing Date To",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"
        },
        {
          "name": "records",
          "title": "Records",
          "type": "`$ARRAY`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        }
      ],
      "name": "mandator_clearing_export_summary",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportSummary",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "mandatorClearingExportSummary"
                }
              ],
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportSummary"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "merchant_portal_services_api": {
      "fields": [
        {
          "name": "3DSecure",
          "title": "3 D Secure",
          "type": "`$STRING`"
        },
        {
          "name": "authorizationCode",
          "title": "Authorization Code",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "title": "Card Brand",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountFrom",
          "title": "Clearing Amount From",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountTo",
          "title": "Clearing Amount To",
          "type": "`$STRING`"
        },
        {
          "name": "clearingCurrency",
          "title": "Clearing Currency",
          "type": "`$STRING`"
        },
        {
          "name": "clearingStatus",
          "title": "Clearing Status",
          "type": "`$STRING`"
        },
        {
          "name": "corporateUUID",
          "title": "Corporate Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "orderByTransactionDate",
          "title": "Order By Transaction Date",
          "type": "`$STRING`"
        },
        {
          "name": "pagination",
          "title": "Pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "receiptNumber",
          "title": "Receipt Number",
          "type": "`$STRING`"
        },
        {
          "name": "referencedTransactionId",
          "title": "Referenced Transaction Id",
          "type": "`$STRING`"
        },
        {
          "name": "retrievalReferenceNumber",
          "title": "Retrieval Reference Number",
          "type": "`$STRING`"
        },
        {
          "name": "sourceId",
          "title": "Source Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "tecsengineResponseCodeFrom",
          "title": "Tecsengine Response Code From",
          "type": "`$STRING`"
        },
        {
          "name": "tecsengineResponseCodeTo",
          "title": "Tecsengine Response Code To",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "traceNumber",
          "title": "Trace Number",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountFrom",
          "title": "Transaction Amount From",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountTo",
          "title": "Transaction Amount To",
          "type": "`$STRING`"
        },
        {
          "name": "transactionDateFrom",
          "title": "Transaction Date From",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionDateTo",
          "title": "Transaction Date To",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`"
        },
        {
          "name": "wallet",
          "title": "Wallet",
          "type": "`$STRING`",
          "short": "Filter by wallet type."
        }
      ],
      "name": "merchant_portal_services_api",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/transactionHistoryCsv",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "transactionHistoryCsv"
                }
              ],
              "parts": [
                "public",
                "transactionHistoryCsv"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "move_tid": {
      "fields": [
        {
          "name": "productorderuuids",
          "title": "Productorderuuids",
          "type": "`$ARRAY`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "targetPackageorderuuid",
          "title": "Target Packageorderuuid",
          "type": "`$STRING`"
        },
        {
          "name": "targetProductorderuuid",
          "title": "Target Productorderuuid",
          "type": "`$STRING`"
        }
      ],
      "name": "move_tid",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/moveTid",
              "segments": [
                {
                  "lit": "moveTid"
                }
              ],
              "parts": [
                "moveTid"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "payment_manual": {
      "fields": [
        {
          "name": "acquirerName",
          "title": "Acquirer Name",
          "type": "`$STRING`",
          "short": "Acquirer name parsed from KKG field"
        },
        {
          "name": "amount",
          "title": "Amount",
          "type": "`$INTEGER`",
          "req": true,
          "short": "Transaction amount in minor units (cents)",
          "format": "int32"
        },
        {
          "name": "authorizationNumber",
          "title": "Authorization Number",
          "type": "`$STRING`",
          "short": "Authorization number from the gateway"
        },
        {
          "name": "cardNumber",
          "title": "Card Number",
          "type": "`$STRING`",
          "req": true,
          "short": "Card number - 12 to 19 digits, must pass Luhn validation"
        },
        {
          "name": "cardType",
          "title": "Card Type",
          "type": "`$STRING`",
          "short": "Card type parsed from KKG field"
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true,
          "short": "Currency code - 3 uppercase letters (ISO 4217)"
        },
        {
          "name": "cvc",
          "title": "Cvc",
          "type": "`$STRING`",
          "short": "Card verification code - 3-4 digits (optional)"
        },
        {
          "name": "dateTimeTx",
          "title": "Date Time Tx",
          "type": "`$STRING`",
          "short": "Date and time of the transaction"
        },
        {
          "name": "expDate",
          "title": "Exp Date",
          "type": "`$STRING`",
          "req": true,
          "short": "Card expiry date in MMYY format"
        },
        {
          "name": "merchantId",
          "title": "Merchant Id",
          "type": "`$STRING`",
          "short": "Merchant ID (VU-NUMMER)"
        },
        {
          "name": "originalTransactionId",
          "title": "Original Transaction Id",
          "type": "`$STRING`",
          "short": "Original transaction ID from gateway"
        },
        {
          "name": "password",
          "title": "Password",
          "type": "`$STRING`",
          "short": "Terminal password sent as Kennwort in TECS XML (optional)"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$STRING`",
          "short": "Response code - 00 for success, otherwise error code"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`",
          "short": "Response message - 'Approved' for success, error description otherwise"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "short": "Terminal ID used for the transaction"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "short": "Transaction ID generated by the backend"
        },
        {
          "name": "txtype",
          "title": "Txtype",
          "type": "`$STRING`",
          "req": true,
          "short": "Transaction type"
        }
      ],
      "name": "payment_manual",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/paymentManual",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "paymentManual"
                }
              ],
              "parts": [
                "public",
                "paymentManual"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "payment_sred": {
      "fields": [
        {
          "name": "amount",
          "title": "Amount",
          "type": "`$INTEGER`",
          "req": true,
          "short": "Transaction amount in minor units (cents)",
          "format": "int32"
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true,
          "short": "Currency code - 3 uppercase letters (ISO 4217)"
        },
        {
          "name": "device",
          "title": "Device",
          "type": "`$STRING`",
          "short": "Device type that provided the SRED payload"
        },
        {
          "name": "devicePayload",
          "title": "Device Payload",
          "type": "`$STRING`",
          "req": true,
          "short": "SRED encrypted device payload from the device (minimum 32 characters)"
        },
        {
          "name": "expDate",
          "title": "Exp Date",
          "type": "`$STRING`",
          "short": "Card expiry date in MMYY format"
        },
        {
          "name": "mode",
          "title": "Mode",
          "type": "`$STRING`",
          "short": "Decryption mode"
        },
        {
          "name": "panMasked",
          "title": "Pan Masked",
          "type": "`$STRING`",
          "short": "Masked PAN (first 6 and last 4 digits)"
        },
        {
          "name": "password",
          "title": "Password",
          "type": "`$STRING`",
          "short": "Terminal password sent as Kennwort in TECS XML (optional)"
        },
        {
          "name": "serial",
          "title": "Serial",
          "type": "`$STRING`",
          "short": "Device serial number"
        },
        {
          "name": "serviceCode",
          "title": "Service Code",
          "type": "`$STRING`",
          "short": "Service code from the card"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$STRING`",
          "req": true,
          "short": "Terminal ID - 8 digits"
        },
        {
          "name": "txtype",
          "title": "Txtype",
          "type": "`$STRING`",
          "req": true,
          "short": "Transaction type"
        }
      ],
      "name": "payment_sred",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/paymentSred",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "paymentSred"
                }
              ],
              "parts": [
                "public",
                "paymentSred"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body.sred`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "pre_auth_transaction_completion": {
      "fields": [
        {
          "name": "acquirerId",
          "title": "Acquirer Id",
          "type": "`$STRING`"
        },
        {
          "name": "acquirerName",
          "title": "Acquirer Name",
          "type": "`$STRING`"
        },
        {
          "name": "actualBonusPoints",
          "title": "Actual Bonus Points",
          "type": "`$STRING`"
        },
        {
          "name": "amount",
          "title": "Amount",
          "type": "`$INTEGER`",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "format": "int32"
        },
        {
          "name": "authorizationCode",
          "title": "Authorization Code",
          "type": "`$STRING`"
        },
        {
          "name": "balanceAmount",
          "title": "Balance Amount",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "title": "Card Brand",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "title": "Card Number",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumberReference",
          "title": "Card Number Reference",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "clientId",
          "title": "Client Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "cvc",
          "title": "Cvc",
          "type": "`$STRING`"
        },
        {
          "name": "ecData",
          "title": "Ec Data",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "title": "Ecr Data",
          "type": "`$STRING`"
        },
        {
          "name": "emvData",
          "title": "Emv Data",
          "type": "`$STRING`"
        },
        {
          "name": "exchangeFee",
          "title": "Exchange Fee",
          "type": "`$INTEGER`",
          "format": "int64"
        },
        {
          "name": "exchangeRate",
          "title": "Exchange Rate",
          "type": "`$STRING`"
        },
        {
          "name": "languageCode",
          "title": "Language Code",
          "type": "`$STRING`"
        },
        {
          "name": "merchantAddress",
          "title": "Merchant Address",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "title": "Merchant Name",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "title": "Merchant Number",
          "type": "`$STRING`"
        },
        {
          "name": "messageType",
          "title": "Message Type",
          "type": "`$STRING`"
        },
        {
          "name": "originalTraceNumber",
          "title": "Original Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "originalTransactionId",
          "title": "Original Transaction Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "password",
          "title": "Password",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "title": "Payment Reason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptFooter",
          "title": "Receipt Footer",
          "type": "`$STRING`"
        },
        {
          "name": "receiptHeader",
          "title": "Receipt Header",
          "type": "`$STRING`"
        },
        {
          "name": "receiptLayout",
          "title": "Receipt Layout",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "receiptNumber",
          "title": "Receipt Number",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "title": "Serial Number",
          "type": "`$STRING`"
        },
        {
          "name": "svc",
          "title": "Svc",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "terminalLocation",
          "title": "Terminal Location",
          "type": "`$STRING`"
        },
        {
          "name": "traceNumber",
          "title": "Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "transactionDate",
          "title": "Transaction Date",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "txType",
          "title": "Tx Type",
          "type": "`$STRING`"
        },
        {
          "name": "userData",
          "title": "User Data",
          "type": "`$STRING`"
        }
      ],
      "name": "pre_auth_transaction_completion",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/paymentTransaction",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "paymentTransaction"
                }
              ],
              "parts": [
                "public",
                "paymentTransaction"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            },
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/preAuthCompletionTransaction",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "preAuthCompletionTransaction"
                }
              ],
              "parts": [
                "public",
                "preAuthCompletionTransaction"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "reactivate_terminal": {
      "fields": [
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "packageOrderUuid",
          "title": "Package Order Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "title": "Product Order Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "reactivationReason",
          "title": "Reactivation Reason",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        }
      ],
      "name": "reactivate_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/reactivateTerminal",
              "segments": [
                {
                  "lit": "reactivateTerminal"
                }
              ],
              "parts": [
                "reactivateTerminal"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "refund_transaction": {
      "fields": [
        {
          "name": "acquirerId",
          "title": "Acquirer Id",
          "type": "`$STRING`"
        },
        {
          "name": "acquirerName",
          "title": "Acquirer Name",
          "type": "`$STRING`"
        },
        {
          "name": "actualBonusPoints",
          "title": "Actual Bonus Points",
          "type": "`$STRING`"
        },
        {
          "name": "amount",
          "title": "Amount",
          "type": "`$INTEGER`",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "format": "int32"
        },
        {
          "name": "authorizationCode",
          "title": "Authorization Code",
          "type": "`$STRING`"
        },
        {
          "name": "balanceAmount",
          "title": "Balance Amount",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "title": "Card Brand",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "title": "Card Number",
          "type": "`$STRING`"
        },
        {
          "name": "clientId",
          "title": "Client Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "cvc",
          "title": "Cvc",
          "type": "`$STRING`"
        },
        {
          "name": "ecData",
          "title": "Ec Data",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "title": "Ecr Data",
          "type": "`$STRING`"
        },
        {
          "name": "emvData",
          "title": "Emv Data",
          "type": "`$STRING`"
        },
        {
          "name": "exchangeFee",
          "title": "Exchange Fee",
          "type": "`$INTEGER`",
          "format": "int64"
        },
        {
          "name": "exchangeRate",
          "title": "Exchange Rate",
          "type": "`$STRING`"
        },
        {
          "name": "languageCode",
          "title": "Language Code",
          "type": "`$STRING`"
        },
        {
          "name": "merchantAddress",
          "title": "Merchant Address",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "title": "Merchant Name",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "title": "Merchant Number",
          "type": "`$STRING`"
        },
        {
          "name": "messageType",
          "title": "Message Type",
          "type": "`$STRING`"
        },
        {
          "name": "originalTraceNumber",
          "title": "Original Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "originalTransactionId",
          "title": "Original Transaction Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "password",
          "title": "Password",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "title": "Payment Reason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptFooter",
          "title": "Receipt Footer",
          "type": "`$STRING`"
        },
        {
          "name": "receiptHeader",
          "title": "Receipt Header",
          "type": "`$STRING`"
        },
        {
          "name": "receiptLayout",
          "title": "Receipt Layout",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "receiptNumber",
          "title": "Receipt Number",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "title": "Serial Number",
          "type": "`$STRING`"
        },
        {
          "name": "svc",
          "title": "Svc",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "req": true,
          "format": "int32"
        },
        {
          "name": "terminalLocation",
          "title": "Terminal Location",
          "type": "`$STRING`"
        },
        {
          "name": "traceNumber",
          "title": "Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "transactionDate",
          "title": "Transaction Date",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          }
        },
        {
          "name": "txType",
          "title": "Tx Type",
          "type": "`$STRING`"
        },
        {
          "name": "userData",
          "title": "User Data",
          "type": "`$STRING`"
        }
      ],
      "name": "refund_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/refundTransaction",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "refundTransaction"
                }
              ],
              "parts": [
                "public",
                "refundTransaction"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "register_tecs_company": {
      "fields": [
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "packageOrderUuid",
          "title": "Package Order Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "partnerId",
          "title": "Partner Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "partnerName",
          "title": "Partner Name",
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "title": "Product Order Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "title": "Template Name",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "register_tecs_company",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/registerTecsCompany",
              "segments": [
                {
                  "lit": "registerTecsCompany"
                }
              ],
              "parts": [
                "registerTecsCompany"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "register_terminal": {
      "fields": [
        {
          "name": "additionalData",
          "title": "Additional Data",
          "type": "`$OBJECT`"
        },
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "packageOrderUuid",
          "title": "Package Order Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "productOrderUuid",
          "title": "Product Order Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "tecsWebSecretKey",
          "title": "Tecs Web Secret Key",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "title": "Template Name",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "terminalCountryCode",
          "title": "Terminal Country Code",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "terminalIdAcq",
          "title": "Terminal Id Acq",
          "type": "`$STRING`"
        },
        {
          "name": "terminalLanguageCode",
          "title": "Terminal Language Code",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "terminalLocation",
          "title": "Terminal Location",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "terminalSerialNumber",
          "title": "Terminal Serial Number",
          "type": "`$STRING`"
        },
        {
          "name": "tokenIOAlias",
          "title": "Token Io Alias",
          "type": "`$STRING`"
        },
        {
          "name": "tokenIOIban",
          "title": "Token Io Iban",
          "type": "`$STRING`"
        },
        {
          "name": "tokenIOMemberId",
          "title": "Token Io Member Id",
          "type": "`$STRING`"
        },
        {
          "name": "webShopUrl",
          "title": "Web Shop Url",
          "type": "`$STRING`"
        }
      ],
      "name": "register_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/registerTerminal",
              "segments": [
                {
                  "lit": "registerTerminal"
                }
              ],
              "parts": [
                "registerTerminal"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "report_data": {
      "fields": [
        {
          "name": "cardBrandReportData",
          "title": "Card Brand Report Data",
          "type": "`$ARRAY`"
        },
        {
          "name": "clearingDateFrom",
          "title": "Clearing Date From",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss"
        },
        {
          "name": "clearingDateTo",
          "title": "Clearing Date To",
          "type": "`$STRING`",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss"
        },
        {
          "name": "corporateId",
          "title": "Corporate Id",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "sumOverCreditTx",
          "title": "Sum Over Credit Tx",
          "type": "`$OBJECT`"
        },
        {
          "name": "sumOverDebitTx",
          "title": "Sum Over Debit Tx",
          "type": "`$OBJECT`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        }
      ],
      "name": "report_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/reportData",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "digitalservices"
                },
                {
                  "lit": "reportData"
                }
              ],
              "parts": [
                "public",
                "digitalservices",
                "reportData"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "status_transaction": {
      "fields": [
        {
          "name": "acquirerName",
          "title": "Acquirer Name",
          "type": "`$STRING`"
        },
        {
          "name": "acquirerTerminalId",
          "title": "Acquirer Terminal Id",
          "type": "`$STRING`"
        },
        {
          "name": "amount",
          "title": "Amount",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "applicationCryptogram",
          "title": "Application Cryptogram",
          "type": "`$STRING`"
        },
        {
          "name": "authorizationCode",
          "title": "Authorization Code",
          "type": [
            "`$ONE`",
            [
              "`$STRING`",
              "`$NULL`"
            ]
          ],
          "short": "Authorization code returned by the acquirer; null when not available"
        },
        {
          "name": "authorizationDate",
          "title": "Authorization Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "cardBrand",
          "title": "Card Brand",
          "type": "`$STRING`"
        },
        {
          "name": "cardEntry",
          "title": "Card Entry",
          "type": "`$STRING`"
        },
        {
          "name": "cardExpiration",
          "title": "Card Expiration",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "title": "Card Number",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmount",
          "title": "Clearing Amount",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "clearingBatchId",
          "title": "Clearing Batch Id",
          "type": "`$STRING`"
        },
        {
          "name": "clearingCurrency",
          "title": "Clearing Currency",
          "type": "`$STRING`"
        },
        {
          "name": "clearingDate",
          "title": "Clearing Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "clearingProcessedDate",
          "title": "Clearing Processed Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "clearingStatus",
          "title": "Clearing Status",
          "type": "`$STRING`"
        },
        {
          "name": "clientId",
          "title": "Client Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "currency",
          "title": "Currency",
          "type": "`$STRING`"
        },
        {
          "name": "cvm",
          "title": "Cvm",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "title": "Ecr Data",
          "type": "`$STRING`"
        },
        {
          "name": "emvApplicationId",
          "title": "Emv Application Id",
          "type": "`$STRING`"
        },
        {
          "name": "emvApplicationLabel",
          "title": "Emv Application Label",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "title": "Merchant Name",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "title": "Merchant Number",
          "type": "`$STRING`"
        },
        {
          "name": "originalClientId",
          "title": "Original Client Id",
          "type": "`$STRING`"
        },
        {
          "name": "originalTerminalId",
          "title": "Original Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "originalTransactionId",
          "title": "Original Transaction Id",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "title": "Payment Reason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptNumber",
          "title": "Receipt Number",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseCodeFromAS",
          "title": "Response Code From As",
          "type": "`$STRING`"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "retrievalReferenceNumber",
          "title": "Retrieval Reference Number",
          "type": "`$STRING`"
        },
        {
          "name": "serviceCode",
          "title": "Service Code",
          "type": "`$STRING`"
        },
        {
          "name": "settlementStatus",
          "title": "Settlement Status",
          "type": "`$STRING`"
        },
        {
          "name": "sourceId",
          "title": "Source Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "tecsengineResponseCode",
          "title": "Tecsengine Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "tecsengineResponseText",
          "title": "Tecsengine Response Text",
          "type": "`$STRING`"
        },
        {
          "name": "terminalEndOfDayDate",
          "title": "Terminal End Of Day Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "terminalLocation",
          "title": "Terminal Location",
          "type": "`$STRING`"
        },
        {
          "name": "tipAmount",
          "title": "Tip Amount",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "traceNumber",
          "title": "Trace Number",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "transactionClearingDate",
          "title": "Transaction Clearing Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionDate",
          "title": "Transaction Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`"
        },
        {
          "name": "transactionSeqNumber",
          "title": "Transaction Seq Number",
          "type": "`$INTEGER`",
          "format": "int64"
        },
        {
          "name": "transactionServerDate",
          "title": "Transaction Server Date",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionSource",
          "title": "Transaction Source",
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`"
        }
      ],
      "name": "status_transaction",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/statusTransaction",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "statusTransaction"
                }
              ],
              "parts": [
                "public",
                "statusTransaction"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "store_terminal_parameter": {
      "fields": [
        {
          "name": "acqTabNexo",
          "title": "Acq Tab Nexo",
          "type": "`$OBJECT`"
        },
        {
          "name": "configVersion",
          "title": "Config Version",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "title": "Serial Number",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "tidSent",
          "title": "Tid Sent",
          "type": "`$STRING`"
        }
      ],
      "name": "store_terminal_parameter",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/storeTerminalParameters",
              "segments": [
                {
                  "lit": "storeTerminalParameters"
                }
              ],
              "parts": [
                "storeTerminalParameters"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "terminal_id": {
      "fields": [
        {
          "name": "deviceSerialNumber",
          "title": "Device Serial Number",
          "type": "`$ARRAY`",
          "req": true
        },
        {
          "name": "duplicateTerminalIds",
          "title": "Duplicate Terminal Ids",
          "type": "`$ARRAY`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "terminals",
          "title": "Terminals",
          "type": "`$ARRAY`"
        }
      ],
      "name": "terminal_id",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/getTerminalId",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "getTerminalId"
                }
              ],
              "parts": [
                "public",
                "getTerminalId"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transaction_history": {
      "fields": [
        {
          "name": "3DSecure",
          "title": "3 D Secure",
          "type": "`$STRING`"
        },
        {
          "name": "authorizationCode",
          "title": "Authorization Code",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "title": "Card Brand",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountFrom",
          "title": "Clearing Amount From",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountTo",
          "title": "Clearing Amount To",
          "type": "`$STRING`"
        },
        {
          "name": "clearingCurrency",
          "title": "Clearing Currency",
          "type": "`$STRING`"
        },
        {
          "name": "clearingStatus",
          "title": "Clearing Status",
          "type": "`$STRING`"
        },
        {
          "name": "corporateUUID",
          "title": "Corporate Uuid",
          "type": "`$STRING`"
        },
        {
          "name": "orderByTransactionDate",
          "title": "Order By Transaction Date",
          "type": "`$STRING`"
        },
        {
          "name": "pagination",
          "title": "Pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "paymentTokenPublicId",
          "title": "Payment Token Public Id",
          "type": "`$STRING`"
        },
        {
          "name": "receiptNumber",
          "title": "Receipt Number",
          "type": "`$STRING`"
        },
        {
          "name": "referencedTransactionId",
          "title": "Referenced Transaction Id",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "retrievalReferenceNumber",
          "title": "Retrieval Reference Number",
          "type": "`$STRING`"
        },
        {
          "name": "sourceId",
          "title": "Source Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "tecsengineResponseCodeFrom",
          "title": "Tecsengine Response Code From",
          "type": "`$STRING`"
        },
        {
          "name": "tecsengineResponseCodeTo",
          "title": "Tecsengine Response Code To",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "title": "Terminal Id",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "traceNumber",
          "title": "Trace Number",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountFrom",
          "title": "Transaction Amount From",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountTo",
          "title": "Transaction Amount To",
          "type": "`$STRING`"
        },
        {
          "name": "transactionDateFrom",
          "title": "Transaction Date From",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionDateTo",
          "title": "Transaction Date To",
          "type": "`$STRING`",
          "format": "date-time"
        },
        {
          "name": "transactionHistories",
          "title": "Transaction Histories",
          "type": "`$ARRAY`"
        },
        {
          "name": "transactionId",
          "title": "Transaction Id",
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "title": "Transaction Type",
          "type": "`$STRING`"
        },
        {
          "name": "wallet",
          "title": "Wallet",
          "type": "`$STRING`",
          "short": "Filter by wallet type."
        }
      ],
      "name": "transaction_history",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/mcom/transactionHistory",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "mcom"
                },
                {
                  "lit": "transactionHistory"
                }
              ],
              "parts": [
                "public",
                "mcom",
                "transactionHistory"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            },
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/transactionHistory",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "transactionHistory"
                }
              ],
              "parts": [
                "public",
                "transactionHistory"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transactions_count_card_brand": {
      "fields": [
        {
          "name": "period",
          "title": "Period",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "transactionDateFrom",
          "title": "Transaction Date From",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionDateTo",
          "title": "Transaction Date To",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionsCount",
          "title": "Transactions Count",
          "type": "`$ARRAY`"
        }
      ],
      "name": "transactions_count_card_brand",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/countTransactionsByCardBrand",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "countTransactionsByCardBrand"
                }
              ],
              "parts": [
                "public",
                "countTransactionsByCardBrand"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transactions_turnover": {
      "fields": [
        {
          "name": "period",
          "title": "Period",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "transactionDateFrom",
          "title": "Transaction Date From",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "transactionDateTo",
          "title": "Transaction Date To",
          "type": "`$STRING`",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "format": "date-time"
        },
        {
          "name": "turnovers",
          "title": "Turnovers",
          "type": "`$ARRAY`"
        }
      ],
      "name": "transactions_turnover",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/transactionTurnover",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "transactionTurnover"
                }
              ],
              "parts": [
                "public",
                "transactionTurnover"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "update_merchant": {
      "fields": [
        {
          "name": "city",
          "title": "City",
          "type": "`$STRING`"
        },
        {
          "name": "corporateUuid",
          "title": "Corporate Uuid",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "country",
          "title": "Country",
          "type": "`$STRING`"
        },
        {
          "name": "merchantCategoryCode",
          "title": "Merchant Category Code",
          "type": "`$STRING`"
        },
        {
          "name": "name",
          "title": "Name",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "state",
          "title": "State",
          "type": "`$STRING`"
        },
        {
          "name": "street",
          "title": "Street",
          "type": "`$STRING`"
        },
        {
          "name": "vuNummer",
          "title": "Vu Nummer",
          "type": "`$STRING`"
        },
        {
          "name": "zipcode",
          "title": "Zipcode",
          "type": "`$STRING`"
        }
      ],
      "name": "update_merchant",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/updateMerchant",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "updateMerchant"
                }
              ],
              "parts": [
                "public",
                "updateMerchant"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "update_template_xml": {
      "fields": [
        {
          "name": "responseCode",
          "title": "Response Code",
          "type": "`$INTEGER`",
          "format": "int32"
        },
        {
          "name": "responseMessage",
          "title": "Response Message",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "title": "Template Name",
          "type": "`$STRING`",
          "req": true
        },
        {
          "name": "templateXml",
          "title": "Template Xml",
          "type": "`$STRING`",
          "req": true
        }
      ],
      "name": "update_template_xml",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "kind": "http",
              "method": "POST",
              "orig": "/public/updateTemplateXml",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "updateTemplateXml"
                }
              ],
              "parts": [
                "public",
                "updateTemplateXml"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "version": {
      "fields": [
        {
          "name": "appName",
          "title": "App Name",
          "type": "`$STRING`"
        },
        {
          "name": "buildDate",
          "title": "Build Date",
          "type": "`$STRING`"
        },
        {
          "name": "version",
          "title": "Version",
          "type": "`$STRING`"
        }
      ],
      "name": "version",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "kind": "http",
              "method": "GET",
              "orig": "/public/version",
              "segments": [
                {
                  "lit": "public"
                },
                {
                  "lit": "version"
                }
              ],
              "parts": [
                "public",
                "version"
              ],
              "rename": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "args": {},
              "select": {}
            }
          ]
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
  config,
  FEATURE_PLUGINS,
}

