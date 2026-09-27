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
      ("audit", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("actor", (Str "anonymous"));
          ("max", (Num (1000.))) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`"));
          ("sink", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("clienttrack", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("clientVersion", (Str "0.0.1")) ]));
        ("optspec", (jo [
          ("clientName", (Str "`$STRING`"));
          ("clientVersion", (Str "`$STRING`"));
          ("headers", (Str "`$MAP`"));
          ("idgen", (Str "`$FUNCTION`"));
          ("sessionId", (Str "`$STRING`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("debug", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("max", (Num (100.)));
          ("redact", (ja [
            (Str "authorization");
            (Str "cookie");
            (Str "set-cookie");
            (Str "api-key");
            (Str "apikey");
            (Str "x-api-key");
            (Str "idempotency-key") ])) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`"));
          ("onEntry", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("idempotency", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("header", (Str "Idempotency-Key"));
          ("methods", (ja [
            (Str "POST");
            (Str "PUT");
            (Str "PATCH");
            (Str "DELETE") ]));
          ("ops", (ja [
            (Str "create");
            (Str "update");
            (Str "remove") ])) ]));
        ("optspec", (jo [
          ("keygen", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("log", (jo [
        ("options", (jo [
          ("active", (Bool true)) ]));
        ("optspec", (jo [
          ("level", (Str "`$STRING`"));
          ("logger", (Str "`$ANY`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("metrics", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("paging", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("afterVar", (Str "after"));
          ("cursorParam", (Str "cursor"));
          ("firstVar", (Str "first"));
          ("limitParam", (Str "limit"));
          ("pageParam", (Str "page"));
          ("startPage", (Num (1.))) ]));
        ("optspec", (jo [
          ("limit", (Str "`$NUMBER`"));
          ("ops", (Str "`$LIST`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("ratelimit", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("burst", (Num (5.)));
          ("rate", (Num (5.))) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`"));
          ("sleep", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "wrap")) ]));
      ("retry", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("factor", (Num (2.)));
          ("maxDelay", (Num (2000.)));
          ("minDelay", (Num (50.)));
          ("retries", (Num (2.)));
          ("statuses", (ja [
            (Num (408.));
            (Num (425.));
            (Num (429.));
            (Num (500.));
            (Num (502.));
            (Num (503.));
            (Num (504.)) ])) ]));
        ("optspec", (jo [
          ("jitter", (Str "`$BOOLEAN`"));
          ("sleep", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "wrap")) ]));
      ("telemetry", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("optspec", (jo [
          ("exporter", (Str "`$FUNCTION`"));
          ("headers", (Str "`$MAP`"));
          ("idgen", (Str "`$FUNCTION`"));
          ("now", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("test", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("optspec", (jo [
          ("entity", (Str "`$MAP`"));
          ("net", (Str "`$MAP`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "base")) ]));
      ("timeout", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("ms", (Num (30000.))) ]));
        ("optspec", (jo [
          ("clearTimer", (Str "`$FUNCTION`"));
          ("setTimer", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "wrap")) ])) ]));
    ("options", (jo [
      ("base", (Str "https://test.tecs.at/merchantservices"));
      ("auth", (jo [
        ("prefix", (Str "Bearer")) ]));
      ("headers", (jo [
        ("content-type", (Str "application/json")) ]));
      ("entity", (jo [
        ("cancel_transaction", (empty_map ()));
        ("check_card_black_listed", (empty_map ()));
        ("count_authorised_transaction", (empty_map ()));
        ("count_not_authorised_transaction", (empty_map ()));
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
            ("title", (Str "Acquirer Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerName"));
            ("title", (Str "Acquirer Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "actualBonusPoints"));
            ("title", (Str "Actual Bonus Points"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("title", (Str "Amount"));
            ("type", (Str "`$INTEGER`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("title", (Str "Authorization Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "balanceAmount"));
            ("title", (Str "Balance Amount"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("title", (Str "Card Brand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("title", (Str "Card Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("title", (Str "Client Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "cvc"));
            ("title", (Str "Cvc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecData"));
            ("title", (Str "Ec Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("title", (Str "Ecr Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvData"));
            ("title", (Str "Emv Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "exchangeFee"));
            ("title", (Str "Exchange Fee"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int64")) ]);
          (jo [
            ("name", (Str "exchangeRate"));
            ("title", (Str "Exchange Rate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "languageCode"));
            ("title", (Str "Language Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantAddress"));
            ("title", (Str "Merchant Address"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("title", (Str "Merchant Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("title", (Str "Merchant Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "messageType"));
            ("title", (Str "Message Type"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "originalTraceNumber"));
            ("title", (Str "Original Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("title", (Str "Original Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "password"));
            ("title", (Str "Password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("title", (Str "Payment Reason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptFooter"));
            ("title", (Str "Receipt Footer"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptHeader"));
            ("title", (Str "Receipt Header"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptLayout"));
            ("title", (Str "Receipt Layout"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("title", (Str "Receipt Number"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("title", (Str "Serial Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "svc"));
            ("title", (Str "Svc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("title", (Str "Terminal Location"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("title", (Str "Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("title", (Str "Transaction Date"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "txType"));
            ("title", (Str "Tx Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "userData"));
            ("title", (Str "User Data"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "cancel_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/cancelTransaction"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "cancelTransaction")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "cancelTransaction") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("check_card_black_listed", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "cardNo"));
            ("title", (Str "Card No"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "check_card_black_listed"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/checkCardBlackListed"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "checkCardBlackListed")) ]) ]));
                ("parts", (ja [
                  (Str "checkCardBlackListed") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("count_authorised_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("title", (Str "Period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("title", (Str "Transaction Date From"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("title", (Str "Transaction Date To"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionsCount"));
            ("title", (Str "Transactions Count"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "count_authorised_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/countAuthorisedTransactions"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "countAuthorisedTransactions")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "countAuthorisedTransactions") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("count_not_authorised_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("title", (Str "Period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("title", (Str "Transaction Date From"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("title", (Str "Transaction Date To"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionsCount"));
            ("title", (Str "Transactions Count"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "count_not_authorised_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/countNotAuthorisedTransactions"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "countNotAuthorisedTransactions")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "countNotAuthorisedTransactions") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("create_product", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("title", (Str "Acquirer Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("title", (Str "Template Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "templateType"));
            ("title", (Str "Template Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "templateXml"));
            ("title", (Str "Template Xml"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "terminalType"));
            ("title", (Str "Terminal Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "create_product"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createProduct"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "createProduct")) ]) ]));
                ("parts", (ja [
                  (Str "createProduct") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("deactivate_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "deactivationReason"));
            ("title", (Str "Deactivation Reason"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("title", (Str "Package Order Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("title", (Str "Product Order Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]) ]));
        ("name", (Str "deactivate_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/deactivateTerminal"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "deactivateTerminal")) ]) ]));
                ("parts", (ja [
                  (Str "deactivateTerminal") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("digital_services_api", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("title", (Str "Clearing Date From"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("title", (Str "Clearing Date To"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txCount"));
            ("title", (Str "Tx Count"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "txIdEnd"));
            ("title", (Str "Tx Id End"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txIdStart"));
            ("title", (Str "Tx Id Start"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "txSeqNoEnd"));
            ("title", (Str "Tx Seq No End"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "txSeqNoStart"));
            ("title", (Str "Tx Seq No Start"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "txTotal"));
            ("title", (Str "Tx Total"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]) ]));
        ("name", (Str "digital_services_api"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload/{fileId}"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExportDownload")) ]);
                  (jo [
                    ("var", (Str "file_id")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload");
                  (Str "{file_id}") ]));
                ("rename", (jo [
                  ("param", (jo [
                    ("fileId", (Str "file_id")) ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("params", (ja [
                    (jo [
                      ("name", (Str "file_id"));
                      ("orig", (Str "file_id"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "param"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "file_id") ])) ])) ]);
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportMetadata"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExportMetadata")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportMetadata") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ]));
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload/status"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExportDownload")) ]);
                  (jo [
                    ("lit", (Str "status")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload");
                  (Str "status") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (ja [
            (ja [
              (Str "$.main.kit.entity.mandator_clearing_export_download") ]) ])) ])) ]));
      ("ec_data_ecom", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "ecomData"));
            ("title", (Str "Ecom Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "ec_data_ecom"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEcData"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "getEcData")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEcData") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("ecom_parameter", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "ecomPass"));
            ("title", (Str "Ecom Pass"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecomSkey"));
            ("title", (Str "Ecom Skey"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]) ]));
        ("name", (Str "ecom_parameter"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEcomParameters"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "getEcomParameters")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEcomParameters") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("ecr_data", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "ecrData"));
            ("title", (Str "Ecr Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "ecr_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEcrData"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "getEcrData")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEcrData") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("emv_data", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "emvData"));
            ("title", (Str "Emv Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "emv_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getEmvData"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "getEmvData")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "getEmvData") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("enable_acquiring", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "accountNo"));
            ("title", (Str "Account No"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "additionalData"));
            ("title", (Str "Additional Data"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "merchantCategoryCode"));
            ("title", (Str "Merchant Category Code"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("title", (Str "Package Order Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("title", (Str "Product Order Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sortingCode"));
            ("title", (Str "Sorting Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("title", (Str "Template Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "terminalIdAcq"));
            ("title", (Str "Terminal Id Acq"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalIds"));
            ("title", (Str "Terminal Ids"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "vuNummer"));
            ("title", (Str "Vu Nummer"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "enable_acquiring"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/enableAcquiring"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "enableAcquiring")) ]) ]));
                ("parts", (ja [
                  (Str "enableAcquiring") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("get_merchant_contract_number", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "merchantContractNumber"));
            ("title", (Str "Merchant Contract Number"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "get_merchant_contract_number"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/getMerchantContractNumber"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "getMerchantContractNumber")) ]) ]));
                ("parts", (ja [
                  (Str "getMerchantContractNumber") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("get_template_xml", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("title", (Str "Template Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "get_template_xml"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getTemplateXml"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "getTemplateXml")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "getTemplateXml") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("introduce_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "mandatorName"));
            ("title", (Str "Mandator Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "introduce_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/introduceMandator"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "introduceMandator")) ]) ]));
                ("parts", (ja [
                  (Str "introduceMandator") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("introduce_package", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalTemplateDescription"));
            ("title", (Str "Terminal Template Description"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "introduce_package"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/introducePackage"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "introducePackage")) ]) ]));
                ("parts", (ja [
                  (Str "introducePackage") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("keep_alive", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "hwserialno"));
            ("title", (Str "Hwserialno"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "kaDateTimeFrom"));
            ("title", (Str "Ka Date Time From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "kaDateTimeTo"));
            ("title", (Str "Ka Date Time To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "keepAliveData"));
            ("title", (Str "Keep Alive Data"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalDateTimeFrom"));
            ("title", (Str "Terminal Date Time From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalDateTimeTo"));
            ("title", (Str "Terminal Date Time To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]) ]));
        ("name", (Str "keep_alive"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/keepalive"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "keepalive")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "keepalive") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("list_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "filter"));
            ("title", (Str "Filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminals"));
            ("title", (Str "Terminals"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "list_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/listTerminals"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "listTerminals")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "listTerminals") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("title", (Str "Clearing Date From"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("title", (Str "Clearing Date To"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "records"));
            ("title", (Str "Records"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "mandator_clearing_export"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExport"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExport")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExport") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export_download", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("title", (Str "Clearing Date From"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Start date for clearing export (inclusive)"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("title", (Str "Clearing Date To"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "End date for clearing export (inclusive)"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "fileId"));
            ("title", (Str "File Id"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Unique file identifier for tracking and downloading")) ]);
          (jo [
            ("name", (Str "filenameTemplate"));
            ("title", (Str "Filename Template"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Optional filename template for the export file")) ]);
          (jo [
            ("name", (Str "id"));
            ("title", (Str "Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "status"));
            ("title", (Str "Status"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Processing status of the export request")) ]) ]));
        ("id", (jo [
          ("field", (Str "id"));
          ("name", (Str "id")) ]));
        ("name", (Str "mandator_clearing_export_download"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExportDownload")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ]));
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportDownload/{fileId}"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExportDownload")) ]);
                  (jo [
                    ("var", (Str "id")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportDownload");
                  (Str "{id}") ]));
                ("rename", (jo [
                  ("param", (jo [
                    ("fileId", (Str "id")) ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("params", (ja [
                    (jo [
                      ("name", (Str "id"));
                      ("orig", (Str "file_id"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "param"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "id") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("mandator_clearing_export_summary", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("title", (Str "Clearing Date From"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("title", (Str "Clearing Date To"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")) ]);
          (jo [
            ("name", (Str "records"));
            ("title", (Str "Records"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "mandator_clearing_export_summary"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/mandatorClearingExportSummary"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "mandatorClearingExportSummary")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "mandatorClearingExportSummary") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("merchant_portal_services_api", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "3DSecure"));
            ("title", (Str "3 D Secure"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("title", (Str "Authorization Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("title", (Str "Card Brand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountFrom"));
            ("title", (Str "Clearing Amount From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountTo"));
            ("title", (Str "Clearing Amount To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingCurrency"));
            ("title", (Str "Clearing Currency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingStatus"));
            ("title", (Str "Clearing Status"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateUUID"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "orderByTransactionDate"));
            ("title", (Str "Order By Transaction Date"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("title", (Str "Receipt Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "referencedTransactionId"));
            ("title", (Str "Referenced Transaction Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "retrievalReferenceNumber"));
            ("title", (Str "Retrieval Reference Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sourceId"));
            ("title", (Str "Source Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeFrom"));
            ("title", (Str "Tecsengine Response Code From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeTo"));
            ("title", (Str "Tecsengine Response Code To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("title", (Str "Trace Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountFrom"));
            ("title", (Str "Transaction Amount From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountTo"));
            ("title", (Str "Transaction Amount To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("title", (Str "Transaction Date From"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("title", (Str "Transaction Date To"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "wallet"));
            ("title", (Str "Wallet"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Filter by wallet type.")) ]) ]));
        ("name", (Str "merchant_portal_services_api"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/transactionHistoryCsv"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "transactionHistoryCsv")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "transactionHistoryCsv") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("move_tid", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "productorderuuids"));
            ("title", (Str "Productorderuuids"));
            ("type", (Str "`$ARRAY`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "targetPackageorderuuid"));
            ("title", (Str "Target Packageorderuuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "targetProductorderuuid"));
            ("title", (Str "Target Productorderuuid"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "move_tid"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/moveTid"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "moveTid")) ]) ]));
                ("parts", (ja [
                  (Str "moveTid") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("payment_manual", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerName"));
            ("title", (Str "Acquirer Name"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Acquirer name parsed from KKG field")) ]);
          (jo [
            ("name", (Str "amount"));
            ("title", (Str "Amount"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("short", (Str "Transaction amount in minor units (cents)"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "authorizationNumber"));
            ("title", (Str "Authorization Number"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Authorization number from the gateway")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("title", (Str "Card Number"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Card number - 12 to 19 digits, must pass Luhn validation")) ]);
          (jo [
            ("name", (Str "cardType"));
            ("title", (Str "Card Type"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Card type parsed from KKG field")) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Currency code - 3 uppercase letters (ISO 4217)")) ]);
          (jo [
            ("name", (Str "cvc"));
            ("title", (Str "Cvc"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Card verification code - 3-4 digits (optional)")) ]);
          (jo [
            ("name", (Str "dateTimeTx"));
            ("title", (Str "Date Time Tx"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Date and time of the transaction")) ]);
          (jo [
            ("name", (Str "expDate"));
            ("title", (Str "Exp Date"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Card expiry date in MMYY format")) ]);
          (jo [
            ("name", (Str "merchantId"));
            ("title", (Str "Merchant Id"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Merchant ID (VU-NUMMER)")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("title", (Str "Original Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Original transaction ID from gateway")) ]);
          (jo [
            ("name", (Str "password"));
            ("title", (Str "Password"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Terminal password sent as Kennwort in TECS XML (optional)")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Response code - 00 for success, otherwise error code")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Response message - 'Approved' for success, error description otherwise")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("short", (Str "Terminal ID used for the transaction")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Transaction ID generated by the backend")) ]);
          (jo [
            ("name", (Str "txtype"));
            ("title", (Str "Txtype"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Transaction type")) ]) ]));
        ("name", (Str "payment_manual"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/paymentManual"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "paymentManual")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "paymentManual") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("payment_sred", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "amount"));
            ("title", (Str "Amount"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("short", (Str "Transaction amount in minor units (cents)"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Currency code - 3 uppercase letters (ISO 4217)")) ]);
          (jo [
            ("name", (Str "device"));
            ("title", (Str "Device"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Device type that provided the SRED payload")) ]);
          (jo [
            ("name", (Str "devicePayload"));
            ("title", (Str "Device Payload"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "SRED encrypted device payload from the device (minimum 32 characters)")) ]);
          (jo [
            ("name", (Str "expDate"));
            ("title", (Str "Exp Date"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Card expiry date in MMYY format")) ]);
          (jo [
            ("name", (Str "mode"));
            ("title", (Str "Mode"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Decryption mode")) ]);
          (jo [
            ("name", (Str "panMasked"));
            ("title", (Str "Pan Masked"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Masked PAN (first 6 and last 4 digits)")) ]);
          (jo [
            ("name", (Str "password"));
            ("title", (Str "Password"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Terminal password sent as Kennwort in TECS XML (optional)")) ]);
          (jo [
            ("name", (Str "serial"));
            ("title", (Str "Serial"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Device serial number")) ]);
          (jo [
            ("name", (Str "serviceCode"));
            ("title", (Str "Service Code"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Service code from the card")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Terminal ID - 8 digits")) ]);
          (jo [
            ("name", (Str "txtype"));
            ("title", (Str "Txtype"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Transaction type")) ]) ]));
        ("name", (Str "payment_sred"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/paymentSred"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "paymentSred")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "paymentSred") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body.sred`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("pre_auth_transaction_completion", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("title", (Str "Acquirer Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerName"));
            ("title", (Str "Acquirer Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "actualBonusPoints"));
            ("title", (Str "Actual Bonus Points"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("title", (Str "Amount"));
            ("type", (Str "`$INTEGER`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("title", (Str "Authorization Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "balanceAmount"));
            ("title", (Str "Balance Amount"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("title", (Str "Card Brand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("title", (Str "Card Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumberReference"));
            ("title", (Str "Card Number Reference"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "clientId"));
            ("title", (Str "Client Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "cvc"));
            ("title", (Str "Cvc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecData"));
            ("title", (Str "Ec Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("title", (Str "Ecr Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvData"));
            ("title", (Str "Emv Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "exchangeFee"));
            ("title", (Str "Exchange Fee"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int64")) ]);
          (jo [
            ("name", (Str "exchangeRate"));
            ("title", (Str "Exchange Rate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "languageCode"));
            ("title", (Str "Language Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantAddress"));
            ("title", (Str "Merchant Address"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("title", (Str "Merchant Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("title", (Str "Merchant Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "messageType"));
            ("title", (Str "Message Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTraceNumber"));
            ("title", (Str "Original Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("title", (Str "Original Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "password"));
            ("title", (Str "Password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("title", (Str "Payment Reason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptFooter"));
            ("title", (Str "Receipt Footer"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptHeader"));
            ("title", (Str "Receipt Header"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptLayout"));
            ("title", (Str "Receipt Layout"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("title", (Str "Receipt Number"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("title", (Str "Serial Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "svc"));
            ("title", (Str "Svc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("title", (Str "Terminal Location"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("title", (Str "Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("title", (Str "Transaction Date"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "txType"));
            ("title", (Str "Tx Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "userData"));
            ("title", (Str "User Data"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "pre_auth_transaction_completion"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/paymentTransaction"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "paymentTransaction")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "paymentTransaction") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]);
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/preAuthCompletionTransaction"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "preAuthCompletionTransaction")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "preAuthCompletionTransaction") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("reactivate_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("title", (Str "Package Order Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("title", (Str "Product Order Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "reactivationReason"));
            ("title", (Str "Reactivation Reason"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]) ]));
        ("name", (Str "reactivate_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/reactivateTerminal"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "reactivateTerminal")) ]) ]));
                ("parts", (ja [
                  (Str "reactivateTerminal") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("refund_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerId"));
            ("title", (Str "Acquirer Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerName"));
            ("title", (Str "Acquirer Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "actualBonusPoints"));
            ("title", (Str "Actual Bonus Points"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("title", (Str "Amount"));
            ("type", (Str "`$INTEGER`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$INTEGER`")) ])) ]));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("title", (Str "Authorization Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "balanceAmount"));
            ("title", (Str "Balance Amount"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("title", (Str "Card Brand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("title", (Str "Card Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("title", (Str "Client Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "cvc"));
            ("title", (Str "Cvc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecData"));
            ("title", (Str "Ec Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("title", (Str "Ecr Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvData"));
            ("title", (Str "Emv Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "exchangeFee"));
            ("title", (Str "Exchange Fee"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int64")) ]);
          (jo [
            ("name", (Str "exchangeRate"));
            ("title", (Str "Exchange Rate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "languageCode"));
            ("title", (Str "Language Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantAddress"));
            ("title", (Str "Merchant Address"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("title", (Str "Merchant Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("title", (Str "Merchant Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "messageType"));
            ("title", (Str "Message Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTraceNumber"));
            ("title", (Str "Original Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("title", (Str "Original Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "password"));
            ("title", (Str "Password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("title", (Str "Payment Reason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptFooter"));
            ("title", (Str "Receipt Footer"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptHeader"));
            ("title", (Str "Receipt Header"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptLayout"));
            ("title", (Str "Receipt Layout"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("title", (Str "Receipt Number"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("title", (Str "Serial Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "svc"));
            ("title", (Str "Svc"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("req", (Bool true));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("title", (Str "Terminal Location"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("title", (Str "Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("title", (Str "Transaction Date"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "txType"));
            ("title", (Str "Tx Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "userData"));
            ("title", (Str "User Data"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "refund_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/refundTransaction"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "refundTransaction")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "refundTransaction") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("register_tecs_company", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("title", (Str "Package Order Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "partnerId"));
            ("title", (Str "Partner Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "partnerName"));
            ("title", (Str "Partner Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("title", (Str "Product Order Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("title", (Str "Template Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "register_tecs_company"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerTecsCompany"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "registerTecsCompany")) ]) ]));
                ("parts", (ja [
                  (Str "registerTecsCompany") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("register_terminal", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "additionalData"));
            ("title", (Str "Additional Data"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "packageOrderUuid"));
            ("title", (Str "Package Order Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "productOrderUuid"));
            ("title", (Str "Product Order Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tecsWebSecretKey"));
            ("title", (Str "Tecs Web Secret Key"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("title", (Str "Template Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "terminalCountryCode"));
            ("title", (Str "Terminal Country Code"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "terminalIdAcq"));
            ("title", (Str "Terminal Id Acq"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalLanguageCode"));
            ("title", (Str "Terminal Language Code"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("title", (Str "Terminal Location"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "terminalSerialNumber"));
            ("title", (Str "Terminal Serial Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tokenIOAlias"));
            ("title", (Str "Token Io Alias"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tokenIOIban"));
            ("title", (Str "Token Io Iban"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tokenIOMemberId"));
            ("title", (Str "Token Io Member Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "webShopUrl"));
            ("title", (Str "Web Shop Url"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "register_terminal"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerTerminal"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "registerTerminal")) ]) ]));
                ("parts", (ja [
                  (Str "registerTerminal") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("report_data", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "cardBrandReportData"));
            ("title", (Str "Card Brand Report Data"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "clearingDateFrom"));
            ("title", (Str "Clearing Date From"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ss")) ]);
          (jo [
            ("name", (Str "clearingDateTo"));
            ("title", (Str "Clearing Date To"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Date and time in the format yyyy-MM-dd'T'HH:mm:ss")) ]);
          (jo [
            ("name", (Str "corporateId"));
            ("title", (Str "Corporate Id"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sumOverCreditTx"));
            ("title", (Str "Sum Over Credit Tx"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "sumOverDebitTx"));
            ("title", (Str "Sum Over Debit Tx"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]) ]));
        ("name", (Str "report_data"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/digitalservices/reportData"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "digitalservices")) ]);
                  (jo [
                    ("lit", (Str "reportData")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "digitalservices");
                  (Str "reportData") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("status_transaction", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acquirerName"));
            ("title", (Str "Acquirer Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "acquirerTerminalId"));
            ("title", (Str "Acquirer Terminal Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "amount"));
            ("title", (Str "Amount"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "applicationCryptogram"));
            ("title", (Str "Application Cryptogram"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("title", (Str "Authorization Code"));
            ("type", (ja [
              (Str "`$ONE`");
              (ja [
                (Str "`$STRING`");
                (Str "`$NULL`") ]) ]));
            ("short", (Str "Authorization code returned by the acquirer; null when not available")) ]);
          (jo [
            ("name", (Str "authorizationDate"));
            ("title", (Str "Authorization Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("title", (Str "Card Brand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardEntry"));
            ("title", (Str "Card Entry"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardExpiration"));
            ("title", (Str "Card Expiration"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardNumber"));
            ("title", (Str "Card Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmount"));
            ("title", (Str "Clearing Amount"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "clearingBatchId"));
            ("title", (Str "Clearing Batch Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingCurrency"));
            ("title", (Str "Clearing Currency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingDate"));
            ("title", (Str "Clearing Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "clearingProcessedDate"));
            ("title", (Str "Clearing Processed Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "clearingStatus"));
            ("title", (Str "Clearing Status"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clientId"));
            ("title", (Str "Client Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "currency"));
            ("title", (Str "Currency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cvm"));
            ("title", (Str "Cvm"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "ecrData"));
            ("title", (Str "Ecr Data"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvApplicationId"));
            ("title", (Str "Emv Application Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emvApplicationLabel"));
            ("title", (Str "Emv Application Label"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantName"));
            ("title", (Str "Merchant Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantNumber"));
            ("title", (Str "Merchant Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalClientId"));
            ("title", (Str "Original Client Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "originalTerminalId"));
            ("title", (Str "Original Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "originalTransactionId"));
            ("title", (Str "Original Transaction Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "paymentReason"));
            ("title", (Str "Payment Reason"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("title", (Str "Receipt Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseCodeFromAS"));
            ("title", (Str "Response Code From As"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "retrievalReferenceNumber"));
            ("title", (Str "Retrieval Reference Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serviceCode"));
            ("title", (Str "Service Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "settlementStatus"));
            ("title", (Str "Settlement Status"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sourceId"));
            ("title", (Str "Source Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCode"));
            ("title", (Str "Tecsengine Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "tecsengineResponseText"));
            ("title", (Str "Tecsengine Response Text"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalEndOfDayDate"));
            ("title", (Str "Terminal End Of Day Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "terminalLocation"));
            ("title", (Str "Terminal Location"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tipAmount"));
            ("title", (Str "Tip Amount"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("title", (Str "Trace Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "transactionClearingDate"));
            ("title", (Str "Transaction Clearing Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDate"));
            ("title", (Str "Transaction Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionSeqNumber"));
            ("title", (Str "Transaction Seq Number"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int64")) ]);
          (jo [
            ("name", (Str "transactionServerDate"));
            ("title", (Str "Transaction Server Date"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionSource"));
            ("title", (Str "Transaction Source"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "status_transaction"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/statusTransaction"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "statusTransaction")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "statusTransaction") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("store_terminal_parameter", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "acqTabNexo"));
            ("title", (Str "Acq Tab Nexo"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "configVersion"));
            ("title", (Str "Config Version"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "serialNumber"));
            ("title", (Str "Serial Number"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "tidSent"));
            ("title", (Str "Tid Sent"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "store_terminal_parameter"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/storeTerminalParameters"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "storeTerminalParameters")) ]) ]));
                ("parts", (ja [
                  (Str "storeTerminalParameters") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("terminal_id", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "deviceSerialNumber"));
            ("title", (Str "Device Serial Number"));
            ("type", (Str "`$ARRAY`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "duplicateTerminalIds"));
            ("title", (Str "Duplicate Terminal Ids"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminals"));
            ("title", (Str "Terminals"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "terminal_id"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/getTerminalId"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "getTerminalId")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "getTerminalId") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transaction_history", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "3DSecure"));
            ("title", (Str "3 D Secure"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "authorizationCode"));
            ("title", (Str "Authorization Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "cardBrand"));
            ("title", (Str "Card Brand"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountFrom"));
            ("title", (Str "Clearing Amount From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingAmountTo"));
            ("title", (Str "Clearing Amount To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingCurrency"));
            ("title", (Str "Clearing Currency"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "clearingStatus"));
            ("title", (Str "Clearing Status"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateUUID"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "orderByTransactionDate"));
            ("title", (Str "Order By Transaction Date"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "paymentTokenPublicId"));
            ("title", (Str "Payment Token Public Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "receiptNumber"));
            ("title", (Str "Receipt Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "referencedTransactionId"));
            ("title", (Str "Referenced Transaction Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "retrievalReferenceNumber"));
            ("title", (Str "Retrieval Reference Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sourceId"));
            ("title", (Str "Source Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeFrom"));
            ("title", (Str "Tecsengine Response Code From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "tecsengineResponseCodeTo"));
            ("title", (Str "Tecsengine Response Code To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "terminalId"));
            ("title", (Str "Terminal Id"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "traceNumber"));
            ("title", (Str "Trace Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountFrom"));
            ("title", (Str "Transaction Amount From"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionAmountTo"));
            ("title", (Str "Transaction Amount To"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("title", (Str "Transaction Date From"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("title", (Str "Transaction Date To"));
            ("type", (Str "`$STRING`"));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionHistories"));
            ("title", (Str "Transaction Histories"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "transactionId"));
            ("title", (Str "Transaction Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionType"));
            ("title", (Str "Transaction Type"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "wallet"));
            ("title", (Str "Wallet"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Filter by wallet type.")) ]) ]));
        ("name", (Str "transaction_history"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/mcom/transactionHistory"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "mcom")) ]);
                  (jo [
                    ("lit", (Str "transactionHistory")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "mcom");
                  (Str "transactionHistory") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]);
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/transactionHistory"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "transactionHistory")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "transactionHistory") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_count_card_brand", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("title", (Str "Period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("title", (Str "Transaction Date From"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("title", (Str "Transaction Date To"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionsCount"));
            ("title", (Str "Transactions Count"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "transactions_count_card_brand"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/countTransactionsByCardBrand"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "countTransactionsByCardBrand")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "countTransactionsByCardBrand") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("transactions_turnover", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "period"));
            ("title", (Str "Period"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionDateFrom"));
            ("title", (Str "Transaction Date From"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "transactionDateTo"));
            ("title", (Str "Transaction Date To"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("format", (Str "date-time")) ]);
          (jo [
            ("name", (Str "turnovers"));
            ("title", (Str "Turnovers"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "transactions_turnover"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/transactionTurnover"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "transactionTurnover")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "transactionTurnover") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("update_merchant", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("title", (Str "City"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "corporateUuid"));
            ("title", (Str "Corporate Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "country"));
            ("title", (Str "Country"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "merchantCategoryCode"));
            ("title", (Str "Merchant Category Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "name"));
            ("title", (Str "Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("title", (Str "State"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street"));
            ("title", (Str "Street"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "vuNummer"));
            ("title", (Str "Vu Nummer"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zipcode"));
            ("title", (Str "Zipcode"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "update_merchant"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/updateMerchant"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "updateMerchant")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "updateMerchant") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("update_template_xml", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "templateName"));
            ("title", (Str "Template Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "templateXml"));
            ("title", (Str "Template Xml"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]) ]));
        ("name", (Str "update_template_xml"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/public/updateTemplateXml"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "updateTemplateXml")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "updateTemplateXml") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("version", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "appName"));
            ("title", (Str "App Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "buildDate"));
            ("title", (Str "Build Date"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "version"));
            ("title", (Str "Version"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "version"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/public/version"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "public")) ]);
                  (jo [
                    ("lit", (Str "version")) ]) ]));
                ("parts", (ja [
                  (Str "public");
                  (Str "version") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ])) ])) ])

(* The plugin definitions the model selected, per feature: none - no
 * plugin-bearing feature is active in this SDK. *)
let feature_plugins (_name : string) = []

let make_feature (name : string) : feature =
  match name with
  | "audit" -> audit_feature ()
  | "clienttrack" -> clienttrack_feature ()
  | "debug" -> debug_feature ()
  | "idempotency" -> idempotency_feature ()
  | "log" -> log_feature ()
  | "metrics" -> metrics_feature ()
  | "paging" -> paging_feature ()
  | "ratelimit" -> ratelimit_feature ()
  | "retry" -> retry_feature ()
  | "telemetry" -> telemetry_feature ()
  | "test" -> test_feature ()
  | "timeout" -> timeout_feature ()
  | _ -> base_feature ()
