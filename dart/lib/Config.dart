import 'feature/base/BaseFeature.dart';
import 'feature/test/TestFeature.dart';


// ignore: non_constant_identifier_names
final Map<String, BaseFeature Function()> FEATURE_CLASS = {
    'test': () => TestFeature(),

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
    'version': '0.0.1',
    'target': 'dart',

  };

  final Map<String, dynamic> feature = <String, dynamic>{
        'test': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
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
      'transactions_count': <String, dynamic>{},
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'actualBonusPoints',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$INTEGER`',
            },
          },
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'balanceAmount',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cvc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'exchangeFee',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'exchangeRate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'languageCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantAddress',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'messageType',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTraceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptFooter',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptHeader',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptLayout',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'svc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'userData',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/cancelTransaction',
              'parts': <dynamic>[
                'public',
                'cancelTransaction',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
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
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/checkCardBlackListed',
              'parts': <dynamic>[
                'checkCardBlackListed',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateType',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateXml',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalType',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'create_product',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/createProduct',
              'parts': <dynamic>[
                'createProduct',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'deactivationReason',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
      ],
      'name': 'deactivate_terminal',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/deactivateTerminal',
              'parts': <dynamic>[
                'deactivateTerminal',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txCount',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'txIdEnd',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txIdStart',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txSeqNoEnd',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'txSeqNoStart',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'txTotal',
          'type': '`\$INTEGER`',
        },
      ],
      'name': 'digital_services_api',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'params': <dynamic>[
                  <String, dynamic>{
                    'kind': 'param',
                    'name': 'file_id',
                    'orig': 'file_id',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportDownload/{fileId}',
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
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'file_id',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportMetadata',
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportMetadata',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'GET',
              'orig': '/public/digitalservices/mandatorClearingExportDownload/status',
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportDownload',
                'status',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[
          <dynamic>[
            'mandator_clearing_export_download',
          ],
        ],
      },
    },
    'ec_data_ecom': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'ecomData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'ec_data_ecom',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEcData',
              'parts': <dynamic>[
                'public',
                'getEcData',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecomSkey',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
      ],
      'name': 'ecom_parameter',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEcomParameters',
              'parts': <dynamic>[
                'public',
                'getEcomParameters',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'ecr_data',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEcrData',
              'parts': <dynamic>[
                'public',
                'getEcrData',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'emv_data',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getEmvData',
              'parts': <dynamic>[
                'public',
                'getEmvData',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'additionalData',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'corporateUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantCategoryCode',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sortingCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalIdAcq',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalIds',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'vuNummer',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/enableAcquiring',
              'parts': <dynamic>[
                'enableAcquiring',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/getMerchantContractNumber',
              'parts': <dynamic>[
                'getMerchantContractNumber',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'get_template_xml',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getTemplateXml',
              'parts': <dynamic>[
                'public',
                'getTemplateXml',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/introduceMandator',
              'parts': <dynamic>[
                'introduceMandator',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalTemplateDescription',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'introduce_package',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/introducePackage',
              'parts': <dynamic>[
                'introducePackage',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'kaDateTimeFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'kaDateTimeTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'keepAliveData',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalDateTimeFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalDateTimeTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'type': '`\$INTEGER`',
        },
      ],
      'name': 'keep_alive',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/keepalive',
              'parts': <dynamic>[
                'public',
                'keepalive',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminals',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/listTerminals',
              'parts': <dynamic>[
                'public',
                'listTerminals',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssZ',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssZ',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'records',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExport',
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExport',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'short': 'Start date for clearing export (inclusive)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'req': true,
          'short': 'End date for clearing export (inclusive)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'fileId',
          'short': 'Unique file identifier for tracking and downloading',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'filenameTemplate',
          'short': 'Optional filename template for the export file',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'status',
          'short': 'Processing status of the export request',
          'type': '`\$STRING`',
        },
      ],
      'name': 'mandator_clearing_export_download',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportDownload',
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportDownload',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'params': <dynamic>[
                  <String, dynamic>{
                    'kind': 'param',
                    'name': 'id',
                    'orig': 'file_id',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'GET',
              'orig': '/public/digitalservices/mandatorClearingExportDownload/{fileId}',
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
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'id',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
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
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ssz',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'records',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/mandatorClearingExportSummary',
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'mandatorClearingExportSummary',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingCurrency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingStatus',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateUUID',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'orderByTransactionDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'referencedTransactionId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'retrievalReferenceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sourceId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'wallet',
          'short': 'Filter by wallet type.',
          'type': '`\$STRING`',
        },
      ],
      'name': 'merchant_portal_services_api',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/transactionHistoryCsv',
              'parts': <dynamic>[
                'public',
                'transactionHistoryCsv',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'targetPackageorderuuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'targetProductorderuuid',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/moveTid',
              'parts': <dynamic>[
                'moveTid',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'short': 'Acquirer name parsed from KKG field',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'req': true,
          'short': 'Transaction amount in minor units (cents)',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'authorizationNumber',
          'short': 'Authorization number from the gateway',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'req': true,
          'short': 'Card number - 12 to 19 digits, must pass Luhn validation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardType',
          'short': 'Card type parsed from KKG field',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'short': 'Currency code - 3 uppercase letters (ISO 4217)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cvc',
          'short': 'Card verification code - 3-4 digits (optional)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateTimeTx',
          'short': 'Date and time of the transaction',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'expDate',
          'req': true,
          'short': 'Card expiry date in MMYY format',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantId',
          'short': 'Merchant ID (VU-NUMMER)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'short': 'Original transaction ID from gateway',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'password',
          'short': 'Terminal password sent as Kennwort in TECS XML (optional)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'short': 'Response code - 00 for success, otherwise error code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'short': 'Response message - \'Approved\' for success, error description otherwise',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'short': 'Terminal ID used for the transaction',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'short': 'Transaction ID generated by the backend',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txtype',
          'req': true,
          'short': 'Transaction type',
          'type': '`\$STRING`',
        },
      ],
      'name': 'payment_manual',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/paymentManual',
              'parts': <dynamic>[
                'public',
                'paymentManual',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'short': 'Transaction amount in minor units (cents)',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'short': 'Currency code - 3 uppercase letters (ISO 4217)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'device',
          'short': 'Device type that provided the SRED payload',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'devicePayload',
          'req': true,
          'short': 'SRED encrypted device payload from the device (minimum 32 characters)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'expDate',
          'short': 'Card expiry date in MMYY format',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'mode',
          'short': 'Decryption mode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'panMasked',
          'short': 'Masked PAN (first 6 and last 4 digits)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'password',
          'short': 'Terminal password sent as Kennwort in TECS XML (optional)',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serial',
          'short': 'Device serial number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serviceCode',
          'short': 'Service code from the card',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'short': 'Terminal ID - 8 digits',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txtype',
          'req': true,
          'short': 'Transaction type',
          'type': '`\$STRING`',
        },
      ],
      'name': 'payment_sred',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/paymentSred',
              'parts': <dynamic>[
                'public',
                'paymentSred',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'actualBonusPoints',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$INTEGER`',
            },
          },
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'balanceAmount',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumberReference',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cvc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'exchangeFee',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'exchangeRate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'languageCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantAddress',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'messageType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTraceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptFooter',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptHeader',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptLayout',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'svc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'userData',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/paymentTransaction',
              'parts': <dynamic>[
                'public',
                'paymentTransaction',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/preAuthCompletionTransaction',
              'parts': <dynamic>[
                'public',
                'preAuthCompletionTransaction',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'reactivationReason',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
      ],
      'name': 'reactivate_terminal',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/reactivateTerminal',
              'parts': <dynamic>[
                'reactivateTerminal',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'actualBonusPoints',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$INTEGER`',
            },
          },
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'balanceAmount',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cvc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'exchangeFee',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'exchangeRate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'languageCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantAddress',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'messageType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTraceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptFooter',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptHeader',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptLayout',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'svc',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'req': true,
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'txType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'userData',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/refundTransaction',
              'parts': <dynamic>[
                'public',
                'refundTransaction',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'partnerId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'partnerName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'register_tecs_company',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/registerTecsCompany',
              'parts': <dynamic>[
                'registerTecsCompany',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'corporateUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'packageOrderUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'productOrderUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tecsWebSecretKey',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalCountryCode',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'terminalIdAcq',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalLanguageCode',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalSerialNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tokenIOAlias',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tokenIOIban',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tokenIOMemberId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'webShopUrl',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/registerTerminal',
              'parts': <dynamic>[
                'registerTerminal',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'clearingDateFrom',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ss',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDateTo',
          'req': true,
          'short': 'Date and time in the format yyyy-MM-dd\'T\'HH:mm:ss',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateId',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'currency',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sumOverCreditTx',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'sumOverDebitTx',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'type': '`\$INTEGER`',
        },
      ],
      'name': 'report_data',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/digitalservices/reportData',
              'parts': <dynamic>[
                'public',
                'digitalservices',
                'reportData',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'acquirerTerminalId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'amount',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'applicationCryptogram',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'short': 'Authorization code returned by the acquirer; null when not available',
          'type': <dynamic>[
            '`\$ONE`',
            <dynamic>[
              '`\$STRING`',
              '`\$NULL`',
            ],
          ],
        },
        <String, dynamic>{
          'name': 'authorizationDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardEntry',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardExpiration',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmount',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'clearingBatchId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingCurrency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingProcessedDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingStatus',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clientId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'currency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cvm',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'ecrData',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvApplicationId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emvApplicationLabel',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalClientId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'originalTerminalId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'originalTransactionId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'paymentReason',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseCodeFromAS',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'retrievalReferenceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serviceCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'settlementStatus',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sourceId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseText',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalEndOfDayDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'terminalLocation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tipAmount',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionClearingDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionSeqNumber',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'transactionServerDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionSource',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/statusTransaction',
              'parts': <dynamic>[
                'public',
                'statusTransaction',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'configVersion',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'serialNumber',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tidSent',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/storeTerminalParameters',
              'parts': <dynamic>[
                'storeTerminalParameters',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'req': true,
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'duplicateTerminalIds',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminals',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/getTerminalId',
              'parts': <dynamic>[
                'public',
                'getTerminalId',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'authorizationCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'cardBrand',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingAmountTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingCurrency',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'clearingStatus',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateUUID',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'orderByTransactionDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'paymentTokenPublicId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'receiptNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'referencedTransactionId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'retrievalReferenceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sourceId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'tecsengineResponseCodeTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'terminalId',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'traceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionAmountTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionHistories',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'transactionId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionType',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'wallet',
          'short': 'Filter by wallet type.',
          'type': '`\$STRING`',
        },
      ],
      'name': 'transaction_history',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/mcom/transactionHistory',
              'parts': <dynamic>[
                'public',
                'mcom',
                'transactionHistory',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/transactionHistory',
              'parts': <dynamic>[
                'public',
                'transactionHistory',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'transactions_count': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'period',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionsCount',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'transactions_count',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/countAuthorisedTransactions',
              'parts': <dynamic>[
                'public',
                'countAuthorisedTransactions',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/countNotAuthorisedTransactions',
              'parts': <dynamic>[
                'public',
                'countNotAuthorisedTransactions',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionsCount',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/countTransactionsByCardBrand',
              'parts': <dynamic>[
                'public',
                'countTransactionsByCardBrand',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateFrom',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionDateTo',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'turnovers',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/transactionTurnover',
              'parts': <dynamic>[
                'public',
                'transactionTurnover',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'corporateUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'merchantCategoryCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'vuNummer',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zipcode',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/updateMerchant',
              'parts': <dynamic>[
                'public',
                'updateMerchant',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateName',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'templateXml',
          'req': true,
          'type': '`\$STRING`',
        },
      ],
      'name': 'update_template_xml',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'POST',
              'orig': '/public/updateTemplateXml',
              'parts': <dynamic>[
                'public',
                'updateTemplateXml',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'buildDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'version',
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
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'GET',
              'orig': '/public/version',
              'parts': <dynamic>[
                'public',
                'version',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
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
