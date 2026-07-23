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
            ("name", (Str "acquirer_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirer_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "actual_bonus_point"));
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
            ("name", (Str "authorization_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "balance_amount"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_brand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "client_id"));
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
            ("name", (Str "ec_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecr_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emv_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchange_fee"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchange_rate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "language_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_address"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "message_type"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_transaction_id"));
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
            ("name", (Str "payment_reason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_footer"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_header"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_layout"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_number"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serial_number"));
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
            ("name", (Str "terminal_id"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_location"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_type"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "user_data"));
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
            ("name", (Str "card_no"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "acquirer_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_name"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_type"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_xml"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_type"));
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
            ("name", (Str "corporate_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "deactivation_reason"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "package_order_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "product_order_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
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
            ("name", (Str "clearing_date_from"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date_to"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_count"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_id_end"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_id_start"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_seq_no_end"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_seq_no_start"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_total"));
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
            ("name", (Str "ecom_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
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
            ("name", (Str "ecom_pass"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecom_skey"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
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
            ("name", (Str "ecr_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
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
            ("name", (Str "emv_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
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
            ("name", (Str "account_no"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "additional_data"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporate_uuid"));
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
            ("name", (Str "merchant_category_code"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "package_order_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "product_order_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sorting_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_name"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id_acq"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "vu_nummer"));
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
            ("name", (Str "merchant_contract_number"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_name"));
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
            ("name", (Str "mandator_name"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_template_description"));
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
            ("name", (Str "ka_date_time_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ka_date_time_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "keep_alive_data"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_date_time_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_date_time_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
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
            ("name", (Str "corporate_uuid"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal"));
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
            ("name", (Str "clearing_date_from"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date_to"));
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
            ("name", (Str "record"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "clearing_date_from"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date_to"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "file_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "filename_template"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "clearing_date_from"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date_to"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "record"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "3_d_secure"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorization_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_brand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_amount_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_amount_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_currency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_status"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporate_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "order_by_transaction_date"));
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
            ("name", (Str "receipt_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "referenced_transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "retrieval_reference_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "source_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengine_response_code_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengine_response_code_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_amount_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_amount_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
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
            ("name", (Str "productorderuuid"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "target_packageorderuuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "target_productorderuuid"));
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
            ("name", (Str "acquirer_name"));
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
            ("name", (Str "authorization_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_number"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_type"));
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
            ("name", (Str "date_time_tx"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exp_date"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_transaction_id"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
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
            ("name", (Str "acquirer_name"));
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
            ("name", (Str "authorization_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_type"));
            ("req", (Bool false));
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
            ("name", (Str "date_time_tx"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "device_payload"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sred"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "txtype"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]) ]));
        ("name", (Str "payment_sred"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
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
            ("name", (Str "acquirer_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirer_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "actual_bonus_point"));
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
            ("name", (Str "authorization_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "balance_amount"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_brand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_number_reference"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "client_id"));
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
            ("name", (Str "ec_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecr_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emv_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchange_fee"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchange_rate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "language_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_address"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "message_type"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_transaction_id"));
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
            ("name", (Str "payment_reason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_footer"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_header"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_layout"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_number"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (31.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serial_number"));
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
            ("name", (Str "terminal_id"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_location"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (39.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_type"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (40.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "user_data"));
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
            ("name", (Str "corporate_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "package_order_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "product_order_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "reactivation_reason"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
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
            ("name", (Str "acquirer_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirer_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "actual_bonus_point"));
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
            ("name", (Str "authorization_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "balance_amount"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_brand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "client_id"));
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
            ("name", (Str "ec_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "ecr_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emv_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchange_fee"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "exchange_rate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "language_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_address"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "message_type"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_transaction_id"));
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
            ("name", (Str "payment_reason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_footer"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_header"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_layout"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_number"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serial_number"));
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
            ("name", (Str "terminal_id"));
            ("req", (Bool true));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_location"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tx_type"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "user_data"));
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
            ("name", (Str "corporate_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "package_order_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "partner_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "partner_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "product_order_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_name"));
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
            ("name", (Str "additional_data"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporate_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "package_order_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "product_order_uuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecs_web_secret_key"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_name"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_country_code"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id_acq"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_language_code"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_location"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_serial_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "token_io_alia"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "token_io_iban"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "token_io_member_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "web_shop_url"));
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
            ("name", (Str "card_brand_report_data"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date_from"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date_to"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporate_id"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sum_over_credit_tx"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sum_over_debit_tx"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
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
            ("name", (Str "acquirer_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "acquirer_terminal_id"));
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
            ("name", (Str "application_cryptogram"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorization_code"));
            ("req", (Bool false));
            ("type", (ja [
              (Str "`$ONE`");
              (ja [
                (Str "`$STRING`");
                (Str "`$NULL`") ]) ]));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorization_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_brand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_entry"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_expiration"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_amount"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_batch_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_currency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_processed_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_status"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "client_id"));
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
            ("name", (Str "ecr_data"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emv_application_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emv_application_label"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "merchant_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_client_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "original_transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "payment_reason"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (27.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (28.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (29.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code_from_a"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (30.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (31.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "retrieval_reference_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (32.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "service_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (33.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "settlement_status"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (34.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "source_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (35.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengine_response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (36.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengine_response_text"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (37.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_end_of_day_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (38.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (39.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_location"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (40.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tip_amount"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (41.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (42.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_clearing_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (43.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (44.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (45.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_seq_number"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (46.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_server_date"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (47.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_source"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (48.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
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
            ("name", (Str "acq_tab_nexo"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "config_version"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "serial_number"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tid_sent"));
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
            ("name", (Str "device_serial_number"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "duplicate_terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal"));
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
            ("name", (Str "3_d_secure"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "authorization_code"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "card_brand"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_amount_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_amount_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_currency"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "clearing_status"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "corporate_uuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "order_by_transaction_date"));
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
            ("name", (Str "payment_token_public_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "receipt_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "referenced_transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "retrieval_reference_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "source_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengine_response_code_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "tecsengine_response_code_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "terminal_id"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "trace_number"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_amount_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_amount_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_from"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (23.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_to"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (24.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_history"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (25.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (26.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_type"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_from"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_to"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactions_count"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_from"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_to"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactions_count"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_from"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transaction_date_to"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "turnover"));
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
            ("name", (Str "corporate_uuid"));
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
            ("name", (Str "merchant_category_code"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
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
            ("name", (Str "vu_nummer"));
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
            ("name", (Str "response_code"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "response_message"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_name"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "template_xml"));
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
            ("name", (Str "app_name"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "build_date"));
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
