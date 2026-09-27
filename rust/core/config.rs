// Generated API configuration (mirrors go core/config.go).

use std::cell::RefCell;
use std::rc::Rc;

use crate::core::types::FeatureRef;
use crate::utility::voxgigstruct::Value;

pub fn make_config() -> Value {
    Value::map_of([
        ("main".to_string(), Value::map_of([
            ("name".to_string(), Value::str("BluefinTecsMerchantServices")),
            ("slug".to_string(), Value::str("bluefin-tecs-merchant-services")),
            ("version".to_string(), Value::str("0.1.1")),
            ("target".to_string(), Value::str("rust")),
        ])),
        ("feature".to_string(), Value::map_of([
            ("audit".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("actor".to_string(), Value::str("anonymous")),
                    ("max".to_string(), Value::Num(1000f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                    ("sink".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("clienttrack".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("clientVersion".to_string(), Value::str("0.0.1")),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("clientName".to_string(), Value::str("`$STRING`")),
                    ("clientVersion".to_string(), Value::str("`$STRING`")),
                    ("headers".to_string(), Value::str("`$MAP`")),
                    ("idgen".to_string(), Value::str("`$FUNCTION`")),
                    ("sessionId".to_string(), Value::str("`$STRING`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("debug".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("max".to_string(), Value::Num(100f64)),
                    ("redact".to_string(), Value::list(vec![
                        Value::str("authorization"),
                        Value::str("cookie"),
                        Value::str("set-cookie"),
                        Value::str("api-key"),
                        Value::str("apikey"),
                        Value::str("x-api-key"),
                        Value::str("idempotency-key"),
                    ])),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                    ("onEntry".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("idempotency".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("header".to_string(), Value::str("Idempotency-Key")),
                    ("methods".to_string(), Value::list(vec![
                        Value::str("POST"),
                        Value::str("PUT"),
                        Value::str("PATCH"),
                        Value::str("DELETE"),
                    ])),
                    ("ops".to_string(), Value::list(vec![
                        Value::str("create"),
                        Value::str("update"),
                        Value::str("remove"),
                    ])),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("keygen".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("log".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(true)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("level".to_string(), Value::str("`$STRING`")),
                    ("logger".to_string(), Value::str("`$ANY`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("metrics".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("paging".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("afterVar".to_string(), Value::str("after")),
                    ("cursorParam".to_string(), Value::str("cursor")),
                    ("firstVar".to_string(), Value::str("first")),
                    ("limitParam".to_string(), Value::str("limit")),
                    ("pageParam".to_string(), Value::str("page")),
                    ("startPage".to_string(), Value::Num(1f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("limit".to_string(), Value::str("`$NUMBER`")),
                    ("ops".to_string(), Value::str("`$LIST`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("ratelimit".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("burst".to_string(), Value::Num(5f64)),
                    ("rate".to_string(), Value::Num(5f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                    ("sleep".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("wrap")),
            ])),
            ("retry".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("factor".to_string(), Value::Num(2f64)),
                    ("maxDelay".to_string(), Value::Num(2000f64)),
                    ("minDelay".to_string(), Value::Num(50f64)),
                    ("retries".to_string(), Value::Num(2f64)),
                    ("statuses".to_string(), Value::list(vec![
                        Value::Num(408f64),
                        Value::Num(425f64),
                        Value::Num(429f64),
                        Value::Num(500f64),
                        Value::Num(502f64),
                        Value::Num(503f64),
                        Value::Num(504f64),
                    ])),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("jitter".to_string(), Value::str("`$BOOLEAN`")),
                    ("sleep".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("wrap")),
            ])),
            ("telemetry".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("exporter".to_string(), Value::str("`$FUNCTION`")),
                    ("headers".to_string(), Value::str("`$MAP`")),
                    ("idgen".to_string(), Value::str("`$FUNCTION`")),
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("test".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("entity".to_string(), Value::str("`$MAP`")),
                    ("net".to_string(), Value::str("`$MAP`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("base")),
            ])),
            ("timeout".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("ms".to_string(), Value::Num(30000f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("clearTimer".to_string(), Value::str("`$FUNCTION`")),
                    ("setTimer".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("wrap")),
            ])),
        ])),
        ("options".to_string(), Value::map_of([
            ("base".to_string(), Value::str("https://test.tecs.at/merchantservices")),
            ("auth".to_string(), Value::map_of([
                ("prefix".to_string(), Value::str("Bearer")),
            ])),
            ("headers".to_string(), Value::map_of([
                ("content-type".to_string(), Value::str("application/json")),
            ])),
            ("entity".to_string(), Value::map_of([
                ("cancel_transaction".to_string(), Value::empty_map()),
                ("check_card_black_listed".to_string(), Value::empty_map()),
                ("count_authorised_transaction".to_string(), Value::empty_map()),
                ("count_not_authorised_transaction".to_string(), Value::empty_map()),
                ("create_product".to_string(), Value::empty_map()),
                ("deactivate_terminal".to_string(), Value::empty_map()),
                ("digital_services_api".to_string(), Value::empty_map()),
                ("ec_data_ecom".to_string(), Value::empty_map()),
                ("ecom_parameter".to_string(), Value::empty_map()),
                ("ecr_data".to_string(), Value::empty_map()),
                ("emv_data".to_string(), Value::empty_map()),
                ("enable_acquiring".to_string(), Value::empty_map()),
                ("get_merchant_contract_number".to_string(), Value::empty_map()),
                ("get_template_xml".to_string(), Value::empty_map()),
                ("introduce_mandator".to_string(), Value::empty_map()),
                ("introduce_package".to_string(), Value::empty_map()),
                ("keep_alive".to_string(), Value::empty_map()),
                ("list_terminal".to_string(), Value::empty_map()),
                ("mandator_clearing_export".to_string(), Value::empty_map()),
                ("mandator_clearing_export_download".to_string(), Value::empty_map()),
                ("mandator_clearing_export_summary".to_string(), Value::empty_map()),
                ("merchant_portal_services_api".to_string(), Value::empty_map()),
                ("move_tid".to_string(), Value::empty_map()),
                ("payment_manual".to_string(), Value::empty_map()),
                ("payment_sred".to_string(), Value::empty_map()),
                ("pre_auth_transaction_completion".to_string(), Value::empty_map()),
                ("reactivate_terminal".to_string(), Value::empty_map()),
                ("refund_transaction".to_string(), Value::empty_map()),
                ("register_tecs_company".to_string(), Value::empty_map()),
                ("register_terminal".to_string(), Value::empty_map()),
                ("report_data".to_string(), Value::empty_map()),
                ("status_transaction".to_string(), Value::empty_map()),
                ("store_terminal_parameter".to_string(), Value::empty_map()),
                ("terminal_id".to_string(), Value::empty_map()),
                ("transaction_history".to_string(), Value::empty_map()),
                ("transactions_count_card_brand".to_string(), Value::empty_map()),
                ("transactions_turnover".to_string(), Value::empty_map()),
                ("update_merchant".to_string(), Value::empty_map()),
                ("update_template_xml".to_string(), Value::empty_map()),
                ("version".to_string(), Value::empty_map()),
            ])),
        ])),
        ("entity".to_string(), Value::map_of([
            ("cancel_transaction".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerId")),
                        ("title".to_string(), Value::str("Acquirer Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerName")),
                        ("title".to_string(), Value::str("Acquirer Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("actualBonusPoints")),
                        ("title".to_string(), Value::str("Actual Bonus Points")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("amount")),
                        ("title".to_string(), Value::str("Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$INTEGER`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationCode")),
                        ("title".to_string(), Value::str("Authorization Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("balanceAmount")),
                        ("title".to_string(), Value::str("Balance Amount")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrand")),
                        ("title".to_string(), Value::str("Card Brand")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNumber")),
                        ("title".to_string(), Value::str("Card Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clientId")),
                        ("title".to_string(), Value::str("Client Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cvc")),
                        ("title".to_string(), Value::str("Cvc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecData")),
                        ("title".to_string(), Value::str("Ec Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecrData")),
                        ("title".to_string(), Value::str("Ecr Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emvData")),
                        ("title".to_string(), Value::str("Emv Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("exchangeFee")),
                        ("title".to_string(), Value::str("Exchange Fee")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int64")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("exchangeRate")),
                        ("title".to_string(), Value::str("Exchange Rate")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("languageCode")),
                        ("title".to_string(), Value::str("Language Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantAddress")),
                        ("title".to_string(), Value::str("Merchant Address")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantName")),
                        ("title".to_string(), Value::str("Merchant Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantNumber")),
                        ("title".to_string(), Value::str("Merchant Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("messageType")),
                        ("title".to_string(), Value::str("Message Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTraceNumber")),
                        ("title".to_string(), Value::str("Original Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTransactionId")),
                        ("title".to_string(), Value::str("Original Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("title".to_string(), Value::str("Password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("paymentReason")),
                        ("title".to_string(), Value::str("Payment Reason")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptFooter")),
                        ("title".to_string(), Value::str("Receipt Footer")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptHeader")),
                        ("title".to_string(), Value::str("Receipt Header")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptLayout")),
                        ("title".to_string(), Value::str("Receipt Layout")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptNumber")),
                        ("title".to_string(), Value::str("Receipt Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serialNumber")),
                        ("title".to_string(), Value::str("Serial Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("svc")),
                        ("title".to_string(), Value::str("Svc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalLocation")),
                        ("title".to_string(), Value::str("Terminal Location")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("traceNumber")),
                        ("title".to_string(), Value::str("Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDate")),
                        ("title".to_string(), Value::str("Transaction Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txType")),
                        ("title".to_string(), Value::str("Tx Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("userData")),
                        ("title".to_string(), Value::str("User Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("cancel_transaction")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/cancelTransaction")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("cancelTransaction")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("cancelTransaction"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("check_card_black_listed".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNo")),
                        ("title".to_string(), Value::str("Card No")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("check_card_black_listed")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/checkCardBlackListed")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("checkCardBlackListed")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("checkCardBlackListed"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("count_authorised_transaction".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("period")),
                        ("title".to_string(), Value::str("Period")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateFrom")),
                        ("title".to_string(), Value::str("Transaction Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateTo")),
                        ("title".to_string(), Value::str("Transaction Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionsCount")),
                        ("title".to_string(), Value::str("Transactions Count")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("count_authorised_transaction")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/countAuthorisedTransactions")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("countAuthorisedTransactions")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("countAuthorisedTransactions"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("count_not_authorised_transaction".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("period")),
                        ("title".to_string(), Value::str("Period")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateFrom")),
                        ("title".to_string(), Value::str("Transaction Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateTo")),
                        ("title".to_string(), Value::str("Transaction Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionsCount")),
                        ("title".to_string(), Value::str("Transactions Count")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("count_not_authorised_transaction")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/countNotAuthorisedTransactions")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("countNotAuthorisedTransactions")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("countNotAuthorisedTransactions"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("create_product".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerId")),
                        ("title".to_string(), Value::str("Acquirer Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateName")),
                        ("title".to_string(), Value::str("Template Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateType")),
                        ("title".to_string(), Value::str("Template Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateXml")),
                        ("title".to_string(), Value::str("Template Xml")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalType")),
                        ("title".to_string(), Value::str("Terminal Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("create_product")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/createProduct")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("createProduct")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("createProduct"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("deactivate_terminal".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("deactivationReason")),
                        ("title".to_string(), Value::str("Deactivation Reason")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("packageOrderUuid")),
                        ("title".to_string(), Value::str("Package Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("productOrderUuid")),
                        ("title".to_string(), Value::str("Product Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                ])),
                ("name".to_string(), Value::str("deactivate_terminal")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/deactivateTerminal")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("deactivateTerminal")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("deactivateTerminal"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("digital_services_api".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateFrom")),
                        ("title".to_string(), Value::str("Clearing Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateTo")),
                        ("title".to_string(), Value::str("Clearing Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txCount")),
                        ("title".to_string(), Value::str("Tx Count")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txIdEnd")),
                        ("title".to_string(), Value::str("Tx Id End")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txIdStart")),
                        ("title".to_string(), Value::str("Tx Id Start")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txSeqNoEnd")),
                        ("title".to_string(), Value::str("Tx Seq No End")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txSeqNoStart")),
                        ("title".to_string(), Value::str("Tx Seq No Start")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txTotal")),
                        ("title".to_string(), Value::str("Tx Total")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                ])),
                ("name".to_string(), Value::str("digital_services_api")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExportDownload/{fileId}")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExportDownload")),
                                    ]),
                                    Value::map_of([
                                        ("var".to_string(), Value::str("file_id")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExportDownload"),
                                    Value::str("{file_id}"),
                                ])),
                                ("rename".to_string(), Value::map_of([
                                    ("param".to_string(), Value::map_of([
                                        ("fileId".to_string(), Value::str("file_id")),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("params".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("file_id")),
                                            ("orig".to_string(), Value::str("file_id")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("param")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("file_id"),
                                    ])),
                                ])),
                            ]),
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExportMetadata")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExportMetadata")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExportMetadata"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExportDownload/status")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExportDownload")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("status")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExportDownload"),
                                    Value::str("status"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::list(vec![
                        Value::list(vec![
                            Value::str("$.main.kit.entity.mandator_clearing_export_download"),
                        ]),
                    ])),
                ])),
            ])),
            ("ec_data_ecom".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("ecomData")),
                        ("title".to_string(), Value::str("Ecom Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("ec_data_ecom")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/getEcData")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getEcData")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("getEcData"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("ecom_parameter".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("ecomPass")),
                        ("title".to_string(), Value::str("Ecom Pass")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecomSkey")),
                        ("title".to_string(), Value::str("Ecom Skey")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                ])),
                ("name".to_string(), Value::str("ecom_parameter")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/getEcomParameters")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getEcomParameters")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("getEcomParameters"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("ecr_data".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("ecrData")),
                        ("title".to_string(), Value::str("Ecr Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("ecr_data")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/getEcrData")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getEcrData")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("getEcrData"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("emv_data".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("emvData")),
                        ("title".to_string(), Value::str("Emv Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("emv_data")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/getEmvData")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getEmvData")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("getEmvData"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("enable_acquiring".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("accountNo")),
                        ("title".to_string(), Value::str("Account No")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("additionalData")),
                        ("title".to_string(), Value::str("Additional Data")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantCategoryCode")),
                        ("title".to_string(), Value::str("Merchant Category Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("packageOrderUuid")),
                        ("title".to_string(), Value::str("Package Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("productOrderUuid")),
                        ("title".to_string(), Value::str("Product Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sortingCode")),
                        ("title".to_string(), Value::str("Sorting Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateName")),
                        ("title".to_string(), Value::str("Template Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalIdAcq")),
                        ("title".to_string(), Value::str("Terminal Id Acq")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalIds")),
                        ("title".to_string(), Value::str("Terminal Ids")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("vuNummer")),
                        ("title".to_string(), Value::str("Vu Nummer")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("enable_acquiring")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/enableAcquiring")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("enableAcquiring")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("enableAcquiring"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("get_merchant_contract_number".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantContractNumber")),
                        ("title".to_string(), Value::str("Merchant Contract Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("get_merchant_contract_number")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/getMerchantContractNumber")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getMerchantContractNumber")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("getMerchantContractNumber"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("get_template_xml".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateName")),
                        ("title".to_string(), Value::str("Template Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("get_template_xml")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/getTemplateXml")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getTemplateXml")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("getTemplateXml"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("introduce_mandator".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("mandatorName")),
                        ("title".to_string(), Value::str("Mandator Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("introduce_mandator")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/introduceMandator")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("introduceMandator")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("introduceMandator"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("introduce_package".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalTemplateDescription")),
                        ("title".to_string(), Value::str("Terminal Template Description")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("introduce_package")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/introducePackage")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("introducePackage")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("introducePackage"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("keep_alive".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("hwserialno")),
                        ("title".to_string(), Value::str("Hwserialno")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("kaDateTimeFrom")),
                        ("title".to_string(), Value::str("Ka Date Time From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("kaDateTimeTo")),
                        ("title".to_string(), Value::str("Ka Date Time To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("keepAliveData")),
                        ("title".to_string(), Value::str("Keep Alive Data")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalDateTimeFrom")),
                        ("title".to_string(), Value::str("Terminal Date Time From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalDateTimeTo")),
                        ("title".to_string(), Value::str("Terminal Date Time To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                ])),
                ("name".to_string(), Value::str("keep_alive")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/keepalive")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("keepalive")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("keepalive"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("list_terminal".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("filter")),
                        ("title".to_string(), Value::str("Filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminals")),
                        ("title".to_string(), Value::str("Terminals")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("list_terminal")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/listTerminals")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listTerminals")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("listTerminals"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("mandator_clearing_export".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateFrom")),
                        ("title".to_string(), Value::str("Clearing Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateTo")),
                        ("title".to_string(), Value::str("Clearing Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("records")),
                        ("title".to_string(), Value::str("Records")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("mandator_clearing_export")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExport")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExport")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExport"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("mandator_clearing_export_download".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateFrom")),
                        ("title".to_string(), Value::str("Clearing Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Start date for clearing export (inclusive)")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateTo")),
                        ("title".to_string(), Value::str("Clearing Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("End date for clearing export (inclusive)")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("fileId")),
                        ("title".to_string(), Value::str("File Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Unique file identifier for tracking and downloading")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("filenameTemplate")),
                        ("title".to_string(), Value::str("Filename Template")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Optional filename template for the export file")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("id")),
                        ("title".to_string(), Value::str("Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("status")),
                        ("title".to_string(), Value::str("Status")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Processing status of the export request")),
                    ]),
                ])),
                ("id".to_string(), Value::map_of([
                    ("field".to_string(), Value::str("id")),
                    ("name".to_string(), Value::str("id")),
                ])),
                ("name".to_string(), Value::str("mandator_clearing_export_download")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExportDownload")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExportDownload")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExportDownload"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExportDownload/{fileId}")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExportDownload")),
                                    ]),
                                    Value::map_of([
                                        ("var".to_string(), Value::str("id")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExportDownload"),
                                    Value::str("{id}"),
                                ])),
                                ("rename".to_string(), Value::map_of([
                                    ("param".to_string(), Value::map_of([
                                        ("fileId".to_string(), Value::str("id")),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("params".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("id")),
                                            ("orig".to_string(), Value::str("file_id")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("param")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("id"),
                                    ])),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("mandator_clearing_export_summary".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateFrom")),
                        ("title".to_string(), Value::str("Clearing Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateTo")),
                        ("title".to_string(), Value::str("Clearing Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("records")),
                        ("title".to_string(), Value::str("Records")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("mandator_clearing_export_summary")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/digitalservices/mandatorClearingExportSummary")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mandatorClearingExportSummary")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("mandatorClearingExportSummary"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("merchant_portal_services_api".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("3DSecure")),
                        ("title".to_string(), Value::str("3 D Secure")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationCode")),
                        ("title".to_string(), Value::str("Authorization Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrand")),
                        ("title".to_string(), Value::str("Card Brand")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingAmountFrom")),
                        ("title".to_string(), Value::str("Clearing Amount From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingAmountTo")),
                        ("title".to_string(), Value::str("Clearing Amount To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingCurrency")),
                        ("title".to_string(), Value::str("Clearing Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingStatus")),
                        ("title".to_string(), Value::str("Clearing Status")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUUID")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("orderByTransactionDate")),
                        ("title".to_string(), Value::str("Order By Transaction Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptNumber")),
                        ("title".to_string(), Value::str("Receipt Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("referencedTransactionId")),
                        ("title".to_string(), Value::str("Referenced Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("retrievalReferenceNumber")),
                        ("title".to_string(), Value::str("Retrieval Reference Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sourceId")),
                        ("title".to_string(), Value::str("Source Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsengineResponseCodeFrom")),
                        ("title".to_string(), Value::str("Tecsengine Response Code From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsengineResponseCodeTo")),
                        ("title".to_string(), Value::str("Tecsengine Response Code To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("traceNumber")),
                        ("title".to_string(), Value::str("Trace Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionAmountFrom")),
                        ("title".to_string(), Value::str("Transaction Amount From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionAmountTo")),
                        ("title".to_string(), Value::str("Transaction Amount To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateFrom")),
                        ("title".to_string(), Value::str("Transaction Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateTo")),
                        ("title".to_string(), Value::str("Transaction Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("wallet")),
                        ("title".to_string(), Value::str("Wallet")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Filter by wallet type.")),
                    ]),
                ])),
                ("name".to_string(), Value::str("merchant_portal_services_api")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/transactionHistoryCsv")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("transactionHistoryCsv")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("transactionHistoryCsv"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("move_tid".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("productorderuuids")),
                        ("title".to_string(), Value::str("Productorderuuids")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("targetPackageorderuuid")),
                        ("title".to_string(), Value::str("Target Packageorderuuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("targetProductorderuuid")),
                        ("title".to_string(), Value::str("Target Productorderuuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("move_tid")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/moveTid")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("moveTid")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("moveTid"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("payment_manual".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerName")),
                        ("title".to_string(), Value::str("Acquirer Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Acquirer name parsed from KKG field")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("amount")),
                        ("title".to_string(), Value::str("Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Transaction amount in minor units (cents)")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationNumber")),
                        ("title".to_string(), Value::str("Authorization Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Authorization number from the gateway")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNumber")),
                        ("title".to_string(), Value::str("Card Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Card number - 12 to 19 digits, must pass Luhn validation")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardType")),
                        ("title".to_string(), Value::str("Card Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Card type parsed from KKG field")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Currency code - 3 uppercase letters (ISO 4217)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cvc")),
                        ("title".to_string(), Value::str("Cvc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Card verification code - 3-4 digits (optional)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateTimeTx")),
                        ("title".to_string(), Value::str("Date Time Tx")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Date and time of the transaction")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("expDate")),
                        ("title".to_string(), Value::str("Exp Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Card expiry date in MMYY format")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantId")),
                        ("title".to_string(), Value::str("Merchant Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Merchant ID (VU-NUMMER)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTransactionId")),
                        ("title".to_string(), Value::str("Original Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Original transaction ID from gateway")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("title".to_string(), Value::str("Password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Terminal password sent as Kennwort in TECS XML (optional)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Response code - 00 for success, otherwise error code")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Response message - 'Approved' for success, error description otherwise")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("short".to_string(), Value::str("Terminal ID used for the transaction")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Transaction ID generated by the backend")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txtype")),
                        ("title".to_string(), Value::str("Txtype")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Transaction type")),
                    ]),
                ])),
                ("name".to_string(), Value::str("payment_manual")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/paymentManual")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("paymentManual")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("paymentManual"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("payment_sred".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("amount")),
                        ("title".to_string(), Value::str("Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Transaction amount in minor units (cents)")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Currency code - 3 uppercase letters (ISO 4217)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("device")),
                        ("title".to_string(), Value::str("Device")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Device type that provided the SRED payload")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("devicePayload")),
                        ("title".to_string(), Value::str("Device Payload")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("SRED encrypted device payload from the device (minimum 32 characters)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("expDate")),
                        ("title".to_string(), Value::str("Exp Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Card expiry date in MMYY format")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("mode")),
                        ("title".to_string(), Value::str("Mode")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Decryption mode")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("panMasked")),
                        ("title".to_string(), Value::str("Pan Masked")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Masked PAN (first 6 and last 4 digits)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("title".to_string(), Value::str("Password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Terminal password sent as Kennwort in TECS XML (optional)")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serial")),
                        ("title".to_string(), Value::str("Serial")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Device serial number")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serviceCode")),
                        ("title".to_string(), Value::str("Service Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Service code from the card")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Terminal ID - 8 digits")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txtype")),
                        ("title".to_string(), Value::str("Txtype")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Transaction type")),
                    ]),
                ])),
                ("name".to_string(), Value::str("payment_sred")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/paymentSred")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("paymentSred")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("paymentSred"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body.sred`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("pre_auth_transaction_completion".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerId")),
                        ("title".to_string(), Value::str("Acquirer Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerName")),
                        ("title".to_string(), Value::str("Acquirer Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("actualBonusPoints")),
                        ("title".to_string(), Value::str("Actual Bonus Points")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("amount")),
                        ("title".to_string(), Value::str("Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$INTEGER`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationCode")),
                        ("title".to_string(), Value::str("Authorization Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("balanceAmount")),
                        ("title".to_string(), Value::str("Balance Amount")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrand")),
                        ("title".to_string(), Value::str("Card Brand")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNumber")),
                        ("title".to_string(), Value::str("Card Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNumberReference")),
                        ("title".to_string(), Value::str("Card Number Reference")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clientId")),
                        ("title".to_string(), Value::str("Client Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cvc")),
                        ("title".to_string(), Value::str("Cvc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecData")),
                        ("title".to_string(), Value::str("Ec Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecrData")),
                        ("title".to_string(), Value::str("Ecr Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emvData")),
                        ("title".to_string(), Value::str("Emv Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("exchangeFee")),
                        ("title".to_string(), Value::str("Exchange Fee")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int64")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("exchangeRate")),
                        ("title".to_string(), Value::str("Exchange Rate")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("languageCode")),
                        ("title".to_string(), Value::str("Language Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantAddress")),
                        ("title".to_string(), Value::str("Merchant Address")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantName")),
                        ("title".to_string(), Value::str("Merchant Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantNumber")),
                        ("title".to_string(), Value::str("Merchant Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("messageType")),
                        ("title".to_string(), Value::str("Message Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTraceNumber")),
                        ("title".to_string(), Value::str("Original Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTransactionId")),
                        ("title".to_string(), Value::str("Original Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("title".to_string(), Value::str("Password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("paymentReason")),
                        ("title".to_string(), Value::str("Payment Reason")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptFooter")),
                        ("title".to_string(), Value::str("Receipt Footer")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptHeader")),
                        ("title".to_string(), Value::str("Receipt Header")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptLayout")),
                        ("title".to_string(), Value::str("Receipt Layout")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptNumber")),
                        ("title".to_string(), Value::str("Receipt Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serialNumber")),
                        ("title".to_string(), Value::str("Serial Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("svc")),
                        ("title".to_string(), Value::str("Svc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalLocation")),
                        ("title".to_string(), Value::str("Terminal Location")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("traceNumber")),
                        ("title".to_string(), Value::str("Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDate")),
                        ("title".to_string(), Value::str("Transaction Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txType")),
                        ("title".to_string(), Value::str("Tx Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("userData")),
                        ("title".to_string(), Value::str("User Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("pre_auth_transaction_completion")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/paymentTransaction")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("paymentTransaction")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("paymentTransaction"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/preAuthCompletionTransaction")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("preAuthCompletionTransaction")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("preAuthCompletionTransaction"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("reactivate_terminal".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("packageOrderUuid")),
                        ("title".to_string(), Value::str("Package Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("productOrderUuid")),
                        ("title".to_string(), Value::str("Product Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("reactivationReason")),
                        ("title".to_string(), Value::str("Reactivation Reason")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                ])),
                ("name".to_string(), Value::str("reactivate_terminal")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/reactivateTerminal")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("reactivateTerminal")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("reactivateTerminal"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("refund_transaction".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerId")),
                        ("title".to_string(), Value::str("Acquirer Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerName")),
                        ("title".to_string(), Value::str("Acquirer Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("actualBonusPoints")),
                        ("title".to_string(), Value::str("Actual Bonus Points")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("amount")),
                        ("title".to_string(), Value::str("Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$INTEGER`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationCode")),
                        ("title".to_string(), Value::str("Authorization Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("balanceAmount")),
                        ("title".to_string(), Value::str("Balance Amount")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrand")),
                        ("title".to_string(), Value::str("Card Brand")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNumber")),
                        ("title".to_string(), Value::str("Card Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clientId")),
                        ("title".to_string(), Value::str("Client Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cvc")),
                        ("title".to_string(), Value::str("Cvc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecData")),
                        ("title".to_string(), Value::str("Ec Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecrData")),
                        ("title".to_string(), Value::str("Ecr Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emvData")),
                        ("title".to_string(), Value::str("Emv Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("exchangeFee")),
                        ("title".to_string(), Value::str("Exchange Fee")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int64")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("exchangeRate")),
                        ("title".to_string(), Value::str("Exchange Rate")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("languageCode")),
                        ("title".to_string(), Value::str("Language Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantAddress")),
                        ("title".to_string(), Value::str("Merchant Address")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantName")),
                        ("title".to_string(), Value::str("Merchant Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantNumber")),
                        ("title".to_string(), Value::str("Merchant Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("messageType")),
                        ("title".to_string(), Value::str("Message Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTraceNumber")),
                        ("title".to_string(), Value::str("Original Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTransactionId")),
                        ("title".to_string(), Value::str("Original Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("title".to_string(), Value::str("Password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("paymentReason")),
                        ("title".to_string(), Value::str("Payment Reason")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptFooter")),
                        ("title".to_string(), Value::str("Receipt Footer")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptHeader")),
                        ("title".to_string(), Value::str("Receipt Header")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptLayout")),
                        ("title".to_string(), Value::str("Receipt Layout")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptNumber")),
                        ("title".to_string(), Value::str("Receipt Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serialNumber")),
                        ("title".to_string(), Value::str("Serial Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("svc")),
                        ("title".to_string(), Value::str("Svc")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalLocation")),
                        ("title".to_string(), Value::str("Terminal Location")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("traceNumber")),
                        ("title".to_string(), Value::str("Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDate")),
                        ("title".to_string(), Value::str("Transaction Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("txType")),
                        ("title".to_string(), Value::str("Tx Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("userData")),
                        ("title".to_string(), Value::str("User Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("refund_transaction")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/refundTransaction")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("refundTransaction")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("refundTransaction"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("register_tecs_company".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("packageOrderUuid")),
                        ("title".to_string(), Value::str("Package Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("partnerId")),
                        ("title".to_string(), Value::str("Partner Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("partnerName")),
                        ("title".to_string(), Value::str("Partner Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("productOrderUuid")),
                        ("title".to_string(), Value::str("Product Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateName")),
                        ("title".to_string(), Value::str("Template Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("register_tecs_company")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/registerTecsCompany")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("registerTecsCompany")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("registerTecsCompany"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("register_terminal".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("additionalData")),
                        ("title".to_string(), Value::str("Additional Data")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("packageOrderUuid")),
                        ("title".to_string(), Value::str("Package Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("productOrderUuid")),
                        ("title".to_string(), Value::str("Product Order Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsWebSecretKey")),
                        ("title".to_string(), Value::str("Tecs Web Secret Key")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateName")),
                        ("title".to_string(), Value::str("Template Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalCountryCode")),
                        ("title".to_string(), Value::str("Terminal Country Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalIdAcq")),
                        ("title".to_string(), Value::str("Terminal Id Acq")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalLanguageCode")),
                        ("title".to_string(), Value::str("Terminal Language Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalLocation")),
                        ("title".to_string(), Value::str("Terminal Location")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalSerialNumber")),
                        ("title".to_string(), Value::str("Terminal Serial Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tokenIOAlias")),
                        ("title".to_string(), Value::str("Token Io Alias")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tokenIOIban")),
                        ("title".to_string(), Value::str("Token Io Iban")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tokenIOMemberId")),
                        ("title".to_string(), Value::str("Token Io Member Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("webShopUrl")),
                        ("title".to_string(), Value::str("Web Shop Url")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("register_terminal")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/registerTerminal")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("registerTerminal")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("registerTerminal"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("report_data".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrandReportData")),
                        ("title".to_string(), Value::str("Card Brand Report Data")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateFrom")),
                        ("title".to_string(), Value::str("Clearing Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ss")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDateTo")),
                        ("title".to_string(), Value::str("Clearing Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Date and time in the format yyyy-MM-dd'T'HH:mm:ss")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateId")),
                        ("title".to_string(), Value::str("Corporate Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sumOverCreditTx")),
                        ("title".to_string(), Value::str("Sum Over Credit Tx")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sumOverDebitTx")),
                        ("title".to_string(), Value::str("Sum Over Debit Tx")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                ])),
                ("name".to_string(), Value::str("report_data")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/digitalservices/reportData")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("digitalservices")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("reportData")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("digitalservices"),
                                    Value::str("reportData"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("status_transaction".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerName")),
                        ("title".to_string(), Value::str("Acquirer Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("acquirerTerminalId")),
                        ("title".to_string(), Value::str("Acquirer Terminal Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("amount")),
                        ("title".to_string(), Value::str("Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("applicationCryptogram")),
                        ("title".to_string(), Value::str("Application Cryptogram")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationCode")),
                        ("title".to_string(), Value::str("Authorization Code")),
                        ("type".to_string(), Value::list(vec![
                            Value::str("`$ONE`"),
                            Value::list(vec![
                                Value::str("`$STRING`"),
                                Value::str("`$NULL`"),
                            ]),
                        ])),
                        ("short".to_string(), Value::str("Authorization code returned by the acquirer; null when not available")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationDate")),
                        ("title".to_string(), Value::str("Authorization Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrand")),
                        ("title".to_string(), Value::str("Card Brand")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardEntry")),
                        ("title".to_string(), Value::str("Card Entry")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardExpiration")),
                        ("title".to_string(), Value::str("Card Expiration")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardNumber")),
                        ("title".to_string(), Value::str("Card Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingAmount")),
                        ("title".to_string(), Value::str("Clearing Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingBatchId")),
                        ("title".to_string(), Value::str("Clearing Batch Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingCurrency")),
                        ("title".to_string(), Value::str("Clearing Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingDate")),
                        ("title".to_string(), Value::str("Clearing Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingProcessedDate")),
                        ("title".to_string(), Value::str("Clearing Processed Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingStatus")),
                        ("title".to_string(), Value::str("Clearing Status")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clientId")),
                        ("title".to_string(), Value::str("Client Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("currency")),
                        ("title".to_string(), Value::str("Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cvm")),
                        ("title".to_string(), Value::str("Cvm")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("ecrData")),
                        ("title".to_string(), Value::str("Ecr Data")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emvApplicationId")),
                        ("title".to_string(), Value::str("Emv Application Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emvApplicationLabel")),
                        ("title".to_string(), Value::str("Emv Application Label")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantName")),
                        ("title".to_string(), Value::str("Merchant Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantNumber")),
                        ("title".to_string(), Value::str("Merchant Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalClientId")),
                        ("title".to_string(), Value::str("Original Client Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTerminalId")),
                        ("title".to_string(), Value::str("Original Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("originalTransactionId")),
                        ("title".to_string(), Value::str("Original Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("paymentReason")),
                        ("title".to_string(), Value::str("Payment Reason")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptNumber")),
                        ("title".to_string(), Value::str("Receipt Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCodeFromAS")),
                        ("title".to_string(), Value::str("Response Code From As")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("retrievalReferenceNumber")),
                        ("title".to_string(), Value::str("Retrieval Reference Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serviceCode")),
                        ("title".to_string(), Value::str("Service Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("settlementStatus")),
                        ("title".to_string(), Value::str("Settlement Status")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sourceId")),
                        ("title".to_string(), Value::str("Source Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsengineResponseCode")),
                        ("title".to_string(), Value::str("Tecsengine Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsengineResponseText")),
                        ("title".to_string(), Value::str("Tecsengine Response Text")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalEndOfDayDate")),
                        ("title".to_string(), Value::str("Terminal End Of Day Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalLocation")),
                        ("title".to_string(), Value::str("Terminal Location")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tipAmount")),
                        ("title".to_string(), Value::str("Tip Amount")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("traceNumber")),
                        ("title".to_string(), Value::str("Trace Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionClearingDate")),
                        ("title".to_string(), Value::str("Transaction Clearing Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDate")),
                        ("title".to_string(), Value::str("Transaction Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionSeqNumber")),
                        ("title".to_string(), Value::str("Transaction Seq Number")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int64")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionServerDate")),
                        ("title".to_string(), Value::str("Transaction Server Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionSource")),
                        ("title".to_string(), Value::str("Transaction Source")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("status_transaction")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/statusTransaction")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("statusTransaction")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("statusTransaction"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("store_terminal_parameter".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("acqTabNexo")),
                        ("title".to_string(), Value::str("Acq Tab Nexo")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("configVersion")),
                        ("title".to_string(), Value::str("Config Version")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("serialNumber")),
                        ("title".to_string(), Value::str("Serial Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tidSent")),
                        ("title".to_string(), Value::str("Tid Sent")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("store_terminal_parameter")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/storeTerminalParameters")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("storeTerminalParameters")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("storeTerminalParameters"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("terminal_id".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("deviceSerialNumber")),
                        ("title".to_string(), Value::str("Device Serial Number")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("duplicateTerminalIds")),
                        ("title".to_string(), Value::str("Duplicate Terminal Ids")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminals")),
                        ("title".to_string(), Value::str("Terminals")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("terminal_id")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/getTerminalId")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getTerminalId")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("getTerminalId"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("transaction_history".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("3DSecure")),
                        ("title".to_string(), Value::str("3 D Secure")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("authorizationCode")),
                        ("title".to_string(), Value::str("Authorization Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("cardBrand")),
                        ("title".to_string(), Value::str("Card Brand")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingAmountFrom")),
                        ("title".to_string(), Value::str("Clearing Amount From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingAmountTo")),
                        ("title".to_string(), Value::str("Clearing Amount To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingCurrency")),
                        ("title".to_string(), Value::str("Clearing Currency")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("clearingStatus")),
                        ("title".to_string(), Value::str("Clearing Status")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUUID")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("orderByTransactionDate")),
                        ("title".to_string(), Value::str("Order By Transaction Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("paymentTokenPublicId")),
                        ("title".to_string(), Value::str("Payment Token Public Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("receiptNumber")),
                        ("title".to_string(), Value::str("Receipt Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("referencedTransactionId")),
                        ("title".to_string(), Value::str("Referenced Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("retrievalReferenceNumber")),
                        ("title".to_string(), Value::str("Retrieval Reference Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sourceId")),
                        ("title".to_string(), Value::str("Source Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsengineResponseCodeFrom")),
                        ("title".to_string(), Value::str("Tecsengine Response Code From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("tecsengineResponseCodeTo")),
                        ("title".to_string(), Value::str("Tecsengine Response Code To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("terminalId")),
                        ("title".to_string(), Value::str("Terminal Id")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("traceNumber")),
                        ("title".to_string(), Value::str("Trace Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionAmountFrom")),
                        ("title".to_string(), Value::str("Transaction Amount From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionAmountTo")),
                        ("title".to_string(), Value::str("Transaction Amount To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateFrom")),
                        ("title".to_string(), Value::str("Transaction Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateTo")),
                        ("title".to_string(), Value::str("Transaction Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionHistories")),
                        ("title".to_string(), Value::str("Transaction Histories")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionId")),
                        ("title".to_string(), Value::str("Transaction Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionType")),
                        ("title".to_string(), Value::str("Transaction Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("wallet")),
                        ("title".to_string(), Value::str("Wallet")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Filter by wallet type.")),
                    ]),
                ])),
                ("name".to_string(), Value::str("transaction_history")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/mcom/transactionHistory")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("mcom")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("transactionHistory")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("mcom"),
                                    Value::str("transactionHistory"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/transactionHistory")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("transactionHistory")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("transactionHistory"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("transactions_count_card_brand".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("period")),
                        ("title".to_string(), Value::str("Period")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateFrom")),
                        ("title".to_string(), Value::str("Transaction Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateTo")),
                        ("title".to_string(), Value::str("Transaction Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionsCount")),
                        ("title".to_string(), Value::str("Transactions Count")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("transactions_count_card_brand")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/countTransactionsByCardBrand")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("countTransactionsByCardBrand")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("countTransactionsByCardBrand"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("transactions_turnover".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("period")),
                        ("title".to_string(), Value::str("Period")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateFrom")),
                        ("title".to_string(), Value::str("Transaction Date From")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionDateTo")),
                        ("title".to_string(), Value::str("Transaction Date To")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("format".to_string(), Value::str("date-time")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("turnovers")),
                        ("title".to_string(), Value::str("Turnovers")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("transactions_turnover")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/transactionTurnover")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("transactionTurnover")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("transactionTurnover"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("update_merchant".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("city")),
                        ("title".to_string(), Value::str("City")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("corporateUuid")),
                        ("title".to_string(), Value::str("Corporate Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("title".to_string(), Value::str("Country")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("merchantCategoryCode")),
                        ("title".to_string(), Value::str("Merchant Category Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("name")),
                        ("title".to_string(), Value::str("Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("title".to_string(), Value::str("State")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street")),
                        ("title".to_string(), Value::str("Street")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("vuNummer")),
                        ("title".to_string(), Value::str("Vu Nummer")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zipcode")),
                        ("title".to_string(), Value::str("Zipcode")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("update_merchant")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/updateMerchant")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("updateMerchant")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("updateMerchant"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("update_template_xml".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateName")),
                        ("title".to_string(), Value::str("Template Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("templateXml")),
                        ("title".to_string(), Value::str("Template Xml")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                ])),
                ("name".to_string(), Value::str("update_template_xml")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/public/updateTemplateXml")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("updateTemplateXml")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("updateTemplateXml"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("version".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("appName")),
                        ("title".to_string(), Value::str("App Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("buildDate")),
                        ("title".to_string(), Value::str("Build Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("version")),
                        ("title".to_string(), Value::str("Version")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("version")),
                ("op".to_string(), Value::map_of([
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/public/version")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("public")),
                                    ]),
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("version")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("public"),
                                    Value::str("version"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
        ])),
    ])
}

// SHARED CONFIG (sdkgen rung L2).
//
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client. Above the
// size threshold make_config re-parses the whole embedded JSON, so this is the
// difference between parsing the model once and once per client.
//
// THREAD-LOCAL, not a global: Value is Rc/RefCell-backed and so is neither
// Send nor Sync. One config per thread is the widest scope that is sound here,
// and the clone is an Rc bump, not a deep copy.
thread_local! {
    static SHARED_CONFIG: Value = make_config();
}

/// The per-thread config, built once on first use.
///
/// The returned Value SHARES its nodes: treat it as read-only. Callers that
/// need to mutate should use make_config, which always returns a fresh copy.
pub fn shared_config() -> Value {
    SHARED_CONFIG.with(|c| c.clone())
}

pub fn make_feature(name: &str) -> FeatureRef {
    match name {
        "audit" => Rc::new(RefCell::new(crate::feature::audit::AuditFeature::new())),
        "clienttrack" => Rc::new(RefCell::new(crate::feature::clienttrack::ClienttrackFeature::new())),
        "debug" => Rc::new(RefCell::new(crate::feature::debug::DebugFeature::new())),
        "idempotency" => Rc::new(RefCell::new(crate::feature::idempotency::IdempotencyFeature::new())),
        "log" => Rc::new(RefCell::new(crate::feature::log::LogFeature::new())),
        "metrics" => Rc::new(RefCell::new(crate::feature::metrics::MetricsFeature::new())),
        "paging" => Rc::new(RefCell::new(crate::feature::paging::PagingFeature::new())),
        "ratelimit" => Rc::new(RefCell::new(crate::feature::ratelimit::RatelimitFeature::new())),
        "retry" => Rc::new(RefCell::new(crate::feature::retry::RetryFeature::new())),
        "telemetry" => Rc::new(RefCell::new(crate::feature::telemetry::TelemetryFeature::new())),
        "test" => Rc::new(RefCell::new(crate::feature::test::TestFeature::new())),
        "timeout" => Rc::new(RefCell::new(crate::feature::timeout::TimeoutFeature::new())),
        _ => Rc::new(RefCell::new(crate::feature::base::BaseFeature::new())),
    }
}
