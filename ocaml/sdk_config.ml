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
      ("name", (Str "BluefinTecsMerchantServices")) ]));
    ("feature", (jo [
      ("test", (jo [
        ("options", (jo [
          ("active", (Bool false)) ])) ])) ]));
    ("options", (jo [
      ("base", (Str "https://test.tecs.at/merchantservices"));
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
        ("version", (empty_map ())) ]));
      ("auth", (jo [
        ("prefix", (Str "Bearer")) ])) ]));
    ("entity", (jo [
      ("cancel_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "actualBonusPoints"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "amount"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "balanceAmount"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clientId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cvc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecrData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emvData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchangeFee"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchangeRate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "languageCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantAddress"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "messageType"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTraceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTransactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "paymentReason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptFooter"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptHeader"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptLayout"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serialNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (31.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "svc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (32.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalLocation"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "traceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDate"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "userData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (39.))) ]) ]));
        ("name", (Str "cancel_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("check_card_black_listed", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "check_card_black_listed"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("create_product", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateXml"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]) ]));
        ("name", (Str "create_product"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createProduct"));
                ("parts", (ja [
                  (Str "createProduct") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("deactivate_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "deactivationReason"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "productOrderUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (6.))) ]) ]));
        ("name", (Str "deactivate_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/deactivateTerminal"));
                ("parts", (ja [
                  (Str "deactivateTerminal") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("digital_services_api", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txCount"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txIdEnd"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txIdStart"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txSeqNoEnd"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txSeqNoStart"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txTotal"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]) ]));
        ("name", (Str "digital_services_api"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("params", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "param"));
                      ("name", (Str "file_id"));
                      ("orig", (Str "file_id"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`"));
                      ("index$", (Num (0.))) ]) ])) ]));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]);
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (1.))) ]) ]));
            ("key$", (Str "create")) ]));
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "load")) ])) ]));
        ("relations", (jo [
          ("ancestors", (ja [
            (ja [
              (Str "mandator_clearing_export_download") ]) ])) ])) ]));
      ("ec_data_ecom", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecomData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "ec_data_ecom"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("ecom_parameter", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecomPass"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecomSkey"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]) ]));
        ("name", (Str "ecom_parameter"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("ecr_data", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecrData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "ecr_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("emv_data", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "emvData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "emv_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("enable_acquiring", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "accountNo"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "additionalData"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantCategoryCode"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "productOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sortingCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalIdAcq"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalIds"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "vuNummer"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]) ]));
        ("name", (Str "enable_acquiring"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/enableAcquiring"));
                ("parts", (ja [
                  (Str "enableAcquiring") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("get_merchant_contract_number", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantContractNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "get_merchant_contract_number"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/getMerchantContractNumber"));
                ("parts", (ja [
                  (Str "getMerchantContractNumber") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("get_template_xml", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "get_template_xml"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("introduce_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "mandatorName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "introduce_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/introduceMandator"));
                ("parts", (ja [
                  (Str "introduceMandator") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("introduce_package", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalTemplateDescription"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "introduce_package"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/introducePackage"));
                ("parts", (ja [
                  (Str "introducePackage") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("keep_alive", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "hwserialno"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "kaDateTimeFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "kaDateTimeTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "keepAliveData"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalDateTimeFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalDateTimeTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]) ]));
        ("name", (Str "keep_alive"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("list_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "filter"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminals"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "list_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "records"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "mandator_clearing_export"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export_download", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "fileId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "filenameTemplate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "status"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]) ]));
        ("name", (Str "mandator_clearing_export_download"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ]));
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("params", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "param"));
                      ("name", (Str "id"));
                      ("orig", (Str "file_id"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`"));
                      ("index$", (Num (0.))) ]) ])) ]));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "load")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export_summary", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "records"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]) ]));
        ("name", (Str "mandator_clearing_export_summary"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("merchant_portal_services_api", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "3DSecure"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingAmountFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingAmountTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingCurrency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingStatus"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUUID"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "orderByTransactionDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "referencedTransactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "retrievalReferenceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sourceId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengineResponseCodeFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengineResponseCodeTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "traceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionAmountFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionAmountTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "wallet"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]) ]));
        ("name", (Str "merchant_portal_services_api"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("move_tid", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "productorderuuids"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "targetPackageorderuuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "targetProductorderuuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]) ]));
        ("name", (Str "move_tid"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/moveTid"));
                ("parts", (ja [
                  (Str "moveTid") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("payment_manual", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "amount"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cvc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "dateTimeTx"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "expDate"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTransactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txtype"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]) ]));
        ("name", (Str "payment_manual"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("payment_sred", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "amount"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "device"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "devicePayload"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "expDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "mode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "panMasked"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serial"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serviceCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txtype"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]) ]));
        ("name", (Str "payment_sred"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("pre_auth_transaction_completion", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "actualBonusPoints"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "amount"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "balanceAmount"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNumberReference"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clientId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cvc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecrData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emvData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchangeFee"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchangeRate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "languageCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantAddress"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "messageType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTraceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTransactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "paymentReason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptFooter"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptHeader"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptLayout"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (31.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serialNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (32.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "svc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalLocation"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "traceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDate"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (39.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (40.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "userData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (41.))) ]) ]));
        ("name", (Str "pre_auth_transaction_completion"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]);
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (1.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("reactivate_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "productOrderUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "reactivationReason"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (6.))) ]) ]));
        ("name", (Str "reactivate_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/reactivateTerminal"));
                ("parts", (ja [
                  (Str "reactivateTerminal") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("refund_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "actualBonusPoints"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "amount"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "balanceAmount"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clientId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cvc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecrData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emvData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchangeFee"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchangeRate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "languageCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantAddress"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "messageType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTraceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTransactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "paymentReason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptFooter"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptHeader"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptLayout"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serialNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (31.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "svc"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (32.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalLocation"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "traceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDate"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "userData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (39.))) ]) ]));
        ("name", (Str "refund_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("register_tecs_company", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "partnerId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "partnerName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "productOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]) ]));
        ("name", (Str "register_tecs_company"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerTecsCompany"));
                ("parts", (ja [
                  (Str "registerTecsCompany") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("register_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "additionalData"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "packageOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "productOrderUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsWebSecretKey"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalCountryCode"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalIdAcq"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalLanguageCode"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalLocation"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalSerialNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tokenIOAlias"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tokenIOIban"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tokenIOMemberId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "webShopUrl"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]) ]));
        ("name", (Str "register_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerTerminal"));
                ("parts", (ja [
                  (Str "registerTerminal") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("report_data", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrandReportData"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateFrom"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDateTo"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateId"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sumOverCreditTx"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sumOverDebitTx"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]) ]));
        ("name", (Str "report_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("status_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirerTerminalId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "amount"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "applicationCryptogram"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationCode"));
            ("req", (Bool false));
            ("type", (ja [
              (Str "`$ONE`");
              (ja [
                (Str "`$STRING`");
                (Str "`$NULL`") ]) ]));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardEntry"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardExpiration"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingAmount"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingBatchId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingCurrency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingProcessedDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingStatus"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clientId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "currency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cvm"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecrData"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emvApplicationId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emvApplicationLabel"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalClientId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTerminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "originalTransactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "paymentReason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCodeFromAS"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (31.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "retrievalReferenceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (32.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serviceCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "settlementStatus"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sourceId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengineResponseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengineResponseText"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalEndOfDayDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (39.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalLocation"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (40.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tipAmount"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (41.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "traceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (42.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionClearingDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (43.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (44.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (45.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionSeqNumber"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (46.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionServerDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (47.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionSource"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (48.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (49.))) ]) ]));
        ("name", (Str "status_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("store_terminal_parameter", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "acqTabNexo"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "configVersion"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serialNumber"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tidSent"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "store_terminal_parameter"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/storeTerminalParameters"));
                ("parts", (ja [
                  (Str "storeTerminalParameters") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("terminal_id", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "deviceSerialNumber"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "duplicateTerminalIds"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminals"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (4.))) ]) ]));
        ("name", (Str "terminal_id"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transaction_history", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "3DSecure"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorizationCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "cardBrand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingAmountFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingAmountTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingCurrency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearingStatus"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUUID"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "orderByTransactionDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "paymentTokenPublicId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receiptNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "referencedTransactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "retrievalReferenceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sourceId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengineResponseCodeFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengineResponseCodeTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminalId"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "traceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionAmountFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionAmountTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateFrom"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateTo"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionHistories"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionType"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "wallet"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]) ]));
        ("name", (Str "transaction_history"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]);
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (1.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_count", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "period"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateFrom"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateTo"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionsCount"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "transactions_count"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]);
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (1.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_count_card_brand", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "period"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateFrom"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateTo"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionsCount"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "transactions_count_card_brand"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_turnover", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "period"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateFrom"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionDateTo"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "turnovers"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "transactions_turnover"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("update_merchant", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "city"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporateUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "country"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchantCategoryCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "state"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "vuNummer"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "zipcode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]) ]));
        ("name", (Str "update_merchant"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("update_template_xml", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "templateXml"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "update_template_xml"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("version", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "appName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "buildDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "version"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "version"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
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
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "load")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ])) ])) ])

let make_feature (name : string) : feature =
  match name with
  | "test" -> test_feature ()
  | _ -> base_feature ()
