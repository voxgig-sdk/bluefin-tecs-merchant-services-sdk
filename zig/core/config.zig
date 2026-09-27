// Generated API configuration (mirrors go/rust core/config).

const std = @import("std");
const h = @import("helpers.zig");
const types = @import("types.zig");
const Value = h.Value;
const Feature = types.Feature;

pub fn make_config() Value {
    return h.jo(&.{
        .{ "main", h.jo(&.{
            .{ "name", h.vstr("BluefinTecsMerchantServices") },
            .{ "slug", h.vstr("bluefin-tecs-merchant-services") },
            .{ "version", h.vstr("0.1.1") },
            .{ "target", h.vstr("zig") },
        }) },
        .{ "feature", h.jo(&.{
            .{ "audit", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "actor", h.vstr("anonymous") },
                    .{ "max", h.vnum(1000) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                    .{ "sink", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "clienttrack", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "clientVersion", h.vstr("0.0.1") },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "clientName", h.vstr("`$STRING`") },
                    .{ "clientVersion", h.vstr("`$STRING`") },
                    .{ "headers", h.vstr("`$MAP`") },
                    .{ "idgen", h.vstr("`$FUNCTION`") },
                    .{ "sessionId", h.vstr("`$STRING`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "debug", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "max", h.vnum(100) },
                    .{ "redact", h.ja(&.{
                        h.vstr("authorization"),
                        h.vstr("cookie"),
                        h.vstr("set-cookie"),
                        h.vstr("api-key"),
                        h.vstr("apikey"),
                        h.vstr("x-api-key"),
                        h.vstr("idempotency-key"),
                    }) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                    .{ "onEntry", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "idempotency", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "header", h.vstr("Idempotency-Key") },
                    .{ "methods", h.ja(&.{
                        h.vstr("POST"),
                        h.vstr("PUT"),
                        h.vstr("PATCH"),
                        h.vstr("DELETE"),
                    }) },
                    .{ "ops", h.ja(&.{
                        h.vstr("create"),
                        h.vstr("update"),
                        h.vstr("remove"),
                    }) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "keygen", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "log", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(true) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "level", h.vstr("`$STRING`") },
                    .{ "logger", h.vstr("`$ANY`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "metrics", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "paging", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "afterVar", h.vstr("after") },
                    .{ "cursorParam", h.vstr("cursor") },
                    .{ "firstVar", h.vstr("first") },
                    .{ "limitParam", h.vstr("limit") },
                    .{ "pageParam", h.vstr("page") },
                    .{ "startPage", h.vnum(1) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "limit", h.vstr("`$NUMBER`") },
                    .{ "ops", h.vstr("`$LIST`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "ratelimit", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "burst", h.vnum(5) },
                    .{ "rate", h.vnum(5) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                    .{ "sleep", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("wrap") },
            }) },
            .{ "retry", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "factor", h.vnum(2) },
                    .{ "maxDelay", h.vnum(2000) },
                    .{ "minDelay", h.vnum(50) },
                    .{ "retries", h.vnum(2) },
                    .{ "statuses", h.ja(&.{
                        h.vnum(408),
                        h.vnum(425),
                        h.vnum(429),
                        h.vnum(500),
                        h.vnum(502),
                        h.vnum(503),
                        h.vnum(504),
                    }) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "jitter", h.vstr("`$BOOLEAN`") },
                    .{ "sleep", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("wrap") },
            }) },
            .{ "telemetry", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "exporter", h.vstr("`$FUNCTION`") },
                    .{ "headers", h.vstr("`$MAP`") },
                    .{ "idgen", h.vstr("`$FUNCTION`") },
                    .{ "now", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "test", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "entity", h.vstr("`$MAP`") },
                    .{ "net", h.vstr("`$MAP`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("base") },
            }) },
            .{ "timeout", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "ms", h.vnum(30000) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "clearTimer", h.vstr("`$FUNCTION`") },
                    .{ "setTimer", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("wrap") },
            }) },
        }) },
        .{ "options", h.jo(&.{
            .{ "base", h.vstr("https://test.tecs.at/merchantservices") },
            .{ "auth", h.jo(&.{
                .{ "prefix", h.vstr("Bearer") },
            }) },
            .{ "headers", h.jo(&.{
                .{ "content-type", h.vstr("application/json") },
            }) },
            .{ "entity", h.jo(&.{
                .{ "cancel_transaction", h.omap() },
                .{ "check_card_black_listed", h.omap() },
                .{ "count_authorised_transaction", h.omap() },
                .{ "count_not_authorised_transaction", h.omap() },
                .{ "create_product", h.omap() },
                .{ "deactivate_terminal", h.omap() },
                .{ "digital_services_api", h.omap() },
                .{ "ec_data_ecom", h.omap() },
                .{ "ecom_parameter", h.omap() },
                .{ "ecr_data", h.omap() },
                .{ "emv_data", h.omap() },
                .{ "enable_acquiring", h.omap() },
                .{ "get_merchant_contract_number", h.omap() },
                .{ "get_template_xml", h.omap() },
                .{ "introduce_mandator", h.omap() },
                .{ "introduce_package", h.omap() },
                .{ "keep_alive", h.omap() },
                .{ "list_terminal", h.omap() },
                .{ "mandator_clearing_export", h.omap() },
                .{ "mandator_clearing_export_download", h.omap() },
                .{ "mandator_clearing_export_summary", h.omap() },
                .{ "merchant_portal_services_api", h.omap() },
                .{ "move_tid", h.omap() },
                .{ "payment_manual", h.omap() },
                .{ "payment_sred", h.omap() },
                .{ "pre_auth_transaction_completion", h.omap() },
                .{ "reactivate_terminal", h.omap() },
                .{ "refund_transaction", h.omap() },
                .{ "register_tecs_company", h.omap() },
                .{ "register_terminal", h.omap() },
                .{ "report_data", h.omap() },
                .{ "status_transaction", h.omap() },
                .{ "store_terminal_parameter", h.omap() },
                .{ "terminal_id", h.omap() },
                .{ "transaction_history", h.omap() },
                .{ "transactions_count_card_brand", h.omap() },
                .{ "transactions_turnover", h.omap() },
                .{ "update_merchant", h.omap() },
                .{ "update_template_xml", h.omap() },
                .{ "version", h.omap() },
            }) },
        }) },
        .{ "entity", h.jo(&.{
            .{ "cancel_transaction", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerId") },
                        .{ "title", h.vstr("Acquirer Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerName") },
                        .{ "title", h.vstr("Acquirer Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("actualBonusPoints") },
                        .{ "title", h.vstr("Actual Bonus Points") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("amount") },
                        .{ "title", h.vstr("Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$INTEGER`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationCode") },
                        .{ "title", h.vstr("Authorization Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("balanceAmount") },
                        .{ "title", h.vstr("Balance Amount") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrand") },
                        .{ "title", h.vstr("Card Brand") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardNumber") },
                        .{ "title", h.vstr("Card Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clientId") },
                        .{ "title", h.vstr("Client Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cvc") },
                        .{ "title", h.vstr("Cvc") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecData") },
                        .{ "title", h.vstr("Ec Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecrData") },
                        .{ "title", h.vstr("Ecr Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emvData") },
                        .{ "title", h.vstr("Emv Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("exchangeFee") },
                        .{ "title", h.vstr("Exchange Fee") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int64") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("exchangeRate") },
                        .{ "title", h.vstr("Exchange Rate") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("languageCode") },
                        .{ "title", h.vstr("Language Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantAddress") },
                        .{ "title", h.vstr("Merchant Address") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantName") },
                        .{ "title", h.vstr("Merchant Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantNumber") },
                        .{ "title", h.vstr("Merchant Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("messageType") },
                        .{ "title", h.vstr("Message Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTraceNumber") },
                        .{ "title", h.vstr("Original Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTransactionId") },
                        .{ "title", h.vstr("Original Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "title", h.vstr("Password") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("paymentReason") },
                        .{ "title", h.vstr("Payment Reason") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptFooter") },
                        .{ "title", h.vstr("Receipt Footer") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptHeader") },
                        .{ "title", h.vstr("Receipt Header") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptLayout") },
                        .{ "title", h.vstr("Receipt Layout") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptNumber") },
                        .{ "title", h.vstr("Receipt Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serialNumber") },
                        .{ "title", h.vstr("Serial Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("svc") },
                        .{ "title", h.vstr("Svc") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalLocation") },
                        .{ "title", h.vstr("Terminal Location") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("traceNumber") },
                        .{ "title", h.vstr("Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDate") },
                        .{ "title", h.vstr("Transaction Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txType") },
                        .{ "title", h.vstr("Tx Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("userData") },
                        .{ "title", h.vstr("User Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("cancel_transaction") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/cancelTransaction") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("cancelTransaction") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("cancelTransaction"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "check_card_black_listed", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("cardNo") },
                        .{ "title", h.vstr("Card No") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("check_card_black_listed") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/checkCardBlackListed") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("checkCardBlackListed") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("checkCardBlackListed"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "count_authorised_transaction", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("period") },
                        .{ "title", h.vstr("Period") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateFrom") },
                        .{ "title", h.vstr("Transaction Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateTo") },
                        .{ "title", h.vstr("Transaction Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionsCount") },
                        .{ "title", h.vstr("Transactions Count") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("count_authorised_transaction") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/countAuthorisedTransactions") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("countAuthorisedTransactions") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("countAuthorisedTransactions"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "count_not_authorised_transaction", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("period") },
                        .{ "title", h.vstr("Period") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateFrom") },
                        .{ "title", h.vstr("Transaction Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateTo") },
                        .{ "title", h.vstr("Transaction Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionsCount") },
                        .{ "title", h.vstr("Transactions Count") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("count_not_authorised_transaction") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/countNotAuthorisedTransactions") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("countNotAuthorisedTransactions") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("countNotAuthorisedTransactions"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "create_product", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerId") },
                        .{ "title", h.vstr("Acquirer Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateName") },
                        .{ "title", h.vstr("Template Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateType") },
                        .{ "title", h.vstr("Template Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateXml") },
                        .{ "title", h.vstr("Template Xml") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalType") },
                        .{ "title", h.vstr("Terminal Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("create_product") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/createProduct") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("createProduct") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("createProduct"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "deactivate_terminal", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("deactivationReason") },
                        .{ "title", h.vstr("Deactivation Reason") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("packageOrderUuid") },
                        .{ "title", h.vstr("Package Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("productOrderUuid") },
                        .{ "title", h.vstr("Product Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                }) },
                .{ "name", h.vstr("deactivate_terminal") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/deactivateTerminal") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("deactivateTerminal") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("deactivateTerminal"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "digital_services_api", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateFrom") },
                        .{ "title", h.vstr("Clearing Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateTo") },
                        .{ "title", h.vstr("Clearing Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txCount") },
                        .{ "title", h.vstr("Tx Count") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txIdEnd") },
                        .{ "title", h.vstr("Tx Id End") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txIdStart") },
                        .{ "title", h.vstr("Tx Id Start") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txSeqNoEnd") },
                        .{ "title", h.vstr("Tx Seq No End") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txSeqNoStart") },
                        .{ "title", h.vstr("Tx Seq No Start") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txTotal") },
                        .{ "title", h.vstr("Tx Total") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                }) },
                .{ "name", h.vstr("digital_services_api") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExportDownload/{fileId}") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExportDownload") },
                                    }),
                                    h.jo(&.{
                                        .{ "var", h.vstr("file_id") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExportDownload"),
                                    h.vstr("{file_id}"),
                                }) },
                                .{ "rename", h.jo(&.{
                                    .{ "param", h.jo(&.{
                                        .{ "fileId", h.vstr("file_id") },
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "params", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("file_id") },
                                            .{ "orig", h.vstr("file_id") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("param") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("file_id"),
                                    }) },
                                }) },
                            }),
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExportMetadata") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExportMetadata") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExportMetadata"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                    .{ "load", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("load") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExportDownload/status") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExportDownload") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("status") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExportDownload"),
                                    h.vstr("status"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.ja(&.{
                        h.ja(&.{
                            h.vstr("$.main.kit.entity.mandator_clearing_export_download"),
                        }),
                    }) },
                }) },
            }) },
            .{ "ec_data_ecom", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("ecomData") },
                        .{ "title", h.vstr("Ecom Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("ec_data_ecom") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/getEcData") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getEcData") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("getEcData"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "ecom_parameter", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("ecomPass") },
                        .{ "title", h.vstr("Ecom Pass") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecomSkey") },
                        .{ "title", h.vstr("Ecom Skey") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                }) },
                .{ "name", h.vstr("ecom_parameter") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/getEcomParameters") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getEcomParameters") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("getEcomParameters"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "ecr_data", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("ecrData") },
                        .{ "title", h.vstr("Ecr Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("ecr_data") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/getEcrData") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getEcrData") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("getEcrData"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "emv_data", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("emvData") },
                        .{ "title", h.vstr("Emv Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("emv_data") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/getEmvData") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getEmvData") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("getEmvData"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "enable_acquiring", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("accountNo") },
                        .{ "title", h.vstr("Account No") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("additionalData") },
                        .{ "title", h.vstr("Additional Data") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantCategoryCode") },
                        .{ "title", h.vstr("Merchant Category Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("packageOrderUuid") },
                        .{ "title", h.vstr("Package Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("productOrderUuid") },
                        .{ "title", h.vstr("Product Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sortingCode") },
                        .{ "title", h.vstr("Sorting Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateName") },
                        .{ "title", h.vstr("Template Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalIdAcq") },
                        .{ "title", h.vstr("Terminal Id Acq") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalIds") },
                        .{ "title", h.vstr("Terminal Ids") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("vuNummer") },
                        .{ "title", h.vstr("Vu Nummer") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("enable_acquiring") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/enableAcquiring") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("enableAcquiring") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("enableAcquiring"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "get_merchant_contract_number", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("merchantContractNumber") },
                        .{ "title", h.vstr("Merchant Contract Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("get_merchant_contract_number") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/getMerchantContractNumber") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getMerchantContractNumber") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("getMerchantContractNumber"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "get_template_xml", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateName") },
                        .{ "title", h.vstr("Template Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("get_template_xml") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/getTemplateXml") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getTemplateXml") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("getTemplateXml"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "introduce_mandator", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("mandatorName") },
                        .{ "title", h.vstr("Mandator Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("introduce_mandator") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/introduceMandator") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("introduceMandator") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("introduceMandator"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "introduce_package", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalTemplateDescription") },
                        .{ "title", h.vstr("Terminal Template Description") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("introduce_package") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/introducePackage") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("introducePackage") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("introducePackage"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "keep_alive", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("hwserialno") },
                        .{ "title", h.vstr("Hwserialno") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("kaDateTimeFrom") },
                        .{ "title", h.vstr("Ka Date Time From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("kaDateTimeTo") },
                        .{ "title", h.vstr("Ka Date Time To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("keepAliveData") },
                        .{ "title", h.vstr("Keep Alive Data") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalDateTimeFrom") },
                        .{ "title", h.vstr("Terminal Date Time From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalDateTimeTo") },
                        .{ "title", h.vstr("Terminal Date Time To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                }) },
                .{ "name", h.vstr("keep_alive") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/keepalive") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("keepalive") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("keepalive"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "list_terminal", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("filter") },
                        .{ "title", h.vstr("Filter") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminals") },
                        .{ "title", h.vstr("Terminals") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("list_terminal") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/listTerminals") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listTerminals") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("listTerminals"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "mandator_clearing_export", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateFrom") },
                        .{ "title", h.vstr("Clearing Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateTo") },
                        .{ "title", h.vstr("Clearing Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("records") },
                        .{ "title", h.vstr("Records") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("mandator_clearing_export") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExport") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExport") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExport"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "mandator_clearing_export_download", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateFrom") },
                        .{ "title", h.vstr("Clearing Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Start date for clearing export (inclusive)") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateTo") },
                        .{ "title", h.vstr("Clearing Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("End date for clearing export (inclusive)") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("fileId") },
                        .{ "title", h.vstr("File Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Unique file identifier for tracking and downloading") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("filenameTemplate") },
                        .{ "title", h.vstr("Filename Template") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Optional filename template for the export file") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("id") },
                        .{ "title", h.vstr("Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("status") },
                        .{ "title", h.vstr("Status") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Processing status of the export request") },
                    }),
                }) },
                .{ "id", h.jo(&.{
                    .{ "field", h.vstr("id") },
                    .{ "name", h.vstr("id") },
                }) },
                .{ "name", h.vstr("mandator_clearing_export_download") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExportDownload") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExportDownload") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExportDownload"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                    .{ "load", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("load") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExportDownload/{fileId}") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExportDownload") },
                                    }),
                                    h.jo(&.{
                                        .{ "var", h.vstr("id") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExportDownload"),
                                    h.vstr("{id}"),
                                }) },
                                .{ "rename", h.jo(&.{
                                    .{ "param", h.jo(&.{
                                        .{ "fileId", h.vstr("id") },
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "params", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("id") },
                                            .{ "orig", h.vstr("file_id") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("param") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("id"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "mandator_clearing_export_summary", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateFrom") },
                        .{ "title", h.vstr("Clearing Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateTo") },
                        .{ "title", h.vstr("Clearing Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ssz") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("records") },
                        .{ "title", h.vstr("Records") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("mandator_clearing_export_summary") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/digitalservices/mandatorClearingExportSummary") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mandatorClearingExportSummary") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("mandatorClearingExportSummary"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "merchant_portal_services_api", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("3DSecure") },
                        .{ "title", h.vstr("3 D Secure") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationCode") },
                        .{ "title", h.vstr("Authorization Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrand") },
                        .{ "title", h.vstr("Card Brand") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingAmountFrom") },
                        .{ "title", h.vstr("Clearing Amount From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingAmountTo") },
                        .{ "title", h.vstr("Clearing Amount To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingCurrency") },
                        .{ "title", h.vstr("Clearing Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingStatus") },
                        .{ "title", h.vstr("Clearing Status") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUUID") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("orderByTransactionDate") },
                        .{ "title", h.vstr("Order By Transaction Date") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptNumber") },
                        .{ "title", h.vstr("Receipt Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("referencedTransactionId") },
                        .{ "title", h.vstr("Referenced Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("retrievalReferenceNumber") },
                        .{ "title", h.vstr("Retrieval Reference Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sourceId") },
                        .{ "title", h.vstr("Source Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsengineResponseCodeFrom") },
                        .{ "title", h.vstr("Tecsengine Response Code From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsengineResponseCodeTo") },
                        .{ "title", h.vstr("Tecsengine Response Code To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("traceNumber") },
                        .{ "title", h.vstr("Trace Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionAmountFrom") },
                        .{ "title", h.vstr("Transaction Amount From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionAmountTo") },
                        .{ "title", h.vstr("Transaction Amount To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateFrom") },
                        .{ "title", h.vstr("Transaction Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateTo") },
                        .{ "title", h.vstr("Transaction Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("wallet") },
                        .{ "title", h.vstr("Wallet") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Filter by wallet type.") },
                    }),
                }) },
                .{ "name", h.vstr("merchant_portal_services_api") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/transactionHistoryCsv") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("transactionHistoryCsv") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("transactionHistoryCsv"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "move_tid", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("productorderuuids") },
                        .{ "title", h.vstr("Productorderuuids") },
                        .{ "type", h.vstr("`$ARRAY`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("targetPackageorderuuid") },
                        .{ "title", h.vstr("Target Packageorderuuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("targetProductorderuuid") },
                        .{ "title", h.vstr("Target Productorderuuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("move_tid") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/moveTid") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("moveTid") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("moveTid"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "payment_manual", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerName") },
                        .{ "title", h.vstr("Acquirer Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Acquirer name parsed from KKG field") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("amount") },
                        .{ "title", h.vstr("Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Transaction amount in minor units (cents)") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationNumber") },
                        .{ "title", h.vstr("Authorization Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Authorization number from the gateway") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardNumber") },
                        .{ "title", h.vstr("Card Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Card number - 12 to 19 digits, must pass Luhn validation") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardType") },
                        .{ "title", h.vstr("Card Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Card type parsed from KKG field") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Currency code - 3 uppercase letters (ISO 4217)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cvc") },
                        .{ "title", h.vstr("Cvc") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Card verification code - 3-4 digits (optional)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateTimeTx") },
                        .{ "title", h.vstr("Date Time Tx") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Date and time of the transaction") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("expDate") },
                        .{ "title", h.vstr("Exp Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Card expiry date in MMYY format") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantId") },
                        .{ "title", h.vstr("Merchant Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Merchant ID (VU-NUMMER)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTransactionId") },
                        .{ "title", h.vstr("Original Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Original transaction ID from gateway") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "title", h.vstr("Password") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Terminal password sent as Kennwort in TECS XML (optional)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Response code - 00 for success, otherwise error code") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Response message - 'Approved' for success, error description otherwise") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "short", h.vstr("Terminal ID used for the transaction") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Transaction ID generated by the backend") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txtype") },
                        .{ "title", h.vstr("Txtype") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Transaction type") },
                    }),
                }) },
                .{ "name", h.vstr("payment_manual") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/paymentManual") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("paymentManual") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("paymentManual"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "payment_sred", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("amount") },
                        .{ "title", h.vstr("Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Transaction amount in minor units (cents)") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Currency code - 3 uppercase letters (ISO 4217)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("device") },
                        .{ "title", h.vstr("Device") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Device type that provided the SRED payload") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("devicePayload") },
                        .{ "title", h.vstr("Device Payload") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("SRED encrypted device payload from the device (minimum 32 characters)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("expDate") },
                        .{ "title", h.vstr("Exp Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Card expiry date in MMYY format") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("mode") },
                        .{ "title", h.vstr("Mode") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Decryption mode") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("panMasked") },
                        .{ "title", h.vstr("Pan Masked") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Masked PAN (first 6 and last 4 digits)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "title", h.vstr("Password") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Terminal password sent as Kennwort in TECS XML (optional)") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serial") },
                        .{ "title", h.vstr("Serial") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Device serial number") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serviceCode") },
                        .{ "title", h.vstr("Service Code") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Service code from the card") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Terminal ID - 8 digits") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txtype") },
                        .{ "title", h.vstr("Txtype") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Transaction type") },
                    }),
                }) },
                .{ "name", h.vstr("payment_sred") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/paymentSred") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("paymentSred") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("paymentSred"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body.sred`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "pre_auth_transaction_completion", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerId") },
                        .{ "title", h.vstr("Acquirer Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerName") },
                        .{ "title", h.vstr("Acquirer Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("actualBonusPoints") },
                        .{ "title", h.vstr("Actual Bonus Points") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("amount") },
                        .{ "title", h.vstr("Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$INTEGER`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationCode") },
                        .{ "title", h.vstr("Authorization Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("balanceAmount") },
                        .{ "title", h.vstr("Balance Amount") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrand") },
                        .{ "title", h.vstr("Card Brand") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardNumber") },
                        .{ "title", h.vstr("Card Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardNumberReference") },
                        .{ "title", h.vstr("Card Number Reference") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clientId") },
                        .{ "title", h.vstr("Client Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cvc") },
                        .{ "title", h.vstr("Cvc") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecData") },
                        .{ "title", h.vstr("Ec Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecrData") },
                        .{ "title", h.vstr("Ecr Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emvData") },
                        .{ "title", h.vstr("Emv Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("exchangeFee") },
                        .{ "title", h.vstr("Exchange Fee") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int64") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("exchangeRate") },
                        .{ "title", h.vstr("Exchange Rate") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("languageCode") },
                        .{ "title", h.vstr("Language Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantAddress") },
                        .{ "title", h.vstr("Merchant Address") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantName") },
                        .{ "title", h.vstr("Merchant Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantNumber") },
                        .{ "title", h.vstr("Merchant Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("messageType") },
                        .{ "title", h.vstr("Message Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTraceNumber") },
                        .{ "title", h.vstr("Original Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTransactionId") },
                        .{ "title", h.vstr("Original Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "title", h.vstr("Password") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("paymentReason") },
                        .{ "title", h.vstr("Payment Reason") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptFooter") },
                        .{ "title", h.vstr("Receipt Footer") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptHeader") },
                        .{ "title", h.vstr("Receipt Header") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptLayout") },
                        .{ "title", h.vstr("Receipt Layout") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptNumber") },
                        .{ "title", h.vstr("Receipt Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serialNumber") },
                        .{ "title", h.vstr("Serial Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("svc") },
                        .{ "title", h.vstr("Svc") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalLocation") },
                        .{ "title", h.vstr("Terminal Location") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("traceNumber") },
                        .{ "title", h.vstr("Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDate") },
                        .{ "title", h.vstr("Transaction Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txType") },
                        .{ "title", h.vstr("Tx Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("userData") },
                        .{ "title", h.vstr("User Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("pre_auth_transaction_completion") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/paymentTransaction") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("paymentTransaction") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("paymentTransaction"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/preAuthCompletionTransaction") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("preAuthCompletionTransaction") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("preAuthCompletionTransaction"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "reactivate_terminal", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("packageOrderUuid") },
                        .{ "title", h.vstr("Package Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("productOrderUuid") },
                        .{ "title", h.vstr("Product Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("reactivationReason") },
                        .{ "title", h.vstr("Reactivation Reason") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                }) },
                .{ "name", h.vstr("reactivate_terminal") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/reactivateTerminal") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("reactivateTerminal") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("reactivateTerminal"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "refund_transaction", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerId") },
                        .{ "title", h.vstr("Acquirer Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerName") },
                        .{ "title", h.vstr("Acquirer Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("actualBonusPoints") },
                        .{ "title", h.vstr("Actual Bonus Points") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("amount") },
                        .{ "title", h.vstr("Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$INTEGER`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationCode") },
                        .{ "title", h.vstr("Authorization Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("balanceAmount") },
                        .{ "title", h.vstr("Balance Amount") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrand") },
                        .{ "title", h.vstr("Card Brand") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardNumber") },
                        .{ "title", h.vstr("Card Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clientId") },
                        .{ "title", h.vstr("Client Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cvc") },
                        .{ "title", h.vstr("Cvc") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecData") },
                        .{ "title", h.vstr("Ec Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecrData") },
                        .{ "title", h.vstr("Ecr Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emvData") },
                        .{ "title", h.vstr("Emv Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("exchangeFee") },
                        .{ "title", h.vstr("Exchange Fee") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int64") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("exchangeRate") },
                        .{ "title", h.vstr("Exchange Rate") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("languageCode") },
                        .{ "title", h.vstr("Language Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantAddress") },
                        .{ "title", h.vstr("Merchant Address") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantName") },
                        .{ "title", h.vstr("Merchant Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantNumber") },
                        .{ "title", h.vstr("Merchant Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("messageType") },
                        .{ "title", h.vstr("Message Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTraceNumber") },
                        .{ "title", h.vstr("Original Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTransactionId") },
                        .{ "title", h.vstr("Original Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "title", h.vstr("Password") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("paymentReason") },
                        .{ "title", h.vstr("Payment Reason") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptFooter") },
                        .{ "title", h.vstr("Receipt Footer") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptHeader") },
                        .{ "title", h.vstr("Receipt Header") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptLayout") },
                        .{ "title", h.vstr("Receipt Layout") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptNumber") },
                        .{ "title", h.vstr("Receipt Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serialNumber") },
                        .{ "title", h.vstr("Serial Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("svc") },
                        .{ "title", h.vstr("Svc") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "req", h.vbool(true) },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalLocation") },
                        .{ "title", h.vstr("Terminal Location") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("traceNumber") },
                        .{ "title", h.vstr("Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDate") },
                        .{ "title", h.vstr("Transaction Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("txType") },
                        .{ "title", h.vstr("Tx Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("userData") },
                        .{ "title", h.vstr("User Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("refund_transaction") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/refundTransaction") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("refundTransaction") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("refundTransaction"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "register_tecs_company", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("packageOrderUuid") },
                        .{ "title", h.vstr("Package Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("partnerId") },
                        .{ "title", h.vstr("Partner Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("partnerName") },
                        .{ "title", h.vstr("Partner Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("productOrderUuid") },
                        .{ "title", h.vstr("Product Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateName") },
                        .{ "title", h.vstr("Template Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("register_tecs_company") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/registerTecsCompany") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("registerTecsCompany") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("registerTecsCompany"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "register_terminal", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("additionalData") },
                        .{ "title", h.vstr("Additional Data") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("packageOrderUuid") },
                        .{ "title", h.vstr("Package Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("productOrderUuid") },
                        .{ "title", h.vstr("Product Order Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsWebSecretKey") },
                        .{ "title", h.vstr("Tecs Web Secret Key") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateName") },
                        .{ "title", h.vstr("Template Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalCountryCode") },
                        .{ "title", h.vstr("Terminal Country Code") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalIdAcq") },
                        .{ "title", h.vstr("Terminal Id Acq") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalLanguageCode") },
                        .{ "title", h.vstr("Terminal Language Code") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalLocation") },
                        .{ "title", h.vstr("Terminal Location") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalSerialNumber") },
                        .{ "title", h.vstr("Terminal Serial Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tokenIOAlias") },
                        .{ "title", h.vstr("Token Io Alias") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tokenIOIban") },
                        .{ "title", h.vstr("Token Io Iban") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tokenIOMemberId") },
                        .{ "title", h.vstr("Token Io Member Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("webShopUrl") },
                        .{ "title", h.vstr("Web Shop Url") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("register_terminal") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/registerTerminal") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("registerTerminal") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("registerTerminal"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "report_data", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrandReportData") },
                        .{ "title", h.vstr("Card Brand Report Data") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateFrom") },
                        .{ "title", h.vstr("Clearing Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ss") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDateTo") },
                        .{ "title", h.vstr("Clearing Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Date and time in the format yyyy-MM-dd'T'HH:mm:ss") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("corporateId") },
                        .{ "title", h.vstr("Corporate Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sumOverCreditTx") },
                        .{ "title", h.vstr("Sum Over Credit Tx") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sumOverDebitTx") },
                        .{ "title", h.vstr("Sum Over Debit Tx") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                }) },
                .{ "name", h.vstr("report_data") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/digitalservices/reportData") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("digitalservices") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("reportData") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("digitalservices"),
                                    h.vstr("reportData"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "status_transaction", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerName") },
                        .{ "title", h.vstr("Acquirer Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("acquirerTerminalId") },
                        .{ "title", h.vstr("Acquirer Terminal Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("amount") },
                        .{ "title", h.vstr("Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("applicationCryptogram") },
                        .{ "title", h.vstr("Application Cryptogram") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationCode") },
                        .{ "title", h.vstr("Authorization Code") },
                        .{ "type", h.ja(&.{
                            h.vstr("`$ONE`"),
                            h.ja(&.{
                                h.vstr("`$STRING`"),
                                h.vstr("`$NULL`"),
                            }),
                        }) },
                        .{ "short", h.vstr("Authorization code returned by the acquirer; null when not available") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationDate") },
                        .{ "title", h.vstr("Authorization Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrand") },
                        .{ "title", h.vstr("Card Brand") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardEntry") },
                        .{ "title", h.vstr("Card Entry") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardExpiration") },
                        .{ "title", h.vstr("Card Expiration") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardNumber") },
                        .{ "title", h.vstr("Card Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingAmount") },
                        .{ "title", h.vstr("Clearing Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingBatchId") },
                        .{ "title", h.vstr("Clearing Batch Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingCurrency") },
                        .{ "title", h.vstr("Clearing Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingDate") },
                        .{ "title", h.vstr("Clearing Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingProcessedDate") },
                        .{ "title", h.vstr("Clearing Processed Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingStatus") },
                        .{ "title", h.vstr("Clearing Status") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clientId") },
                        .{ "title", h.vstr("Client Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("currency") },
                        .{ "title", h.vstr("Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cvm") },
                        .{ "title", h.vstr("Cvm") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("ecrData") },
                        .{ "title", h.vstr("Ecr Data") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emvApplicationId") },
                        .{ "title", h.vstr("Emv Application Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emvApplicationLabel") },
                        .{ "title", h.vstr("Emv Application Label") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantName") },
                        .{ "title", h.vstr("Merchant Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantNumber") },
                        .{ "title", h.vstr("Merchant Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalClientId") },
                        .{ "title", h.vstr("Original Client Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTerminalId") },
                        .{ "title", h.vstr("Original Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("originalTransactionId") },
                        .{ "title", h.vstr("Original Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("paymentReason") },
                        .{ "title", h.vstr("Payment Reason") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptNumber") },
                        .{ "title", h.vstr("Receipt Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCodeFromAS") },
                        .{ "title", h.vstr("Response Code From As") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("retrievalReferenceNumber") },
                        .{ "title", h.vstr("Retrieval Reference Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serviceCode") },
                        .{ "title", h.vstr("Service Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("settlementStatus") },
                        .{ "title", h.vstr("Settlement Status") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sourceId") },
                        .{ "title", h.vstr("Source Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsengineResponseCode") },
                        .{ "title", h.vstr("Tecsengine Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsengineResponseText") },
                        .{ "title", h.vstr("Tecsengine Response Text") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalEndOfDayDate") },
                        .{ "title", h.vstr("Terminal End Of Day Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalLocation") },
                        .{ "title", h.vstr("Terminal Location") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tipAmount") },
                        .{ "title", h.vstr("Tip Amount") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("traceNumber") },
                        .{ "title", h.vstr("Trace Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionClearingDate") },
                        .{ "title", h.vstr("Transaction Clearing Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDate") },
                        .{ "title", h.vstr("Transaction Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionSeqNumber") },
                        .{ "title", h.vstr("Transaction Seq Number") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int64") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionServerDate") },
                        .{ "title", h.vstr("Transaction Server Date") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionSource") },
                        .{ "title", h.vstr("Transaction Source") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("status_transaction") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/statusTransaction") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("statusTransaction") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("statusTransaction"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "store_terminal_parameter", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("acqTabNexo") },
                        .{ "title", h.vstr("Acq Tab Nexo") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("configVersion") },
                        .{ "title", h.vstr("Config Version") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("serialNumber") },
                        .{ "title", h.vstr("Serial Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tidSent") },
                        .{ "title", h.vstr("Tid Sent") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("store_terminal_parameter") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/storeTerminalParameters") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("storeTerminalParameters") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("storeTerminalParameters"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "terminal_id", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("deviceSerialNumber") },
                        .{ "title", h.vstr("Device Serial Number") },
                        .{ "type", h.vstr("`$ARRAY`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("duplicateTerminalIds") },
                        .{ "title", h.vstr("Duplicate Terminal Ids") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminals") },
                        .{ "title", h.vstr("Terminals") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("terminal_id") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/getTerminalId") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getTerminalId") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("getTerminalId"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "transaction_history", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("3DSecure") },
                        .{ "title", h.vstr("3 D Secure") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("authorizationCode") },
                        .{ "title", h.vstr("Authorization Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("cardBrand") },
                        .{ "title", h.vstr("Card Brand") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingAmountFrom") },
                        .{ "title", h.vstr("Clearing Amount From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingAmountTo") },
                        .{ "title", h.vstr("Clearing Amount To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingCurrency") },
                        .{ "title", h.vstr("Clearing Currency") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("clearingStatus") },
                        .{ "title", h.vstr("Clearing Status") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUUID") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("orderByTransactionDate") },
                        .{ "title", h.vstr("Order By Transaction Date") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("paymentTokenPublicId") },
                        .{ "title", h.vstr("Payment Token Public Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("receiptNumber") },
                        .{ "title", h.vstr("Receipt Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("referencedTransactionId") },
                        .{ "title", h.vstr("Referenced Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("retrievalReferenceNumber") },
                        .{ "title", h.vstr("Retrieval Reference Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sourceId") },
                        .{ "title", h.vstr("Source Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsengineResponseCodeFrom") },
                        .{ "title", h.vstr("Tecsengine Response Code From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("tecsengineResponseCodeTo") },
                        .{ "title", h.vstr("Tecsengine Response Code To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("terminalId") },
                        .{ "title", h.vstr("Terminal Id") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("traceNumber") },
                        .{ "title", h.vstr("Trace Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionAmountFrom") },
                        .{ "title", h.vstr("Transaction Amount From") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionAmountTo") },
                        .{ "title", h.vstr("Transaction Amount To") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateFrom") },
                        .{ "title", h.vstr("Transaction Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateTo") },
                        .{ "title", h.vstr("Transaction Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionHistories") },
                        .{ "title", h.vstr("Transaction Histories") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionId") },
                        .{ "title", h.vstr("Transaction Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionType") },
                        .{ "title", h.vstr("Transaction Type") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("wallet") },
                        .{ "title", h.vstr("Wallet") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Filter by wallet type.") },
                    }),
                }) },
                .{ "name", h.vstr("transaction_history") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/mcom/transactionHistory") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("mcom") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("transactionHistory") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("mcom"),
                                    h.vstr("transactionHistory"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/transactionHistory") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("transactionHistory") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("transactionHistory"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "transactions_count_card_brand", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("period") },
                        .{ "title", h.vstr("Period") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateFrom") },
                        .{ "title", h.vstr("Transaction Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateTo") },
                        .{ "title", h.vstr("Transaction Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionsCount") },
                        .{ "title", h.vstr("Transactions Count") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("transactions_count_card_brand") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/countTransactionsByCardBrand") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("countTransactionsByCardBrand") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("countTransactionsByCardBrand"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "transactions_turnover", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("period") },
                        .{ "title", h.vstr("Period") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateFrom") },
                        .{ "title", h.vstr("Transaction Date From") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionDateTo") },
                        .{ "title", h.vstr("Transaction Date To") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "format", h.vstr("date-time") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("turnovers") },
                        .{ "title", h.vstr("Turnovers") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("transactions_turnover") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/transactionTurnover") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("transactionTurnover") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("transactionTurnover"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "update_merchant", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("city") },
                        .{ "title", h.vstr("City") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("corporateUuid") },
                        .{ "title", h.vstr("Corporate Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "title", h.vstr("Country") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("merchantCategoryCode") },
                        .{ "title", h.vstr("Merchant Category Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("name") },
                        .{ "title", h.vstr("Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "title", h.vstr("State") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street") },
                        .{ "title", h.vstr("Street") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("vuNummer") },
                        .{ "title", h.vstr("Vu Nummer") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zipcode") },
                        .{ "title", h.vstr("Zipcode") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("update_merchant") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/updateMerchant") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("updateMerchant") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("updateMerchant"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "update_template_xml", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateName") },
                        .{ "title", h.vstr("Template Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("templateXml") },
                        .{ "title", h.vstr("Template Xml") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                }) },
                .{ "name", h.vstr("update_template_xml") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/public/updateTemplateXml") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("updateTemplateXml") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("updateTemplateXml"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "version", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("appName") },
                        .{ "title", h.vstr("App Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("buildDate") },
                        .{ "title", h.vstr("Build Date") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("version") },
                        .{ "title", h.vstr("Version") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("version") },
                .{ "op", h.jo(&.{
                    .{ "load", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("load") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/public/version") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("public") },
                                    }),
                                    h.jo(&.{
                                        .{ "lit", h.vstr("version") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("public"),
                                    h.vstr("version"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
        }) },
    });
}

// SHARED CONFIG (sdkgen rung L2).
//
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client. Above the
// size threshold make_config re-parses the whole embedded JSON, so this is the
// difference between parsing the model once and once per client.
//
// Value nodes are arena-allocated and reference-stable, so the shared value is
// genuinely one structure, not a copy.
var shared_config_val: ?Value = null;

/// The process-wide config, built once on first use.
///
/// The returned Value SHARES its nodes: treat it as read-only. Callers that
/// need to mutate should use make_config, which always returns a fresh copy.
pub fn shared_config() Value {
    if (shared_config_val) |c| return c;
    const c = make_config();
    shared_config_val = c;
    return c;
}

pub fn make_feature(name: []const u8) Feature {
    if (std.mem.eql(u8, name, "audit")) return @import("../feature/audit.zig").AuditFeature.make();
    if (std.mem.eql(u8, name, "cache")) return @import("../feature/cache.zig").CacheFeature.make();
    if (std.mem.eql(u8, name, "clienttrack")) return @import("../feature/clienttrack.zig").ClienttrackFeature.make();
    if (std.mem.eql(u8, name, "cost")) return @import("../feature/cost.zig").CostFeature.make();
    if (std.mem.eql(u8, name, "debug")) return @import("../feature/debug.zig").DebugFeature.make();
    if (std.mem.eql(u8, name, "idempotency")) return @import("../feature/idempotency.zig").IdempotencyFeature.make();
    if (std.mem.eql(u8, name, "log")) return @import("../feature/log.zig").LogFeature.make();
    if (std.mem.eql(u8, name, "metrics")) return @import("../feature/metrics.zig").MetricsFeature.make();
    if (std.mem.eql(u8, name, "netsim")) return @import("../feature/netsim.zig").NetsimFeature.make();
    if (std.mem.eql(u8, name, "paging")) return @import("../feature/paging.zig").PagingFeature.make();
    if (std.mem.eql(u8, name, "proxy")) return @import("../feature/proxy.zig").ProxyFeature.make();
    if (std.mem.eql(u8, name, "ratelimit")) return @import("../feature/ratelimit.zig").RatelimitFeature.make();
    if (std.mem.eql(u8, name, "rbac")) return @import("../feature/rbac.zig").RbacFeature.make();
    if (std.mem.eql(u8, name, "retry")) return @import("../feature/retry.zig").RetryFeature.make();
    if (std.mem.eql(u8, name, "streaming")) return @import("../feature/streaming.zig").StreamingFeature.make();
    if (std.mem.eql(u8, name, "telemetry")) return @import("../feature/telemetry.zig").TelemetryFeature.make();
    if (std.mem.eql(u8, name, "test")) return @import("../feature/test.zig").TestFeature.make();
    if (std.mem.eql(u8, name, "timeout")) return @import("../feature/timeout.zig").TimeoutFeature.make();
    return @import("../feature/base.zig").BaseFeature.make();
}
