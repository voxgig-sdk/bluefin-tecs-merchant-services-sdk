# BluefinTecsMerchantServices SDK configuration
#
# Returns the resolved SDK config as vendored-struct nodes (via
# BluefinTecsMerchantServices.Helpers.deep/1). Do not edit by hand.

defmodule BluefinTecsMerchantServices.Config do
  def make_config do
    BluefinTecsMerchantServices.Helpers.deep(%{
      "main" => %{
        "name" => "BluefinTecsMerchantServices",
        "slug" => "bluefin-tecs-merchant-services",
        "version" => "0.1.1",
        "target" => "elixir"
      },
      "feature" => %{
        "test" => %{
          "options" => %{
            "active" => false
          }
        },
      },
      "options" => %{
        "base" => "https://test.tecs.at/merchantservices",
        "auth" => %{
          "prefix" => "Bearer"
        },
        "headers" => %{
          "content-type" => "application/json"
        },
        "entity" => %{
          "cancel_transaction" => %{},
          "check_card_black_listed" => %{},
          "create_product" => %{},
          "deactivate_terminal" => %{},
          "digital_services_api" => %{},
          "ec_data_ecom" => %{},
          "ecom_parameter" => %{},
          "ecr_data" => %{},
          "emv_data" => %{},
          "enable_acquiring" => %{},
          "get_merchant_contract_number" => %{},
          "get_template_xml" => %{},
          "introduce_mandator" => %{},
          "introduce_package" => %{},
          "keep_alive" => %{},
          "list_terminal" => %{},
          "mandator_clearing_export" => %{},
          "mandator_clearing_export_download" => %{},
          "mandator_clearing_export_summary" => %{},
          "merchant_portal_services_api" => %{},
          "move_tid" => %{},
          "payment_manual" => %{},
          "payment_sred" => %{},
          "pre_auth_transaction_completion" => %{},
          "reactivate_terminal" => %{},
          "refund_transaction" => %{},
          "register_tecs_company" => %{},
          "register_terminal" => %{},
          "report_data" => %{},
          "status_transaction" => %{},
          "store_terminal_parameter" => %{},
          "terminal_id" => %{},
          "transaction_history" => %{},
          "transactions_count" => %{},
          "transactions_count_card_brand" => %{},
          "transactions_turnover" => %{},
          "update_merchant" => %{},
          "update_template_xml" => %{},
          "version" => %{}
        }
      },
      "entity" => %{
        "cancel_transaction" => %{
          "fields" => [
            %{
              "name" => "acquirerId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "acquirerName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "actualBonusPoints",
              "type" => "`$STRING`"
            },
            %{
              "name" => "amount",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$INTEGER`"
                }
              },
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "authorizationCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "balanceAmount",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardBrand",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clientId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "cvc",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecrData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "emvData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "exchangeFee",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "exchangeRate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "languageCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantAddress",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "messageType",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "originalTraceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "originalTransactionId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "password",
              "type" => "`$STRING`"
            },
            %{
              "name" => "paymentReason",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptFooter",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptHeader",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptLayout",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "receiptNumber",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serialNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "svc",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "terminalLocation",
              "type" => "`$STRING`"
            },
            %{
              "name" => "traceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionDate",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "txType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "userData",
              "type" => "`$STRING`"
            }
          ],
          "name" => "cancel_transaction",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/cancelTransaction",
                  "parts" => [
                    "public",
                    "cancelTransaction"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "check_card_black_listed" => %{
          "fields" => [
            %{
              "name" => "cardNo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            }
          ],
          "name" => "check_card_black_listed",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{
                    "header" => [
                      %{
                        "kind" => "header",
                        "name" => "authorization",
                        "orig" => "authorization",
                        "reqd" => true,
                        "type" => "`$STRING`"
                      }
                    ]
                  },
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/checkCardBlackListed",
                  "parts" => [
                    "checkCardBlackListed"
                  ],
                  "select" => %{
                    "exist" => [
                      "authorization"
                    ]
                  },
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "create_product" => %{
          "fields" => [
            %{
              "name" => "acquirerId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateName",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateType",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateXml",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalType",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "create_product",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/createProduct",
                  "parts" => [
                    "createProduct"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "deactivate_terminal" => %{
          "fields" => [
            %{
              "name" => "corporateUuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "deactivationReason",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "packageOrderUuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "productOrderUuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            }
          ],
          "name" => "deactivate_terminal",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/deactivateTerminal",
                  "parts" => [
                    "deactivateTerminal"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "digital_services_api" => %{
          "fields" => [
            %{
              "name" => "clearingDateFrom",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingDateTo",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "txCount",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "txIdEnd",
              "type" => "`$STRING`"
            },
            %{
              "name" => "txIdStart",
              "type" => "`$STRING`"
            },
            %{
              "name" => "txSeqNoEnd",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "txSeqNoStart",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "txTotal",
              "type" => "`$INTEGER`"
            }
          ],
          "name" => "digital_services_api",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{
                    "params" => [
                      %{
                        "kind" => "param",
                        "name" => "file_id",
                        "orig" => "file_id",
                        "reqd" => true,
                        "type" => "`$STRING`"
                      }
                    ]
                  },
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExportDownload",
                    "{file_id}"
                  ],
                  "rename" => %{
                    "param" => %{
                      "fileId" => "file_id"
                    }
                  },
                  "select" => %{
                    "exist" => [
                      "file_id"
                    ]
                  },
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                },
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/digitalservices/mandatorClearingExportMetadata",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExportMetadata"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            },
            "load" => %{
              "input" => "data",
              "name" => "load",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/public/digitalservices/mandatorClearingExportDownload/status",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExportDownload",
                    "status"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => [
              [
                "mandator_clearing_export_download"
              ]
            ]
          }
        },
        "ec_data_ecom" => %{
          "fields" => [
            %{
              "name" => "ecomData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionId",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "ec_data_ecom",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/getEcData",
                  "parts" => [
                    "public",
                    "getEcData"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "ecom_parameter" => %{
          "fields" => [
            %{
              "name" => "ecomPass",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecomSkey",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            }
          ],
          "name" => "ecom_parameter",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/getEcomParameters",
                  "parts" => [
                    "public",
                    "getEcomParameters"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "ecr_data" => %{
          "fields" => [
            %{
              "name" => "ecrData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionId",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "ecr_data",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/getEcrData",
                  "parts" => [
                    "public",
                    "getEcrData"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "emv_data" => %{
          "fields" => [
            %{
              "name" => "emvData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionId",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "emv_data",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/getEmvData",
                  "parts" => [
                    "public",
                    "getEmvData"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "enable_acquiring" => %{
          "fields" => [
            %{
              "name" => "accountNo",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "additionalData",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "corporateUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantCategoryCode",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "packageOrderUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "productOrderUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "sortingCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "templateName",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalIdAcq",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalIds",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "vuNummer",
              "type" => "`$STRING`"
            }
          ],
          "name" => "enable_acquiring",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/enableAcquiring",
                  "parts" => [
                    "enableAcquiring"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "get_merchant_contract_number" => %{
          "fields" => [
            %{
              "name" => "merchantContractNumber",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            }
          ],
          "name" => "get_merchant_contract_number",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/getMerchantContractNumber",
                  "parts" => [
                    "getMerchantContractNumber"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "get_template_xml" => %{
          "fields" => [
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateName",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "get_template_xml",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/getTemplateXml",
                  "parts" => [
                    "public",
                    "getTemplateXml"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "introduce_mandator" => %{
          "fields" => [
            %{
              "name" => "mandatorName",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            }
          ],
          "name" => "introduce_mandator",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/introduceMandator",
                  "parts" => [
                    "introduceMandator"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "introduce_package" => %{
          "fields" => [
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalTemplateDescription",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "introduce_package",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/introducePackage",
                  "parts" => [
                    "introducePackage"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "keep_alive" => %{
          "fields" => [
            %{
              "name" => "hwserialno",
              "type" => "`$STRING`"
            },
            %{
              "name" => "kaDateTimeFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "kaDateTimeTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "keepAliveData",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "pagination",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalDateTimeFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalDateTimeTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "type" => "`$INTEGER`"
            }
          ],
          "name" => "keep_alive",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/keepalive",
                  "parts" => [
                    "public",
                    "keepalive"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "list_terminal" => %{
          "fields" => [
            %{
              "name" => "corporateUuid",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "filter",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "pagination",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminals",
              "type" => "`$ARRAY`"
            }
          ],
          "name" => "list_terminal",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/listTerminals",
                  "parts" => [
                    "public",
                    "listTerminals"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "mandator_clearing_export" => %{
          "fields" => [
            %{
              "name" => "clearingDateFrom",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingDateTo",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
              "type" => "`$STRING`"
            },
            %{
              "name" => "pagination",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "records",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            }
          ],
          "name" => "mandator_clearing_export",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/digitalservices/mandatorClearingExport",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExport"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "mandator_clearing_export_download" => %{
          "fields" => [
            %{
              "name" => "clearingDateFrom",
              "req" => true,
              "short" => "Start date for clearing export (inclusive)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingDateTo",
              "req" => true,
              "short" => "End date for clearing export (inclusive)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "fileId",
              "short" => "Unique file identifier for tracking and downloading",
              "type" => "`$STRING`"
            },
            %{
              "name" => "filenameTemplate",
              "short" => "Optional filename template for the export file",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "status",
              "short" => "Processing status of the export request",
              "type" => "`$STRING`"
            }
          ],
          "name" => "mandator_clearing_export_download",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/digitalservices/mandatorClearingExportDownload",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExportDownload"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            },
            "load" => %{
              "input" => "data",
              "name" => "load",
              "points" => [
                %{
                  "args" => %{
                    "params" => [
                      %{
                        "kind" => "param",
                        "name" => "id",
                        "orig" => "file_id",
                        "reqd" => true,
                        "type" => "`$STRING`"
                      }
                    ]
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExportDownload",
                    "{id}"
                  ],
                  "rename" => %{
                    "param" => %{
                      "fileId" => "id"
                    }
                  },
                  "select" => %{
                    "exist" => [
                      "id"
                    ]
                  },
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "mandator_clearing_export_summary" => %{
          "fields" => [
            %{
              "name" => "clearingDateFrom",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingDateTo",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
              "type" => "`$STRING`"
            },
            %{
              "name" => "records",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            }
          ],
          "name" => "mandator_clearing_export_summary",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/digitalservices/mandatorClearingExportSummary",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "mandatorClearingExportSummary"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "merchant_portal_services_api" => %{
          "fields" => [
            %{
              "name" => "3DSecure",
              "type" => "`$STRING`"
            },
            %{
              "name" => "authorizationCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardBrand",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingAmountFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingAmountTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingCurrency",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingStatus",
              "type" => "`$STRING`"
            },
            %{
              "name" => "corporateUUID",
              "type" => "`$STRING`"
            },
            %{
              "name" => "orderByTransactionDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "pagination",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "receiptNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "referencedTransactionId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "retrievalReferenceNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "sourceId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "tecsengineResponseCodeFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tecsengineResponseCodeTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "traceNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionAmountFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionAmountTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "wallet",
              "short" => "Filter by wallet type.",
              "type" => "`$STRING`"
            }
          ],
          "name" => "merchant_portal_services_api",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/transactionHistoryCsv",
                  "parts" => [
                    "public",
                    "transactionHistoryCsv"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "move_tid" => %{
          "fields" => [
            %{
              "name" => "productorderuuids",
              "req" => true,
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "targetPackageorderuuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "targetProductorderuuid",
              "type" => "`$STRING`"
            }
          ],
          "name" => "move_tid",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/moveTid",
                  "parts" => [
                    "moveTid"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "payment_manual" => %{
          "fields" => [
            %{
              "name" => "acquirerName",
              "short" => "Acquirer name parsed from KKG field",
              "type" => "`$STRING`"
            },
            %{
              "name" => "amount",
              "req" => true,
              "short" => "Transaction amount in minor units (cents)",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "authorizationNumber",
              "short" => "Authorization number from the gateway",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardNumber",
              "req" => true,
              "short" => "Card number - 12 to 19 digits, must pass Luhn validation",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardType",
              "short" => "Card type parsed from KKG field",
              "type" => "`$STRING`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "short" => "Currency code - 3 uppercase letters (ISO 4217)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cvc",
              "short" => "Card verification code - 3-4 digits (optional)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "dateTimeTx",
              "short" => "Date and time of the transaction",
              "type" => "`$STRING`"
            },
            %{
              "name" => "expDate",
              "req" => true,
              "short" => "Card expiry date in MMYY format",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantId",
              "short" => "Merchant ID (VU-NUMMER)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "originalTransactionId",
              "short" => "Original transaction ID from gateway",
              "type" => "`$STRING`"
            },
            %{
              "name" => "password",
              "short" => "Terminal password sent as Kennwort in TECS XML (optional)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "short" => "Response code - 00 for success, otherwise error code",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseMessage",
              "short" => "Response message - 'Approved' for success, error description otherwise",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "short" => "Terminal ID used for the transaction",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionId",
              "short" => "Transaction ID generated by the backend",
              "type" => "`$STRING`"
            },
            %{
              "name" => "txtype",
              "req" => true,
              "short" => "Transaction type",
              "type" => "`$STRING`"
            }
          ],
          "name" => "payment_manual",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/paymentManual",
                  "parts" => [
                    "public",
                    "paymentManual"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "payment_sred" => %{
          "fields" => [
            %{
              "name" => "amount",
              "req" => true,
              "short" => "Transaction amount in minor units (cents)",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "short" => "Currency code - 3 uppercase letters (ISO 4217)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "device",
              "short" => "Device type that provided the SRED payload",
              "type" => "`$STRING`"
            },
            %{
              "name" => "devicePayload",
              "req" => true,
              "short" => "SRED encrypted device payload from the device (minimum 32 characters)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "expDate",
              "short" => "Card expiry date in MMYY format",
              "type" => "`$STRING`"
            },
            %{
              "name" => "mode",
              "short" => "Decryption mode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "panMasked",
              "short" => "Masked PAN (first 6 and last 4 digits)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "password",
              "short" => "Terminal password sent as Kennwort in TECS XML (optional)",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serial",
              "short" => "Device serial number",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serviceCode",
              "short" => "Service code from the card",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "short" => "Terminal ID - 8 digits",
              "type" => "`$STRING`"
            },
            %{
              "name" => "txtype",
              "req" => true,
              "short" => "Transaction type",
              "type" => "`$STRING`"
            }
          ],
          "name" => "payment_sred",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/paymentSred",
                  "parts" => [
                    "public",
                    "paymentSred"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body.sred`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "pre_auth_transaction_completion" => %{
          "fields" => [
            %{
              "name" => "acquirerId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "acquirerName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "actualBonusPoints",
              "type" => "`$STRING`"
            },
            %{
              "name" => "amount",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$INTEGER`"
                }
              },
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "authorizationCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "balanceAmount",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardBrand",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardNumberReference",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "clientId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "cvc",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecrData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "emvData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "exchangeFee",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "exchangeRate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "languageCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantAddress",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "messageType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "originalTraceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "originalTransactionId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "password",
              "type" => "`$STRING`"
            },
            %{
              "name" => "paymentReason",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptFooter",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptHeader",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptLayout",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "receiptNumber",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serialNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "svc",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "terminalLocation",
              "type" => "`$STRING`"
            },
            %{
              "name" => "traceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionDate",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "txType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "userData",
              "type" => "`$STRING`"
            }
          ],
          "name" => "pre_auth_transaction_completion",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/paymentTransaction",
                  "parts" => [
                    "public",
                    "paymentTransaction"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                },
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/preAuthCompletionTransaction",
                  "parts" => [
                    "public",
                    "preAuthCompletionTransaction"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "reactivate_terminal" => %{
          "fields" => [
            %{
              "name" => "corporateUuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "packageOrderUuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "productOrderUuid",
              "type" => "`$STRING`"
            },
            %{
              "name" => "reactivationReason",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            }
          ],
          "name" => "reactivate_terminal",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/reactivateTerminal",
                  "parts" => [
                    "reactivateTerminal"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "refund_transaction" => %{
          "fields" => [
            %{
              "name" => "acquirerId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "acquirerName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "actualBonusPoints",
              "type" => "`$STRING`"
            },
            %{
              "name" => "amount",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$INTEGER`"
                }
              },
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "authorizationCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "balanceAmount",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardBrand",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clientId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "cvc",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecrData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "emvData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "exchangeFee",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "exchangeRate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "languageCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantAddress",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "messageType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "originalTraceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "originalTransactionId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "password",
              "type" => "`$STRING`"
            },
            %{
              "name" => "paymentReason",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptFooter",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptHeader",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptLayout",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "receiptNumber",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serialNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "svc",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "req" => true,
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "terminalLocation",
              "type" => "`$STRING`"
            },
            %{
              "name" => "traceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionDate",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionId",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "txType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "userData",
              "type" => "`$STRING`"
            }
          ],
          "name" => "refund_transaction",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/refundTransaction",
                  "parts" => [
                    "public",
                    "refundTransaction"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "register_tecs_company" => %{
          "fields" => [
            %{
              "name" => "corporateUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "packageOrderUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "partnerId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "partnerName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "productOrderUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateName",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "register_tecs_company",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/registerTecsCompany",
                  "parts" => [
                    "registerTecsCompany"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "register_terminal" => %{
          "fields" => [
            %{
              "name" => "additionalData",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "corporateUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "packageOrderUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "productOrderUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tecsWebSecretKey",
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateName",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalCountryCode",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "terminalIdAcq",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalLanguageCode",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalLocation",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalSerialNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tokenIOAlias",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tokenIOIban",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tokenIOMemberId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "webShopUrl",
              "type" => "`$STRING`"
            }
          ],
          "name" => "register_terminal",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/registerTerminal",
                  "parts" => [
                    "registerTerminal"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "report_data" => %{
          "fields" => [
            %{
              "name" => "cardBrandReportData",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "clearingDateFrom",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingDateTo",
              "req" => true,
              "short" => "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
              "type" => "`$STRING`"
            },
            %{
              "name" => "corporateId",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "currency",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "sumOverCreditTx",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "sumOverDebitTx",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "terminalId",
              "type" => "`$INTEGER`"
            }
          ],
          "name" => "report_data",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/digitalservices/reportData",
                  "parts" => [
                    "public",
                    "digitalservices",
                    "reportData"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "status_transaction" => %{
          "fields" => [
            %{
              "name" => "acquirerName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "acquirerTerminalId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "amount",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "applicationCryptogram",
              "type" => "`$STRING`"
            },
            %{
              "name" => "authorizationCode",
              "short" => "Authorization code returned by the acquirer; null when not available",
              "type" => [
                "`$ONE`",
                [
                  "`$STRING`",
                  "`$NULL`"
                ]
              ]
            },
            %{
              "name" => "authorizationDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardBrand",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardEntry",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardExpiration",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingAmount",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "clearingBatchId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingCurrency",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingProcessedDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingStatus",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clientId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "currency",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cvm",
              "type" => "`$STRING`"
            },
            %{
              "name" => "ecrData",
              "type" => "`$STRING`"
            },
            %{
              "name" => "emvApplicationId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "emvApplicationLabel",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "originalClientId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "originalTerminalId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "originalTransactionId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "paymentReason",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseCodeFromAS",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "retrievalReferenceNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serviceCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "settlementStatus",
              "type" => "`$STRING`"
            },
            %{
              "name" => "sourceId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "tecsengineResponseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "tecsengineResponseText",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalEndOfDayDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "terminalLocation",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tipAmount",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "traceNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionClearingDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionSeqNumber",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "transactionServerDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionSource",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "type" => "`$STRING`"
            }
          ],
          "name" => "status_transaction",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/statusTransaction",
                  "parts" => [
                    "public",
                    "statusTransaction"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "store_terminal_parameter" => %{
          "fields" => [
            %{
              "name" => "acqTabNexo",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "configVersion",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "serialNumber",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "tidSent",
              "type" => "`$STRING`"
            }
          ],
          "name" => "store_terminal_parameter",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/storeTerminalParameters",
                  "parts" => [
                    "storeTerminalParameters"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "terminal_id" => %{
          "fields" => [
            %{
              "name" => "deviceSerialNumber",
              "req" => true,
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "duplicateTerminalIds",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminals",
              "type" => "`$ARRAY`"
            }
          ],
          "name" => "terminal_id",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/getTerminalId",
                  "parts" => [
                    "public",
                    "getTerminalId"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "transaction_history" => %{
          "fields" => [
            %{
              "name" => "3DSecure",
              "type" => "`$STRING`"
            },
            %{
              "name" => "authorizationCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "cardBrand",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingAmountFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingAmountTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingCurrency",
              "type" => "`$STRING`"
            },
            %{
              "name" => "clearingStatus",
              "type" => "`$STRING`"
            },
            %{
              "name" => "corporateUUID",
              "type" => "`$STRING`"
            },
            %{
              "name" => "orderByTransactionDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "pagination",
              "type" => "`$OBJECT`"
            },
            %{
              "name" => "paymentTokenPublicId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "receiptNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "referencedTransactionId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "retrievalReferenceNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "sourceId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "tecsengineResponseCodeFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "tecsengineResponseCodeTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "terminalId",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "traceNumber",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionAmountFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionAmountTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateFrom",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateTo",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionHistories",
              "type" => "`$ARRAY`"
            },
            %{
              "name" => "transactionId",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionType",
              "type" => "`$STRING`"
            },
            %{
              "name" => "wallet",
              "short" => "Filter by wallet type.",
              "type" => "`$STRING`"
            }
          ],
          "name" => "transaction_history",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/mcom/transactionHistory",
                  "parts" => [
                    "public",
                    "mcom",
                    "transactionHistory"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                },
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/transactionHistory",
                  "parts" => [
                    "public",
                    "transactionHistory"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "transactions_count" => %{
          "fields" => [
            %{
              "name" => "period",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateFrom",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateTo",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionsCount",
              "type" => "`$ARRAY`"
            }
          ],
          "name" => "transactions_count",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/countAuthorisedTransactions",
                  "parts" => [
                    "public",
                    "countAuthorisedTransactions"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                },
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/countNotAuthorisedTransactions",
                  "parts" => [
                    "public",
                    "countNotAuthorisedTransactions"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "transactions_count_card_brand" => %{
          "fields" => [
            %{
              "name" => "period",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateFrom",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateTo",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionsCount",
              "type" => "`$ARRAY`"
            }
          ],
          "name" => "transactions_count_card_brand",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/countTransactionsByCardBrand",
                  "parts" => [
                    "public",
                    "countTransactionsByCardBrand"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "transactions_turnover" => %{
          "fields" => [
            %{
              "name" => "period",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateFrom",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "transactionDateTo",
              "op" => %{
                "create" => %{
                  "req" => true,
                  "type" => "`$STRING`"
                }
              },
              "type" => "`$STRING`"
            },
            %{
              "name" => "turnovers",
              "type" => "`$ARRAY`"
            }
          ],
          "name" => "transactions_turnover",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/transactionTurnover",
                  "parts" => [
                    "public",
                    "transactionTurnover"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "update_merchant" => %{
          "fields" => [
            %{
              "name" => "city",
              "type" => "`$STRING`"
            },
            %{
              "name" => "corporateUuid",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "country",
              "type" => "`$STRING`"
            },
            %{
              "name" => "merchantCategoryCode",
              "type" => "`$STRING`"
            },
            %{
              "name" => "name",
              "type" => "`$STRING`"
            },
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "state",
              "type" => "`$STRING`"
            },
            %{
              "name" => "street",
              "type" => "`$STRING`"
            },
            %{
              "name" => "vuNummer",
              "type" => "`$STRING`"
            },
            %{
              "name" => "zipcode",
              "type" => "`$STRING`"
            }
          ],
          "name" => "update_merchant",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/updateMerchant",
                  "parts" => [
                    "public",
                    "updateMerchant"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "update_template_xml" => %{
          "fields" => [
            %{
              "name" => "responseCode",
              "type" => "`$INTEGER`"
            },
            %{
              "name" => "responseMessage",
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateName",
              "req" => true,
              "type" => "`$STRING`"
            },
            %{
              "name" => "templateXml",
              "req" => true,
              "type" => "`$STRING`"
            }
          ],
          "name" => "update_template_xml",
          "op" => %{
            "create" => %{
              "input" => "data",
              "name" => "create",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/public/updateTemplateXml",
                  "parts" => [
                    "public",
                    "updateTemplateXml"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        },
        "version" => %{
          "fields" => [
            %{
              "name" => "appName",
              "type" => "`$STRING`"
            },
            %{
              "name" => "buildDate",
              "type" => "`$STRING`"
            },
            %{
              "name" => "version",
              "type" => "`$STRING`"
            }
          ],
          "name" => "version",
          "op" => %{
            "load" => %{
              "input" => "data",
              "name" => "load",
              "points" => [
                %{
                  "args" => %{},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/public/version",
                  "parts" => [
                    "public",
                    "version"
                  ],
                  "select" => %{},
                  "transform" => %{
                    "req" => "`reqdata`",
                    "res" => "`body`"
                  }
                }
              ]
            }
          },
          "relations" => %{
            "ancestors" => []
          }
        }
      }
    })
  end

  # SHARED CONFIG (sdkgen rung L2). See the data branch for the rationale, and
  # for why the cached handle is validated on read.
  @shared_key {__MODULE__, :shared_config}

  # The process-wide config, built once on first use. The returned node is
  # SHARED: treat it as read-only. Callers that need to mutate should use
  # make_config, which always returns a fresh copy.
  def shared_config do
    cached = :persistent_term.get(@shared_key, nil)

    if cached != nil and usable?(cached) do
      cached
    else
      cfg = make_config()
      :persistent_term.put(@shared_key, cfg)
      cfg
    end
  end

  defp usable?(cfg) do
    Voxgig.Struct.getprop(cfg, "main")
    true
  rescue
    ArgumentError -> false
  end
end
