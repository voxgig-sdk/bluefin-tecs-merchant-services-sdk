(* Generated API configuration (mirrors go core/config.go).
 *
 * make_config () — the embedded API model as a voxgig struct value.
 * make_feature name — the N-feature-safe factory the client uses. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Sdk_features

let make_config () : value =
  (jo [
    ("main", (jo [
      ("name", (Str "BluefinTecsMerchantServices"));
      ("slug", (Str "bluefin-tecs-merchant-services"));
      ("version", (Str "0.1.1"));
      ("target", (Str "ocaml")) ]));
    ("feature", (jo [
      ("test", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("transport", (Str "base")) ])) ]));
    ("options", (jo [
      ("base", (Str "https://test.tecs.at/merchantservices"));
      ("auth", (jo [
        ("prefix", (Str "Bearer")) ]));
      ("headers", (jo [
        ("content-type", (Str "application/json")) ]));
      ("entity", (jo [
        ("cancel_transaction", (empty_map ()));
        ("check_card_black_listed", (empty_map ()));
        ("create_product", (empty_map ()));
        ("deactivate_terminal", (empty_map ()));
        ("digital_services_api", (empty_map ()));
        ("ec_data_ecom", (empty_map ()));
        ("ecom_parameter", (empty_map ()));
        ("ecr_data", (empty_map ()));
        ("emv_data", (empty_map ()));
        ("enable_acquiring", (empty_map ()));
        ("get_merchant_contract_number", (empty_map ()));
        ("get_template_xml", (empty_map ()));
        ("introduce_mandator", (empty_map ()));
        ("introduce_package", (empty_map ()));
        ("keep_alive", (empty_map ()));
        ("list_terminal", (empty_map ()));
        ("mandator_clearing_export", (empty_map ()));
        ("mandator_clearing_export_download", (empty_map ()));
        ("mandator_clearing_export_summary", (empty_map ()));
        ("merchant_portal_services_api", (empty_map ()));
        ("move_tid", (empty_map ()));
        ("payment_manual", (empty_map ()));
        ("payment_sred", (empty_map ()));
        ("pre_auth_transaction_completion", (empty_map ()));
        ("reactivate_terminal", (empty_map ()));
        ("refund_transaction", (empty_map ()));
        ("register_tecs_company", (empty_map ()));
        ("register_terminal", (empty_map ()));
        ("report_data", (empty_map ()));
        ("status_transaction", (empty_map ()));
        ("store_terminal_parameter", (empty_map ()));
        ("terminal_id", (empty_map ()));
        ("transaction_history", (empty_map ()));
        ("transactions_count", (empty_map ()));
        ("transactions_count_card_brand", (empty_map ()));
        ("transactions_turnover", (empty_map ()));
        ("update_merchant", (empty_map ()));
        ("update_template_xml", (empty_map ()));
        ("version", (empty_map ())) ])) ]));
    ("entity", (jo [
      ("cancel_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "actualBonusPoints"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "balanceAmount"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cvc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "exchangeFee"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "exchangeRate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "languageCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantAddress"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "messageType"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTraceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptFooter"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptHeader"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptLayout"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "svc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "userData"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "cancel_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/cancelTransaction"));
                ("parts", (ja [
                  (Str "public");
                  (Str "cancelTransaction") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("check_card_black_listed", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "cardNo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "check_card_black_listed"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/checkCardBlackListed"));
                ("parts", (ja [
                  (Str "checkCardBlackListed") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("create_product", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateXml"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "create_product"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createProduct"));
                ("parts", (ja [
                  (Str "createProduct") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("deactivate_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "deactivationReason"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]) ]));
        ("name", (Str "deactivate_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/deactivateTerminal"));
                ("parts", (ja [
                  (Str "deactivateTerminal") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("digital_services_api", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txCount"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "txIdEnd"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txIdStart"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txSeqNoEnd"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "txSeqNoStart"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "txTotal"));
            ("type", (Str "`$INTEGER`")) ]) ]));
        ("name", (Str "digital_services_api"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("params", (ja [
                    (jo [
                      ("kind", (Str "param"));
                      ("name", (Str "file_id"));
                      ("orig", (Str "file_id"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload/{fileId}"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload");
                  (Str "{file_id}") ]));
                ("rename", (jo [
                  ("param", (jo [
                    ("fileId", (Str "file_id")) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "file_id") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]);
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportMetadata"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportMetadata") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ]));
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload/status"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload");
                  (Str "status") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (ja [
            (ja [
              (Str "mandator_clearing_export_download") ]) ])) ])) ]));
      ("ec_data_ecom", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "ecomData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "ec_data_ecom"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEcData"));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEcData") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("ecom_parameter", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "ecomPass"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecomSkey"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]) ]));
        ("name", (Str "ecom_parameter"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEcomParameters"));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEcomParameters") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("ecr_data", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "ecrData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "ecr_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEcrData"));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEcrData") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("emv_data", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "emvData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "emv_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEmvData"));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEmvData") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("enable_acquiring", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "accountNo"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "additionalData"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantCategoryCode"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sortingCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalIdAcq"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalIds"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "vuNummer"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "enable_acquiring"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/enableAcquiring"));
                ("parts", (ja [
                  (Str "enableAcquiring") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("get_merchant_contract_number", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "merchantContractNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "get_merchant_contract_number"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/getMerchantContractNumber"));
                ("parts", (ja [
                  (Str "getMerchantContractNumber") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("get_template_xml", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "get_template_xml"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getTemplateXml"));
                ("parts", (ja [
                  (Str "public");
                  (Str "getTemplateXml") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("introduce_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "mandatorName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "introduce_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/introduceMandator"));
                ("parts", (ja [
                  (Str "introduceMandator") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("introduce_package", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalTemplateDescription"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "introduce_package"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/introducePackage"));
                ("parts", (ja [
                  (Str "introducePackage") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("keep_alive", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "hwserialno"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "kaDateTimeFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "kaDateTimeTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "keepAliveData"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalDateTimeFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalDateTimeTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("type", (Str "`$INTEGER`")) ]) ]));
        ("name", (Str "keep_alive"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/keepalive"));
                ("parts", (ja [
                  (Str "public");
                  (Str "keepalive") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("list_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminals"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "list_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/listTerminals"));
                ("parts", (ja [
                  (Str "public");
                  (Str "listTerminals") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "records"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "mandator_clearing_export"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExport"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExport") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export_download", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("short", (Str "Start date for clearing export (inclusive)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("short", (Str "End date for clearing export (inclusive)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "fileId"));
            ("short", (Str "Unique file identifier for tracking and downloading"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "filenameTemplate"));
            ("short", (Str "Optional filename template for the export file"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "status"));
            ("short", (Str "Processing status of the export request"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "mandator_clearing_export_download"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ]));
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("params", (ja [
                    (jo [
                      ("kind", (Str "param"));
                      ("name", (Str "id"));
                      ("orig", (Str "file_id"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload/{fileId}"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload");
                  (Str "{id}") ]));
                ("rename", (jo [
                  ("param", (jo [
                    ("fileId", (Str "id")) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "id") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export_summary", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "records"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "mandator_clearing_export_summary"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportSummary"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportSummary") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("merchant_portal_services_api", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "3DSecure"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingCurrency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingStatus"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateUUID"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "orderByTransactionDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "referencedTransactionId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "retrievalReferenceNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sourceId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "wallet"));
            ("short", (Str "Filter by wallet type."));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "merchant_portal_services_api"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/transactionHistoryCsv"));
                ("parts", (ja [
                  (Str "public");
                  (Str "transactionHistoryCsv") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("move_tid", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "productorderuuids"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "targetPackageorderuuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "targetProductorderuuid"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "move_tid"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/moveTid"));
                ("parts", (ja [
                  (Str "moveTid") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("payment_manual", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerName"));
            ("short", (Str "Acquirer name parsed from KKG field"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("req", (Bool true));
            ("short", (Str "Transaction amount in minor units (cents)"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "authorizationNumber"));
            ("short", (Str "Authorization number from the gateway"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("req", (Bool true));
            ("short", (Str "Card number - 12 to 19 digits, must pass Luhn validation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardType"));
            ("short", (Str "Card type parsed from KKG field"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("short", (Str "Currency code - 3 uppercase letters (ISO 4217)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cvc"));
            ("short", (Str "Card verification code - 3-4 digits (optional)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "dateTimeTx"));
            ("short", (Str "Date and time of the transaction"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "expDate"));
            ("req", (Bool true));
            ("short", (Str "Card expiry date in MMYY format"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantId"));
            ("short", (Str "Merchant ID (VU-NUMMER)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("short", (Str "Original transaction ID from gateway"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "password"));
            ("short", (Str "Terminal password sent as Kennwort in TECS XML (optional)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("short", (Str "Response code - 00 for success, otherwise error code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("short", (Str "Response message - 'Approved' for success, error description otherwise"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("short", (Str "Terminal ID used for the transaction"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("short", (Str "Transaction ID generated by the backend"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txtype"));
            ("req", (Bool true));
            ("short", (Str "Transaction type"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "payment_manual"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/paymentManual"));
                ("parts", (ja [
                  (Str "public");
                  (Str "paymentManual") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("payment_sred", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "amount"));
            ("req", (Bool true));
            ("short", (Str "Transaction amount in minor units (cents)"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("short", (Str "Currency code - 3 uppercase letters (ISO 4217)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "device"));
            ("short", (Str "Device type that provided the SRED payload"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "devicePayload"));
            ("req", (Bool true));
            ("short", (Str "SRED encrypted device payload from the device (minimum 32 characters)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "expDate"));
            ("short", (Str "Card expiry date in MMYY format"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "mode"));
            ("short", (Str "Decryption mode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "panMasked"));
            ("short", (Str "Masked PAN (first 6 and last 4 digits)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "password"));
            ("short", (Str "Terminal password sent as Kennwort in TECS XML (optional)"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serial"));
            ("short", (Str "Device serial number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serviceCode"));
            ("short", (Str "Service code from the card"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("short", (Str "Terminal ID - 8 digits"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txtype"));
            ("req", (Bool true));
            ("short", (Str "Transaction type"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "payment_sred"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/paymentSred"));
                ("parts", (ja [
                  (Str "public");
                  (Str "paymentSred") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body.sred`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("pre_auth_transaction_completion", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "actualBonusPoints"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "balanceAmount"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumberReference"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cvc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "exchangeFee"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "exchangeRate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "languageCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantAddress"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "messageType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTraceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptFooter"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptHeader"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptLayout"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "svc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "userData"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "pre_auth_transaction_completion"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/paymentTransaction"));
                ("parts", (ja [
                  (Str "public");
                  (Str "paymentTransaction") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]);
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/preAuthCompletionTransaction"));
                ("parts", (ja [
                  (Str "public");
                  (Str "preAuthCompletionTransaction") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("reactivate_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "reactivationReason"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]) ]));
        ("name", (Str "reactivate_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/reactivateTerminal"));
                ("parts", (ja [
                  (Str "reactivateTerminal") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("refund_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "actualBonusPoints"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "balanceAmount"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cvc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "exchangeFee"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "exchangeRate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "languageCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantAddress"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "messageType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTraceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptFooter"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptHeader"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptLayout"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "svc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "userData"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "refund_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/refundTransaction"));
                ("parts", (ja [
                  (Str "public");
                  (Str "refundTransaction") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("register_tecs_company", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "partnerId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "partnerName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "register_tecs_company"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerTecsCompany"));
                ("parts", (ja [
                  (Str "registerTecsCompany") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("register_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "additionalData"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tecsWebSecretKey"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalCountryCode"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "terminalIdAcq"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalLanguageCode"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalSerialNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tokenIOAlias"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tokenIOIban"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tokenIOMemberId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "webShopUrl"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "register_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerTerminal"));
                ("parts", (ja [
                  (Str "registerTerminal") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("report_data", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "cardBrandReportData"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ss"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ss"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sumOverCreditTx"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "sumOverDebitTx"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("type", (Str "`$INTEGER`")) ]) ]));
        ("name", (Str "report_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/reportData"));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "reportData") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("status_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerTerminalId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "applicationCryptogram"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("short", (Str "Authorization code returned by the acquirer; null when not available"));
            ("type", (ja [
              (Str "`$ONE`");
              (ja [
                (Str "`$STRING`");
                (Str "`$NULL`") ]) ])) ]);
          (jo [
            ("name", (Str "authorizationDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardEntry"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardExpiration"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmount"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "clearingBatchId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingCurrency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingProcessedDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingStatus"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "currency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cvm"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvApplicationId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvApplicationLabel"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalClientId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTerminalId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseCodeFromAS"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "retrievalReferenceNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serviceCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "settlementStatus"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sourceId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseText"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalEndOfDayDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tipAmount"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionClearingDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionSeqNumber"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "transactionServerDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionSource"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "status_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/statusTransaction"));
                ("parts", (ja [
                  (Str "public");
                  (Str "statusTransaction") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("store_terminal_parameter", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acqTabNexo"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "configVersion"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tidSent"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "store_terminal_parameter"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/storeTerminalParameters"));
                ("parts", (ja [
                  (Str "storeTerminalParameters") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("terminal_id", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "deviceSerialNumber"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "duplicateTerminalIds"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminals"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "terminal_id"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getTerminalId"));
                ("parts", (ja [
                  (Str "public");
                  (Str "getTerminalId") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transaction_history", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "3DSecure"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingCurrency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingStatus"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateUUID"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "orderByTransactionDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "paymentTokenPublicId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "referencedTransactionId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "retrievalReferenceNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sourceId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionHistories"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "wallet"));
            ("short", (Str "Filter by wallet type."));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "transaction_history"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/mcom/transactionHistory"));
                ("parts", (ja [
                  (Str "public");
                  (Str "mcom");
                  (Str "transactionHistory") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]);
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/transactionHistory"));
                ("parts", (ja [
                  (Str "public");
                  (Str "transactionHistory") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_count", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionsCount"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "transactions_count"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/countAuthorisedTransactions"));
                ("parts", (ja [
                  (Str "public");
                  (Str "countAuthorisedTransactions") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]);
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/countNotAuthorisedTransactions"));
                ("parts", (ja [
                  (Str "public");
                  (Str "countNotAuthorisedTransactions") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_count_card_brand", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionsCount"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "transactions_count_card_brand"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/countTransactionsByCardBrand"));
                ("parts", (ja [
                  (Str "public");
                  (Str "countTransactionsByCardBrand") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_turnover", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "turnovers"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "transactions_turnover"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/transactionTurnover"));
                ("parts", (ja [
                  (Str "public");
                  (Str "transactionTurnover") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("update_merchant", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "country"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantCategoryCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "vuNummer"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zipcode"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "update_merchant"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/updateMerchant"));
                ("parts", (ja [
                  (Str "public");
                  (Str "updateMerchant") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("update_template_xml", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateXml"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "update_template_xml"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/updateTemplateXml"));
                ("parts", (ja [
                  (Str "public");
                  (Str "updateTemplateXml") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("version", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "appName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "buildDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "version"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "version"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/public/version"));
                ("parts", (ja [
                  (Str "public");
                  (Str "version") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ])) ])) ])

let make_feature (name : string) : feature =
  match name with
  | "test" -> test_feature ()
  | _ -> base_feature ()
