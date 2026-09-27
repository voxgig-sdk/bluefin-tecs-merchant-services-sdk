import 'feature/base/BaseFeature.dart';
import 'feature/audit/AuditFeature.dart';
import 'feature/clienttrack/ClienttrackFeature.dart';
import 'feature/debug/DebugFeature.dart';
import 'feature/idempotency/IdempotencyFeature.dart';
import 'feature/log/LogFeature.dart';
import 'feature/metrics/MetricsFeature.dart';
import 'feature/paging/PagingFeature.dart';
import 'feature/ratelimit/RatelimitFeature.dart';
import 'feature/retry/RetryFeature.dart';
import 'feature/telemetry/TelemetryFeature.dart';
import 'feature/test/TestFeature.dart';
import 'feature/timeout/TimeoutFeature.dart';



// ignore: non_constant_identifier_names
final Map<String, BaseFeature Function()> FEATURE_CLASS = {
    'audit': () => AuditFeature(),
  'clienttrack': () => ClienttrackFeature(),
  'debug': () => DebugFeature(),
  'idempotency': () => IdempotencyFeature(),
  'log': () => LogFeature(),
  'metrics': () => MetricsFeature(),
  'paging': () => PagingFeature(),
  'ratelimit': () => RatelimitFeature(),
  'retry': () => RetryFeature(),
  'telemetry': () => TelemetryFeature(),
  'test': () => TestFeature(),
  'timeout': () => TimeoutFeature(),

};

// Per-feature plugin DEFINITIONS (voxgig/plugin `Definition` values), from
// the model's active plugin groups. A feature that takes a `plugins` option
// (secrets over sekreto) reads its own entry; a feature with no plugins has
// none. The named `show` imports above make each definition statically
// reachable, so an SDK carries exactly the plugin libraries its model
// selects - the same leanness the old side-effect registry bought, without
// a registry.
//
// Emitted UNCONDITIONALLY, empty when no group is active: SecretsFeature
// imports this name, and the feature source can be present in a tree whose
// model selects no plugin group at all. An emission conditional on the map
// having entries would make that tree fail `dart analyze`.
//
// ignore: non_constant_identifier_names
final Map<String, List<dynamic>> FEATURE_PLUGINS = <String, List<dynamic>>{
  
};

class Config {
  BaseFeature makeFeature(String fn) {
    final fc = FEATURE_CLASS[fn];
    if (null == fc) {
      // TODO: errors etc
      throw StateError('Unknown feature: ' + fn);
    }
    return fc();
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  bool hasFeature(String fn) => null != FEATURE_CLASS[fn];

  final Map<String, dynamic> main = <String, dynamic>{
    'name': 'BluefinTecsMerchantServices',
        'slug': 'bluefin-tecs-merchant-services',
    'version': '0.1.1',
    'target': 'dart',

  };

  final Map<String, dynamic> feature = <String, dynamic>{
        'audit': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'actor': 'anonymous',
        'max': 1000,
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
        'sink': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'clienttrack': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'clientVersion': '0.0.1',
      },
      'optspec': <String, dynamic>{
        'clientName': '`\$STRING`',
        'clientVersion': '`\$STRING`',
        'headers': '`\$MAP`',
        'idgen': '`\$FUNCTION`',
        'sessionId': '`\$STRING`',
      },
      'strict': false,
      'transport': 'none',
    },
    'debug': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'max': 100,
        'redact': <dynamic>[
          'authorization',
          'cookie',
          'set-cookie',
          'api-key',
          'apikey',
          'x-api-key',
          'idempotency-key',
        ],
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
        'onEntry': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'idempotency': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'header': 'Idempotency-Key',
        'methods': <dynamic>[
          'POST',
          'PUT',
          'PATCH',
          'DELETE',
        ],
        'ops': <dynamic>[
          'create',
          'update',
          'remove',
        ],
      },
      'optspec': <String, dynamic>{
        'keygen': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'log': <String, dynamic>{
      'options': <String, dynamic>{
        'active': true,
      },
      'optspec': <String, dynamic>{
        'level': '`\$STRING`',
        'logger': '`\$ANY`',
      },
      'strict': false,
      'transport': 'none',
    },
    'metrics': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'paging': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'afterVar': 'after',
        'cursorParam': 'cursor',
        'firstVar': 'first',
        'limitParam': 'limit',
        'pageParam': 'page',
        'startPage': 1,
      },
      'optspec': <String, dynamic>{
        'limit': '`\$NUMBER`',
        'ops': '`\$LIST`',
      },
      'strict': false,
      'transport': 'none',
    },
    'ratelimit': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'burst': 5,
        'rate': 5,
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
        'sleep': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'wrap',
    },
    'retry': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'factor': 2,
        'maxDelay': 2000,
        'minDelay': 50,
        'retries': 2,
        'statuses': <dynamic>[
          408,
          425,
          429,
          500,
          502,
          503,
          504,
        ],
      },
      'optspec': <String, dynamic>{
        'jitter': '`\$BOOLEAN`',
        'sleep': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'wrap',
    },
    'telemetry': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'optspec': <String, dynamic>{
        'exporter': '`\$FUNCTION`',
        'headers': '`\$MAP`',
        'idgen': '`\$FUNCTION`',
        'now': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'test': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'optspec': <String, dynamic>{
        'entity': '`\$MAP`',
        'net': '`\$MAP`',
      },
      'strict': false,
      'transport': 'base',
    },
    'timeout': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'ms': 30000,
      },
      'optspec': <String, dynamic>{
        'clearTimer': '`\$FUNCTION`',
        'setTimer': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'wrap',
    },

  };

  // Rendered whole from the canonical config definition rather than assembled
  // slot by slot. Assembling it here meant `options.server` - the OpenAPI
  // server-variable defaults - was simply absent from this branch, so a
  // templated server URL produced a different config either side of the
  // threshold.
  final Map<String, dynamic> options = <String, dynamic>{
    'base': 'https://test.tecs.at/merchantservices',
    'auth': <String, dynamic>{
      'prefix': 'Bearer',
    },
    'headers': <String, dynamic>{
      'content-type': 'application/json',
    },
    'entity': <String, dynamic>{
      'cancel_transaction': <String, dynamic>{},
      'check_card_black_listed': <String, dynamic>{},
      'count_authorised_transaction': <String, dynamic>{},
      'count_not_authorised_transaction': <String, dynamic>{},
      'create_product': <String, dynamic>{},
      'deactivate_terminal': <String, dynamic>{},
      'digital_services_api': <String, dynamic>{},
      'ec_data_ecom': <String, dynamic>{},
      'ecom_parameter': <String, dynamic>{},
      'ecr_data': <String, dynamic>{},
      'emv_data': <String, dynamic>{},
      'enable_acquiring': <String, dynamic>{},
      'get_merchant_contract_number': <String, dynamic>{},
      'get_template_xml': <String, dynamic>{},
      'introduce_mandator': <String, dynamic>{},
      'introduce_package': <String, dynamic>{},
      'keep_alive': <String, dynamic>{},
      'list_terminal': <String, dynamic>{},
      'mandator_clearing_export': <String, dynamic>{},
      'mandator_clearing_export_download': <String, dynamic>{},
      'mandator_clearing_export_summary': <String, dynamic>{},
      'merchant_portal_services_api': <String, dynamic>{},
      'move_tid': <String, dynamic>{},
      'payment_manual': <String, dynamic>{},
      'payment_sred': <String, dynamic>{},
      'pre_auth_transaction_completion': <String, dynamic>{},
      'reactivate_terminal': <String, dynamic>{},
      'refund_transaction': <String, dynamic>{},
      'register_tecs_company': <String, dynamic>{},
      'register_terminal': <String, dynamic>{},
      'report_data': <String, dynamic>{},
      'status_transaction': <String, dynamic>{},
      'store_terminal_parameter': <String, dynamic>{},
      'terminal_id': <String, dynamic>{},
      'transaction_history': <String, dynamic>{},
      'transactions_count_card_brand': <String, dynamic>{},
      'transactions_turnover': <String, dynamic>{},
      'update_merchant': <String, dynamic>{},
      'update_template_xml': <String, dynamic>{},
      'version': <String, dynamic>{},
    },
  };

  final Map<String, dynamic> entity = <String, dynamic>{
    'cancel_transaction': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acquirerId',
          'title': 'Acquirer Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerName',
          'title': 'Acquirer Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'actualBonusPoints',
          'title': 'Actual Bonus Points',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'title': 'Amount',
          'type': '`\$INTEGER`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$INTEGER`',
            },
          },
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'title': 'Authorization Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'balanceAmount',
          'title': 'Balance Amount',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'title': 'Card Brand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'title': 'Card Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'title': 'Client Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'cvc',
          'title': 'Cvc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecData',
          'title': 'Ec Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'title': 'Ecr Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvData',
          'title': 'Emv Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'exchangeFee',
          'title': 'Exchange Fee',
          'type': '`\$INTEGER`',
          'format': 'int64',
        },
        <String, dynamic>{
          'name': 'exchangeRate',
          'title': 'Exchange Rate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'languageCode',
          'title': 'Language Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantAddress',
          'title': 'Merchant Address',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'title': 'Merchant Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'title': 'Merchant Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'messageType',
          'title': 'Message Type',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'originalTraceNumber',
          'title': 'Original Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'title': 'Original Transaction Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'password',
          'title': 'Password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'title': 'Payment Reason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptFooter',
          'title': 'Receipt Footer',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptHeader',
          'title': 'Receipt Header',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptLayout',
          'title': 'Receipt Layout',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'title': 'Receipt Number',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'title': 'Serial Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'svc',
          'title': 'Svc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'title': 'Terminal Location',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'title': 'Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'title': 'Transaction Date',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'txType',
          'title': 'Tx Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'userData',
          'title': 'User Data',
          'type': '`\$STRING`',
        },
      ],
      'name': 'cancel_transaction',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/cancelTransaction',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'cancelTransaction',
                },
              ],
              'parts': <dynamic>[
                'public',
                'cancelTransaction',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'check_card_black_listed': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'cardNo',
          'title': 'Card No',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
      ],
      'name': 'check_card_black_listed',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/checkCardBlackListed',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'checkCardBlackListed',
                },
              ],
              'parts': <dynamic>[
                'checkCardBlackListed',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'count_authorised_transaction': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'period',
          'title': 'Period',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'title': 'Transaction Date From',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'title': 'Transaction Date To',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionsCount',
          'title': 'Transactions Count',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'count_authorised_transaction',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/countAuthorisedTransactions',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'countAuthorisedTransactions',
                },
              ],
              'parts': <dynamic>[
                'public',
                'countAuthorisedTransactions',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'count_not_authorised_transaction': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'period',
          'title': 'Period',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'title': 'Transaction Date From',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'title': 'Transaction Date To',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionsCount',
          'title': 'Transactions Count',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'count_not_authorised_transaction',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/countNotAuthorisedTransactions',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'countNotAuthorisedTransactions',
                },
              ],
              'parts': <dynamic>[
                'public',
                'countNotAuthorisedTransactions',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'create_product': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acquirerId',
          'title': 'Acquirer Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'title': 'Template Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'templateType',
          'title': 'Template Type',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'templateXml',
          'title': 'Template Xml',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'terminalType',
          'title': 'Terminal Type',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'create_product',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/createProduct',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'createProduct',
                },
              ],
              'parts': <dynamic>[
                'createProduct',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'deactivate_terminal': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'deactivationReason',
          'title': 'Deactivation Reason',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'title': 'Package Order Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'title': 'Product Order Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
      ],
      'name': 'deactivate_terminal',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/deactivateTerminal',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'deactivateTerminal',
                },
              ],
              'parts': <dynamic>[
                'deactivateTerminal',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'digital_services_api': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'clearingDateFrom',
          'title': 'Clearing Date From',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'title': 'Clearing Date To',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txCount',
          'title': 'Tx Count',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'txIdEnd',
          'title': 'Tx Id End',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txIdStart',
          'title': 'Tx Id Start',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txSeqNoEnd',
          'title': 'Tx Seq No End',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'txSeqNoStart',
          'title': 'Tx Seq No Start',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'txTotal',
          'title': 'Tx Total',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
      ],
      'name': 'digital_services_api',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportDownload/{fileId}',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExportDownload',
                },
                <String, dynamic>{
                  'var': 'file_id',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportDownload',
                '{file_id}',
              ],
              'rename': <String, dynamic>{
                'param': <String, dynamic>{
                  'fileId': 'file_id',
                },
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'params': <dynamic>[
                  <String, dynamic>{
                    'name': 'file_id',
                    'orig': 'file_id',
                    'type': '`\$STRING`',
                    'kind': 'param',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'file_id',
                ],
              },
            },
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportMetadata',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExportMetadata',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportMetadata',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'GET',
              'orig': '/public/digitalservices/mandatorClearingExportDownload/status',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExportDownload',
                },
                <String, dynamic>{
                  'lit': 'status',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportDownload',
                'status',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[
          <dynamic>[
            '\$.main.kit.entity.mandator_clearing_export_download',
          ],
        ],
      },
    },
    'ec_data_ecom': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'ecomData',
          'title': 'Ecom Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'ec_data_ecom',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEcData',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'getEcData',
                },
              ],
              'parts': <dynamic>[
                'public',
                'getEcData',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'ecom_parameter': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'ecomPass',
          'title': 'Ecom Pass',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecomSkey',
          'title': 'Ecom Skey',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
      ],
      'name': 'ecom_parameter',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEcomParameters',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'getEcomParameters',
                },
              ],
              'parts': <dynamic>[
                'public',
                'getEcomParameters',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'ecr_data': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'ecrData',
          'title': 'Ecr Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'ecr_data',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEcrData',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'getEcrData',
                },
              ],
              'parts': <dynamic>[
                'public',
                'getEcrData',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'emv_data': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'emvData',
          'title': 'Emv Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'emv_data',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEmvData',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'getEmvData',
                },
              ],
              'parts': <dynamic>[
                'public',
                'getEmvData',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'enable_acquiring': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'accountNo',
          'title': 'Account No',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'additionalData',
          'title': 'Additional Data',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'merchantCategoryCode',
          'title': 'Merchant Category Code',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'title': 'Package Order Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'title': 'Product Order Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sortingCode',
          'title': 'Sorting Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'templateName',
          'title': 'Template Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'terminalIdAcq',
          'title': 'Terminal Id Acq',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalIds',
          'title': 'Terminal Ids',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'vuNummer',
          'title': 'Vu Nummer',
          'type': '`\$STRING`',
        },
      ],
      'name': 'enable_acquiring',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/enableAcquiring',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'enableAcquiring',
                },
              ],
              'parts': <dynamic>[
                'enableAcquiring',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'get_merchant_contract_number': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'merchantContractNumber',
          'title': 'Merchant Contract Number',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
      ],
      'name': 'get_merchant_contract_number',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/getMerchantContractNumber',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'getMerchantContractNumber',
                },
              ],
              'parts': <dynamic>[
                'getMerchantContractNumber',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'get_template_xml': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'title': 'Template Name',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'get_template_xml',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getTemplateXml',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'getTemplateXml',
                },
              ],
              'parts': <dynamic>[
                'public',
                'getTemplateXml',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'introduce_mandator': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'mandatorName',
          'title': 'Mandator Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
      ],
      'name': 'introduce_mandator',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/introduceMandator',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'introduceMandator',
                },
              ],
              'parts': <dynamic>[
                'introduceMandator',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'introduce_package': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalTemplateDescription',
          'title': 'Terminal Template Description',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'introduce_package',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/introducePackage',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'introducePackage',
                },
              ],
              'parts': <dynamic>[
                'introducePackage',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'keep_alive': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'hwserialno',
          'title': 'Hwserialno',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'kaDateTimeFrom',
          'title': 'Ka Date Time From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'kaDateTimeTo',
          'title': 'Ka Date Time To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'keepAliveData',
          'title': 'Keep Alive Data',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalDateTimeFrom',
          'title': 'Terminal Date Time From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalDateTimeTo',
          'title': 'Terminal Date Time To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
      ],
      'name': 'keep_alive',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/keepalive',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'keepalive',
                },
              ],
              'parts': <dynamic>[
                'public',
                'keepalive',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'list_terminal': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'filter',
          'title': 'Filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminals',
          'title': 'Terminals',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'list_terminal',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/listTerminals',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'listTerminals',
                },
              ],
              'parts': <dynamic>[
                'public',
                'listTerminals',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'mandator_clearing_export': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'clearingDateFrom',
          'title': 'Clearing Date From',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssZ',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'title': 'Clearing Date To',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssZ',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'records',
          'title': 'Records',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
      ],
      'name': 'mandator_clearing_export',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExport',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExport',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExport',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'mandator_clearing_export_download': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'clearingDateFrom',
          'title': 'Clearing Date From',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Start date for clearing export (inclusive)',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'title': 'Clearing Date To',
          'type': '`\$STRING`',
          'req': true,
          'short': 'End date for clearing export (inclusive)',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'fileId',
          'title': 'File Id',
          'type': '`\$STRING`',
          'short': 'Unique file identifier for tracking and downloading',
        },
        <String, dynamic>{
          'name': 'filenameTemplate',
          'title': 'Filename Template',
          'type': '`\$STRING`',
          'short': 'Optional filename template for the export file',
        },
        <String, dynamic>{
          'name': 'id',
          'title': 'Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'status',
          'title': 'Status',
          'type': '`\$STRING`',
          'short': 'Processing status of the export request',
        },
      ],
      'id': <String, dynamic>{
        'field': 'id',
        'name': 'id',
      },
      'name': 'mandator_clearing_export_download',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportDownload',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExportDownload',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportDownload',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'GET',
              'orig': '/public/digitalservices/mandatorClearingExportDownload/{fileId}',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExportDownload',
                },
                <String, dynamic>{
                  'var': 'id',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportDownload',
                '{id}',
              ],
              'rename': <String, dynamic>{
                'param': <String, dynamic>{
                  'fileId': 'id',
                },
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'params': <dynamic>[
                  <String, dynamic>{
                    'name': 'id',
                    'orig': 'file_id',
                    'type': '`\$STRING`',
                    'kind': 'param',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'id',
                ],
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'mandator_clearing_export_summary': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'clearingDateFrom',
          'title': 'Clearing Date From',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'title': 'Clearing Date To',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
        },
        <String, dynamic>{
          'name': 'records',
          'title': 'Records',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
      ],
      'name': 'mandator_clearing_export_summary',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportSummary',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'mandatorClearingExportSummary',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportSummary',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'merchant_portal_services_api': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': '3DSecure',
          'title': '3 D Secure',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'title': 'Authorization Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'title': 'Card Brand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountFrom',
          'title': 'Clearing Amount From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountTo',
          'title': 'Clearing Amount To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingCurrency',
          'title': 'Clearing Currency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingStatus',
          'title': 'Clearing Status',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateUUID',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'orderByTransactionDate',
          'title': 'Order By Transaction Date',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'title': 'Receipt Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'referencedTransactionId',
          'title': 'Referenced Transaction Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'retrievalReferenceNumber',
          'title': 'Retrieval Reference Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sourceId',
          'title': 'Source Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeFrom',
          'title': 'Tecsengine Response Code From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeTo',
          'title': 'Tecsengine Response Code To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'title': 'Trace Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountFrom',
          'title': 'Transaction Amount From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountTo',
          'title': 'Transaction Amount To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'title': 'Transaction Date From',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'title': 'Transaction Date To',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'wallet',
          'title': 'Wallet',
          'type': '`\$STRING`',
          'short': 'Filter by wallet type.',
        },
      ],
      'name': 'merchant_portal_services_api',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/transactionHistoryCsv',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'transactionHistoryCsv',
                },
              ],
              'parts': <dynamic>[
                'public',
                'transactionHistoryCsv',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'move_tid': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'productorderuuids',
          'title': 'Productorderuuids',
          'type': '`\$ARRAY`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'targetPackageorderuuid',
          'title': 'Target Packageorderuuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'targetProductorderuuid',
          'title': 'Target Productorderuuid',
          'type': '`\$STRING`',
        },
      ],
      'name': 'move_tid',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/moveTid',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'moveTid',
                },
              ],
              'parts': <dynamic>[
                'moveTid',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'payment_manual': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acquirerName',
          'title': 'Acquirer Name',
          'type': '`\$STRING`',
          'short': 'Acquirer name parsed from KKG field',
        },
        <String, dynamic>{
          'name': 'amount',
          'title': 'Amount',
          'type': '`\$INTEGER`',
          'req': true,
          'short': 'Transaction amount in minor units (cents)',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'authorizationNumber',
          'title': 'Authorization Number',
          'type': '`\$STRING`',
          'short': 'Authorization number from the gateway',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'title': 'Card Number',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Card number - 12 to 19 digits, must pass Luhn validation',
        },
        <String, dynamic>{
          'name': 'cardType',
          'title': 'Card Type',
          'type': '`\$STRING`',
          'short': 'Card type parsed from KKG field',
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Currency code - 3 uppercase letters (ISO 4217)',
        },
        <String, dynamic>{
          'name': 'cvc',
          'title': 'Cvc',
          'type': '`\$STRING`',
          'short': 'Card verification code - 3-4 digits (optional)',
        },
        <String, dynamic>{
          'name': 'dateTimeTx',
          'title': 'Date Time Tx',
          'type': '`\$STRING`',
          'short': 'Date and time of the transaction',
        },
        <String, dynamic>{
          'name': 'expDate',
          'title': 'Exp Date',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Card expiry date in MMYY format',
        },
        <String, dynamic>{
          'name': 'merchantId',
          'title': 'Merchant Id',
          'type': '`\$STRING`',
          'short': 'Merchant ID (VU-NUMMER)',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'title': 'Original Transaction Id',
          'type': '`\$STRING`',
          'short': 'Original transaction ID from gateway',
        },
        <String, dynamic>{
          'name': 'password',
          'title': 'Password',
          'type': '`\$STRING`',
          'short': 'Terminal password sent as Kennwort in TECS XML (optional)',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$STRING`',
          'short': 'Response code - 00 for success, otherwise error code',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
          'short': 'Response message - \'Approved\' for success, error description otherwise',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'short': 'Terminal ID used for the transaction',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'short': 'Transaction ID generated by the backend',
        },
        <String, dynamic>{
          'name': 'txtype',
          'title': 'Txtype',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Transaction type',
        },
      ],
      'name': 'payment_manual',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/paymentManual',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'paymentManual',
                },
              ],
              'parts': <dynamic>[
                'public',
                'paymentManual',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'payment_sred': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'amount',
          'title': 'Amount',
          'type': '`\$INTEGER`',
          'req': true,
          'short': 'Transaction amount in minor units (cents)',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Currency code - 3 uppercase letters (ISO 4217)',
        },
        <String, dynamic>{
          'name': 'device',
          'title': 'Device',
          'type': '`\$STRING`',
          'short': 'Device type that provided the SRED payload',
        },
        <String, dynamic>{
          'name': 'devicePayload',
          'title': 'Device Payload',
          'type': '`\$STRING`',
          'req': true,
          'short': 'SRED encrypted device payload from the device (minimum 32 characters)',
        },
        <String, dynamic>{
          'name': 'expDate',
          'title': 'Exp Date',
          'type': '`\$STRING`',
          'short': 'Card expiry date in MMYY format',
        },
        <String, dynamic>{
          'name': 'mode',
          'title': 'Mode',
          'type': '`\$STRING`',
          'short': 'Decryption mode',
        },
        <String, dynamic>{
          'name': 'panMasked',
          'title': 'Pan Masked',
          'type': '`\$STRING`',
          'short': 'Masked PAN (first 6 and last 4 digits)',
        },
        <String, dynamic>{
          'name': 'password',
          'title': 'Password',
          'type': '`\$STRING`',
          'short': 'Terminal password sent as Kennwort in TECS XML (optional)',
        },
        <String, dynamic>{
          'name': 'serial',
          'title': 'Serial',
          'type': '`\$STRING`',
          'short': 'Device serial number',
        },
        <String, dynamic>{
          'name': 'serviceCode',
          'title': 'Service Code',
          'type': '`\$STRING`',
          'short': 'Service code from the card',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Terminal ID - 8 digits',
        },
        <String, dynamic>{
          'name': 'txtype',
          'title': 'Txtype',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Transaction type',
        },
      ],
      'name': 'payment_sred',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/paymentSred',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'paymentSred',
                },
              ],
              'parts': <dynamic>[
                'public',
                'paymentSred',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body.sred`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'pre_auth_transaction_completion': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acquirerId',
          'title': 'Acquirer Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerName',
          'title': 'Acquirer Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'actualBonusPoints',
          'title': 'Actual Bonus Points',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'title': 'Amount',
          'type': '`\$INTEGER`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$INTEGER`',
            },
          },
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'title': 'Authorization Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'balanceAmount',
          'title': 'Balance Amount',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'title': 'Card Brand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'title': 'Card Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumberReference',
          'title': 'Card Number Reference',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'clientId',
          'title': 'Client Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'cvc',
          'title': 'Cvc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecData',
          'title': 'Ec Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'title': 'Ecr Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvData',
          'title': 'Emv Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'exchangeFee',
          'title': 'Exchange Fee',
          'type': '`\$INTEGER`',
          'format': 'int64',
        },
        <String, dynamic>{
          'name': 'exchangeRate',
          'title': 'Exchange Rate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'languageCode',
          'title': 'Language Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantAddress',
          'title': 'Merchant Address',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'title': 'Merchant Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'title': 'Merchant Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'messageType',
          'title': 'Message Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTraceNumber',
          'title': 'Original Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'title': 'Original Transaction Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'password',
          'title': 'Password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'title': 'Payment Reason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptFooter',
          'title': 'Receipt Footer',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptHeader',
          'title': 'Receipt Header',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptLayout',
          'title': 'Receipt Layout',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'title': 'Receipt Number',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'title': 'Serial Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'svc',
          'title': 'Svc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'title': 'Terminal Location',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'title': 'Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'title': 'Transaction Date',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'txType',
          'title': 'Tx Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'userData',
          'title': 'User Data',
          'type': '`\$STRING`',
        },
      ],
      'name': 'pre_auth_transaction_completion',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/paymentTransaction',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'paymentTransaction',
                },
              ],
              'parts': <dynamic>[
                'public',
                'paymentTransaction',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/preAuthCompletionTransaction',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'preAuthCompletionTransaction',
                },
              ],
              'parts': <dynamic>[
                'public',
                'preAuthCompletionTransaction',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'reactivate_terminal': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'title': 'Package Order Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'title': 'Product Order Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'reactivationReason',
          'title': 'Reactivation Reason',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
      ],
      'name': 'reactivate_terminal',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/reactivateTerminal',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'reactivateTerminal',
                },
              ],
              'parts': <dynamic>[
                'reactivateTerminal',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'refund_transaction': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acquirerId',
          'title': 'Acquirer Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerName',
          'title': 'Acquirer Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'actualBonusPoints',
          'title': 'Actual Bonus Points',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'title': 'Amount',
          'type': '`\$INTEGER`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$INTEGER`',
            },
          },
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'title': 'Authorization Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'balanceAmount',
          'title': 'Balance Amount',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'title': 'Card Brand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'title': 'Card Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'title': 'Client Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'cvc',
          'title': 'Cvc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecData',
          'title': 'Ec Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'title': 'Ecr Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvData',
          'title': 'Emv Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'exchangeFee',
          'title': 'Exchange Fee',
          'type': '`\$INTEGER`',
          'format': 'int64',
        },
        <String, dynamic>{
          'name': 'exchangeRate',
          'title': 'Exchange Rate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'languageCode',
          'title': 'Language Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantAddress',
          'title': 'Merchant Address',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'title': 'Merchant Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'title': 'Merchant Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'messageType',
          'title': 'Message Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTraceNumber',
          'title': 'Original Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'title': 'Original Transaction Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'password',
          'title': 'Password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'title': 'Payment Reason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptFooter',
          'title': 'Receipt Footer',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptHeader',
          'title': 'Receipt Header',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptLayout',
          'title': 'Receipt Layout',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'title': 'Receipt Number',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'title': 'Serial Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'svc',
          'title': 'Svc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'req': true,
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'title': 'Terminal Location',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'title': 'Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'title': 'Transaction Date',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'txType',
          'title': 'Tx Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'userData',
          'title': 'User Data',
          'type': '`\$STRING`',
        },
      ],
      'name': 'refund_transaction',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/refundTransaction',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'refundTransaction',
                },
              ],
              'parts': <dynamic>[
                'public',
                'refundTransaction',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'register_tecs_company': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'title': 'Package Order Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'partnerId',
          'title': 'Partner Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'partnerName',
          'title': 'Partner Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'title': 'Product Order Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'title': 'Template Name',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'register_tecs_company',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/registerTecsCompany',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'registerTecsCompany',
                },
              ],
              'parts': <dynamic>[
                'registerTecsCompany',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'register_terminal': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'additionalData',
          'title': 'Additional Data',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'title': 'Package Order Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'title': 'Product Order Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tecsWebSecretKey',
          'title': 'Tecs Web Secret Key',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'title': 'Template Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'terminalCountryCode',
          'title': 'Terminal Country Code',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'terminalIdAcq',
          'title': 'Terminal Id Acq',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalLanguageCode',
          'title': 'Terminal Language Code',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'title': 'Terminal Location',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'terminalSerialNumber',
          'title': 'Terminal Serial Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tokenIOAlias',
          'title': 'Token Io Alias',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tokenIOIban',
          'title': 'Token Io Iban',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tokenIOMemberId',
          'title': 'Token Io Member Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'webShopUrl',
          'title': 'Web Shop Url',
          'type': '`\$STRING`',
        },
      ],
      'name': 'register_terminal',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/registerTerminal',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'registerTerminal',
                },
              ],
              'parts': <dynamic>[
                'registerTerminal',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'report_data': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'cardBrandReportData',
          'title': 'Card Brand Report Data',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'clearingDateFrom',
          'title': 'Clearing Date From',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ss',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'title': 'Clearing Date To',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ss',
        },
        <String, dynamic>{
          'name': 'corporateId',
          'title': 'Corporate Id',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sumOverCreditTx',
          'title': 'Sum Over Credit Tx',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'sumOverDebitTx',
          'title': 'Sum Over Debit Tx',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
      ],
      'name': 'report_data',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/reportData',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'digitalservices',
                },
                <String, dynamic>{
                  'lit': 'reportData',
                },
              ],
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'reportData',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'status_transaction': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acquirerName',
          'title': 'Acquirer Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerTerminalId',
          'title': 'Acquirer Terminal Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'title': 'Amount',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'applicationCryptogram',
          'title': 'Application Cryptogram',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'title': 'Authorization Code',
          'type': <dynamic>[
            '`\$ONE`',
            <dynamic>[
              '`\$STRING`',
              '`\$NULL`',
            ],
          ],
          'short': 'Authorization code returned by the acquirer; null when not available',
        },
        <String, dynamic>{
          'name': 'authorizationDate',
          'title': 'Authorization Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'title': 'Card Brand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardEntry',
          'title': 'Card Entry',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardExpiration',
          'title': 'Card Expiration',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'title': 'Card Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmount',
          'title': 'Clearing Amount',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'clearingBatchId',
          'title': 'Clearing Batch Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingCurrency',
          'title': 'Clearing Currency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDate',
          'title': 'Clearing Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'clearingProcessedDate',
          'title': 'Clearing Processed Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'clearingStatus',
          'title': 'Clearing Status',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'title': 'Client Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'currency',
          'title': 'Currency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cvm',
          'title': 'Cvm',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'title': 'Ecr Data',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvApplicationId',
          'title': 'Emv Application Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvApplicationLabel',
          'title': 'Emv Application Label',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'title': 'Merchant Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'title': 'Merchant Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalClientId',
          'title': 'Original Client Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTerminalId',
          'title': 'Original Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'title': 'Original Transaction Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'title': 'Payment Reason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'title': 'Receipt Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseCodeFromAS',
          'title': 'Response Code From As',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'retrievalReferenceNumber',
          'title': 'Retrieval Reference Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serviceCode',
          'title': 'Service Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'settlementStatus',
          'title': 'Settlement Status',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sourceId',
          'title': 'Source Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCode',
          'title': 'Tecsengine Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseText',
          'title': 'Tecsengine Response Text',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalEndOfDayDate',
          'title': 'Terminal End Of Day Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'title': 'Terminal Location',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tipAmount',
          'title': 'Tip Amount',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'title': 'Trace Number',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'transactionClearingDate',
          'title': 'Transaction Clearing Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'title': 'Transaction Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionSeqNumber',
          'title': 'Transaction Seq Number',
          'type': '`\$INTEGER`',
          'format': 'int64',
        },
        <String, dynamic>{
          'name': 'transactionServerDate',
          'title': 'Transaction Server Date',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionSource',
          'title': 'Transaction Source',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
        },
      ],
      'name': 'status_transaction',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/statusTransaction',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'statusTransaction',
                },
              ],
              'parts': <dynamic>[
                'public',
                'statusTransaction',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'store_terminal_parameter': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'acqTabNexo',
          'title': 'Acq Tab Nexo',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'configVersion',
          'title': 'Config Version',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'title': 'Serial Number',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'tidSent',
          'title': 'Tid Sent',
          'type': '`\$STRING`',
        },
      ],
      'name': 'store_terminal_parameter',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/storeTerminalParameters',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'storeTerminalParameters',
                },
              ],
              'parts': <dynamic>[
                'storeTerminalParameters',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'terminal_id': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'deviceSerialNumber',
          'title': 'Device Serial Number',
          'type': '`\$ARRAY`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'duplicateTerminalIds',
          'title': 'Duplicate Terminal Ids',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminals',
          'title': 'Terminals',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'terminal_id',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getTerminalId',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'getTerminalId',
                },
              ],
              'parts': <dynamic>[
                'public',
                'getTerminalId',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'transaction_history': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': '3DSecure',
          'title': '3 D Secure',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'title': 'Authorization Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'title': 'Card Brand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountFrom',
          'title': 'Clearing Amount From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountTo',
          'title': 'Clearing Amount To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingCurrency',
          'title': 'Clearing Currency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingStatus',
          'title': 'Clearing Status',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateUUID',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'orderByTransactionDate',
          'title': 'Order By Transaction Date',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'paymentTokenPublicId',
          'title': 'Payment Token Public Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'title': 'Receipt Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'referencedTransactionId',
          'title': 'Referenced Transaction Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'retrievalReferenceNumber',
          'title': 'Retrieval Reference Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sourceId',
          'title': 'Source Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeFrom',
          'title': 'Tecsengine Response Code From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeTo',
          'title': 'Tecsengine Response Code To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'title': 'Terminal Id',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'title': 'Trace Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountFrom',
          'title': 'Transaction Amount From',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountTo',
          'title': 'Transaction Amount To',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'title': 'Transaction Date From',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'title': 'Transaction Date To',
          'type': '`\$STRING`',
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionHistories',
          'title': 'Transaction Histories',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'title': 'Transaction Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'title': 'Transaction Type',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'wallet',
          'title': 'Wallet',
          'type': '`\$STRING`',
          'short': 'Filter by wallet type.',
        },
      ],
      'name': 'transaction_history',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/mcom/transactionHistory',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'mcom',
                },
                <String, dynamic>{
                  'lit': 'transactionHistory',
                },
              ],
              'parts': <dynamic>[
                'public',
                'mcom',
                'transactionHistory',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/transactionHistory',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'transactionHistory',
                },
              ],
              'parts': <dynamic>[
                'public',
                'transactionHistory',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'transactions_count_card_brand': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'period',
          'title': 'Period',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'title': 'Transaction Date From',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'title': 'Transaction Date To',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionsCount',
          'title': 'Transactions Count',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'transactions_count_card_brand',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/countTransactionsByCardBrand',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'countTransactionsByCardBrand',
                },
              ],
              'parts': <dynamic>[
                'public',
                'countTransactionsByCardBrand',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'transactions_turnover': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'period',
          'title': 'Period',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'title': 'Transaction Date From',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'title': 'Transaction Date To',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'format': 'date-time',
        },
        <String, dynamic>{
          'name': 'turnovers',
          'title': 'Turnovers',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'transactions_turnover',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/transactionTurnover',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'transactionTurnover',
                },
              ],
              'parts': <dynamic>[
                'public',
                'transactionTurnover',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'update_merchant': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'city',
          'title': 'City',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateUuid',
          'title': 'Corporate Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'country',
          'title': 'Country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantCategoryCode',
          'title': 'Merchant Category Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'name',
          'title': 'Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'title': 'State',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street',
          'title': 'Street',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'vuNummer',
          'title': 'Vu Nummer',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zipcode',
          'title': 'Zipcode',
          'type': '`\$STRING`',
        },
      ],
      'name': 'update_merchant',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/updateMerchant',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'updateMerchant',
                },
              ],
              'parts': <dynamic>[
                'public',
                'updateMerchant',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'update_template_xml': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'title': 'Template Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'templateXml',
          'title': 'Template Xml',
          'type': '`\$STRING`',
          'req': true,
        },
      ],
      'name': 'update_template_xml',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/updateTemplateXml',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'updateTemplateXml',
                },
              ],
              'parts': <dynamic>[
                'public',
                'updateTemplateXml',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'version': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'appName',
          'title': 'App Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'buildDate',
          'title': 'Build Date',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'version',
          'title': 'Version',
          'type': '`\$STRING`',
        },
      ],
      'name': 'version',
      'op': <String, dynamic>{
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'GET',
              'orig': '/public/version',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'public',
                },
                <String, dynamic>{
                  'lit': 'version',
                },
              ],
              'parts': <dynamic>[
                'public',
                'version',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
  };

  // The pipeline context carries the config as a plain map.
  Map<String, dynamic> toMap() => <String, dynamic>{
        'main': main,
        'feature': feature,
        'options': options,
        'entity': entity,
      };
}

final config = Config();
