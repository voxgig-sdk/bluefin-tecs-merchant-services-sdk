# BluefinTecsMerchantServices SDK configuration

use strict;
use warnings;

use File::Basename ();
use Cwd ();

my $__dir;
BEGIN { $__dir = File::Basename::dirname(Cwd::abs_path(__FILE__)) }
require(Cwd::abs_path("$__dir/lib/Voxgig/Struct.pm"));

package BluefinTecsMerchantServicesConfig;

# GENERATED from the API model - do not edit by hand. Parsed fresh on
# each call so callers can safely mutate their copy.
my $CONFIG_JSON = <<'END_CONFIG_JSON';
{
  "main": {
    "name": "BluefinTecsMerchantServices",
    "slug": "bluefin-tecs-merchant-services",
    "version": "0.1.1",
    "target": "perl"
  },
  "feature": {
    "audit": {
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
    "clienttrack": {
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
    "debug": {
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
    "idempotency": {
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
    "log": {
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
    "metrics": {
      "options": {
        "active": false
      },
      "optspec": {
        "now": "`$FUNCTION`"
      },
      "strict": false,
      "transport": "none"
    },
    "paging": {
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
    "ratelimit": {
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
    "retry": {
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
    "telemetry": {
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
    "test": {
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
    "timeout": {
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
    }
  },
  "options": {
    "base": "https://test.tecs.at/merchantservices",
    "auth": {
      "prefix": "Bearer"
    },
    "headers": {
      "content-type": "application/json"
    },
    "entity": {
      "cancel_transaction": {},
      "check_card_black_listed": {},
      "create_product": {},
      "deactivate_terminal": {},
      "digital_services_api": {},
      "ec_data_ecom": {},
      "ecom_parameter": {},
      "ecr_data": {},
      "emv_data": {},
      "enable_acquiring": {},
      "get_merchant_contract_number": {},
      "get_template_xml": {},
      "introduce_mandator": {},
      "introduce_package": {},
      "keep_alive": {},
      "list_terminal": {},
      "mandator_clearing_export": {},
      "mandator_clearing_export_download": {},
      "mandator_clearing_export_summary": {},
      "merchant_portal_services_api": {},
      "move_tid": {},
      "payment_manual": {},
      "payment_sred": {},
      "pre_auth_transaction_completion": {},
      "reactivate_terminal": {},
      "refund_transaction": {},
      "register_tecs_company": {},
      "register_terminal": {},
      "report_data": {},
      "status_transaction": {},
      "store_terminal_parameter": {},
      "terminal_id": {},
      "transaction_history": {},
      "transactions_count": {},
      "transactions_count_card_brand": {},
      "transactions_turnover": {},
      "update_merchant": {},
      "update_template_xml": {},
      "version": {}
    }
  },
  "entity": {
    "cancel_transaction": {
      "fields": [
        {
          "name": "acquirerId",
          "type": "`$STRING`"
        },
        {
          "name": "acquirerName",
          "type": "`$STRING`"
        },
        {
          "name": "actualBonusPoints",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "amount",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "type": "`$INTEGER`"
        },
        {
          "name": "authorizationCode",
          "type": "`$STRING`"
        },
        {
          "name": "balanceAmount",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "clientId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "currency",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "cvc",
          "type": "`$STRING`"
        },
        {
          "name": "ecData",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "type": "`$STRING`"
        },
        {
          "name": "emvData",
          "type": "`$STRING`"
        },
        {
          "format": "int64",
          "name": "exchangeFee",
          "type": "`$INTEGER`"
        },
        {
          "name": "exchangeRate",
          "type": "`$STRING`"
        },
        {
          "name": "languageCode",
          "type": "`$STRING`"
        },
        {
          "name": "merchantAddress",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "type": "`$STRING`"
        },
        {
          "name": "messageType",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "originalTraceNumber",
          "type": "`$INTEGER`"
        },
        {
          "name": "originalTransactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "password",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptFooter",
          "type": "`$STRING`"
        },
        {
          "name": "receiptHeader",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "receiptLayout",
          "type": "`$INTEGER`"
        },
        {
          "name": "receiptNumber",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "type": "`$STRING`"
        },
        {
          "name": "svc",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "terminalLocation",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "traceNumber",
          "type": "`$INTEGER`"
        },
        {
          "format": "date-time",
          "name": "transactionDate",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "transactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "txType",
          "type": "`$STRING`"
        },
        {
          "name": "userData",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "cancelTransaction"
              ]
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
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
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
              "args": {
                "header": [
                  {
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
              "segments": [
                {
                  "lit": "checkCardBlackListed"
                }
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
              "parts": [
                "checkCardBlackListed"
              ]
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
          "format": "int32",
          "name": "acquirerId",
          "type": "`$INTEGER`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "templateType",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "templateXml",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "terminalType",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "create_product",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/createProduct",
              "segments": [
                {
                  "lit": "createProduct"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "createProduct"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "deactivationReason",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "packageOrderUuid",
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        }
      ],
      "name": "deactivate_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/deactivateTerminal",
              "segments": [
                {
                  "lit": "deactivateTerminal"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "deactivateTerminal"
              ]
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
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
          "type": "`$STRING`"
        },
        {
          "name": "clearingDateTo",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "txCount",
          "type": "`$INTEGER`"
        },
        {
          "name": "txIdEnd",
          "type": "`$STRING`"
        },
        {
          "name": "txIdStart",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "txSeqNoEnd",
          "type": "`$INTEGER`"
        },
        {
          "format": "int32",
          "name": "txSeqNoStart",
          "type": "`$INTEGER`"
        },
        {
          "format": "int32",
          "name": "txTotal",
          "type": "`$INTEGER`"
        }
      ],
      "name": "digital_services_api",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "params": [
                  {
                    "kind": "param",
                    "name": "file_id",
                    "orig": "file_id",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
              "rename": {
                "param": {
                  "fileId": "file_id"
                }
              },
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
              "select": {
                "exist": [
                  "file_id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "{file_id}"
              ]
            },
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportMetadata"
              ]
            }
          ]
        },
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "status"
              ]
            }
          ]
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
          "name": "ecomData",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "transactionId",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "ec_data_ecom",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "getEcData"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "ecomSkey",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        }
      ],
      "name": "ecom_parameter",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "getEcomParameters"
              ]
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
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "transactionId",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "ecr_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "getEcrData"
              ]
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
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "transactionId",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "emv_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "getEmvData"
              ]
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
          "format": "int32",
          "name": "accountNo",
          "type": "`$INTEGER`"
        },
        {
          "name": "additionalData",
          "type": "`$OBJECT`"
        },
        {
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "currency",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "merchantCategoryCode",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "packageOrderUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "sortingCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "templateName",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "terminalIdAcq",
          "type": "`$STRING`"
        },
        {
          "name": "terminalIds",
          "type": "`$ARRAY`"
        },
        {
          "name": "vuNummer",
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
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/enableAcquiring",
              "segments": [
                {
                  "lit": "enableAcquiring"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "enableAcquiring"
              ]
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
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
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
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/getMerchantContractNumber",
              "segments": [
                {
                  "lit": "getMerchantContractNumber"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "getMerchantContractNumber"
              ]
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
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "get_template_xml",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "getTemplateXml"
              ]
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
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
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
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/introduceMandator",
              "segments": [
                {
                  "lit": "introduceMandator"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "introduceMandator"
              ]
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
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "terminalTemplateDescription",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "introduce_package",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/introducePackage",
              "segments": [
                {
                  "lit": "introducePackage"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "introducePackage"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "kaDateTimeFrom",
          "type": "`$STRING`"
        },
        {
          "name": "kaDateTimeTo",
          "type": "`$STRING`"
        },
        {
          "name": "keepAliveData",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "terminalDateTimeFrom",
          "type": "`$STRING`"
        },
        {
          "name": "terminalDateTimeTo",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "type": "`$INTEGER`"
        }
      ],
      "name": "keep_alive",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "keepalive"
              ]
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
          "type": "`$ARRAY`"
        },
        {
          "name": "filter",
          "type": "`$OBJECT`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "terminals",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "listTerminals"
              ]
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
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
          "type": "`$STRING`"
        },
        {
          "name": "clearingDateTo",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
          "type": "`$STRING`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "records",
          "type": "`$ARRAY`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExport"
              ]
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
          "format": "date-time",
          "name": "clearingDateFrom",
          "req": true,
          "short": "Start date for clearing export (inclusive)",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "clearingDateTo",
          "req": true,
          "short": "End date for clearing export (inclusive)",
          "type": "`$STRING`"
        },
        {
          "name": "fileId",
          "short": "Unique file identifier for tracking and downloading",
          "type": "`$STRING`"
        },
        {
          "name": "filenameTemplate",
          "short": "Optional filename template for the export file",
          "type": "`$STRING`"
        },
        {
          "name": "id",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "status",
          "short": "Processing status of the export request",
          "type": "`$STRING`"
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload"
              ]
            }
          ]
        },
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {
                "params": [
                  {
                    "kind": "param",
                    "name": "id",
                    "orig": "file_id",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
              "rename": {
                "param": {
                  "fileId": "id"
                }
              },
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
              "select": {
                "exist": [
                  "id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportDownload",
                "{id}"
              ]
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
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
          "type": "`$STRING`"
        },
        {
          "name": "clearingDateTo",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
          "type": "`$STRING`"
        },
        {
          "name": "records",
          "type": "`$ARRAY`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "mandatorClearingExportSummary"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "authorizationCode",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountFrom",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountTo",
          "type": "`$STRING`"
        },
        {
          "name": "clearingCurrency",
          "type": "`$STRING`"
        },
        {
          "name": "clearingStatus",
          "type": "`$STRING`"
        },
        {
          "name": "corporateUUID",
          "type": "`$STRING`"
        },
        {
          "name": "orderByTransactionDate",
          "type": "`$STRING`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "receiptNumber",
          "type": "`$STRING`"
        },
        {
          "name": "referencedTransactionId",
          "type": "`$STRING`"
        },
        {
          "name": "retrievalReferenceNumber",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "sourceId",
          "type": "`$INTEGER`"
        },
        {
          "name": "tecsengineResponseCodeFrom",
          "type": "`$STRING`"
        },
        {
          "name": "tecsengineResponseCodeTo",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "type": "`$INTEGER`"
        },
        {
          "name": "traceNumber",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountFrom",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountTo",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateFrom",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateTo",
          "type": "`$STRING`"
        },
        {
          "name": "transactionId",
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "type": "`$STRING`"
        },
        {
          "name": "wallet",
          "short": "Filter by wallet type.",
          "type": "`$STRING`"
        }
      ],
      "name": "merchant_portal_services_api",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "transactionHistoryCsv"
              ]
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
          "req": true,
          "type": "`$ARRAY`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "targetPackageorderuuid",
          "type": "`$STRING`"
        },
        {
          "name": "targetProductorderuuid",
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
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/moveTid",
              "segments": [
                {
                  "lit": "moveTid"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "moveTid"
              ]
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
          "short": "Acquirer name parsed from KKG field",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "amount",
          "req": true,
          "short": "Transaction amount in minor units (cents)",
          "type": "`$INTEGER`"
        },
        {
          "name": "authorizationNumber",
          "short": "Authorization number from the gateway",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "req": true,
          "short": "Card number - 12 to 19 digits, must pass Luhn validation",
          "type": "`$STRING`"
        },
        {
          "name": "cardType",
          "short": "Card type parsed from KKG field",
          "type": "`$STRING`"
        },
        {
          "name": "currency",
          "req": true,
          "short": "Currency code - 3 uppercase letters (ISO 4217)",
          "type": "`$STRING`"
        },
        {
          "name": "cvc",
          "short": "Card verification code - 3-4 digits (optional)",
          "type": "`$STRING`"
        },
        {
          "name": "dateTimeTx",
          "short": "Date and time of the transaction",
          "type": "`$STRING`"
        },
        {
          "name": "expDate",
          "req": true,
          "short": "Card expiry date in MMYY format",
          "type": "`$STRING`"
        },
        {
          "name": "merchantId",
          "short": "Merchant ID (VU-NUMMER)",
          "type": "`$STRING`"
        },
        {
          "name": "originalTransactionId",
          "short": "Original transaction ID from gateway",
          "type": "`$STRING`"
        },
        {
          "name": "password",
          "short": "Terminal password sent as Kennwort in TECS XML (optional)",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "short": "Response code - 00 for success, otherwise error code",
          "type": "`$STRING`"
        },
        {
          "name": "responseMessage",
          "short": "Response message - 'Approved' for success, error description otherwise",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "short": "Terminal ID used for the transaction",
          "type": "`$STRING`"
        },
        {
          "name": "transactionId",
          "short": "Transaction ID generated by the backend",
          "type": "`$STRING`"
        },
        {
          "name": "txtype",
          "req": true,
          "short": "Transaction type",
          "type": "`$STRING`"
        }
      ],
      "name": "payment_manual",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "paymentManual"
              ]
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
          "format": "int32",
          "name": "amount",
          "req": true,
          "short": "Transaction amount in minor units (cents)",
          "type": "`$INTEGER`"
        },
        {
          "name": "currency",
          "req": true,
          "short": "Currency code - 3 uppercase letters (ISO 4217)",
          "type": "`$STRING`"
        },
        {
          "name": "device",
          "short": "Device type that provided the SRED payload",
          "type": "`$STRING`"
        },
        {
          "name": "devicePayload",
          "req": true,
          "short": "SRED encrypted device payload from the device (minimum 32 characters)",
          "type": "`$STRING`"
        },
        {
          "name": "expDate",
          "short": "Card expiry date in MMYY format",
          "type": "`$STRING`"
        },
        {
          "name": "mode",
          "short": "Decryption mode",
          "type": "`$STRING`"
        },
        {
          "name": "panMasked",
          "short": "Masked PAN (first 6 and last 4 digits)",
          "type": "`$STRING`"
        },
        {
          "name": "password",
          "short": "Terminal password sent as Kennwort in TECS XML (optional)",
          "type": "`$STRING`"
        },
        {
          "name": "serial",
          "short": "Device serial number",
          "type": "`$STRING`"
        },
        {
          "name": "serviceCode",
          "short": "Service code from the card",
          "type": "`$STRING`"
        },
        {
          "name": "terminalId",
          "req": true,
          "short": "Terminal ID - 8 digits",
          "type": "`$STRING`"
        },
        {
          "name": "txtype",
          "req": true,
          "short": "Transaction type",
          "type": "`$STRING`"
        }
      ],
      "name": "payment_sred",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body.sred`"
              },
              "parts": [
                "public",
                "paymentSred"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "acquirerName",
          "type": "`$STRING`"
        },
        {
          "name": "actualBonusPoints",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "amount",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "type": "`$INTEGER`"
        },
        {
          "name": "authorizationCode",
          "type": "`$STRING`"
        },
        {
          "name": "balanceAmount",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumberReference",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "clientId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "currency",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "cvc",
          "type": "`$STRING`"
        },
        {
          "name": "ecData",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "type": "`$STRING`"
        },
        {
          "name": "emvData",
          "type": "`$STRING`"
        },
        {
          "format": "int64",
          "name": "exchangeFee",
          "type": "`$INTEGER`"
        },
        {
          "name": "exchangeRate",
          "type": "`$STRING`"
        },
        {
          "name": "languageCode",
          "type": "`$STRING`"
        },
        {
          "name": "merchantAddress",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "type": "`$STRING`"
        },
        {
          "name": "messageType",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "originalTraceNumber",
          "type": "`$INTEGER`"
        },
        {
          "name": "originalTransactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "password",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptFooter",
          "type": "`$STRING`"
        },
        {
          "name": "receiptHeader",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "receiptLayout",
          "type": "`$INTEGER`"
        },
        {
          "name": "receiptNumber",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "type": "`$STRING`"
        },
        {
          "name": "svc",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "terminalLocation",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "traceNumber",
          "type": "`$INTEGER`"
        },
        {
          "format": "date-time",
          "name": "transactionDate",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "transactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "txType",
          "type": "`$STRING`"
        },
        {
          "name": "userData",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "paymentTransaction"
              ]
            },
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "preAuthCompletionTransaction"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "packageOrderUuid",
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "type": "`$STRING`"
        },
        {
          "name": "reactivationReason",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        }
      ],
      "name": "reactivate_terminal",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/reactivateTerminal",
              "segments": [
                {
                  "lit": "reactivateTerminal"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "reactivateTerminal"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "acquirerName",
          "type": "`$STRING`"
        },
        {
          "name": "actualBonusPoints",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "amount",
          "op": {
            "create": {
              "req": true,
              "type": "`$INTEGER`"
            }
          },
          "type": "`$INTEGER`"
        },
        {
          "name": "authorizationCode",
          "type": "`$STRING`"
        },
        {
          "name": "balanceAmount",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "clientId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "currency",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "cvc",
          "type": "`$STRING`"
        },
        {
          "name": "ecData",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "type": "`$STRING`"
        },
        {
          "name": "emvData",
          "type": "`$STRING`"
        },
        {
          "format": "int64",
          "name": "exchangeFee",
          "type": "`$INTEGER`"
        },
        {
          "name": "exchangeRate",
          "type": "`$STRING`"
        },
        {
          "name": "languageCode",
          "type": "`$STRING`"
        },
        {
          "name": "merchantAddress",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "type": "`$STRING`"
        },
        {
          "name": "messageType",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "originalTraceNumber",
          "type": "`$INTEGER`"
        },
        {
          "name": "originalTransactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "password",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptFooter",
          "type": "`$STRING`"
        },
        {
          "name": "receiptHeader",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "receiptLayout",
          "type": "`$INTEGER`"
        },
        {
          "name": "receiptNumber",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "type": "`$STRING`"
        },
        {
          "name": "svc",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "req": true,
          "type": "`$INTEGER`"
        },
        {
          "name": "terminalLocation",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "traceNumber",
          "type": "`$INTEGER`"
        },
        {
          "format": "date-time",
          "name": "transactionDate",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "transactionId",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "txType",
          "type": "`$STRING`"
        },
        {
          "name": "userData",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "refundTransaction"
              ]
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
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "packageOrderUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "partnerId",
          "type": "`$INTEGER`"
        },
        {
          "name": "partnerName",
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "register_tecs_company",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/registerTecsCompany",
              "segments": [
                {
                  "lit": "registerTecsCompany"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "registerTecsCompany"
              ]
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
          "type": "`$OBJECT`"
        },
        {
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "packageOrderUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "productOrderUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "tecsWebSecretKey",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "terminalCountryCode",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "type": "`$INTEGER`"
        },
        {
          "name": "terminalIdAcq",
          "type": "`$STRING`"
        },
        {
          "name": "terminalLanguageCode",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "terminalLocation",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "terminalSerialNumber",
          "type": "`$STRING`"
        },
        {
          "name": "tokenIOAlias",
          "type": "`$STRING`"
        },
        {
          "name": "tokenIOIban",
          "type": "`$STRING`"
        },
        {
          "name": "tokenIOMemberId",
          "type": "`$STRING`"
        },
        {
          "name": "webShopUrl",
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
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/registerTerminal",
              "segments": [
                {
                  "lit": "registerTerminal"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "registerTerminal"
              ]
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
          "type": "`$ARRAY`"
        },
        {
          "name": "clearingDateFrom",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
          "type": "`$STRING`"
        },
        {
          "name": "clearingDateTo",
          "req": true,
          "short": "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
          "type": "`$STRING`"
        },
        {
          "name": "corporateId",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "currency",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "sumOverCreditTx",
          "type": "`$OBJECT`"
        },
        {
          "name": "sumOverDebitTx",
          "type": "`$OBJECT`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "type": "`$INTEGER`"
        }
      ],
      "name": "report_data",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "digitalservices",
                "reportData"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "acquirerTerminalId",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "amount",
          "type": "`$INTEGER`"
        },
        {
          "name": "applicationCryptogram",
          "type": "`$STRING`"
        },
        {
          "name": "authorizationCode",
          "short": "Authorization code returned by the acquirer; null when not available",
          "type": [
            "`$ONE`",
            [
              "`$STRING`",
              "`$NULL`"
            ]
          ]
        },
        {
          "format": "date-time",
          "name": "authorizationDate",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "type": "`$STRING`"
        },
        {
          "name": "cardEntry",
          "type": "`$STRING`"
        },
        {
          "name": "cardExpiration",
          "type": "`$STRING`"
        },
        {
          "name": "cardNumber",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "clearingAmount",
          "type": "`$INTEGER`"
        },
        {
          "name": "clearingBatchId",
          "type": "`$STRING`"
        },
        {
          "name": "clearingCurrency",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "clearingDate",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "clearingProcessedDate",
          "type": "`$STRING`"
        },
        {
          "name": "clearingStatus",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "clientId",
          "type": "`$INTEGER`"
        },
        {
          "name": "currency",
          "type": "`$STRING`"
        },
        {
          "name": "cvm",
          "type": "`$STRING`"
        },
        {
          "name": "ecrData",
          "type": "`$STRING`"
        },
        {
          "name": "emvApplicationId",
          "type": "`$STRING`"
        },
        {
          "name": "emvApplicationLabel",
          "type": "`$STRING`"
        },
        {
          "name": "merchantName",
          "type": "`$STRING`"
        },
        {
          "name": "merchantNumber",
          "type": "`$STRING`"
        },
        {
          "name": "originalClientId",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "originalTerminalId",
          "type": "`$INTEGER`"
        },
        {
          "name": "originalTransactionId",
          "type": "`$STRING`"
        },
        {
          "name": "paymentReason",
          "type": "`$STRING`"
        },
        {
          "name": "receiptNumber",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseCodeFromAS",
          "type": "`$STRING`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "retrievalReferenceNumber",
          "type": "`$STRING`"
        },
        {
          "name": "serviceCode",
          "type": "`$STRING`"
        },
        {
          "name": "settlementStatus",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "sourceId",
          "type": "`$INTEGER`"
        },
        {
          "format": "int32",
          "name": "tecsengineResponseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "tecsengineResponseText",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "terminalEndOfDayDate",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "type": "`$INTEGER`"
        },
        {
          "name": "terminalLocation",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "tipAmount",
          "type": "`$INTEGER`"
        },
        {
          "format": "int32",
          "name": "traceNumber",
          "type": "`$INTEGER`"
        },
        {
          "format": "date-time",
          "name": "transactionClearingDate",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDate",
          "type": "`$STRING`"
        },
        {
          "name": "transactionId",
          "type": "`$STRING`"
        },
        {
          "format": "int64",
          "name": "transactionSeqNumber",
          "type": "`$INTEGER`"
        },
        {
          "format": "date-time",
          "name": "transactionServerDate",
          "type": "`$STRING`"
        },
        {
          "name": "transactionSource",
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "statusTransaction"
              ]
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
          "type": "`$OBJECT`"
        },
        {
          "name": "configVersion",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "serialNumber",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "tidSent",
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
              "args": {},
              "kind": "http",
              "method": "POST",
              "orig": "/storeTerminalParameters",
              "segments": [
                {
                  "lit": "storeTerminalParameters"
                }
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "storeTerminalParameters"
              ]
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
          "req": true,
          "type": "`$ARRAY`"
        },
        {
          "name": "duplicateTerminalIds",
          "type": "`$ARRAY`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "terminals",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "getTerminalId"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "authorizationCode",
          "type": "`$STRING`"
        },
        {
          "name": "cardBrand",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountFrom",
          "type": "`$STRING`"
        },
        {
          "name": "clearingAmountTo",
          "type": "`$STRING`"
        },
        {
          "name": "clearingCurrency",
          "type": "`$STRING`"
        },
        {
          "name": "clearingStatus",
          "type": "`$STRING`"
        },
        {
          "name": "corporateUUID",
          "type": "`$STRING`"
        },
        {
          "name": "orderByTransactionDate",
          "type": "`$STRING`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "paymentTokenPublicId",
          "type": "`$STRING`"
        },
        {
          "name": "receiptNumber",
          "type": "`$STRING`"
        },
        {
          "name": "referencedTransactionId",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "retrievalReferenceNumber",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "sourceId",
          "type": "`$INTEGER`"
        },
        {
          "name": "tecsengineResponseCodeFrom",
          "type": "`$STRING`"
        },
        {
          "name": "tecsengineResponseCodeTo",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "terminalId",
          "type": "`$INTEGER`"
        },
        {
          "name": "traceNumber",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountFrom",
          "type": "`$STRING`"
        },
        {
          "name": "transactionAmountTo",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateFrom",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateTo",
          "type": "`$STRING`"
        },
        {
          "name": "transactionHistories",
          "type": "`$ARRAY`"
        },
        {
          "name": "transactionId",
          "type": "`$STRING`"
        },
        {
          "name": "transactionType",
          "type": "`$STRING`"
        },
        {
          "name": "wallet",
          "short": "Filter by wallet type.",
          "type": "`$STRING`"
        }
      ],
      "name": "transaction_history",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "mcom",
                "transactionHistory"
              ]
            },
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "transactionHistory"
              ]
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "transactions_count": {
      "fields": [
        {
          "name": "period",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateFrom",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateTo",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "transactionsCount",
          "type": "`$ARRAY`"
        }
      ],
      "name": "transactions_count",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "countAuthorisedTransactions"
              ]
            },
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "countNotAuthorisedTransactions"
              ]
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
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateFrom",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateTo",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "transactionsCount",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "countTransactionsByCardBrand"
              ]
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
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateFrom",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "format": "date-time",
          "name": "transactionDateTo",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "turnovers",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "transactionTurnover"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "corporateUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "country",
          "type": "`$STRING`"
        },
        {
          "name": "merchantCategoryCode",
          "type": "`$STRING`"
        },
        {
          "name": "name",
          "type": "`$STRING`"
        },
        {
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "state",
          "type": "`$STRING`"
        },
        {
          "name": "street",
          "type": "`$STRING`"
        },
        {
          "name": "vuNummer",
          "type": "`$STRING`"
        },
        {
          "name": "zipcode",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "updateMerchant"
              ]
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
          "format": "int32",
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "templateName",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "templateXml",
          "req": true,
          "type": "`$STRING`"
        }
      ],
      "name": "update_template_xml",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "updateTemplateXml"
              ]
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
          "type": "`$STRING`"
        },
        {
          "name": "buildDate",
          "type": "`$STRING`"
        },
        {
          "name": "version",
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
              "args": {},
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
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "parts": [
                "public",
                "version"
              ]
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
END_CONFIG_JSON

sub make_config {
  return Voxgig::Struct::parse_json($CONFIG_JSON);
}

# SHARED CONFIG (sdkgen rung L2).
#
# The SDK reads the config on every request and never writes to it, so one
# instance is shared by every client rather than rebuilt per client - the
# difference between parsing the embedded JSON once and once per client.
#
# The returned structure is SHARED: treat it as read-only. Callers that need to
# mutate should use make_config, which always parses a fresh copy.
my $SHARED_CONFIG;

sub shared_config {
  $SHARED_CONFIG = make_config() unless defined $SHARED_CONFIG;
  return $SHARED_CONFIG;
}

sub make_feature {
  my ($name) = @_;
  require(Cwd::abs_path("$__dir/features.pm"));
  return BluefinTecsMerchantServicesFeatures::make_feature($name);
}

1;
